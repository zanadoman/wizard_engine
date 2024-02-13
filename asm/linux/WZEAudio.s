	.file	"WZEAudio.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audioC2EPS0_
	.type	_ZN3wze6engine5audioC2EPS0_, @function
_ZN3wze6engine5audioC2EPS0_:
.LFB8157:
	.cfi_startproc
	movq	.LC0(%rip), %rax
	movq	%rsi, (%rdi)
	movq	%rax, 8(%rdi)
	ret
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
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"wze::engine.audio.SetGlobalVolume(): GlobalVolume must not be NaN\nParams: Volume: %lf\n"
	.align 8
.LC3:
	.string	"wze::engine.audio.SetGlobalVolume(): GlobalVolume must be in range [0, 1]\nParams: Volume: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio15SetGlobalVolumeEd
	.type	_ZN3wze6engine5audio15SetGlobalVolumeEd, @function
_ZN3wze6engine5audio15SetGlobalVolumeEd:
.LFB8160:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L14
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	ja	.L7
	comisd	.LC0(%rip), %xmm0
	ja	.L7
	movsd	%xmm0, 8(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L7:
	.cfi_restore_state
	leaq	.LC3(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L14:
	leaq	.LC1(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8160:
	.size	_ZN3wze6engine5audio15SetGlobalVolumeEd, .-_ZN3wze6engine5audio15SetGlobalVolumeEd
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"wze::engine.audio.Play(): Volume must not be NaN\nParams: SoundID: %lld, Channel: %d, Volume: %lf\n"
	.align 8
.LC5:
	.string	"wze::engine.audio.Play(): Volume must be in range [0, 1]\nParams: SoundID: %lld, Channel: %d, Volume: %lf\n"
	.align 8
.LC6:
	.string	"wze::engine.audio.Play(): Sound does not exist\nParams: SoundID: %lld, Channel: %d, Volume: %lf\n"
	.align 8
.LC8:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.align 8
.LC9:
	.string	"wze::engine.audio.Play(): Mix_PlayChannel() failed\nParams: SoundID: %lld, Channel: %d, Volume: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio4PlayEytd
	.type	_ZN3wze6engine5audio4PlayEytd, @function
_ZN3wze6engine5audio4PlayEytd:
.LFB8161:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
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
	ucomisd	%xmm0, %xmm0
	jp	.L32
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	ja	.L18
	comisd	.LC0(%rip), %xmm0
	ja	.L18
	testq	%rsi, %rsi
	je	.L21
	movq	(%rdi), %rax
	movq	%rdi, %r12
	cmpq	344(%rax), %rsi
	jnb	.L22
	movq	352(%rax), %rax
	movq	(%rax,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.L22
	movapd	%xmm0, %xmm1
	movsd	%xmm0, 8(%rsp)
	mulsd	8(%r12), %xmm1
	mulsd	.LC7(%rip), %xmm1
	cvttsd2sil	%xmm1, %esi
	call	Mix_VolumeChunk@PLT
	movq	(%r12), %rax
	movsd	8(%rsp), %xmm0
	cmpq	344(%rax), %rbx
	movq	352(%rax), %rdx
	jnb	.L33
	movq	(%rdx,%rbx,8), %rsi
	movzwl	%bp, %ebp
	xorl	%edx, %edx
	movsd	%xmm0, 8(%rsp)
	movl	%ebp, %edi
	call	Mix_PlayChannel@PLT
	movsd	8(%rsp), %xmm0
	cmpl	$-1, %eax
	je	.L34
.L21:
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
.L18:
	.cfi_restore_state
	leaq	.LC5(%rip), %rdi
	movzwl	%bp, %edx
	movq	%rbx, %rsi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L22:
	leaq	.LC6(%rip), %rdi
	movzwl	%bp, %edx
	movq	%rbx, %rsi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L32:
	leaq	.LC4(%rip), %rdi
	movzwl	%dx, %edx
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L33:
	leaq	.LC8(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L34:
	leaq	.LC9(%rip), %rdi
	movl	%ebp, %edx
	movq	%rbx, %rsi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8161:
	.size	_ZN3wze6engine5audio4PlayEytd, .-_ZN3wze6engine5audio4PlayEytd
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"wze::engine.audio.Play(): Volume must not be NaN\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d\n"
	.align 8
.LC11:
	.string	"wze::engine.audio.Play(): Volume must be in range [0, 1]\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d\n"
	.align 8
.LC12:
	.string	"wze::engine.audio.Play(): Sound does not exist\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d\n"
	.align 8
.LC13:
	.string	"wze::engine.audio.Play(): Mix_PlayChannel() failed\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio4PlayEytdt
	.type	_ZN3wze6engine5audio4PlayEytdt, @function
_ZN3wze6engine5audio4PlayEytdt:
.LFB8162:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movl	%edx, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	ucomisd	%xmm0, %xmm0
	jp	.L52
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	ja	.L38
	comisd	.LC0(%rip), %xmm0
	ja	.L38
	testq	%rsi, %rsi
	je	.L41
	movq	(%rdi), %rax
	movq	%rdi, %r13
	movzwl	%cx, %ebp
	cmpq	344(%rax), %rsi
	jnb	.L42
	movq	352(%rax), %rax
	movq	(%rax,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.L42
	movapd	%xmm0, %xmm1
	movsd	%xmm0, 8(%rsp)
	mulsd	8(%r13), %xmm1
	mulsd	.LC7(%rip), %xmm1
	cvttsd2sil	%xmm1, %esi
	call	Mix_VolumeChunk@PLT
	movq	0(%r13), %rax
	movsd	8(%rsp), %xmm0
	cmpq	344(%rax), %rbx
	movq	352(%rax), %rdx
	jnb	.L53
	movq	(%rdx,%rbx,8), %rsi
	movzwl	%r12w, %r12d
	movl	%ebp, %edx
	movsd	%xmm0, 8(%rsp)
	movl	%r12d, %edi
	call	Mix_PlayChannel@PLT
	movsd	8(%rsp), %xmm0
	cmpl	$-1, %eax
	je	.L54
.L41:
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
.L38:
	.cfi_restore_state
	movzwl	%cx, %ecx
	movzwl	%r12w, %edx
	movq	%rbx, %rsi
	movl	$1, %eax
	leaq	.LC11(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L42:
	leaq	.LC12(%rip), %rdi
	movzwl	%r12w, %edx
	movl	%ebp, %ecx
	movq	%rbx, %rsi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L52:
	leaq	.LC10(%rip), %rdi
	movzwl	%cx, %ecx
	movzwl	%dx, %edx
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L53:
	leaq	.LC8(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L54:
	leaq	.LC13(%rip), %rdi
	movl	%ebp, %ecx
	movl	%r12d, %edx
	movq	%rbx, %rsi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8162:
	.size	_ZN3wze6engine5audio4PlayEytdt, .-_ZN3wze6engine5audio4PlayEytdt
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"wze::engine.audio.Play(): Volume must not be NaN\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n"
	.align 8
.LC15:
	.string	"wze::engine.audio.Play(): Volume must be in range [0, 1]\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n"
	.align 8
.LC16:
	.string	"wze::engine.audio.Play(): Left must not be NaN\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n"
	.align 8
.LC17:
	.string	"wze::engine.audio.Play(): Left must be in range [0, 1]\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n"
	.align 8
.LC18:
	.string	"wze::engine.audio.Play(): Right must not be NaN\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n"
	.align 8
.LC19:
	.string	"wze::engine.audio.Play(): Right must be in range [0, 1]\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n"
	.align 8
.LC20:
	.string	"wze::engine.audio.Play(): Sound does not exist\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n"
	.align 8
.LC21:
	.string	"wze::engine.audio.Play(): Mix_PlayChannel() failed\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n"
	.align 8
.LC23:
	.string	"wze::engine.audio.Play(): Mix_SetPanning() failed\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio4PlayEytddd
	.type	_ZN3wze6engine5audio4PlayEytddd, @function
_ZN3wze6engine5audio4PlayEytddd:
.LFB8163:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
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
	ucomisd	%xmm0, %xmm0
	jp	.L89
	pxor	%xmm3, %xmm3
	comisd	%xmm0, %xmm3
	ja	.L58
	movsd	.LC0(%rip), %xmm4
	comisd	%xmm4, %xmm0
	ja	.L58
	ucomisd	%xmm1, %xmm1
	jp	.L90
	comisd	%xmm1, %xmm3
	ja	.L63
	comisd	%xmm4, %xmm1
	ja	.L63
	ucomisd	%xmm2, %xmm2
	jp	.L91
	comisd	%xmm2, %xmm3
	ja	.L68
	comisd	%xmm4, %xmm2
	ja	.L68
	testq	%rsi, %rsi
	je	.L71
	movq	(%rdi), %rax
	movq	%rdi, %r12
	cmpq	344(%rax), %rsi
	jnb	.L72
	movq	352(%rax), %rax
	movq	(%rax,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.L72
	movapd	%xmm0, %xmm3
	movsd	%xmm2, 24(%rsp)
	mulsd	8(%r12), %xmm3
	movsd	%xmm1, 16(%rsp)
	mulsd	.LC7(%rip), %xmm3
	movsd	%xmm0, 8(%rsp)
	cvttsd2sil	%xmm3, %esi
	call	Mix_VolumeChunk@PLT
	movq	(%r12), %rax
	movsd	8(%rsp), %xmm0
	movsd	16(%rsp), %xmm1
	movsd	24(%rsp), %xmm2
	cmpq	344(%rax), %rbx
	movq	352(%rax), %rdx
	jnb	.L92
	movq	(%rdx,%rbx,8), %rsi
	movzwl	%bp, %ebp
	xorl	%edx, %edx
	movsd	%xmm2, 24(%rsp)
	movl	%ebp, %edi
	movsd	%xmm1, 16(%rsp)
	movsd	%xmm0, 8(%rsp)
	call	Mix_PlayChannel@PLT
	movsd	8(%rsp), %xmm0
	movsd	16(%rsp), %xmm1
	cmpl	$-1, %eax
	movsd	24(%rsp), %xmm2
	je	.L93
	movsd	.LC22(%rip), %xmm3
	movapd	%xmm2, %xmm4
	movl	%ebp, %edi
	movsd	%xmm0, 24(%rsp)
	movsd	%xmm2, 16(%rsp)
	mulsd	%xmm3, %xmm4
	movsd	%xmm1, 8(%rsp)
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
	je	.L94
.L71:
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
.L58:
	.cfi_restore_state
	leaq	.LC15(%rip), %rdi
	movzwl	%bp, %edx
	movq	%rbx, %rsi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L68:
	leaq	.LC19(%rip), %rdi
	movzwl	%bp, %edx
	movq	%rbx, %rsi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L63:
	leaq	.LC17(%rip), %rdi
	movzwl	%bp, %edx
	movq	%rbx, %rsi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L72:
	leaq	.LC20(%rip), %rdi
	movzwl	%bp, %edx
	movq	%rbx, %rsi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L89:
	leaq	.LC14(%rip), %rdi
	movzwl	%dx, %edx
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L91:
	leaq	.LC18(%rip), %rdi
	movzwl	%dx, %edx
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L90:
	leaq	.LC16(%rip), %rdi
	movzwl	%dx, %edx
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L92:
	leaq	.LC8(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L94:
	leaq	.LC23(%rip), %rdi
	movl	%ebp, %edx
	movq	%rbx, %rsi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L93:
	leaq	.LC21(%rip), %rdi
	movl	%ebp, %edx
	movq	%rbx, %rsi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8163:
	.size	_ZN3wze6engine5audio4PlayEytddd, .-_ZN3wze6engine5audio4PlayEytddd
	.section	.rodata.str1.8
	.align 8
.LC24:
	.string	"wze::engine.audio.Play(): Volume must not be NaN\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n"
	.align 8
.LC25:
	.string	"wze::engine.audio.Play(): Volume must be in range [0, 1]\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n"
	.align 8
.LC26:
	.string	"wze::engine.audio.Play(): Left must not be NaN\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n"
	.align 8
.LC27:
	.string	"wze::engine.audio.Play(): Left must be in range [0, 1]\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n"
	.align 8
.LC28:
	.string	"wze::engine.audio.Play(): Right must not be NaN\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n"
	.align 8
.LC29:
	.string	"wze::engine.audio.Play(): Right must be in range [0, 1]\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n"
	.align 8
.LC30:
	.string	"wze::engine.audio.Play(): Sound does not exist\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n"
	.align 8
.LC31:
	.string	"wze::engine.audio.Play(): Mix_PlayChannel() failed\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n"
	.align 8
.LC32:
	.string	"wze::engine.audio.Play(): Mix_SetPanning() failed\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio4PlayEytdddt
	.type	_ZN3wze6engine5audio4PlayEytdddt, @function
_ZN3wze6engine5audio4PlayEytdddt:
.LFB8164:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
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
	ucomisd	%xmm0, %xmm0
	jp	.L129
	pxor	%xmm3, %xmm3
	comisd	%xmm0, %xmm3
	ja	.L98
	movsd	.LC0(%rip), %xmm4
	comisd	%xmm4, %xmm0
	ja	.L98
	ucomisd	%xmm1, %xmm1
	jp	.L130
	comisd	%xmm1, %xmm3
	ja	.L103
	comisd	%xmm4, %xmm1
	ja	.L103
	ucomisd	%xmm2, %xmm2
	jp	.L131
	comisd	%xmm2, %xmm3
	ja	.L108
	comisd	%xmm4, %xmm2
	ja	.L108
	testq	%rsi, %rsi
	je	.L111
	movq	(%rdi), %rax
	movq	%rdi, %r12
	movzwl	%cx, %r13d
	cmpq	344(%rax), %rsi
	jnb	.L112
	movq	352(%rax), %rax
	movq	(%rax,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.L112
	movapd	%xmm0, %xmm3
	movsd	%xmm2, 24(%rsp)
	mulsd	8(%r12), %xmm3
	movsd	%xmm1, 16(%rsp)
	mulsd	.LC7(%rip), %xmm3
	movsd	%xmm0, 8(%rsp)
	cvttsd2sil	%xmm3, %esi
	call	Mix_VolumeChunk@PLT
	movq	(%r12), %rax
	movsd	8(%rsp), %xmm0
	movsd	16(%rsp), %xmm1
	movsd	24(%rsp), %xmm2
	cmpq	344(%rax), %rbx
	movq	352(%rax), %rdx
	jnb	.L132
	movq	(%rdx,%rbx,8), %rsi
	movzwl	%bp, %ebp
	movl	%r13d, %edx
	movsd	%xmm2, 24(%rsp)
	movl	%ebp, %edi
	movsd	%xmm1, 16(%rsp)
	movsd	%xmm0, 8(%rsp)
	call	Mix_PlayChannel@PLT
	movsd	8(%rsp), %xmm0
	movsd	16(%rsp), %xmm1
	cmpl	$-1, %eax
	movsd	24(%rsp), %xmm2
	je	.L133
	movsd	.LC22(%rip), %xmm3
	movapd	%xmm2, %xmm4
	movl	%ebp, %edi
	movsd	%xmm0, 24(%rsp)
	movsd	%xmm2, 16(%rsp)
	mulsd	%xmm3, %xmm4
	movsd	%xmm1, 8(%rsp)
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
	je	.L134
.L111:
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
.L98:
	.cfi_restore_state
	leaq	.LC25(%rip), %rdi
	movzwl	%cx, %ecx
	movzwl	%bp, %edx
	movq	%rbx, %rsi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L108:
	leaq	.LC29(%rip), %rdi
	movzwl	%cx, %ecx
	movzwl	%bp, %edx
	movq	%rbx, %rsi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L103:
	leaq	.LC27(%rip), %rdi
	movzwl	%cx, %ecx
	movzwl	%bp, %edx
	movq	%rbx, %rsi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L112:
	leaq	.LC30(%rip), %rdi
	movzwl	%bp, %edx
	movl	%r13d, %ecx
	movq	%rbx, %rsi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L129:
	leaq	.LC24(%rip), %rdi
	movzwl	%cx, %ecx
	movzwl	%dx, %edx
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L131:
	leaq	.LC28(%rip), %rdi
	movzwl	%cx, %ecx
	movzwl	%dx, %edx
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L130:
	leaq	.LC26(%rip), %rdi
	movzwl	%cx, %ecx
	movzwl	%dx, %edx
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L132:
	leaq	.LC8(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L134:
	leaq	.LC32(%rip), %rdi
	movl	%r13d, %ecx
	movl	%ebp, %edx
	movq	%rbx, %rsi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L133:
	leaq	.LC31(%rip), %rdi
	movl	%r13d, %ecx
	movl	%ebp, %edx
	movq	%rbx, %rsi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8164:
	.size	_ZN3wze6engine5audio4PlayEytdddt, .-_ZN3wze6engine5audio4PlayEytdddt
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio8IsPausedEt
	.type	_ZN3wze6engine5audio8IsPausedEt, @function
_ZN3wze6engine5audio8IsPausedEt:
.LFB8165:
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
.LFE8165:
	.size	_ZN3wze6engine5audio8IsPausedEt, .-_ZN3wze6engine5audio8IsPausedEt
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio5PauseEt
	.type	_ZN3wze6engine5audio5PauseEt, @function
_ZN3wze6engine5audio5PauseEt:
.LFB8166:
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
.LFE8166:
	.size	_ZN3wze6engine5audio5PauseEt, .-_ZN3wze6engine5audio5PauseEt
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio6ResumeEt
	.type	_ZN3wze6engine5audio6ResumeEt, @function
_ZN3wze6engine5audio6ResumeEt:
.LFB8167:
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
.LFE8167:
	.size	_ZN3wze6engine5audio6ResumeEt, .-_ZN3wze6engine5audio6ResumeEt
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio8PauseAllEv
	.type	_ZN3wze6engine5audio8PauseAllEv, @function
_ZN3wze6engine5audio8PauseAllEv:
.LFB8168:
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
.LFE8168:
	.size	_ZN3wze6engine5audio8PauseAllEv, .-_ZN3wze6engine5audio8PauseAllEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio9ResumeAllEv
	.type	_ZN3wze6engine5audio9ResumeAllEv, @function
_ZN3wze6engine5audio9ResumeAllEv:
.LFB8169:
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
.LFE8169:
	.size	_ZN3wze6engine5audio9ResumeAllEv, .-_ZN3wze6engine5audio9ResumeAllEv
	.section	.rodata.str1.8
	.align 8
.LC33:
	.string	"wze::engine.audio.Stop(): Mix_HaltChannel() failed\nParams: Channel: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio4StopEt
	.type	_ZN3wze6engine5audio4StopEt, @function
_ZN3wze6engine5audio4StopEt:
.LFB8170:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movzwl	%si, %ebx
	movl	%ebx, %edi
	call	Mix_HaltChannel@PLT
	testl	%eax, %eax
	jne	.L148
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L148:
	.cfi_restore_state
	leaq	.LC33(%rip), %rdi
	movl	%ebx, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8170:
	.size	_ZN3wze6engine5audio4StopEt, .-_ZN3wze6engine5audio4StopEt
	.section	.rodata.cst8,"aM",@progbits,8
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
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
