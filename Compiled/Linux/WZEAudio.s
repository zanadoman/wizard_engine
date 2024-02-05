	.file	"WZEAudio.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audioC2EPS0_
	.type	_ZN3wze6engine5audioC2EPS0_, @function
_ZN3wze6engine5audioC2EPS0_:
.LFB2232:
	.cfi_startproc
	movq	.LC0(%rip), %rax
	movq	%rsi, (%rdi)
	movq	%rax, 8(%rdi)
	ret
	.cfi_endproc
.LFE2232:
	.size	_ZN3wze6engine5audioC2EPS0_, .-_ZN3wze6engine5audioC2EPS0_
	.globl	_ZN3wze6engine5audioC1EPS0_
	.set	_ZN3wze6engine5audioC1EPS0_,_ZN3wze6engine5audioC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio15GetGlobalVolumeEv
	.type	_ZN3wze6engine5audio15GetGlobalVolumeEv, @function
_ZN3wze6engine5audio15GetGlobalVolumeEv:
.LFB2234:
	.cfi_startproc
	movsd	8(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE2234:
	.size	_ZN3wze6engine5audio15GetGlobalVolumeEv, .-_ZN3wze6engine5audio15GetGlobalVolumeEv
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"wze::engine.audio.SetGlobalVolume(): GlobalVolume must be in range [0, 1]\nParams: Volume: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio15SetGlobalVolumeEd
	.type	_ZN3wze6engine5audio15SetGlobalVolumeEd, @function
_ZN3wze6engine5audio15SetGlobalVolumeEd:
.LFB2235:
	.cfi_startproc
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	ja	.L5
	comisd	.LC0(%rip), %xmm0
	ja	.L5
	movsd	%xmm0, 8(%rdi)
	ret
.L5:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC2(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2235:
	.size	_ZN3wze6engine5audio15SetGlobalVolumeEd, .-_ZN3wze6engine5audio15SetGlobalVolumeEd
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"wze::engine.audio.Play(): Volume must be in range [0, 1]\nParams: ID: %lld, Channel: %d, Volume: %lf\n"
	.align 8
.LC4:
	.string	"wze::engine.audio.Play(): WAV does not exist\nParams: ID: %lld, Channel: %d, Volume: %lf\n"
	.align 8
.LC6:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.align 8
.LC7:
	.string	"wze::engine.audio.Play(): Mix_PlayChannel() failed\nParams: ID: %lld, Channel: %d, Volume: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio4PlayEytd
	.type	_ZN3wze6engine5audio4PlayEytd, @function
_ZN3wze6engine5audio4PlayEytd:
.LFB2236:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pxor	%xmm1, %xmm1
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	%edx, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	comisd	%xmm0, %xmm1
	ja	.L12
	comisd	.LC0(%rip), %xmm0
	ja	.L12
	testq	%rsi, %rsi
	je	.L15
	movq	(%rdi), %rax
	movq	%rdi, %r12
	cmpq	584(%rax), %rsi
	jnb	.L16
	movq	592(%rax), %rax
	movq	(%rax,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.L16
	movapd	%xmm0, %xmm1
	movsd	%xmm0, 8(%rsp)
	mulsd	8(%r12), %xmm1
	mulsd	.LC5(%rip), %xmm1
	cvttsd2sil	%xmm1, %esi
	call	Mix_VolumeChunk@PLT
	movq	(%r12), %rax
	movsd	8(%rsp), %xmm0
	cmpq	584(%rax), %rbx
	movq	592(%rax), %rdx
	jnb	.L24
	movq	(%rdx,%rbx,8), %rsi
	movzwl	%bp, %ebp
	xorl	%edx, %edx
	movsd	%xmm0, 8(%rsp)
	movl	%ebp, %edi
	call	Mix_PlayChannel@PLT
	movsd	8(%rsp), %xmm0
	cmpl	$-1, %eax
	je	.L25
.L15:
	addq	$16, %rsp
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
.L12:
	.cfi_restore_state
	leaq	.LC3(%rip), %rdi
	movzwl	%bp, %edx
	movq	%rbx, %rsi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L16:
	leaq	.LC4(%rip), %rdi
	movzwl	%bp, %edx
	movq	%rbx, %rsi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L25:
	leaq	.LC7(%rip), %rdi
	movl	%ebp, %edx
	movq	%rbx, %rsi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L24:
	leaq	.LC6(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2236:
	.size	_ZN3wze6engine5audio4PlayEytd, .-_ZN3wze6engine5audio4PlayEytd
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"wze::engine.audio.Play(): Volume must be in range [0, 1]\nParams: ID: %lld, Channel: %d, Volume: %lf, Loops: %d\n"
	.align 8
.LC9:
	.string	"wze::engine.audio.Play(): WAV does not exist\nParams: ID: %lld, Channel: %d, Volume: %lf, Loops: %d\n"
	.align 8
.LC10:
	.string	"wze::engine.audio.Play(): Mix_PlayChannel() failed\nParams: ID: %lld, Channel: %d, Volume: %lf, Loops: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio4PlayEytdt
	.type	_ZN3wze6engine5audio4PlayEytdt, @function
_ZN3wze6engine5audio4PlayEytdt:
.LFB2237:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pxor	%xmm1, %xmm1
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movl	%edx, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	comisd	%xmm0, %xmm1
	ja	.L27
	comisd	.LC0(%rip), %xmm0
	ja	.L27
	testq	%rsi, %rsi
	je	.L30
	movq	(%rdi), %rax
	movq	%rdi, %r13
	movzwl	%cx, %r12d
	cmpq	584(%rax), %rsi
	jnb	.L31
	movq	592(%rax), %rax
	movq	(%rax,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.L31
	movapd	%xmm0, %xmm1
	movsd	%xmm0, 8(%rsp)
	mulsd	8(%r13), %xmm1
	mulsd	.LC5(%rip), %xmm1
	cvttsd2sil	%xmm1, %esi
	call	Mix_VolumeChunk@PLT
	movq	0(%r13), %rax
	movsd	8(%rsp), %xmm0
	cmpq	584(%rax), %rbx
	movq	592(%rax), %rdx
	jnb	.L39
	movq	(%rdx,%rbx,8), %rsi
	movzwl	%bp, %ebp
	movl	%r12d, %edx
	movsd	%xmm0, 8(%rsp)
	movl	%ebp, %edi
	call	Mix_PlayChannel@PLT
	movsd	8(%rsp), %xmm0
	cmpl	$-1, %eax
	je	.L40
.L30:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L27:
	.cfi_restore_state
	leaq	.LC8(%rip), %rdi
	movzwl	%cx, %ecx
	movzwl	%bp, %edx
	movq	%rbx, %rsi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L31:
	leaq	.LC9(%rip), %rdi
	movzwl	%bp, %edx
	movl	%r12d, %ecx
	movq	%rbx, %rsi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L40:
	leaq	.LC10(%rip), %rdi
	movl	%r12d, %ecx
	movl	%ebp, %edx
	movq	%rbx, %rsi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L39:
	leaq	.LC6(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2237:
	.size	_ZN3wze6engine5audio4PlayEytdt, .-_ZN3wze6engine5audio4PlayEytdt
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"wze::engine.audio.Play(): Volume must be in range [0, 1]\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n"
	.align 8
.LC12:
	.string	"wze::engine.audio.Play(): Left must be in range [0, 1]\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n"
	.align 8
.LC13:
	.string	"wze::engine.audio.Play(): Right must be in range [0, 1]\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n"
	.align 8
.LC14:
	.string	"wze::engine.audio.Play(): WAV does not exist\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n"
	.align 8
.LC15:
	.string	"wze::engine.audio.Play(): Mix_PlayChannel() failed\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n"
	.align 8
.LC17:
	.string	"wze::engine.audio.Play(): Mix_SetPanning() failed\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio4PlayEytddd
	.type	_ZN3wze6engine5audio4PlayEytddd, @function
_ZN3wze6engine5audio4PlayEytddd:
.LFB2238:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movapd	%xmm0, %xmm3
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	%edx, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	subq	$32, %rsp
	.cfi_def_cfa_offset 64
	movsd	%xmm0, 24(%rsp)
	pxor	%xmm0, %xmm0
	comisd	%xmm3, %xmm0
	movsd	%xmm1, 8(%rsp)
	movsd	%xmm2, 16(%rsp)
	ja	.L42
	movsd	.LC0(%rip), %xmm1
	comisd	%xmm1, %xmm3
	ja	.L42
	movsd	8(%rsp), %xmm4
	comisd	%xmm4, %xmm0
	ja	.L45
	comisd	%xmm1, %xmm4
	ja	.L45
	comisd	%xmm2, %xmm0
	ja	.L48
	comisd	%xmm1, %xmm2
	ja	.L48
	testq	%rsi, %rsi
	je	.L51
	movq	(%rdi), %rax
	movq	%rdi, %r12
	cmpq	584(%rax), %rsi
	jnb	.L52
	movq	592(%rax), %rax
	movq	(%rax,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.L52
	movsd	8(%r12), %xmm0
	mulsd	%xmm3, %xmm0
	mulsd	.LC5(%rip), %xmm0
	cvttsd2sil	%xmm0, %esi
	call	Mix_VolumeChunk@PLT
	movq	(%r12), %rax
	movq	592(%rax), %rdx
	cmpq	584(%rax), %rbx
	jnb	.L63
	movq	(%rdx,%rbx,8), %rsi
	movzwl	%bp, %ebp
	xorl	%edx, %edx
	movl	%ebp, %edi
	call	Mix_PlayChannel@PLT
	cmpl	$-1, %eax
	je	.L64
	movsd	.LC16(%rip), %xmm0
	movsd	16(%rsp), %xmm1
	movl	%ebp, %edi
	mulsd	%xmm0, %xmm1
	mulsd	8(%rsp), %xmm0
	cvttsd2sil	%xmm1, %edx
	cvttsd2sil	%xmm0, %esi
	movzbl	%dl, %edx
	movzbl	%sil, %esi
	call	Mix_SetPanning@PLT
	testl	%eax, %eax
	je	.L65
.L51:
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
.L42:
	.cfi_restore_state
	movsd	16(%rsp), %xmm2
	movsd	8(%rsp), %xmm1
	movzwl	%bp, %edx
	movq	%rbx, %rsi
	movsd	24(%rsp), %xmm0
	leaq	.LC11(%rip), %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L48:
	movsd	16(%rsp), %xmm2
	movsd	8(%rsp), %xmm1
	movzwl	%bp, %edx
	movq	%rbx, %rsi
	movsd	24(%rsp), %xmm0
	leaq	.LC13(%rip), %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L45:
	movsd	16(%rsp), %xmm2
	movsd	8(%rsp), %xmm1
	movzwl	%bp, %edx
	movq	%rbx, %rsi
	movsd	24(%rsp), %xmm0
	leaq	.LC12(%rip), %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L52:
	movsd	16(%rsp), %xmm2
	movsd	8(%rsp), %xmm1
	movzwl	%bp, %edx
	movq	%rbx, %rsi
	movsd	24(%rsp), %xmm0
	leaq	.LC14(%rip), %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L63:
	leaq	.LC6(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L65:
	movsd	16(%rsp), %xmm2
	movl	%ebp, %edx
	movq	%rbx, %rsi
	movl	$3, %eax
	movsd	8(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	leaq	.LC17(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L64:
	movsd	16(%rsp), %xmm2
	movl	%ebp, %edx
	movq	%rbx, %rsi
	movl	$3, %eax
	movsd	8(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	leaq	.LC15(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2238:
	.size	_ZN3wze6engine5audio4PlayEytddd, .-_ZN3wze6engine5audio4PlayEytddd
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"wze::engine.audio.Play(): Volume must be in range [0, 1]\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n"
	.align 8
.LC19:
	.string	"wze::engine.audio.Play(): Left must be in range [0, 1]\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n"
	.align 8
.LC20:
	.string	"wze::engine.audio.Play(): Right must be in range [0, 1]\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n"
	.align 8
.LC21:
	.string	"wze::engine.audio.Play(): WAV does not exist\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n"
	.align 8
.LC22:
	.string	"wze::engine.audio.Play(): Mix_PlayChannel() failed\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n"
	.align 8
.LC23:
	.string	"wze::engine.audio.Play(): Mix_SetPanning() failed\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio4PlayEytdddt
	.type	_ZN3wze6engine5audio4PlayEytdddt, @function
_ZN3wze6engine5audio4PlayEytdddt:
.LFB2239:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movapd	%xmm0, %xmm3
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movl	%edx, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 80
	movsd	%xmm0, 24(%rsp)
	pxor	%xmm0, %xmm0
	comisd	%xmm3, %xmm0
	movsd	%xmm1, 8(%rsp)
	movsd	%xmm2, 16(%rsp)
	ja	.L67
	movsd	.LC0(%rip), %xmm1
	comisd	%xmm1, %xmm3
	ja	.L67
	movsd	8(%rsp), %xmm4
	comisd	%xmm4, %xmm0
	ja	.L70
	comisd	%xmm1, %xmm4
	ja	.L70
	comisd	%xmm2, %xmm0
	ja	.L73
	comisd	%xmm1, %xmm2
	ja	.L73
	testq	%rsi, %rsi
	je	.L76
	movq	(%rdi), %rax
	movq	%rdi, %r12
	movzwl	%cx, %r13d
	cmpq	584(%rax), %rsi
	jnb	.L77
	movq	592(%rax), %rax
	movq	(%rax,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.L77
	movsd	8(%r12), %xmm0
	mulsd	%xmm3, %xmm0
	mulsd	.LC5(%rip), %xmm0
	cvttsd2sil	%xmm0, %esi
	call	Mix_VolumeChunk@PLT
	movq	(%r12), %rax
	movq	592(%rax), %rdx
	cmpq	584(%rax), %rbx
	jnb	.L88
	movq	(%rdx,%rbx,8), %rsi
	movzwl	%bp, %ebp
	movl	%r13d, %edx
	movl	%ebp, %edi
	call	Mix_PlayChannel@PLT
	cmpl	$-1, %eax
	je	.L89
	movsd	.LC16(%rip), %xmm0
	movsd	16(%rsp), %xmm1
	movl	%ebp, %edi
	mulsd	%xmm0, %xmm1
	mulsd	8(%rsp), %xmm0
	cvttsd2sil	%xmm1, %edx
	cvttsd2sil	%xmm0, %esi
	movzbl	%dl, %edx
	movzbl	%sil, %esi
	call	Mix_SetPanning@PLT
	testl	%eax, %eax
	je	.L90
.L76:
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L67:
	.cfi_restore_state
	movsd	16(%rsp), %xmm2
	movzwl	%cx, %ecx
	movzwl	%bp, %edx
	movq	%rbx, %rsi
	movsd	8(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	movl	$3, %eax
	leaq	.LC18(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L73:
	movsd	16(%rsp), %xmm2
	movzwl	%cx, %ecx
	movzwl	%bp, %edx
	movq	%rbx, %rsi
	movsd	8(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	movl	$3, %eax
	leaq	.LC20(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L70:
	movsd	16(%rsp), %xmm2
	movzwl	%cx, %ecx
	movzwl	%bp, %edx
	movq	%rbx, %rsi
	movsd	8(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	movl	$3, %eax
	leaq	.LC19(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L77:
	movsd	16(%rsp), %xmm2
	movzwl	%bp, %edx
	movl	%r13d, %ecx
	movq	%rbx, %rsi
	movsd	8(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	movl	$3, %eax
	leaq	.LC21(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L88:
	leaq	.LC6(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L90:
	movsd	16(%rsp), %xmm2
	movl	%r13d, %ecx
	movl	%ebp, %edx
	movq	%rbx, %rsi
	movsd	8(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	movl	$3, %eax
	leaq	.LC23(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L89:
	movsd	16(%rsp), %xmm2
	movl	%r13d, %ecx
	movl	%ebp, %edx
	movq	%rbx, %rsi
	movsd	8(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	movl	$3, %eax
	leaq	.LC22(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2239:
	.size	_ZN3wze6engine5audio4PlayEytdddt, .-_ZN3wze6engine5audio4PlayEytdddt
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio8IsPausedEt
	.type	_ZN3wze6engine5audio8IsPausedEt, @function
_ZN3wze6engine5audio8IsPausedEt:
.LFB2240:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movzwl	%si, %edi
	call	Mix_Paused@PLT
	cmpl	$1, %eax
	sete	%al
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2240:
	.size	_ZN3wze6engine5audio8IsPausedEt, .-_ZN3wze6engine5audio8IsPausedEt
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio5PauseEt
	.type	_ZN3wze6engine5audio5PauseEt, @function
_ZN3wze6engine5audio5PauseEt:
.LFB2241:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movzwl	%si, %edi
	call	Mix_Pause@PLT
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2241:
	.size	_ZN3wze6engine5audio5PauseEt, .-_ZN3wze6engine5audio5PauseEt
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio6ResumeEt
	.type	_ZN3wze6engine5audio6ResumeEt, @function
_ZN3wze6engine5audio6ResumeEt:
.LFB2242:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movzwl	%si, %edi
	call	Mix_Resume@PLT
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2242:
	.size	_ZN3wze6engine5audio6ResumeEt, .-_ZN3wze6engine5audio6ResumeEt
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio8PauseAllEv
	.type	_ZN3wze6engine5audio8PauseAllEv, @function
_ZN3wze6engine5audio8PauseAllEv:
.LFB2243:
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
.LFE2243:
	.size	_ZN3wze6engine5audio8PauseAllEv, .-_ZN3wze6engine5audio8PauseAllEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio9ResumeAllEv
	.type	_ZN3wze6engine5audio9ResumeAllEv, @function
_ZN3wze6engine5audio9ResumeAllEv:
.LFB2244:
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
.LFE2244:
	.size	_ZN3wze6engine5audio9ResumeAllEv, .-_ZN3wze6engine5audio9ResumeAllEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio4StopEt
	.type	_ZN3wze6engine5audio4StopEt, @function
_ZN3wze6engine5audio4StopEt:
.LFB2245:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movzwl	%si, %edi
	call	Mix_HaltChannel@PLT
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2245:
	.size	_ZN3wze6engine5audio4StopEt, .-_ZN3wze6engine5audio4StopEt
	.section	.rodata.cst8,"aM",@progbits,8
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
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
