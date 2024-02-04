	.file	"WZECollision.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"none"
.LC1:
	.string	"top left"
.LC2:
	.string	"top right"
.LC3:
	.string	"bot left"
.LC4:
	.string	"bit right"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_
	.type	_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_, @function
_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_:
.LFB2231:
	.cfi_startproc
	pxor	%xmm2, %xmm2
	pxor	%xmm0, %xmm0
	pxor	%xmm3, %xmm3
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movzwl	200(%rsi), %eax
	movsd	152(%rsi), %xmm1
	movsd	160(%rsi), %xmm4
	movsd	160(%rdx), %xmm6
	movl	%eax, %ecx
	cvtsi2sdl	%eax, %xmm2
	movzwl	200(%rdx), %eax
	movzwl	202(%rsi), %esi
	shrw	$2, %cx
	movzwl	%cx, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movl	%eax, %ecx
	shrw	$2, %cx
	movzwl	%cx, %ecx
	cvtsi2sdl	%ecx, %xmm3
	subsd	%xmm0, %xmm1
	movsd	152(%rdx), %xmm0
	movzwl	202(%rdx), %edx
	subsd	%xmm3, %xmm0
	addsd	%xmm1, %xmm2
	pxor	%xmm3, %xmm3
	cvtsi2sdl	%eax, %xmm3
	comisd	%xmm2, %xmm0
	addsd	%xmm0, %xmm3
	ja	.L2
	comisd	%xmm3, %xmm1
	ja	.L2
	movl	%esi, %eax
	pxor	%xmm5, %xmm5
	shrw	$2, %ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm5
	movl	%edx, %eax
	shrw	$2, %ax
	movzwl	%ax, %eax
	addsd	%xmm4, %xmm5
	pxor	%xmm4, %xmm4
	cvtsi2sdl	%esi, %xmm4
	movapd	%xmm5, %xmm7
	subsd	%xmm4, %xmm7
	pxor	%xmm4, %xmm4
	cvtsi2sdl	%eax, %xmm4
	addsd	%xmm6, %xmm4
	comisd	%xmm7, %xmm4
	ja	.L2
	pxor	%xmm8, %xmm8
	movapd	%xmm4, %xmm6
	cvtsi2sdl	%edx, %xmm8
	subsd	%xmm8, %xmm6
	comisd	%xmm6, %xmm5
	ja	.L2
	comisd	%xmm1, %xmm3
	jb	.L95
	comisd	%xmm3, %xmm2
	jnb	.L8
	comisd	%xmm0, %xmm1
	jnb	.L9
	comisd	%xmm0, %xmm2
	jb	.L96
	comisd	%xmm5, %xmm6
	jnb	.L12
.L13:
	comisd	%xmm4, %xmm5
	jb	.L33
.L41:
	comisd	%xmm5, %xmm6
	jnb	.L38
	comisd	%xmm3, %xmm2
	jb	.L42
	comisd	%xmm5, %xmm4
	jnb	.L25
	comisd	%xmm0, %xmm1
	jb	.L51
	.p2align 4,,10
	.p2align 3
.L50:
	comisd	%xmm4, %xmm7
	jb	.L62
.L80:
	comisd	%xmm7, %xmm6
	jb	.L62
.L61:
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L44:
	comisd	%xmm0, %xmm2
	jnb	.L52
	.p2align 4,,10
	.p2align 3
.L2:
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	xorl	%eax, %eax
.L1:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L95:
	.cfi_restore_state
	comisd	%xmm1, %xmm0
	jnb	.L32
	comisd	%xmm0, %xmm2
	jnb	.L113
	comisd	%xmm1, %xmm3
	jnb	.L33
	comisd	%xmm0, %xmm1
	jb	.L62
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L32:
	comisd	%xmm0, %xmm2
	jnb	.L22
.L96:
	comisd	%xmm1, %xmm3
	jnb	.L33
	comisd	%xmm0, %xmm1
	jb	.L44
.L43:
	comisd	%xmm1, %xmm3
	jnb	.L50
.L62:
	comisd	%xmm1, %xmm0
	jnb	.L44
.L67:
	comisd	%xmm0, %xmm2
	jb	.L2
.L51:
	comisd	%xmm2, %xmm3
	jb	.L2
.L58:
	comisd	%xmm4, %xmm7
	jb	.L2
	comisd	%xmm7, %xmm6
	jb	.L2
.L71:
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
.L31:
	movl	$1, %eax
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L8:
	comisd	%xmm5, %xmm6
	jb	.L97
	comisd	%xmm6, %xmm7
	jnb	.L16
	comisd	%xmm0, %xmm1
	jb	.L12
	comisd	%xmm4, %xmm5
	jnb	.L16
	comisd	%xmm1, %xmm0
	jnb	.L12
	ucomisd	%xmm3, %xmm2
	jp	.L25
	je	.L19
	.p2align 4,,10
	.p2align 3
.L25:
	comisd	%xmm4, %xmm7
	jnb	.L61
	comisd	%xmm0, %xmm1
	jnb	.L50
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L9:
	comisd	%xmm4, %xmm5
	jb	.L100
	comisd	%xmm5, %xmm6
	jnb	.L16
.L100:
	comisd	%xmm1, %xmm0
	jnb	.L32
	comisd	%xmm0, %xmm2
	jnb	.L23
	.p2align 4,,10
	.p2align 3
.L33:
	comisd	%xmm3, %xmm2
	jnb	.L19
.L42:
	comisd	%xmm0, %xmm1
	jnb	.L50
	comisd	%xmm0, %xmm2
	jb	.L2
	comisd	%xmm5, %xmm4
	jb	.L58
	.p2align 4,,10
	.p2align 3
.L57:
	comisd	%xmm4, %xmm7
	jb	.L51
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L97:
	comisd	%xmm0, %xmm1
	jb	.L114
	comisd	%xmm4, %xmm5
	jb	.L98
	comisd	%xmm5, %xmm6
	jnb	.L16
	comisd	%xmm1, %xmm0
	jnb	.L22
	.p2align 4,,10
	.p2align 3
.L23:
	comisd	%xmm2, %xmm3
	jnb	.L13
.L39:
	comisd	%xmm1, %xmm3
	jnb	.L19
	comisd	%xmm0, %xmm1
	jnb	.L43
.L52:
	comisd	%xmm5, %xmm4
	jb	.L51
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L22:
	comisd	%xmm5, %xmm6
	jb	.L23
	.p2align 4,,10
	.p2align 3
.L12:
	comisd	%xmm6, %xmm7
	jnb	.L38
	comisd	%xmm2, %xmm3
	jb	.L39
	comisd	%xmm4, %xmm5
	jnb	.L41
	comisd	%xmm3, %xmm2
	jb	.L42
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L113:
	comisd	%xmm2, %xmm3
	jnb	.L13
	comisd	%xmm1, %xmm3
	jb	.L62
	.p2align 4,,10
	.p2align 3
.L19:
	comisd	%xmm5, %xmm4
	jnb	.L25
	comisd	%xmm0, %xmm1
	jb	.L52
	jmp	.L50
	.p2align 4,,10
	.p2align 3
.L16:
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L38:
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L114:
	comisd	%xmm5, %xmm6
	jnb	.L12
	comisd	%xmm2, %xmm3
	jnb	.L13
	jmp	.L19
.L98:
	comisd	%xmm1, %xmm0
	jnb	.L22
	ucomisd	%xmm3, %xmm2
	jp	.L92
	je	.L76
.L92:
	comisd	%xmm5, %xmm4
	jb	.L106
	comisd	%xmm4, %xmm7
	jb	.L62
	jmp	.L61
.L76:
	comisd	%xmm4, %xmm5
	jnb	.L41
	comisd	%xmm5, %xmm4
	jnb	.L25
	jmp	.L50
.L106:
	comisd	%xmm4, %xmm7
	jnb	.L80
	jmp	.L67
	.cfi_endproc
.LFE2231:
	.size	_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_, .-_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
