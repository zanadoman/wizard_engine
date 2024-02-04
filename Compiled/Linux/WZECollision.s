	.file	"WZECollision.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"none1"
.LC1:
	.string	"top left"
.LC2:
	.string	"top right"
.LC3:
	.string	"bot left"
.LC4:
	.string	"bot right"
.LC5:
	.string	"none2"
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
	pxor	%xmm7, %xmm7
	shrw	$2, %ax
	cvtsi2sdl	%edx, %xmm7
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm5
	movl	%edx, %eax
	shrw	$2, %ax
	movzwl	%ax, %eax
	addsd	%xmm4, %xmm5
	pxor	%xmm4, %xmm4
	cvtsi2sdl	%eax, %xmm4
	addsd	%xmm6, %xmm4
	movapd	%xmm4, %xmm6
	subsd	%xmm7, %xmm6
	comisd	%xmm5, %xmm6
	ja	.L2
	pxor	%xmm8, %xmm8
	movapd	%xmm5, %xmm7
	cvtsi2sdl	%esi, %xmm8
	subsd	%xmm8, %xmm7
	comisd	%xmm4, %xmm7
	ja	.L2
	comisd	%xmm1, %xmm3
	jb	.L85
	comisd	%xmm3, %xmm2
	jnb	.L8
	comisd	%xmm0, %xmm1
	jb	.L104
	comisd	%xmm6, %xmm7
	jnb	.L16
	comisd	%xmm1, %xmm0
	jnb	.L25
	comisd	%xmm0, %xmm2
	jb	.L27
.L26:
	comisd	%xmm2, %xmm3
	jnb	.L13
	comisd	%xmm1, %xmm3
	jnb	.L19
	comisd	%xmm0, %xmm1
	jnb	.L34
.L43:
	comisd	%xmm7, %xmm6
	jb	.L66
.L53:
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L2:
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
.L5:
	xorl	%eax, %eax
.L1:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L85:
	.cfi_restore_state
	comisd	%xmm1, %xmm0
	jnb	.L25
	comisd	%xmm0, %xmm2
	jnb	.L105
.L36:
	comisd	%xmm1, %xmm3
	jnb	.L27
	comisd	%xmm0, %xmm1
	jnb	.L34
.L59:
	comisd	%xmm1, %xmm0
	jnb	.L35
.L46:
	comisd	%xmm0, %xmm2
	jb	.L48
.L66:
	comisd	%xmm2, %xmm3
	jnb	.L54
.L48:
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L27:
	comisd	%xmm3, %xmm2
	jnb	.L19
	comisd	%xmm0, %xmm1
	jnb	.L45
	comisd	%xmm0, %xmm2
	jb	.L48
	comisd	%xmm7, %xmm6
	jnb	.L53
	.p2align 4,,10
	.p2align 3
.L54:
	comisd	%xmm6, %xmm5
	jb	.L48
	comisd	%xmm5, %xmm4
	jb	.L48
	jmp	.L53
	.p2align 4,,10
	.p2align 3
.L8:
	comisd	%xmm7, %xmm4
	jnb	.L106
	comisd	%xmm0, %xmm1
	jnb	.L17
	comisd	%xmm7, %xmm4
	jnb	.L12
	comisd	%xmm2, %xmm3
	jnb	.L13
	.p2align 4,,10
	.p2align 3
.L19:
	comisd	%xmm7, %xmm6
	jnb	.L55
	comisd	%xmm0, %xmm1
	jb	.L43
	jmp	.L45
	.p2align 4,,10
	.p2align 3
.L25:
	comisd	%xmm0, %xmm2
	jnb	.L20
	comisd	%xmm1, %xmm3
	jnb	.L27
	comisd	%xmm0, %xmm1
	jb	.L35
.L34:
	comisd	%xmm1, %xmm3
	jb	.L59
	.p2align 4,,10
	.p2align 3
.L45:
	comisd	%xmm6, %xmm5
	jb	.L59
.L57:
	comisd	%xmm5, %xmm4
	jb	.L59
.L55:
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
.L24:
	movl	$1, %eax
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L104:
	comisd	%xmm0, %xmm2
	jb	.L36
	comisd	%xmm7, %xmm4
	jnb	.L12
.L13:
	comisd	%xmm6, %xmm7
	jb	.L27
.L33:
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L106:
	comisd	%xmm4, %xmm5
	jnb	.L16
	comisd	%xmm0, %xmm1
	jnb	.L17
	comisd	%xmm2, %xmm3
	jnb	.L13
	comisd	%xmm7, %xmm6
	jb	.L48
	jmp	.L55
	.p2align 4,,10
	.p2align 3
.L20:
	comisd	%xmm7, %xmm4
	jb	.L26
.L12:
	comisd	%xmm4, %xmm5
	jnb	.L33
	jmp	.L26
	.p2align 4,,10
	.p2align 3
.L105:
	comisd	%xmm2, %xmm3
	jnb	.L13
	comisd	%xmm1, %xmm3
	jb	.L59
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L35:
	comisd	%xmm0, %xmm2
	jb	.L48
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L16:
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L17:
	comisd	%xmm6, %xmm7
	jnb	.L16
	comisd	%xmm1, %xmm0
	jnb	.L20
	ucomisd	%xmm3, %xmm2
	jp	.L71
	jne	.L71
	comisd	%xmm6, %xmm7
	jnb	.L33
	comisd	%xmm7, %xmm6
	jb	.L45
	jmp	.L55
.L71:
	comisd	%xmm7, %xmm6
	jnb	.L55
	comisd	%xmm6, %xmm5
	jnb	.L57
	jmp	.L46
	.cfi_endproc
.LFE2231:
	.size	_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_, .-_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
