	.file	"SEAudio.cpp"
	.text
	.align 2
	.globl	_ZN4slay6engine5audioC2ERS0_
	.type	_ZN4slay6engine5audioC2ERS0_, @function
_ZN4slay6engine5audioC2ERS0_:
.LFB2197:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2197:
	.size	_ZN4slay6engine5audioC2ERS0_, .-_ZN4slay6engine5audioC2ERS0_
	.globl	_ZN4slay6engine5audioC1ERS0_
	.set	_ZN4slay6engine5audioC1ERS0_,_ZN4slay6engine5audioC2ERS0_
	.align 2
	.globl	_ZN4slay6engine5audio15GetGlobalVolumeEv
	.type	_ZN4slay6engine5audio15GetGlobalVolumeEv, @function
_ZN4slay6engine5audio15GetGlobalVolumeEv:
.LFB2199:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2199:
	.size	_ZN4slay6engine5audio15GetGlobalVolumeEv, .-_ZN4slay6engine5audio15GetGlobalVolumeEv
	.section	.rodata
	.align 8
.LC2:
	.string	"engine.audio.SetGlobalVolume(): GlobalVolume must be in range [0, 1]\nParams: Volume: %lf\n"
	.text
	.align 2
	.globl	_ZN4slay6engine5audio15SetGlobalVolumeEd
	.type	_ZN4slay6engine5audio15SetGlobalVolumeEd, @function
_ZN4slay6engine5audio15SetGlobalVolumeEd:
.LFB2200:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	pxor	%xmm0, %xmm0
	comisd	-16(%rbp), %xmm0
	ja	.L5
	movsd	-16(%rbp), %xmm0
	movsd	.LC0(%rip), %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L9
.L5:
	movq	-16(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L9:
	movq	-8(%rbp), %rax
	movsd	-16(%rbp), %xmm0
	movsd	%xmm0, 8(%rax)
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2200:
	.size	_ZN4slay6engine5audio15SetGlobalVolumeEd, .-_ZN4slay6engine5audio15SetGlobalVolumeEd
	.section	.rodata
	.align 8
.LC3:
	.string	"engine.audio.Play(): Volume must be in range [0, 1]\nParams: ID: %lld, Channel: %d, Volume: %lf\n"
	.align 8
.LC4:
	.string	"engine.audio.Play(): WAV does not exists\nParams: ID: %lld, Channel: %d, Volume: %lf\n"
	.align 8
.LC6:
	.string	"engine.audio.Play(): Mix_PlayChannel() failed\nParams: ID: %lld, Channel: %d, Volume: %lf\n"
	.text
	.align 2
	.globl	_ZN4slay6engine5audio4PlayEytd
	.type	_ZN4slay6engine5audio4PlayEytd, @function
_ZN4slay6engine5audio4PlayEytd:
.LFB2201:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, %eax
	movsd	%xmm0, -48(%rbp)
	movw	%ax, -36(%rbp)
	pxor	%xmm0, %xmm0
	comisd	-48(%rbp), %xmm0
	ja	.L11
	movsd	-48(%rbp), %xmm0
	movsd	.LC0(%rip), %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L21
.L11:
	movzwl	-36(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %xmm0
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L21:
	cmpq	$0, -32(%rbp)
	jne	.L14
	movl	$0, %eax
	jmp	.L15
.L14:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$568, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	cmpq	%rax, -32(%rbp)
	jnb	.L16
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	568(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L17
.L16:
	movl	$1, %eax
	jmp	.L18
.L17:
	movl	$0, %eax
.L18:
	testb	%al, %al
	je	.L19
	movzwl	-36(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %xmm0
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L19:
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-48(%rbp), %xmm1
	movsd	.LC5(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %ebx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	568(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkEixEy
	movq	(%rax), %rax
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	Mix_VolumeChunk@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	568(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkEixEy
	movq	(%rax), %rcx
	movzwl	-36(%rbp), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	Mix_PlayChannel@PLT
	cmpl	$-1, %eax
	sete	%al
	testb	%al, %al
	je	.L20
	movzwl	-36(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %xmm0
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L20:
	movl	$0, %eax
.L15:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2201:
	.size	_ZN4slay6engine5audio4PlayEytd, .-_ZN4slay6engine5audio4PlayEytd
	.section	.rodata
	.align 8
.LC7:
	.string	"engine.audio.Play(): Volume must be in range [0, 1]\nParams: ID: %lld, Channel: %d, Volume: %lf, Loops: %d\n"
	.align 8
.LC8:
	.string	"engine.audio.Play(): WAV does not exists\nParams: ID: %lld, Channel: %d, Volume: %lf, Loops: %d\n"
	.align 8
.LC9:
	.string	"engine.audio.Play(): Mix_PlayChannel() failed\nParams: ID: %lld, Channel: %d, Volume: %lf, Loops: %d\n"
	.text
	.align 2
	.globl	_ZN4slay6engine5audio4PlayEytdt
	.type	_ZN4slay6engine5audio4PlayEytdt, @function
_ZN4slay6engine5audio4PlayEytdt:
.LFB2202:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movsd	%xmm0, -48(%rbp)
	movl	%ecx, %eax
	movw	%dx, -36(%rbp)
	movw	%ax, -40(%rbp)
	pxor	%xmm0, %xmm0
	comisd	-48(%rbp), %xmm0
	ja	.L23
	movsd	-48(%rbp), %xmm0
	movsd	.LC0(%rip), %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L33
.L23:
	movzwl	-40(%rbp), %ecx
	movzwl	-36(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rsi, %xmm0
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L33:
	cmpq	$0, -32(%rbp)
	jne	.L26
	movl	$0, %eax
	jmp	.L27
.L26:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$568, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	cmpq	%rax, -32(%rbp)
	jnb	.L28
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	568(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L29
.L28:
	movl	$1, %eax
	jmp	.L30
.L29:
	movl	$0, %eax
.L30:
	testb	%al, %al
	je	.L31
	movzwl	-40(%rbp), %ecx
	movzwl	-36(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rsi, %xmm0
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L31:
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-48(%rbp), %xmm1
	movsd	.LC5(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %ebx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	568(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkEixEy
	movq	(%rax), %rax
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	Mix_VolumeChunk@PLT
	movzwl	-40(%rbp), %ebx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	568(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkEixEy
	movq	(%rax), %rcx
	movzwl	-36(%rbp), %eax
	movl	%ebx, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	Mix_PlayChannel@PLT
	cmpl	$-1, %eax
	sete	%al
	testb	%al, %al
	je	.L32
	movzwl	-40(%rbp), %ecx
	movzwl	-36(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rsi, %xmm0
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L32:
	movl	$0, %eax
.L27:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2202:
	.size	_ZN4slay6engine5audio4PlayEytdt, .-_ZN4slay6engine5audio4PlayEytdt
	.section	.rodata
	.align 8
.LC10:
	.string	"engine.audio.Play(): Volume must be in range [0, 1]\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n"
	.align 8
.LC11:
	.string	"engine.audio.Play(): Left must be in range [0, 1]\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n"
	.align 8
.LC12:
	.string	"engine.audio.Play(): Right must be in range [0, 1]\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n"
	.align 8
.LC13:
	.string	"engine.audio.Play(): WAV does not exists\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n"
	.align 8
.LC14:
	.string	"engine.audio.Play(): Mix_PlayChannel() failed\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n"
	.align 8
.LC16:
	.string	"engine.audio.Play(): Mix_SetPanning() failed\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\n"
	.text
	.align 2
	.globl	_ZN4slay6engine5audio4PlayEytddd
	.type	_ZN4slay6engine5audio4PlayEytddd, @function
_ZN4slay6engine5audio4PlayEytddd:
.LFB2203:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, %eax
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm1, -56(%rbp)
	movsd	%xmm2, -64(%rbp)
	movw	%ax, -36(%rbp)
	pxor	%xmm0, %xmm0
	comisd	-48(%rbp), %xmm0
	ja	.L35
	movsd	-48(%rbp), %xmm0
	movsd	.LC0(%rip), %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L52
.L35:
	movzwl	-36(%rbp), %edx
	movsd	-64(%rbp), %xmm1
	movsd	-56(%rbp), %xmm0
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rcx, %xmm0
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L52:
	pxor	%xmm0, %xmm0
	comisd	-56(%rbp), %xmm0
	ja	.L38
	movsd	-56(%rbp), %xmm0
	movsd	.LC0(%rip), %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L53
.L38:
	movzwl	-36(%rbp), %edx
	movsd	-64(%rbp), %xmm1
	movsd	-56(%rbp), %xmm0
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rcx, %xmm0
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L53:
	pxor	%xmm0, %xmm0
	comisd	-64(%rbp), %xmm0
	ja	.L41
	movsd	-64(%rbp), %xmm0
	movsd	.LC0(%rip), %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L54
.L41:
	movzwl	-36(%rbp), %edx
	movsd	-64(%rbp), %xmm1
	movsd	-56(%rbp), %xmm0
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rcx, %xmm0
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L54:
	cmpq	$0, -32(%rbp)
	jne	.L44
	movl	$0, %eax
	jmp	.L45
.L44:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$568, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	cmpq	%rax, -32(%rbp)
	jnb	.L46
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	568(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L47
.L46:
	movl	$1, %eax
	jmp	.L48
.L47:
	movl	$0, %eax
.L48:
	testb	%al, %al
	je	.L49
	movzwl	-36(%rbp), %edx
	movsd	-64(%rbp), %xmm1
	movsd	-56(%rbp), %xmm0
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rcx, %xmm0
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L49:
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-48(%rbp), %xmm1
	movsd	.LC5(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %ebx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	568(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkEixEy
	movq	(%rax), %rax
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	Mix_VolumeChunk@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	568(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkEixEy
	movq	(%rax), %rcx
	movzwl	-36(%rbp), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	Mix_PlayChannel@PLT
	cmpl	$-1, %eax
	sete	%al
	testb	%al, %al
	je	.L50
	movzwl	-36(%rbp), %edx
	movsd	-64(%rbp), %xmm1
	movsd	-56(%rbp), %xmm0
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rcx, %xmm0
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L50:
	movsd	-64(%rbp), %xmm1
	movsd	.LC15(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	movzbl	%al, %edx
	movsd	-56(%rbp), %xmm1
	movsd	.LC15(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	movzbl	%al, %ecx
	movzwl	-36(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	Mix_SetPanning@PLT
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	.L51
	movzwl	-36(%rbp), %edx
	movsd	-64(%rbp), %xmm1
	movsd	-56(%rbp), %xmm0
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rcx, %xmm0
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L51:
	movl	$0, %eax
.L45:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2203:
	.size	_ZN4slay6engine5audio4PlayEytddd, .-_ZN4slay6engine5audio4PlayEytddd
	.section	.rodata
	.align 8
.LC17:
	.string	"engine.audio.Play(): Volume must be in range [0, 1]\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n"
	.align 8
.LC18:
	.string	"engine.audio.Play(): Left must be in range [0, 1]\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n"
	.align 8
.LC19:
	.string	"engine.audio.Play(): Right must be in range [0, 1]\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n"
	.align 8
.LC20:
	.string	"engine.audio.Play(): WAV does not exists\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n"
	.align 8
.LC21:
	.string	"engine.audio.Play(): Mix_PlayChannel() failed\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n"
	.align 8
.LC22:
	.string	"engine.audio.Play(): Mix_SetPanning() failed\nParams: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n"
	.text
	.align 2
	.globl	_ZN4slay6engine5audio4PlayEytdddt
	.type	_ZN4slay6engine5audio4PlayEytdddt, @function
_ZN4slay6engine5audio4PlayEytdddt:
.LFB2204:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm1, -56(%rbp)
	movsd	%xmm2, -64(%rbp)
	movl	%ecx, %eax
	movw	%dx, -36(%rbp)
	movw	%ax, -40(%rbp)
	pxor	%xmm0, %xmm0
	comisd	-48(%rbp), %xmm0
	ja	.L56
	movsd	-48(%rbp), %xmm0
	movsd	.LC0(%rip), %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L73
.L56:
	movzwl	-40(%rbp), %ecx
	movzwl	-36(%rbp), %edx
	movsd	-64(%rbp), %xmm1
	movsd	-56(%rbp), %xmm0
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rsi, %xmm0
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L73:
	pxor	%xmm0, %xmm0
	comisd	-56(%rbp), %xmm0
	ja	.L59
	movsd	-56(%rbp), %xmm0
	movsd	.LC0(%rip), %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L74
.L59:
	movzwl	-40(%rbp), %ecx
	movzwl	-36(%rbp), %edx
	movsd	-64(%rbp), %xmm1
	movsd	-56(%rbp), %xmm0
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rsi, %xmm0
	movq	%rax, %rsi
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L74:
	pxor	%xmm0, %xmm0
	comisd	-64(%rbp), %xmm0
	ja	.L62
	movsd	-64(%rbp), %xmm0
	movsd	.LC0(%rip), %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L75
.L62:
	movzwl	-40(%rbp), %ecx
	movzwl	-36(%rbp), %edx
	movsd	-64(%rbp), %xmm1
	movsd	-56(%rbp), %xmm0
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rsi, %xmm0
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L75:
	cmpq	$0, -32(%rbp)
	jne	.L65
	movl	$0, %eax
	jmp	.L66
.L65:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$568, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	cmpq	%rax, -32(%rbp)
	jnb	.L67
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	568(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L68
.L67:
	movl	$1, %eax
	jmp	.L69
.L68:
	movl	$0, %eax
.L69:
	testb	%al, %al
	je	.L70
	movzwl	-40(%rbp), %ecx
	movzwl	-36(%rbp), %edx
	movsd	-64(%rbp), %xmm1
	movsd	-56(%rbp), %xmm0
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rsi, %xmm0
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L70:
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-48(%rbp), %xmm1
	movsd	.LC5(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %ebx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	568(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkEixEy
	movq	(%rax), %rax
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	Mix_VolumeChunk@PLT
	movzwl	-40(%rbp), %ebx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	568(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkEixEy
	movq	(%rax), %rcx
	movzwl	-36(%rbp), %eax
	movl	%ebx, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	Mix_PlayChannel@PLT
	cmpl	$-1, %eax
	sete	%al
	testb	%al, %al
	je	.L71
	movzwl	-40(%rbp), %ecx
	movzwl	-36(%rbp), %edx
	movsd	-64(%rbp), %xmm1
	movsd	-56(%rbp), %xmm0
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rsi, %xmm0
	movq	%rax, %rsi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L71:
	movsd	-64(%rbp), %xmm1
	movsd	.LC15(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	movzbl	%al, %edx
	movsd	-56(%rbp), %xmm1
	movsd	.LC15(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	movzbl	%al, %ecx
	movzwl	-36(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	Mix_SetPanning@PLT
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	.L72
	movzwl	-40(%rbp), %ecx
	movzwl	-36(%rbp), %edx
	movsd	-64(%rbp), %xmm1
	movsd	-56(%rbp), %xmm0
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rsi, %xmm0
	movq	%rax, %rsi
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L72:
	movl	$0, %eax
.L66:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2204:
	.size	_ZN4slay6engine5audio4PlayEytdddt, .-_ZN4slay6engine5audio4PlayEytdddt
	.align 2
	.globl	_ZN4slay6engine5audio4StopEt
	.type	_ZN4slay6engine5audio4StopEt, @function
_ZN4slay6engine5audio4StopEt:
.LFB2205:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movw	%ax, -12(%rbp)
	movzwl	-12(%rbp), %eax
	movl	%eax, %edi
	call	Mix_HaltChannel@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2205:
	.size	_ZN4slay6engine5audio4StopEt, .-_ZN4slay6engine5audio4StopEt
	.section	.text._ZN3neo5arrayIP9Mix_ChunkE6LengthEv,"axG",@progbits,_ZN3neo5arrayIP9Mix_ChunkE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	.type	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv, @function
_ZN3neo5arrayIP9Mix_ChunkE6LengthEv:
.LFB2270:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2270:
	.size	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv, .-_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	.section	.rodata
	.align 8
.LC23:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.section	.text._ZN3neo5arrayIP9Mix_ChunkEixEy,"axG",@progbits,_ZN3neo5arrayIP9Mix_ChunkEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9Mix_ChunkEixEy
	.type	_ZN3neo5arrayIP9Mix_ChunkEixEy, @function
_ZN3neo5arrayIP9Mix_ChunkEixEy:
.LFB2271:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L81
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L81:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2271:
	.size	_ZN3neo5arrayIP9Mix_ChunkEixEy, .-_ZN3neo5arrayIP9Mix_ChunkEixEy
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC5:
	.long	0
	.long	1080033280
	.align 8
.LC15:
	.long	0
	.long	1081073664
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
