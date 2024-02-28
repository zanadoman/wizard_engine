	.file	"WZECollision.cpp"
	.text
	.align 2
	.p2align 4
	.type	_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_.constprop.0, @function
_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_.constprop.0:
.LFB8358:
	.cfi_startproc
	movq	%rsi, %rdx
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	movq	%rdi, %rax
	movzwl	290(%rdi), %ecx
	movsd	224(%rdi), %xmm1
	movzwl	290(%rdx), %edi
	movl	%ecx, %esi
	shrw	%si
	movzwl	%si, %esi
	cvtsi2sdl	%esi, %xmm0
	movl	%edi, %esi
	shrw	%si
	movzwl	%si, %esi
	cvtsi2sdl	%esi, %xmm2
	xorl	%esi, %esi
	subsd	%xmm0, %xmm1
	movsd	224(%rdx), %xmm0
	subsd	%xmm2, %xmm0
	pxor	%xmm2, %xmm2
	cvtsi2sdl	%ecx, %xmm2
	addsd	%xmm1, %xmm2
	comisd	%xmm2, %xmm0
	ja	.L1
	pxor	%xmm2, %xmm2
	cvtsi2sdl	%edi, %xmm2
	addsd	%xmm0, %xmm2
	comisd	%xmm2, %xmm1
	ja	.L1
	movzwl	292(%rax), %r8d
	pxor	%xmm1, %xmm1
	pxor	%xmm3, %xmm3
	pxor	%xmm5, %xmm5
	movl	%r8d, %ecx
	shrw	%cx
	movzwl	%cx, %ecx
	cvtsi2sdl	%ecx, %xmm1
	movzwl	292(%rdx), %ecx
	addsd	232(%rax), %xmm1
	movl	%ecx, %edi
	cvtsi2sdl	%ecx, %xmm5
	shrw	%di
	movzwl	%di, %edi
	cvtsi2sdl	%edi, %xmm3
	addsd	232(%rdx), %xmm3
	movapd	%xmm3, %xmm4
	subsd	%xmm5, %xmm4
	comisd	%xmm1, %xmm4
	ja	.L1
	pxor	%xmm5, %xmm5
	cvtsi2sdl	%r8d, %xmm5
	subsd	%xmm5, %xmm1
	comisd	%xmm3, %xmm1
	ja	.L1
	movzwl	294(%rax), %edx
	pxor	%xmm5, %xmm5
	movl	$1, %esi
	movsd	240(%rax), %xmm1
	movl	%edx, %ecx
	shrw	%cx
	movzwl	%cx, %ecx
	cvtsi2sdl	%ecx, %xmm5
	subsd	%xmm5, %xmm1
	pxor	%xmm5, %xmm5
	cvtsi2sdl	%edx, %xmm5
	addsd	%xmm1, %xmm5
	comisd	%xmm5, %xmm0
	ja	.L1
	comisd	%xmm2, %xmm1
	ja	.L1
	movzwl	296(%rax), %ecx
	pxor	%xmm0, %xmm0
	movl	%ecx, %edx
	shrw	%dx
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm0
	addsd	248(%rax), %xmm0
	comisd	%xmm0, %xmm4
	ja	.L1
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%ecx, %xmm1
	subsd	%xmm1, %xmm0
	comisd	%xmm3, %xmm0
	seta	%sil
.L1:
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE8358:
	.size	_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_.constprop.0, .-_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_.constprop.0
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"neo::array.Insert(): Index out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC1:
	.string	"neo::array.Insert(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.text
	.align 2
	.p2align 4
	.type	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6InsertEyy.isra.0, @function
_ZN3neo5arrayIPN3wze6engine6actors5actorEE6InsertEyy.isra.0:
.LFB8359:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	movq	(%rdi), %rsi
	cmpq	%rbx, %rsi
	jb	.L35
	testq	%rdx, %rdx
	jne	.L36
.L11:
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
.L36:
	.cfi_restore_state
	addq	%rdx, %rsi
	movq	%rdi, %rbp
	movq	%rsi, (%rdi)
	movq	8(%rdi), %rdi
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 8(%rbp)
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L37
	movq	0(%rbp), %rdx
	leaq	(%rbx,%r12), %rsi
	leaq	-1(%rdx), %rax
	cmpq	%rsi, %rax
	jb	.L11
	movq	%rdx, %r8
	subq	%rsi, %r8
	leaq	-1(%r8), %rcx
	cmpq	$2, %rcx
	jbe	.L15
	leaq	8(,%r12,8), %rcx
	testq	%rcx, %rcx
	je	.L15
	testq	%rsi, %rsi
	je	.L15
	movq	%rdx, %rcx
	leaq	-16(%rdi,%rdx,8), %rsi
	movq	%r8, %rdx
	shrq	%rdx
	subq	%r12, %rcx
	negq	%rdx
	leaq	-16(%rdi,%rcx,8), %r9
	xorl	%ecx, %ecx
	salq	$4, %rdx
	.p2align 4,,10
	.p2align 3
.L16:
	movdqu	(%r9,%rcx), %xmm0
	movups	%xmm0, (%rsi,%rcx)
	subq	$16, %rcx
	cmpq	%rdx, %rcx
	jne	.L16
	movq	%r8, %rdx
	andq	$-2, %rdx
	subq	%rdx, %rax
	andl	$1, %r8d
	je	.L11
	movq	%rax, %rdx
	subq	%r12, %rdx
	movq	(%rdi,%rdx,8), %rdx
	movq	%rdx, (%rdi,%rax,8)
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
.L15:
	.cfi_restore_state
	movq	%r12, %rdx
	negq	%rdx
	leaq	(%rdi,%rdx,8), %rcx
	.p2align 4,,10
	.p2align 3
.L18:
	movq	(%rcx,%rax,8), %rdx
	movq	%rdx, (%rdi,%rax,8)
	subq	$1, %rax
	cmpq	%rsi, %rax
	jnb	.L18
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L35:
	.cfi_restore_state
	leaq	.LC0(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L37:
	leaq	.LC1(%rip), %rdi
	movq	%r12, %rdx
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8359:
	.size	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6InsertEyy.isra.0, .-_ZN3neo5arrayIPN3wze6engine6actors5actorEE6InsertEyy.isra.0
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"neo::array(): Memory allocation failed\nParams: Length: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collisionC2EPS0_
	.type	_ZN3wze6engine9collisionC2EPS0_, @function
_ZN3wze6engine9collisionC2EPS0_:
.LFB8163:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	%rsi, (%rdi)
	movq	$256, 16(%rdi)
	movl	$4096, %edi
	call	malloc@PLT
	movq	%rax, 24(%rbx)
	testq	%rax, %rax
	je	.L43
	leaq	4096(%rax), %rdx
	.p2align 4,,10
	.p2align 3
.L40:
	movq	$0, (%rax)
	addq	$16, %rax
	movq	$0, -8(%rax)
	cmpq	%rdx, %rax
	jne	.L40
	movl	$16, %eax
	movw	%ax, 8(%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L43:
	.cfi_restore_state
	leaq	.LC2(%rip), %rdi
	movl	$256, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8163:
	.size	_ZN3wze6engine9collisionC2EPS0_, .-_ZN3wze6engine9collisionC2EPS0_
	.globl	_ZN3wze6engine9collisionC1EPS0_
	.set	_ZN3wze6engine9collisionC1EPS0_,_ZN3wze6engine9collisionC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision14GetBufferSizeBEv
	.type	_ZN3wze6engine9collision14GetBufferSizeBEv, @function
_ZN3wze6engine9collision14GetBufferSizeBEv:
.LFB8165:
	.cfi_startproc
	movzwl	8(%rdi), %eax
	sall	$3, %eax
	ret
	.cfi_endproc
.LFE8165:
	.size	_ZN3wze6engine9collision14GetBufferSizeBEv, .-_ZN3wze6engine9collision14GetBufferSizeBEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision14SetBufferSizeBEh
	.type	_ZN3wze6engine9collision14SetBufferSizeBEh, @function
_ZN3wze6engine9collision14SetBufferSizeBEh:
.LFB8166:
	.cfi_startproc
	movzbl	%sil, %esi
	shrw	$3, %si
	movw	%si, 8(%rdi)
	leal	0(,%rsi,8), %eax
	ret
	.cfi_endproc
.LFE8166:
	.size	_ZN3wze6engine9collision14SetBufferSizeBEh, .-_ZN3wze6engine9collision14SetBufferSizeBEh
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE
	.type	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE, @function
_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE:
.LFB8167:
	.cfi_startproc
	movzwl	88(%rsi), %edx
	pxor	%xmm5, %xmm5
	movsd	40(%rsi), %xmm4
	movl	%edx, %eax
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm5
	xorl	%eax, %eax
	subsd	%xmm5, %xmm4
	comisd	%xmm2, %xmm4
	ja	.L46
	pxor	%xmm2, %xmm2
	cvtsi2sdl	%edx, %xmm2
	addsd	%xmm4, %xmm2
	comisd	%xmm2, %xmm0
	ja	.L46
	movzwl	90(%rsi), %edx
	pxor	%xmm0, %xmm0
	pxor	%xmm4, %xmm4
	movl	%edx, %ecx
	cvtsi2sdl	%edx, %xmm4
	shrw	%cx
	movzwl	%cx, %ecx
	cvtsi2sdl	%ecx, %xmm0
	addsd	48(%rsi), %xmm0
	movapd	%xmm0, %xmm2
	subsd	%xmm4, %xmm2
	comisd	%xmm1, %xmm2
	ja	.L46
	comisd	%xmm0, %xmm3
	setbe	%al
.L46:
	ret
	.cfi_endproc
.LFE8167:
	.size	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE, .-_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_
	.type	_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_, @function
_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_:
.LFB8168:
	.cfi_startproc
	movzwl	290(%rsi), %ecx
	movq	%rsi, %rax
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	movzwl	290(%rdx), %edi
	movsd	224(%rax), %xmm1
	movl	%ecx, %esi
	shrw	%si
	movzwl	%si, %esi
	cvtsi2sdl	%esi, %xmm0
	movl	%edi, %esi
	shrw	%si
	movzwl	%si, %esi
	cvtsi2sdl	%esi, %xmm2
	xorl	%esi, %esi
	subsd	%xmm0, %xmm1
	movsd	224(%rdx), %xmm0
	subsd	%xmm2, %xmm0
	pxor	%xmm2, %xmm2
	cvtsi2sdl	%ecx, %xmm2
	addsd	%xmm1, %xmm2
	comisd	%xmm2, %xmm0
	ja	.L51
	pxor	%xmm2, %xmm2
	cvtsi2sdl	%edi, %xmm2
	addsd	%xmm0, %xmm2
	comisd	%xmm2, %xmm1
	ja	.L51
	movzwl	292(%rax), %r8d
	pxor	%xmm1, %xmm1
	pxor	%xmm3, %xmm3
	pxor	%xmm5, %xmm5
	movl	%r8d, %ecx
	shrw	%cx
	movzwl	%cx, %ecx
	cvtsi2sdl	%ecx, %xmm1
	movzwl	292(%rdx), %ecx
	addsd	232(%rax), %xmm1
	movl	%ecx, %edi
	cvtsi2sdl	%ecx, %xmm5
	shrw	%di
	movzwl	%di, %edi
	cvtsi2sdl	%edi, %xmm3
	addsd	232(%rdx), %xmm3
	movapd	%xmm3, %xmm4
	subsd	%xmm5, %xmm4
	comisd	%xmm1, %xmm4
	ja	.L51
	pxor	%xmm5, %xmm5
	cvtsi2sdl	%r8d, %xmm5
	subsd	%xmm5, %xmm1
	comisd	%xmm3, %xmm1
	ja	.L51
	movzwl	294(%rax), %edx
	pxor	%xmm5, %xmm5
	movl	$1, %esi
	movsd	240(%rax), %xmm1
	movl	%edx, %ecx
	shrw	%cx
	movzwl	%cx, %ecx
	cvtsi2sdl	%ecx, %xmm5
	subsd	%xmm5, %xmm1
	pxor	%xmm5, %xmm5
	cvtsi2sdl	%edx, %xmm5
	addsd	%xmm1, %xmm5
	comisd	%xmm5, %xmm0
	ja	.L51
	comisd	%xmm2, %xmm1
	ja	.L51
	movzwl	296(%rax), %ecx
	pxor	%xmm0, %xmm0
	movl	%ecx, %edx
	shrw	%dx
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm0
	addsd	248(%rax), %xmm0
	comisd	%xmm0, %xmm4
	ja	.L51
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%ecx, %xmm1
	subsd	%xmm1, %xmm0
	comisd	%xmm3, %xmm0
	seta	%sil
.L51:
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE8168:
	.size	_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_, .-_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision21GetCollisionDirectionEdddddddddddd
	.type	_ZN3wze6engine9collision21GetCollisionDirectionEdddddddddddd, @function
_ZN3wze6engine9collision21GetCollisionDirectionEdddddddddddd:
.LFB8169:
	.cfi_startproc
	movsd	8(%rsp), %xmm8
	xorl	%eax, %eax
	movsd	24(%rsp), %xmm9
	comisd	%xmm2, %xmm8
	ja	.L60
	comisd	%xmm9, %xmm0
	ja	.L60
	movsd	32(%rsp), %xmm10
	comisd	%xmm1, %xmm10
	ja	.L60
	comisd	16(%rsp), %xmm3
	ja	.L60
	comisd	%xmm6, %xmm8
	ja	.L62
	comisd	%xmm9, %xmm4
	ja	.L62
	comisd	%xmm5, %xmm10
	jbe	.L145
	comisd	%xmm8, %xmm4
	jnb	.L65
	comisd	%xmm4, %xmm8
	jb	.L66
	comisd	%xmm9, %xmm6
	movl	$1, %eax
	jnb	.L60
	.p2align 4,,10
	.p2align 3
.L68:
	comisd	32(%rsp), %xmm7
	jnb	.L77
	movsd	32(%rsp), %xmm14
	comisd	%xmm7, %xmm14
	jb	.L82
	comisd	16(%rsp), %xmm5
	jnb	.L84
	comisd	%xmm8, %xmm4
	ja	.L79
	comisd	%xmm6, %xmm9
	jbe	.L149
	.p2align 4,,10
	.p2align 3
.L85:
	movsd	16(%rsp), %xmm15
	comisd	%xmm5, %xmm15
	ja	.L96
	comisd	%xmm8, %xmm4
	ja	.L97
.L100:
	comisd	32(%rsp), %xmm7
	jbe	.L149
	comisd	%xmm8, %xmm6
	movl	$2, %eax
	jnb	.L60
	movsd	16(%rsp), %xmm5
	movl	$8, %eax
	comisd	%xmm7, %xmm5
	jnb	.L60
	movapd	%xmm5, %xmm0
	subsd	%xmm8, %xmm2
	movl	$2, %eax
	subsd	%xmm3, %xmm0
	comisd	%xmm0, %xmm2
	ja	.L60
	comisd	%xmm2, %xmm0
	movl	$128, %edx
	movl	$8, %eax
	cmovbe	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L82:
	comisd	%xmm6, %xmm9
	ja	.L85
	comisd	%xmm8, %xmm4
	ja	.L94
.L86:
	comisd	%xmm6, %xmm9
	ja	.L100
.L149:
	xorl	%eax, %eax
.L60:
	ret
	.p2align 4,,10
	.p2align 3
.L62:
	comisd	%xmm8, %xmm4
	jb	.L71
	comisd	%xmm6, %xmm9
	jnb	.L75
.L73:
	comisd	%xmm4, %xmm8
	jnb	.L76
	comisd	32(%rsp), %xmm7
	jnb	.L77
	movsd	32(%rsp), %xmm14
	comisd	%xmm7, %xmm14
	jnb	.L78
.L79:
	movsd	16(%rsp), %xmm12
	comisd	%xmm5, %xmm12
	ja	.L93
	comisd	%xmm6, %xmm9
	ja	.L85
	.p2align 4,,10
	.p2align 3
.L94:
	comisd	32(%rsp), %xmm7
	jbe	.L86
.L102:
	comisd	%xmm4, %xmm9
	movl	$2, %eax
	jnb	.L60
	movsd	16(%rsp), %xmm5
	movl	$4, %eax
	comisd	%xmm7, %xmm5
	jnb	.L60
	subsd	%xmm0, %xmm9
	movapd	%xmm5, %xmm0
	movl	$2, %eax
	subsd	%xmm3, %xmm0
	comisd	%xmm0, %xmm9
	ja	.L60
	comisd	%xmm9, %xmm0
	movl	$64, %edx
	movl	$4, %eax
	cmovbe	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L71:
	comisd	%xmm4, %xmm8
	jb	.L66
.L76:
	comisd	%xmm9, %xmm6
	jb	.L68
.L75:
	movsd	32(%rsp), %xmm13
	movl	$1, %eax
	comisd	%xmm5, %xmm13
	ja	.L60
	comisd	16(%rsp), %xmm7
	ja	.L116
.L66:
	comisd	32(%rsp), %xmm7
	jb	.L87
.L77:
	movsd	16(%rsp), %xmm12
	comisd	%xmm5, %xmm12
	jb	.L87
.L84:
	comisd	%xmm9, %xmm4
	movl	$4, %eax
	ja	.L60
	comisd	%xmm6, %xmm8
	movl	$8, %eax
	ja	.L60
.L89:
	comisd	%xmm8, %xmm4
	jbe	.L82
.L80:
	movsd	16(%rsp), %xmm14
	comisd	%xmm5, %xmm14
	jbe	.L151
.L93:
	comisd	%xmm4, %xmm9
	movl	$1, %eax
	jnb	.L60
	comisd	32(%rsp), %xmm5
	movl	$4, %eax
	jnb	.L60
	subsd	%xmm0, %xmm9
	subsd	32(%rsp), %xmm1
	movl	$1, %eax
	comisd	%xmm1, %xmm9
	ja	.L60
	comisd	%xmm9, %xmm1
	movl	$16, %edx
	movl	$4, %eax
	cmovbe	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L87:
	movsd	32(%rsp), %xmm11
	comisd	%xmm7, %xmm11
	jb	.L89
.L78:
	comisd	16(%rsp), %xmm5
	jb	.L89
	jmp	.L84
	.p2align 4,,10
	.p2align 3
.L151:
	comisd	%xmm6, %xmm9
	jbe	.L94
	comisd	%xmm5, %xmm14
	ja	.L96
.L97:
	comisd	32(%rsp), %xmm7
	ja	.L102
	xorl	%eax, %eax
	ret
.L116:
	movl	$2, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L145:
	comisd	16(%rsp), %xmm7
	jbe	.L60
	comisd	%xmm8, %xmm4
	jb	.L71
	comisd	%xmm6, %xmm9
	movl	$2, %eax
	jb	.L73
	ret
	.p2align 4,,10
	.p2align 3
.L96:
	comisd	%xmm8, %xmm6
	movl	$1, %eax
	jnb	.L60
	comisd	32(%rsp), %xmm5
	movl	$8, %eax
	jnb	.L60
	subsd	%xmm8, %xmm2
	subsd	32(%rsp), %xmm1
	movl	$1, %eax
	comisd	%xmm1, %xmm2
	ja	.L60
	comisd	%xmm2, %xmm1
	movl	$32, %edx
	movl	$8, %eax
	cmovbe	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L65:
	comisd	%xmm6, %xmm9
	movl	$1, %eax
	jnb	.L60
	comisd	%xmm4, %xmm8
	jnb	.L76
	comisd	32(%rsp), %xmm7
	jnb	.L77
	comisd	%xmm7, %xmm10
	jnb	.L78
	jmp	.L80
	.cfi_endproc
.LFE8169:
	.size	_ZN3wze6engine9collision21GetCollisionDirectionEdddddddddddd, .-_ZN3wze6engine9collision21GetCollisionDirectionEdddddddddddd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	.type	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_, @function
_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_:
.LFB8170:
	.cfi_startproc
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movzwl	290(%rsi), %ecx
	movq	%rsi, %rax
	pxor	%xmm0, %xmm0
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	xorl	%r9d, %r9d
	movsd	224(%rsi), %xmm7
	movl	%ecx, %esi
	cvtsi2sdl	%ecx, %xmm3
	shrw	%si
	movzwl	%si, %esi
	movapd	%xmm7, %xmm8
	cvtsi2sdl	%esi, %xmm0
	movzwl	290(%rdx), %esi
	movl	%esi, %ecx
	shrw	%cx
	movzwl	%cx, %ecx
	subsd	%xmm0, %xmm8
	movsd	224(%rdx), %xmm0
	cvtsi2sdl	%ecx, %xmm2
	addsd	%xmm8, %xmm3
	subsd	%xmm2, %xmm0
	comisd	%xmm3, %xmm0
	ja	.L152
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%esi, %xmm1
	addsd	%xmm0, %xmm1
	comisd	%xmm1, %xmm8
	ja	.L152
	movzwl	292(%rax), %r8d
	pxor	%xmm9, %xmm9
	pxor	%xmm2, %xmm2
	pxor	%xmm4, %xmm4
	movsd	232(%rax), %xmm10
	movl	%r8d, %ecx
	shrw	%cx
	movzwl	%cx, %ecx
	cvtsi2sdl	%ecx, %xmm9
	movzwl	292(%rdx), %ecx
	movl	%ecx, %esi
	cvtsi2sdl	%ecx, %xmm4
	shrw	%si
	movzwl	%si, %esi
	addsd	%xmm10, %xmm9
	cvtsi2sdl	%esi, %xmm2
	addsd	232(%rdx), %xmm2
	movapd	%xmm2, %xmm11
	subsd	%xmm4, %xmm11
	comisd	%xmm9, %xmm11
	ja	.L152
	pxor	%xmm4, %xmm4
	movapd	%xmm9, %xmm12
	cvtsi2sdl	%r8d, %xmm4
	subsd	%xmm4, %xmm12
	comisd	%xmm2, %xmm12
	ja	.L152
	movzwl	294(%rax), %esi
	pxor	%xmm5, %xmm5
	pxor	%xmm6, %xmm6
	movsd	240(%rax), %xmm4
	pxor	%xmm15, %xmm15
	movapd	%xmm7, %xmm13
	movl	%esi, %ecx
	unpcklpd	%xmm10, %xmm13
	shrw	%cx
	movzwl	%cx, %ecx
	cvtsi2sdl	%ecx, %xmm5
	movzwl	296(%rax), %ecx
	movl	%ecx, %r8d
	cvtsi2sdl	%ecx, %xmm15
	shrw	%r8w
	subsd	%xmm5, %xmm4
	pxor	%xmm5, %xmm5
	movzwl	%r8w, %r8d
	cvtsi2sdl	%esi, %xmm5
	cvtsi2sdl	%r8d, %xmm6
	addsd	248(%rax), %xmm6
	addsd	%xmm4, %xmm5
	movapd	%xmm6, %xmm14
	subsd	%xmm15, %xmm14
	comisd	%xmm5, %xmm0
	jbe	.L429
	comisd	%xmm0, %xmm4
	jnb	.L156
	comisd	%xmm1, %xmm5
	jnb	.L172
	comisd	%xmm11, %xmm14
	jnb	.L180
	comisd	%xmm14, %xmm11
	jnb	.L181
.L183:
	comisd	%xmm5, %xmm1
	jbe	.L204
	comisd	%xmm6, %xmm2
	ja	.L213
.L231:
	comisd	%xmm11, %xmm14
	jbe	.L491
.L389:
	comisd	%xmm0, %xmm5
	movq	184(%rdx), %rcx
	jnb	.L533
	comisd	%xmm14, %xmm2
	subsd	%xmm0, %xmm3
	jnb	.L544
	subsd	%xmm12, %xmm2
	movapd	%xmm3, %xmm0
	comisd	%xmm2, %xmm3
	unpcklpd	%xmm2, %xmm0
	ja	.L540
	comisd	%xmm3, %xmm2
	ja	.L544
	cmpq	%rdi, %rcx
	jb	.L550
	movsd	.LC3(%rip), %xmm1
	unpcklpd	%xmm1, %xmm1
	addpd	%xmm1, %xmm0
	movapd	%xmm13, %xmm1
	subpd	%xmm0, %xmm1
	addpd	%xmm13, %xmm0
	movsd	%xmm1, %xmm0
	movups	%xmm0, 224(%rax)
	jmp	.L285
	.p2align 4,,10
	.p2align 3
.L156:
	comisd	%xmm5, %xmm1
	jb	.L164
.L172:
	comisd	%xmm6, %xmm11
	ja	.L168
	comisd	%xmm2, %xmm14
	ja	.L163
.L166:
	comisd	%xmm11, %xmm14
	jnb	.L180
	comisd	%xmm14, %xmm11
	jnb	.L181
	comisd	%xmm0, %xmm4
	jbe	.L183
	comisd	%xmm6, %xmm2
	ja	.L210
	comisd	%xmm5, %xmm1
	jbe	.L211
	comisd	%xmm6, %xmm2
	ja	.L213
	.p2align 4,,10
	.p2align 3
.L500:
	comisd	%xmm11, %xmm14
	ja	.L234
	.p2align 4,,10
	.p2align 3
.L491:
	xorl	%r9d, %r9d
.L152:
	movl	%r9d, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L180:
	comisd	%xmm6, %xmm2
	jnb	.L175
	comisd	%xmm14, %xmm11
	jnb	.L175
	comisd	%xmm0, %xmm4
	ja	.L176
	comisd	%xmm5, %xmm1
	ja	.L389
	comisd	%xmm0, %xmm4
	ja	.L234
	.p2align 4,,10
	.p2align 3
.L249:
	comisd	%xmm5, %xmm1
	jbe	.L491
	jmp	.L231
	.p2align 4,,10
	.p2align 3
.L432:
	comisd	%xmm14, %xmm11
	jb	.L551
	comisd	%xmm2, %xmm6
	jb	.L210
	.p2align 4,,10
	.p2align 3
.L175:
	comisd	%xmm1, %xmm4
	ja	.L552
	comisd	%xmm5, %xmm0
	ja	.L553
	comisd	%xmm0, %xmm4
	ja	.L203
	comisd	%xmm5, %xmm1
	jbe	.L204
	comisd	%xmm6, %xmm2
	jbe	.L206
	movq	184(%rdx), %rcx
.L208:
	movapd	%xmm9, %xmm0
	subsd	%xmm11, %xmm0
.L549:
	cmpq	%rdi, %rcx
	jnb	.L186
.L446:
	testq	%rdi, %rdi
	js	.L378
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%rdi, %xmm2
.L379:
	addq	%rdi, %rcx
	js	.L380
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rcx, %xmm1
.L381:
	divsd	%xmm1, %xmm2
	movsd	.LC5(%rip), %xmm1
	subsd	%xmm2, %xmm1
	mulsd	%xmm0, %xmm1
	addsd	.LC3(%rip), %xmm1
	mulsd	%xmm2, %xmm0
	subsd	%xmm1, %xmm10
	movsd	%xmm10, 232(%rax)
	addsd	232(%rdx), %xmm0
	movsd	%xmm0, 232(%rdx)
	.p2align 4,,10
	.p2align 3
.L285:
	movl	$1, %r9d
	jmp	.L152
	.p2align 4,,10
	.p2align 3
.L429:
	comisd	%xmm1, %xmm4
	jbe	.L554
	comisd	%xmm0, %xmm4
	jnb	.L156
.L170:
	comisd	%xmm1, %xmm5
	jnb	.L172
.L169:
	comisd	%xmm11, %xmm14
	jnb	.L180
	comisd	%xmm14, %xmm11
	jnb	.L181
	comisd	%xmm5, %xmm1
	jbe	.L204
.L215:
	comisd	%xmm6, %xmm2
	jbe	.L206
	.p2align 4,,10
	.p2align 3
.L213:
	comisd	%xmm0, %xmm5
	movq	184(%rdx), %rcx
	jnb	.L208
	comisd	%xmm11, %xmm6
	subsd	%xmm0, %xmm3
	jnb	.L555
	movapd	%xmm9, %xmm0
	movapd	%xmm3, %xmm1
	subsd	%xmm11, %xmm0
	comisd	%xmm0, %xmm3
	unpcklpd	%xmm0, %xmm1
	ja	.L549
	comisd	%xmm3, %xmm0
	ja	.L544
	cmpq	%rdi, %rcx
	jb	.L556
	movsd	.LC3(%rip), %xmm0
	unpcklpd	%xmm0, %xmm0
	addpd	%xmm1, %xmm0
	subpd	%xmm0, %xmm13
	movups	%xmm13, 224(%rax)
	jmp	.L285
	.p2align 4,,10
	.p2align 3
.L554:
	comisd	%xmm6, %xmm11
	ja	.L159
	comisd	%xmm2, %xmm14
	jbe	.L152
	comisd	%xmm0, %xmm4
	jb	.L431
	comisd	%xmm5, %xmm1
	jb	.L164
.L163:
	movq	184(%rdx), %rcx
.L533:
	cmpq	%rdi, %rcx
	jb	.L465
	subsd	%xmm12, %xmm2
.L255:
	addsd	.LC3(%rip), %xmm2
	addsd	%xmm10, %xmm2
	movsd	%xmm2, 232(%rax)
	jmp	.L285
	.p2align 4,,10
	.p2align 3
.L165:
	comisd	%xmm5, %xmm1
	jnb	.L168
	.p2align 4,,10
	.p2align 3
.L164:
	comisd	%xmm4, %xmm0
	jnb	.L170
	comisd	%xmm11, %xmm14
	jb	.L432
	comisd	%xmm6, %xmm2
	jnb	.L175
	comisd	%xmm14, %xmm11
	jnb	.L175
.L176:
	comisd	%xmm5, %xmm1
	jbe	.L500
.L234:
	comisd	%xmm4, %xmm1
	movq	184(%rdx), %rcx
	jnb	.L533
	comisd	%xmm14, %xmm2
	subsd	%xmm8, %xmm1
	jnb	.L538
	subsd	%xmm12, %xmm2
	movapd	%xmm1, %xmm0
	comisd	%xmm2, %xmm1
	unpcklpd	%xmm2, %xmm0
	ja	.L540
	comisd	%xmm1, %xmm2
	ja	.L538
	cmpq	%rdi, %rcx
	jb	.L557
	movsd	.LC3(%rip), %xmm1
	unpcklpd	%xmm1, %xmm1
	addpd	%xmm1, %xmm0
	addpd	%xmm13, %xmm0
	movups	%xmm0, 224(%rax)
	jmp	.L285
	.p2align 4,,10
	.p2align 3
.L552:
	movq	184(%rdx), %rcx
	subsd	%xmm8, %xmm1
	cmpq	%rdi, %rcx
	jnb	.L197
	testq	%rdi, %rdi
	js	.L382
.L520:
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%rdi, %xmm2
.L383:
	addq	%rdi, %rcx
	js	.L384
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rcx, %xmm0
.L385:
	divsd	%xmm0, %xmm2
	movsd	.LC5(%rip), %xmm0
	subsd	%xmm2, %xmm0
.L307:
	mulsd	%xmm1, %xmm0
	addsd	.LC3(%rip), %xmm0
	mulsd	%xmm2, %xmm1
	addsd	%xmm7, %xmm0
	movsd	%xmm0, 224(%rax)
	movsd	224(%rdx), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 224(%rdx)
	jmp	.L285
.L550:
	testq	%rdi, %rdi
	js	.L291
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdi, %xmm0
.L292:
	addq	%rdi, %rcx
	js	.L293
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rcx, %xmm1
.L294:
	divsd	%xmm1, %xmm0
	movsd	.LC5(%rip), %xmm1
	movapd	%xmm2, %xmm4
	movsd	.LC3(%rip), %xmm5
	subsd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm2
	mulsd	%xmm3, %xmm0
	mulsd	%xmm1, %xmm4
	mulsd	%xmm3, %xmm1
	addsd	%xmm5, %xmm4
	addsd	%xmm5, %xmm1
	addsd	%xmm10, %xmm4
	subsd	%xmm1, %xmm7
	movsd	%xmm4, 232(%rax)
	movsd	232(%rdx), %xmm4
	subsd	%xmm2, %xmm4
	movsd	%xmm4, 232(%rdx)
	movsd	%xmm7, 224(%rax)
	addsd	224(%rdx), %xmm0
	movsd	%xmm0, 224(%rdx)
	jmp	.L285
.L197:
	addsd	.LC3(%rip), %xmm1
	addsd	%xmm7, %xmm1
	movsd	%xmm1, 224(%rax)
	jmp	.L285
.L557:
	testq	%rdi, %rdi
	js	.L350
	pxor	%xmm4, %xmm4
	cvtsi2sdq	%rdi, %xmm4
.L351:
	addq	%rdi, %rcx
	js	.L352
	pxor	%xmm3, %xmm3
	cvtsi2sdq	%rcx, %xmm3
.L353:
	divsd	%xmm3, %xmm4
	movsd	.LC5(%rip), %xmm0
	movapd	%xmm2, %xmm3
	movsd	.LC3(%rip), %xmm5
	subsd	%xmm4, %xmm0
	mulsd	%xmm4, %xmm2
	mulsd	%xmm0, %xmm3
	mulsd	%xmm1, %xmm0
	addsd	%xmm5, %xmm3
	addsd	%xmm5, %xmm0
	addsd	%xmm10, %xmm3
	addsd	%xmm7, %xmm0
	movsd	%xmm3, 232(%rax)
	movsd	232(%rdx), %xmm3
	subsd	%xmm2, %xmm3
	movsd	%xmm3, 232(%rdx)
	movsd	%xmm0, 224(%rax)
.L490:
	mulsd	%xmm4, %xmm1
	movapd	%xmm1, %xmm0
	movsd	224(%rdx), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 224(%rdx)
	jmp	.L285
	.p2align 4,,10
	.p2align 3
.L159:
	comisd	%xmm0, %xmm4
	jnb	.L165
	comisd	%xmm4, %xmm0
	jb	.L166
	comisd	%xmm1, %xmm5
	jb	.L169
	.p2align 4,,10
	.p2align 3
.L168:
	movq	184(%rdx), %rcx
	movapd	%xmm9, %xmm0
	subsd	%xmm11, %xmm0
	cmpq	%rdi, %rcx
	jb	.L446
.L186:
	addsd	.LC3(%rip), %xmm0
	subsd	%xmm0, %xmm10
	movsd	%xmm10, 232(%rax)
	jmp	.L285
.L556:
	testq	%rdi, %rdi
	js	.L312
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rdi, %xmm1
.L313:
	addq	%rdi, %rcx
	js	.L314
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%rcx, %xmm2
.L315:
	divsd	%xmm2, %xmm1
	movsd	.LC5(%rip), %xmm2
	movapd	%xmm0, %xmm4
	movsd	.LC3(%rip), %xmm5
	subsd	%xmm1, %xmm2
	mulsd	%xmm1, %xmm0
	mulsd	%xmm3, %xmm1
	mulsd	%xmm2, %xmm4
	mulsd	%xmm3, %xmm2
	addsd	%xmm5, %xmm4
	addsd	%xmm5, %xmm2
	subsd	%xmm4, %xmm10
	subsd	%xmm2, %xmm7
	movsd	%xmm10, 232(%rax)
	addsd	232(%rdx), %xmm0
	movsd	%xmm0, 232(%rdx)
	movsd	%xmm7, 224(%rax)
	addsd	224(%rdx), %xmm1
	movsd	%xmm1, 224(%rdx)
	jmp	.L285
	.p2align 4,,10
	.p2align 3
.L210:
	comisd	%xmm4, %xmm1
	movq	184(%rdx), %rcx
	jnb	.L208
	comisd	%xmm11, %xmm6
	subsd	%xmm8, %xmm1
	jnb	.L558
	movapd	%xmm9, %xmm0
	movapd	%xmm1, %xmm2
	subsd	%xmm11, %xmm0
	comisd	%xmm0, %xmm1
	unpcklpd	%xmm0, %xmm2
	ja	.L549
	comisd	%xmm1, %xmm0
	ja	.L538
	cmpq	%rdi, %rcx
	jb	.L559
	movsd	.LC3(%rip), %xmm0
	movapd	%xmm13, %xmm1
	unpcklpd	%xmm0, %xmm0
	addpd	%xmm2, %xmm0
	addpd	%xmm0, %xmm1
	subpd	%xmm0, %xmm13
	movsd	%xmm1, %xmm13
	movups	%xmm13, 224(%rax)
	jmp	.L285
.L559:
	testq	%rdi, %rdi
	js	.L370
	pxor	%xmm4, %xmm4
	cvtsi2sdq	%rdi, %xmm4
.L371:
	addq	%rdi, %rcx
	js	.L372
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%rcx, %xmm2
.L373:
	divsd	%xmm2, %xmm4
	movsd	.LC5(%rip), %xmm2
	movapd	%xmm0, %xmm3
	movsd	.LC3(%rip), %xmm5
	subsd	%xmm4, %xmm2
	mulsd	%xmm4, %xmm0
	mulsd	%xmm2, %xmm3
	mulsd	%xmm1, %xmm2
	addsd	%xmm5, %xmm3
	addsd	%xmm5, %xmm2
	subsd	%xmm3, %xmm10
	addsd	%xmm7, %xmm2
	movsd	%xmm10, 232(%rax)
	addsd	232(%rdx), %xmm0
	movsd	%xmm0, 232(%rdx)
	movsd	%xmm2, 224(%rax)
	jmp	.L490
	.p2align 4,,10
	.p2align 3
.L181:
	comisd	%xmm2, %xmm6
	jnb	.L175
	comisd	%xmm0, %xmm4
	ja	.L210
	comisd	%xmm5, %xmm1
	ja	.L213
	comisd	%xmm0, %xmm4
	jbe	.L249
	jmp	.L500
	.p2align 4,,10
	.p2align 3
.L551:
	comisd	%xmm6, %xmm2
	ja	.L210
	comisd	%xmm5, %xmm1
	ja	.L215
.L211:
	comisd	%xmm11, %xmm14
	jbe	.L249
	jmp	.L234
	.p2align 4,,10
	.p2align 3
.L203:
	comisd	%xmm6, %xmm2
	ja	.L210
	comisd	%xmm5, %xmm1
	jbe	.L211
.L206:
	comisd	%xmm0, %xmm4
	ja	.L500
	jmp	.L231
	.p2align 4,,10
	.p2align 3
.L204:
	comisd	%xmm0, %xmm4
	jbe	.L249
	jmp	.L211
	.p2align 4,,10
	.p2align 3
.L293:
	movq	%rcx, %rsi
	andl	$1, %ecx
	pxor	%xmm1, %xmm1
	shrq	%rsi
	orq	%rcx, %rsi
	cvtsi2sdq	%rsi, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L294
	.p2align 4,,10
	.p2align 3
.L291:
	movq	%rdi, %rsi
	movq	%rdi, %r8
	pxor	%xmm0, %xmm0
	shrq	%rsi
	andl	$1, %r8d
	orq	%r8, %rsi
	cvtsi2sdq	%rsi, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L292
	.p2align 4,,10
	.p2align 3
.L352:
	movq	%rcx, %rsi
	andl	$1, %ecx
	pxor	%xmm3, %xmm3
	shrq	%rsi
	orq	%rcx, %rsi
	cvtsi2sdq	%rsi, %xmm3
	addsd	%xmm3, %xmm3
	jmp	.L353
	.p2align 4,,10
	.p2align 3
.L350:
	movq	%rdi, %rsi
	movq	%rdi, %r8
	pxor	%xmm0, %xmm0
	shrq	%rsi
	andl	$1, %r8d
	orq	%r8, %rsi
	cvtsi2sdq	%rsi, %xmm0
	movapd	%xmm0, %xmm4
	addsd	%xmm0, %xmm4
	jmp	.L351
	.p2align 4,,10
	.p2align 3
.L314:
	movq	%rcx, %rsi
	andl	$1, %ecx
	pxor	%xmm2, %xmm2
	shrq	%rsi
	orq	%rcx, %rsi
	cvtsi2sdq	%rsi, %xmm2
	addsd	%xmm2, %xmm2
	jmp	.L315
	.p2align 4,,10
	.p2align 3
.L312:
	movq	%rdi, %rsi
	movq	%rdi, %r8
	pxor	%xmm1, %xmm1
	shrq	%rsi
	andl	$1, %r8d
	orq	%r8, %rsi
	cvtsi2sdq	%rsi, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L313
	.p2align 4,,10
	.p2align 3
.L372:
	movq	%rcx, %rsi
	andl	$1, %ecx
	pxor	%xmm2, %xmm2
	shrq	%rsi
	orq	%rcx, %rsi
	cvtsi2sdq	%rsi, %xmm2
	addsd	%xmm2, %xmm2
	jmp	.L373
	.p2align 4,,10
	.p2align 3
.L370:
	movq	%rdi, %rsi
	movq	%rdi, %r8
	pxor	%xmm3, %xmm3
	shrq	%rsi
	andl	$1, %r8d
	orq	%r8, %rsi
	cvtsi2sdq	%rsi, %xmm3
	movapd	%xmm3, %xmm4
	addsd	%xmm3, %xmm4
	jmp	.L371
	.p2align 4,,10
	.p2align 3
.L538:
	cmpq	%rdi, %rcx
	jnb	.L197
	testq	%rdi, %rdi
	js	.L325
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%rdi, %xmm2
.L326:
	addq	%rdi, %rcx
	js	.L327
	pxor	%xmm3, %xmm3
	cvtsi2sdq	%rcx, %xmm3
.L328:
	divsd	%xmm3, %xmm2
	movsd	.LC5(%rip), %xmm0
	subsd	%xmm2, %xmm0
	jmp	.L307
.L431:
	comisd	%xmm4, %xmm0
	jb	.L166
	jmp	.L170
	.p2align 4,,10
	.p2align 3
.L380:
	movq	%rcx, %rsi
	andl	$1, %ecx
	pxor	%xmm1, %xmm1
	shrq	%rsi
	orq	%rcx, %rsi
	cvtsi2sdq	%rsi, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L381
.L378:
	movq	%rdi, %rsi
	movq	%rdi, %r8
	pxor	%xmm2, %xmm2
	shrq	%rsi
	andl	$1, %r8d
	orq	%r8, %rsi
	cvtsi2sdq	%rsi, %xmm2
	addsd	%xmm2, %xmm2
	jmp	.L379
	.p2align 4,,10
	.p2align 3
.L553:
	movq	184(%rdx), %rcx
	subsd	%xmm0, %xmm3
	cmpq	%rdi, %rcx
	jnb	.L201
	testq	%rdi, %rdi
	js	.L333
.L518:
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rdi, %xmm1
.L367:
	addq	%rdi, %rcx
	js	.L368
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rcx, %xmm0
.L369:
	divsd	%xmm0, %xmm1
	movsd	.LC5(%rip), %xmm0
	subsd	%xmm1, %xmm0
.L337:
	mulsd	%xmm3, %xmm0
	addsd	.LC3(%rip), %xmm0
	mulsd	%xmm1, %xmm3
	subsd	%xmm0, %xmm7
	movsd	%xmm7, 224(%rax)
	addsd	224(%rdx), %xmm3
	movsd	%xmm3, 224(%rdx)
	jmp	.L285
.L201:
	addsd	.LC3(%rip), %xmm3
	subsd	%xmm3, %xmm7
	movsd	%xmm7, 224(%rax)
	jmp	.L285
.L465:
	testq	%rdi, %rdi
	js	.L358
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rdi, %xmm1
.L359:
	addq	%rdi, %rcx
	js	.L360
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rcx, %xmm0
.L361:
	divsd	%xmm0, %xmm1
	movsd	.LC5(%rip), %xmm0
	subsd	%xmm12, %xmm2
	subsd	%xmm1, %xmm0
.L290:
	mulsd	%xmm2, %xmm0
	addsd	.LC3(%rip), %xmm0
	mulsd	%xmm1, %xmm2
	addsd	%xmm10, %xmm0
	movsd	%xmm0, 232(%rax)
	movsd	232(%rdx), %xmm0
	subsd	%xmm2, %xmm0
	movsd	%xmm0, 232(%rdx)
	jmp	.L285
.L544:
	cmpq	%rdi, %rcx
	jnb	.L201
	testq	%rdi, %rdi
	js	.L362
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rdi, %xmm1
.L363:
	addq	%rdi, %rcx
	js	.L364
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%rcx, %xmm2
.L365:
	divsd	%xmm2, %xmm1
	movsd	.LC5(%rip), %xmm0
	subsd	%xmm1, %xmm0
	jmp	.L337
.L558:
	cmpq	%rdi, %rcx
	jnb	.L197
	testq	%rdi, %rdi
	jns	.L520
	movq	%rdi, %rsi
	movq	%rdi, %r8
	pxor	%xmm0, %xmm0
	shrq	%rsi
	andl	$1, %r8d
	orq	%r8, %rsi
	cvtsi2sdq	%rsi, %xmm0
	movapd	%xmm0, %xmm2
	addsd	%xmm0, %xmm2
	jmp	.L383
.L540:
	cmpq	%rdi, %rcx
	jnb	.L255
	testq	%rdi, %rdi
	js	.L354
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rdi, %xmm1
.L355:
	addq	%rdi, %rcx
	js	.L356
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rcx, %xmm0
.L357:
	divsd	%xmm0, %xmm1
	movsd	.LC5(%rip), %xmm0
	subsd	%xmm1, %xmm0
	jmp	.L290
.L360:
	movq	%rcx, %rsi
	andl	$1, %ecx
	pxor	%xmm0, %xmm0
	shrq	%rsi
	orq	%rcx, %rsi
	cvtsi2sdq	%rsi, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L361
.L358:
	movq	%rdi, %rsi
	movq	%rdi, %r8
	pxor	%xmm1, %xmm1
	shrq	%rsi
	andl	$1, %r8d
	orq	%r8, %rsi
	cvtsi2sdq	%rsi, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L359
.L384:
	movq	%rcx, %rsi
	andl	$1, %ecx
	pxor	%xmm0, %xmm0
	shrq	%rsi
	orq	%rcx, %rsi
	cvtsi2sdq	%rsi, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L385
.L555:
	cmpq	%rdi, %rcx
	jnb	.L201
	testq	%rdi, %rdi
	jns	.L518
	movq	%rdi, %rsi
	movq	%rdi, %r8
	pxor	%xmm0, %xmm0
	shrq	%rsi
	andl	$1, %r8d
	orq	%r8, %rsi
	cvtsi2sdq	%rsi, %xmm0
	movapd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
	jmp	.L367
.L368:
	movq	%rcx, %rsi
	andl	$1, %ecx
	pxor	%xmm0, %xmm0
	shrq	%rsi
	orq	%rcx, %rsi
	cvtsi2sdq	%rsi, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L369
.L382:
	movq	%rdi, %rsi
	movq	%rdi, %r8
	pxor	%xmm2, %xmm2
	shrq	%rsi
	andl	$1, %r8d
	orq	%r8, %rsi
	cvtsi2sdq	%rsi, %xmm2
	addsd	%xmm2, %xmm2
	jmp	.L383
.L327:
	movq	%rcx, %rsi
	andl	$1, %ecx
	pxor	%xmm3, %xmm3
	shrq	%rsi
	orq	%rcx, %rsi
	cvtsi2sdq	%rsi, %xmm3
	addsd	%xmm3, %xmm3
	jmp	.L328
.L325:
	movq	%rdi, %rsi
	movq	%rdi, %r8
	pxor	%xmm2, %xmm2
	shrq	%rsi
	andl	$1, %r8d
	orq	%r8, %rsi
	cvtsi2sdq	%rsi, %xmm2
	addsd	%xmm2, %xmm2
	jmp	.L326
.L333:
	movq	%rdi, %rsi
	movq	%rdi, %r8
	pxor	%xmm1, %xmm1
	shrq	%rsi
	andl	$1, %r8d
	orq	%r8, %rsi
	cvtsi2sdq	%rsi, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L367
.L364:
	movq	%rcx, %rsi
	andl	$1, %ecx
	pxor	%xmm2, %xmm2
	shrq	%rsi
	orq	%rcx, %rsi
	cvtsi2sdq	%rsi, %xmm2
	addsd	%xmm2, %xmm2
	jmp	.L365
.L362:
	movq	%rdi, %rsi
	movq	%rdi, %r8
	pxor	%xmm1, %xmm1
	shrq	%rsi
	andl	$1, %r8d
	orq	%r8, %rsi
	cvtsi2sdq	%rsi, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L363
.L356:
	movq	%rcx, %rsi
	andl	$1, %ecx
	pxor	%xmm0, %xmm0
	shrq	%rsi
	orq	%rcx, %rsi
	cvtsi2sdq	%rsi, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L357
.L354:
	movq	%rdi, %rsi
	movq	%rdi, %r8
	pxor	%xmm1, %xmm1
	shrq	%rsi
	andl	$1, %r8d
	orq	%r8, %rsi
	cvtsi2sdq	%rsi, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L355
	.cfi_endproc
.LFE8170:
	.size	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_, .-_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB7:
	.text
.LHOTB7:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_
	.type	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_, @function
_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_:
.LFB8172:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8172
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%r8, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movzwl	8(%rdi), %r12d
	movq	%rsi, (%rsp)
	movq	%rcx, 16(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	movq	%r12, 32(%rsp)
	testq	%r12, %r12
	jne	.L561
	movq	$0, 40(%rsp)
	xorl	%ebx, %ebx
.L564:
	movq	(%rsp), %rax
	movq	(%rax), %r9
	testq	%r9, %r9
	je	.L563
	movq	$0, 8(%rsp)
	movq	8(%rax), %r10
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	jmp	.L570
	.p2align 4,,10
	.p2align 3
.L565:
	addq	$1, %rbx
	cmpq	%r9, %rbx
	jnb	.L603
.L570:
	movq	(%r10,%rbx,8), %rsi
	leaq	0(,%rbx,8), %r15
	cmpq	%r13, %rsi
	je	.L565
	cmpq	%rbp, %rsi
	je	.L565
	movq	%rbp, %rdi
	call	_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_.constprop.0
	testb	%al, %al
	je	.L565
	cmpq	%r12, 32(%rsp)
	je	.L604
.L566:
	cmpq	%r9, %rbx
	jnb	.L605
	movq	(%r10,%r15), %rax
	movq	40(%rsp), %rcx
	leaq	1(%r12), %rdx
	cmpq	32(%rsp), %r12
	jnb	.L606
	addq	$1, %rbx
	movq	%rax, (%rcx,%r12,8)
	movq	184(%rax), %rax
	movq	%rdx, %r12
	addq	%rax, 8(%rsp)
	cmpq	%r9, %rbx
	jb	.L570
	.p2align 4,,10
	.p2align 3
.L603:
	movq	40(%rsp), %rbx
	movq	16(%rsp), %rdi
	cmpq	%rdi, 8(%rsp)
	jnb	.L571
	testq	%r12, %r12
	je	.L563
	movq	32(%rsp), %rax
	movq	8(%rsp), %rdi
	xorl	%r15d, %r15d
	movq	%rax, 24(%rsp)
	movq	16(%rsp), %rax
	subq	%rdi, %rax
	movq	%rax, 8(%rsp)
.L578:
	cmpq	%r15, 24(%rsp)
	je	.L607
	movq	(%rbx,%r15,8), %r10
	movq	8(%rsp), %rdx
	movq	%rbp, %rsi
	movq	%r14, %rdi
	addq	184(%r10), %rdx
	movq	%r10, %rcx
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	testb	%al, %al
	jne	.L608
.L577:
	addq	$1, %r15
	cmpq	%r15, %r12
	jne	.L578
.L563:
	movq	%rbx, %rdi
	call	free@PLT
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L609
	addq	$72, %rsp
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
	.p2align 4,,10
	.p2align 3
.L571:
	.cfi_restore_state
	testq	%r12, %r12
	je	.L563
	movq	32(%rsp), %r11
	xorl	%r10d, %r10d
	.p2align 4,,10
	.p2align 3
.L575:
	cmpq	%r10, %r11
	je	.L610
	movq	(%rbx,%r10,8), %rcx
	xorl	%edx, %edx
	movq	%rbp, %rsi
	movq	%r14, %rdi
	addq	$1, %r10
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	cmpq	%r10, %r12
	jne	.L575
	jmp	.L563
	.p2align 4,,10
	.p2align 3
.L608:
	movq	8(%rsp), %rcx
	movq	(%rsp), %rsi
	movq	%r10, %r8
	movq	%r13, %rdx
	movq	%r14, %rdi
.LEHB0:
	call	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_
	movq	(%rbx,%r15,8), %rcx
	xorl	%edx, %edx
	movq	%rbp, %rsi
	movq	%r14, %rdi
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	jmp	.L577
	.p2align 4,,10
	.p2align 3
.L604:
	movzwl	8(%r14), %eax
	leaq	32(%rsp), %rdi
	movq	%r12, %rsi
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6InsertEyy.isra.0
.LEHE0:
	movq	(%rsp), %rax
	movq	(%rax), %r9
	movq	8(%rax), %r10
	jmp	.L566
	.p2align 4,,10
	.p2align 3
.L561:
	leaq	0(,%r12,8), %rdi
	call	malloc@PLT
	movq	%rax, 40(%rsp)
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.L564
	leaq	.LC2(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
.LEHB1:
	call	printf@PLT
.LEHE1:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L610:
	movq	%r11, %rsi
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
.LEHB2:
	call	printf@PLT
.L569:
	movl	$1, %edi
	call	exit@PLT
.L606:
	movq	%r12, %rsi
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L569
.L605:
	movq	%rbx, %rsi
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L569
.L607:
	movq	24(%rsp), %rsi
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE2:
	jmp	.L569
.L609:
	call	__stack_chk_fail@PLT
.L582:
	movq	%rax, %rbx
	jmp	.L579
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8172:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8172-.LLSDACSB8172
.LLSDACSB8172:
	.uleb128 .LEHB0-.LFB8172
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L582-.LFB8172
	.uleb128 0
	.uleb128 .LEHB1-.LFB8172
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB8172
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L582-.LFB8172
	.uleb128 0
.LLSDACSE8172:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8172
	.type	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_.cold, @function
_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_.cold:
.LFSB8172:
.L579:
	.cfi_def_cfa_offset 128
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	40(%rsp), %rdi
	call	free@PLT
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L611
	movq	%rbx, %rdi
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
.L611:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8172:
	.section	.gcc_except_table
.LLSDAC8172:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8172-.LLSDACSBC8172
.LLSDACSBC8172:
	.uleb128 .LEHB3-.LCOLDB7
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSEC8172:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_, .-_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_
	.section	.text.unlikely
	.size	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_.cold, .-_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_.cold
.LCOLDE7:
	.text
.LHOTE7:
	.section	.text.unlikely
	.align 2
.LCOLDB8:
	.text
.LHOTB8:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE
	.type	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE, @function
_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE:
.LFB8171:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8171
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
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
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	movzwl	8(%rdi), %r12d
	movq	%rdi, (%rsp)
	movq	%rdx, 56(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	movq	%r12, 64(%rsp)
	testq	%r12, %r12
	jne	.L613
	movq	$0, 72(%rsp)
	xorl	%ebx, %ebx
.L614:
	movq	(%rsp), %rax
	movq	24(%rax), %r13
	cmpq	16(%rax), %rbp
	jnb	.L670
	salq	$4, %rbp
	addq	%rbp, %r13
	movq	0(%r13), %r10
	testq	%r10, %r10
	je	.L616
	xorl	%ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L636:
	movq	$0, 32(%rsp)
	movq	8(%r13), %r9
	leaq	0(,%rbp,8), %r14
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	.p2align 4,,10
	.p2align 3
.L623:
	cmpq	%rbx, %rbp
	je	.L617
	movq	(%r9,%rbx,8), %rsi
	leaq	0(,%rbx,8), %r15
	cmpq	%r10, %rbp
	jnb	.L670
	movq	(%r9,%r14), %rdi
	call	_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_.constprop.0
	testb	%al, %al
	je	.L617
	cmpq	%r12, 64(%rsp)
	je	.L674
.L620:
	cmpq	%r10, %rbx
	jnb	.L675
	movq	(%r9,%r15), %rax
	movq	72(%rsp), %rcx
	leaq	1(%r12), %rdx
	cmpq	64(%rsp), %r12
	jnb	.L676
	movq	%rax, (%rcx,%r12,8)
	movq	184(%rax), %rax
	movq	%rdx, %r12
	addq	%rax, 32(%rsp)
.L617:
	addq	$1, %rbx
	cmpq	%r10, %rbx
	jb	.L623
	cmpq	%r10, %rbp
	jnb	.L670
	movq	(%r9,%r14), %rbx
	movq	32(%rsp), %rax
	cmpq	176(%rbx), %rax
	jnb	.L625
	testq	%r12, %r12
	je	.L630
	movq	64(%rsp), %rax
	xorl	%ebx, %ebx
	movq	%rax, 48(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 40(%rsp)
	jmp	.L635
	.p2align 4,,10
	.p2align 3
.L633:
	addq	$1, %rbx
	cmpq	%rbx, %r12
	je	.L630
.L635:
	cmpq	%rbx, 48(%rsp)
	je	.L677
	movq	40(%rsp), %rax
	movq	(%rax,%rbx,8), %r8
	movq	8(%r13), %rax
	movq	184(%r8), %rdx
	cmpq	%r10, %rbp
	jnb	.L670
	movq	(%rax,%r14), %r15
	movq	(%rsp), %rdi
	movq	%r8, %rcx
	movq	%r8, 24(%rsp)
	movq	32(%rsp), %rax
	movq	176(%r15), %r11
	movq	%r15, %rsi
	subq	%rax, %r11
	addq	%r11, %rdx
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	movq	24(%rsp), %r8
	testb	%al, %al
	je	.L633
	movq	(%rsp), %rdi
	movq	%r11, %rcx
	movq	%r15, %rdx
	movq	%r13, %rsi
.LEHB4:
	call	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_
	movq	40(%rsp), %rax
	movq	0(%r13), %r10
	movq	(%rax,%rbx,8), %rcx
	movq	8(%r13), %rax
	cmpq	%r10, %rbp
	jnb	.L670
	movq	(%rax,%r14), %rsi
	movq	(%rsp), %rdi
	xorl	%edx, %edx
	addq	$1, %rbx
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	cmpq	%rbx, %r12
	jne	.L635
.L630:
	addq	$1, %rbp
	cmpq	%r10, %rbp
	jb	.L636
.L680:
	movq	72(%rsp), %rbx
.L616:
	movq	56(%rsp), %rsi
	movl	290(%rsi), %eax
	movupd	224(%rsi), %xmm3
	movq	%rsi, %rdi
	movl	%eax, 294(%rsi)
	movups	%xmm3, 240(%rsi)
	movaps	%xmm3, (%rsp)
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv@PLT
	movq	0(%r13), %rdx
	xorl	%ebp, %ebp
	testq	%rdx, %rdx
	je	.L642
	.p2align 4,,10
	.p2align 3
.L637:
	movq	8(%r13), %rax
	movq	(%rax,%rbp,8), %rdi
	movq	56(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L638
	movupd	224(%rdi), %xmm0
	ucomisd	240(%rdi), %xmm0
	jp	.L639
	jne	.L639
	movapd	%xmm0, %xmm2
	unpckhpd	%xmm2, %xmm2
	ucomisd	248(%rdi), %xmm2
	jp	.L639
	je	.L638
.L639:
	movups	%xmm0, 240(%rdi)
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv@PLT
	movq	0(%r13), %rdx
.L638:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jb	.L637
.L642:
	movq	%rbx, %rdi
	call	free@PLT
	movq	88(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L678
	addq	$104, %rsp
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
	.p2align 4,,10
	.p2align 3
.L674:
	.cfi_restore_state
	movq	(%rsp), %rax
	leaq	64(%rsp), %rdi
	movq	%r12, %rsi
	movzwl	8(%rax), %eax
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6InsertEyy.isra.0
	movq	0(%r13), %r10
	movq	8(%r13), %r9
	jmp	.L620
	.p2align 4,,10
	.p2align 3
.L625:
	testq	%r12, %r12
	je	.L630
	movq	72(%rsp), %r15
	movq	64(%rsp), %r14
	movq	%r10, 24(%rsp)
	xorl	%r11d, %r11d
	movq	%r15, %r10
	movq	(%rsp), %r15
	.p2align 4,,10
	.p2align 3
.L629:
	cmpq	%r11, %r14
	je	.L679
	movq	(%r10,%r11,8), %rcx
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%r15, %rdi
	addq	$1, %r11
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	cmpq	%r11, %r12
	jne	.L629
	movq	24(%rsp), %r10
	addq	$1, %rbp
	cmpq	%r10, %rbp
	jb	.L636
	jmp	.L680
.L670:
	movq	%rbp, %rsi
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE4:
.L619:
	movl	$1, %edi
	call	exit@PLT
.L613:
	leaq	0(,%r12,8), %rdi
	call	malloc@PLT
	movq	%rax, 72(%rsp)
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.L614
	leaq	.LC2(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
.LEHB5:
	call	printf@PLT
.LEHE5:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L679:
	movq	%r14, %rsi
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
.LEHB6:
	call	printf@PLT
	jmp	.L619
.L677:
	movq	48(%rsp), %rsi
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L619
.L676:
	movq	%r12, %rsi
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L619
.L675:
	movq	%rbx, %rsi
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE6:
	jmp	.L619
.L678:
	call	__stack_chk_fail@PLT
.L647:
	movq	%rax, %rbx
	jmp	.L643
	.section	.gcc_except_table
.LLSDA8171:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8171-.LLSDACSB8171
.LLSDACSB8171:
	.uleb128 .LEHB4-.LFB8171
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L647-.LFB8171
	.uleb128 0
	.uleb128 .LEHB5-.LFB8171
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB8171
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L647-.LFB8171
	.uleb128 0
.LLSDACSE8171:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8171
	.type	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE.cold, @function
_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE.cold:
.LFSB8171:
.L643:
	.cfi_def_cfa_offset 160
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	72(%rsp), %rdi
	call	free@PLT
	movq	88(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L681
	movq	%rbx, %rdi
.LEHB7:
	call	_Unwind_Resume@PLT
.LEHE7:
.L681:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8171:
	.section	.gcc_except_table
.LLSDAC8171:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8171-.LLSDACSBC8171
.LLSDACSBC8171:
	.uleb128 .LEHB7-.LCOLDB8
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSEC8171:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE, .-_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE
	.section	.text.unlikely
	.size	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE.cold, .-_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE.cold
.LCOLDE8:
	.text
.LHOTE8:
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC3:
	.long	-350469331
	.long	1058682594
	.align 8
.LC5:
	.long	0
	.long	1072693248
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
