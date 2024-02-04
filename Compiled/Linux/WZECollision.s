	.file	"WZECollision.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collisionC2EPS0_
	.type	_ZN3wze6engine9collisionC2EPS0_, @function
_ZN3wze6engine9collisionC2EPS0_:
.LFB2232:
	.cfi_startproc
	movq	%rsi, (%rdi)
	ret
	.cfi_endproc
.LFE2232:
	.size	_ZN3wze6engine9collisionC2EPS0_, .-_ZN3wze6engine9collisionC2EPS0_
	.globl	_ZN3wze6engine9collisionC1EPS0_
	.set	_ZN3wze6engine9collisionC1EPS0_,_ZN3wze6engine9collisionC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_
	.type	_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_, @function
_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_:
.LFB2234:
	.cfi_startproc
	movq	%rdx, %rax
	movzwl	200(%rsi), %edx
	movq	%rsi, %rcx
	xorl	%edi, %edi
	pxor	%xmm1, %xmm1
	pxor	%xmm2, %xmm2
	movsd	152(%rcx), %xmm0
	pxor	%xmm3, %xmm3
	movl	%edx, %esi
	cvtsi2sdl	%edx, %xmm2
	shrw	%si
	movzwl	%si, %esi
	cvtsi2sdl	%esi, %xmm1
	movzwl	200(%rax), %esi
	movl	%esi, %edx
	shrw	%dx
	movzwl	%dx, %edx
	subsd	%xmm1, %xmm0
	movsd	152(%rax), %xmm1
	cvtsi2sdl	%edx, %xmm3
	addsd	%xmm0, %xmm2
	subsd	%xmm3, %xmm1
	comisd	%xmm2, %xmm1
	ja	.L3
	pxor	%xmm3, %xmm3
	cvtsi2sdl	%esi, %xmm3
	addsd	%xmm1, %xmm3
	comisd	%xmm3, %xmm0
	ja	.L3
	movzwl	202(%rcx), %esi
	pxor	%xmm4, %xmm4
	pxor	%xmm5, %xmm5
	pxor	%xmm7, %xmm7
	movl	%esi, %edx
	shrw	%dx
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm4
	movzwl	202(%rax), %edx
	addsd	160(%rcx), %xmm4
	movl	%edx, %ecx
	cvtsi2sdl	%edx, %xmm7
	shrw	%cx
	movzwl	%cx, %ecx
	cvtsi2sdl	%ecx, %xmm5
	addsd	160(%rax), %xmm5
	movapd	%xmm5, %xmm6
	subsd	%xmm7, %xmm6
	comisd	%xmm4, %xmm6
	ja	.L3
	pxor	%xmm8, %xmm8
	movapd	%xmm4, %xmm7
	cvtsi2sdl	%esi, %xmm8
	subsd	%xmm8, %xmm7
	comisd	%xmm5, %xmm7
	ja	.L3
	comisd	%xmm0, %xmm3
	jb	.L92
	comisd	%xmm3, %xmm2
	jb	.L116
	comisd	%xmm7, %xmm6
	movl	$1, %edi
	jnb	.L3
	comisd	%xmm1, %xmm0
	jb	.L111
	comisd	%xmm6, %xmm4
	jb	.L94
	comisd	%xmm4, %xmm5
	jnb	.L3
	comisd	%xmm0, %xmm1
	jnb	.L16
	.p2align 4,,10
	.p2align 3
.L17:
	comisd	%xmm2, %xmm3
	jnb	.L11
	comisd	%xmm0, %xmm3
	jnb	.L13
	comisd	%xmm1, %xmm0
	jnb	.L27
.L41:
	comisd	%xmm7, %xmm5
	jb	.L38
.L39:
	comisd	%xmm5, %xmm4
	movl	$1, %edi
	jb	.L38
.L3:
	movl	%edi, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L92:
	comisd	%xmm0, %xmm1
	jnb	.L22
	comisd	%xmm1, %xmm2
	jnb	.L117
	comisd	%xmm0, %xmm3
	jnb	.L23
	comisd	%xmm1, %xmm0
	jnb	.L27
.L51:
	comisd	%xmm0, %xmm1
	jnb	.L28
	comisd	%xmm1, %xmm2
	jnb	.L38
.L104:
	xorl	%edi, %edi
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L116:
	comisd	%xmm1, %xmm0
	jnb	.L8
	comisd	%xmm1, %xmm2
	jb	.L93
	comisd	%xmm7, %xmm6
	movl	$1, %edi
	jnb	.L3
.L11:
	comisd	%xmm6, %xmm4
	jb	.L23
.L62:
	comisd	%xmm4, %xmm5
	movl	$1, %edi
	jnb	.L3
	ucomisd	%xmm3, %xmm2
	jp	.L88
	je	.L35
.L88:
	comisd	%xmm1, %xmm0
	jnb	.L37
	comisd	%xmm7, %xmm5
	movl	$1, %edi
	jnb	.L3
	.p2align 4,,10
	.p2align 3
.L38:
	comisd	%xmm2, %xmm3
	jb	.L104
.L40:
	comisd	%xmm6, %xmm7
	setnb	%dil
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L117:
	comisd	%xmm2, %xmm3
	jnb	.L11
	comisd	%xmm0, %xmm3
	jb	.L51
	.p2align 4,,10
	.p2align 3
.L13:
	comisd	%xmm7, %xmm5
	jb	.L102
.L61:
	comisd	%xmm5, %xmm4
	movl	$1, %edi
	jnb	.L3
	comisd	%xmm1, %xmm0
	jb	.L38
	.p2align 4,,10
	.p2align 3
.L37:
	comisd	%xmm6, %xmm7
	movl	$1, %edi
	jb	.L51
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L8:
	comisd	%xmm6, %xmm4
	jb	.L95
	comisd	%xmm4, %xmm5
	movl	$1, %edi
	jnb	.L3
.L95:
	comisd	%xmm0, %xmm1
	jnb	.L22
	comisd	%xmm1, %xmm2
	jnb	.L17
	.p2align 4,,10
	.p2align 3
.L23:
	comisd	%xmm3, %xmm2
	jnb	.L13
	comisd	%xmm1, %xmm0
	jnb	.L37
	comisd	%xmm1, %xmm2
	jb	.L104
.L110:
	comisd	%xmm7, %xmm5
	jb	.L40
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L22:
	comisd	%xmm1, %xmm2
	jb	.L93
.L16:
	comisd	%xmm7, %xmm6
	movl	$1, %edi
	jb	.L17
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L93:
	comisd	%xmm0, %xmm3
	jnb	.L23
	comisd	%xmm1, %xmm0
	jnb	.L27
.L28:
	comisd	%xmm1, %xmm2
	jnb	.L41
	xorl	%edi, %edi
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L27:
	comisd	%xmm0, %xmm3
	jb	.L51
	jmp	.L37
.L118:
	movl	$1, %edi
	.p2align 4,,10
	.p2align 3
.L111:
	comisd	%xmm7, %xmm6
	jnb	.L3
	comisd	%xmm2, %xmm3
	jb	.L13
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L102:
	comisd	%xmm1, %xmm0
	jb	.L41
	jmp	.L37
.L94:
	ucomisd	%xmm1, %xmm0
	jp	.L18
	je	.L118
.L18:
	ucomisd	%xmm3, %xmm2
	jp	.L91
	je	.L59
.L91:
	comisd	%xmm7, %xmm5
	jnb	.L61
	jmp	.L37
.L35:
	comisd	%xmm7, %xmm5
	jnb	.L3
	comisd	%xmm1, %xmm0
	jb	.L110
	jmp	.L37
.L59:
	comisd	%xmm6, %xmm4
	jnb	.L62
	jmp	.L13
	.cfi_endproc
.LFE2234:
	.size	_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_, .-_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
