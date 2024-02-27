	.file	"WZECollision.cpp"
	.text
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
.LFB8357:
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
	jb	.L26
	testq	%rdx, %rdx
	jne	.L27
.L1:
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
.L27:
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
	je	.L28
	movq	0(%rbp), %rdx
	leaq	(%rbx,%r12), %rsi
	leaq	-1(%rdx), %rax
	cmpq	%rsi, %rax
	jb	.L1
	movq	%rdx, %r8
	subq	%rsi, %r8
	leaq	-1(%r8), %rcx
	cmpq	$2, %rcx
	jbe	.L5
	leaq	8(,%r12,8), %rcx
	testq	%rcx, %rcx
	je	.L5
	testq	%rsi, %rsi
	je	.L5
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
.L6:
	movdqu	(%r9,%rcx), %xmm0
	movups	%xmm0, (%rsi,%rcx)
	subq	$16, %rcx
	cmpq	%rdx, %rcx
	jne	.L6
	movq	%r8, %rdx
	andq	$-2, %rdx
	subq	%rdx, %rax
	andl	$1, %r8d
	je	.L1
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
.L5:
	.cfi_restore_state
	movq	%r12, %rdx
	negq	%rdx
	leaq	(%rdi,%rdx,8), %rcx
	.p2align 4,,10
	.p2align 3
.L8:
	movq	(%rcx,%rax,8), %rdx
	movq	%rdx, (%rdi,%rax,8)
	subq	$1, %rax
	cmpq	%rsi, %rax
	jnb	.L8
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L26:
	.cfi_restore_state
	leaq	.LC0(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L28:
	leaq	.LC1(%rip), %rdi
	movq	%r12, %rdx
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8357:
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
	je	.L34
	leaq	4096(%rax), %rdx
	.p2align 4,,10
	.p2align 3
.L31:
	movq	$0, (%rax)
	addq	$16, %rax
	movq	$0, -8(%rax)
	cmpq	%rdx, %rax
	jne	.L31
	movl	$16, %eax
	movw	%ax, 8(%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L34:
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
	ja	.L37
	pxor	%xmm2, %xmm2
	cvtsi2sdl	%edx, %xmm2
	addsd	%xmm4, %xmm2
	comisd	%xmm2, %xmm0
	ja	.L37
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
	ja	.L37
	comisd	%xmm0, %xmm3
	setbe	%al
.L37:
	ret
	.cfi_endproc
.LFE8167:
	.size	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE, .-_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision14CheckCollisionEdddddddd
	.type	_ZN3wze6engine9collision14CheckCollisionEdddddddd, @function
_ZN3wze6engine9collision14CheckCollisionEdddddddd:
.LFB8168:
	.cfi_startproc
	xorl	%eax, %eax
	comisd	%xmm2, %xmm4
	ja	.L42
	comisd	%xmm6, %xmm0
	ja	.L42
	comisd	%xmm1, %xmm7
	ja	.L42
	comisd	%xmm5, %xmm3
	setbe	%al
.L42:
	ret
	.cfi_endproc
.LFE8168:
	.size	_ZN3wze6engine9collision14CheckCollisionEdddddddd, .-_ZN3wze6engine9collision14CheckCollisionEdddddddd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	.type	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_, @function
_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_:
.LFB8169:
	.cfi_startproc
	pxor	%xmm0, %xmm0
	pxor	%xmm5, %xmm5
	pxor	%xmm7, %xmm7
	movq	%rsi, %rax
	movzwl	294(%rsi), %esi
	pxor	%xmm1, %xmm1
	pxor	%xmm2, %xmm2
	pxor	%xmm3, %xmm3
	movsd	240(%rax), %xmm4
	pxor	%xmm9, %xmm9
	movsd	224(%rax), %xmm6
	movl	%esi, %ecx
	cvtsi2sdl	%esi, %xmm7
	shrw	%cx
	movzwl	%cx, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movzwl	296(%rax), %ecx
	movl	%ecx, %edi
	shrw	%di
	subsd	%xmm0, %xmm4
	movzwl	%di, %edi
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	movzwl	290(%rax), %ecx
	cvtsi2sdl	%edi, %xmm5
	addsd	248(%rax), %xmm5
	movl	%ecx, %esi
	cvtsi2sdl	%ecx, %xmm9
	addsd	%xmm4, %xmm7
	shrw	%si
	movapd	%xmm5, %xmm10
	movzwl	%si, %esi
	subsd	%xmm0, %xmm10
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm0
	movzwl	290(%rdx), %esi
	movl	%esi, %ecx
	cvtsi2sdl	%esi, %xmm2
	shrw	%cx
	movzwl	%cx, %ecx
	subsd	%xmm0, %xmm6
	movsd	224(%rdx), %xmm0
	cvtsi2sdl	%ecx, %xmm1
	movzwl	292(%rdx), %ecx
	movl	%ecx, %edi
	cvtsi2sdl	%ecx, %xmm3
	addsd	%xmm6, %xmm9
	shrw	%di
	subsd	%xmm1, %xmm0
	movzwl	%di, %edi
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%edi, %xmm1
	addsd	232(%rdx), %xmm1
	comisd	%xmm7, %xmm0
	addsd	%xmm0, %xmm2
	movapd	%xmm1, %xmm8
	subsd	%xmm3, %xmm8
	ja	.L48
	comisd	%xmm2, %xmm4
	ja	.L48
	comisd	%xmm5, %xmm8
	ja	.L48
	comisd	%xmm1, %xmm10
	ja	.L48
.L146:
	xorl	%edx, %edx
.L47:
	movl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L48:
	xorl	%edx, %edx
	comisd	%xmm9, %xmm0
	ja	.L47
	comisd	%xmm2, %xmm6
	ja	.L47
	movzwl	292(%rax), %esi
	pxor	%xmm3, %xmm3
	movl	%esi, %ecx
	shrw	%cx
	movzwl	%cx, %ecx
	cvtsi2sdl	%ecx, %xmm3
	addsd	232(%rax), %xmm3
	comisd	%xmm3, %xmm8
	ja	.L47
	pxor	%xmm12, %xmm12
	movapd	%xmm3, %xmm11
	cvtsi2sdl	%esi, %xmm12
	subsd	%xmm12, %xmm11
	comisd	%xmm1, %xmm11
	ja	.L47
	comisd	%xmm0, %xmm4
	jb	.L139
	comisd	%xmm7, %xmm2
	jnb	.L53
	ucomisd	%xmm0, %xmm4
	jp	.L131
	je	.L54
.L131:
	comisd	%xmm8, %xmm10
	jnb	.L56
	comisd	%xmm10, %xmm8
	jb	.L154
	comisd	%xmm1, %xmm5
	jnb	.L65
	.p2align 4,,10
	.p2align 3
.L78:
	comisd	%xmm4, %xmm2
	movl	$1, %edx
	jnb	.L47
	comisd	%xmm8, %xmm5
	movl	$4, %edx
	jnb	.L47
	subsd	%xmm6, %xmm2
	subsd	%xmm8, %xmm3
	movl	$1, %edx
	comisd	%xmm3, %xmm2
	ja	.L47
	comisd	%xmm2, %xmm3
	movl	$4, %edx
	movl	$16, %eax
	cmovbe	%eax, %edx
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L139:
	comisd	%xmm4, %xmm0
	jb	.L59
.L54:
	comisd	%xmm2, %xmm7
	jb	.L155
.L53:
	comisd	%xmm5, %xmm8
	movl	$1, %edx
	ja	.L47
	comisd	%xmm1, %xmm10
	movl	$2, %edx
	ja	.L47
.L59:
	comisd	%xmm8, %xmm10
	jnb	.L56
	comisd	%xmm10, %xmm8
	jnb	.L61
	comisd	%xmm0, %xmm4
	jbe	.L145
	comisd	%xmm5, %xmm1
	ja	.L78
	comisd	%xmm7, %xmm2
	jbe	.L79
	comisd	%xmm5, %xmm1
	jbe	.L153
	.p2align 4,,10
	.p2align 3
.L81:
	comisd	%xmm0, %xmm7
	jnb	.L116
	comisd	%xmm8, %xmm5
	movl	$8, %edx
	jnb	.L47
	subsd	%xmm0, %xmm9
	subsd	%xmm8, %xmm3
	movl	$1, %edx
	comisd	%xmm3, %xmm9
	ja	.L47
	comisd	%xmm9, %xmm3
	movl	$8, %edx
	movl	$32, %eax
	cmovbe	%eax, %edx
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L56:
	comisd	%xmm5, %xmm1
	jb	.L156
.L65:
	comisd	%xmm2, %xmm4
	movl	$4, %edx
	ja	.L47
	comisd	%xmm7, %xmm0
	movl	$8, %edx
	ja	.L47
	comisd	%xmm0, %xmm4
	ja	.L72
	comisd	%xmm7, %xmm2
	jbe	.L73
	comisd	%xmm5, %xmm1
	movl	$1, %edx
	ja	.L47
.L75:
	comisd	%xmm0, %xmm4
	jbe	.L85
.L153:
	comisd	%xmm8, %xmm10
	jbe	.L146
	.p2align 4,,10
	.p2align 3
.L88:
	comisd	%xmm4, %xmm2
	movl	$2, %edx
	jnb	.L47
	comisd	%xmm10, %xmm1
	movl	$4, %edx
	jnb	.L47
	subsd	%xmm6, %xmm2
	subsd	%xmm11, %xmm1
	movl	$2, %edx
	comisd	%xmm1, %xmm2
	ja	.L47
	comisd	%xmm2, %xmm1
	movl	$4, %edx
	movl	$64, %eax
	cmovbe	%eax, %edx
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L156:
	comisd	%xmm10, %xmm8
	jnb	.L65
	comisd	%xmm0, %xmm4
	ja	.L88
	comisd	%xmm7, %xmm2
	ja	.L97
	comisd	%xmm0, %xmm4
	ja	.L88
	.p2align 4,,10
	.p2align 3
.L89:
	comisd	%xmm7, %xmm2
	jbe	.L146
.L85:
	comisd	%xmm8, %xmm10
	jbe	.L146
.L97:
	comisd	%xmm0, %xmm7
	movl	$2, %edx
	jnb	.L47
	comisd	%xmm10, %xmm1
	movl	$8, %edx
	jnb	.L47
	subsd	%xmm0, %xmm9
	subsd	%xmm11, %xmm1
	movl	$2, %edx
	comisd	%xmm1, %xmm9
	ja	.L47
	comisd	%xmm9, %xmm1
	movl	$8, %edx
	movl	$128, %eax
	cmovbe	%eax, %edx
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L155:
	comisd	%xmm8, %xmm10
	jnb	.L56
	comisd	%xmm10, %xmm8
	jnb	.L61
.L62:
	comisd	%xmm7, %xmm2
	jbe	.L73
.L83:
	comisd	%xmm5, %xmm1
	ja	.L81
	jmp	.L75
	.p2align 4,,10
	.p2align 3
.L61:
	comisd	%xmm1, %xmm5
	jnb	.L157
	comisd	%xmm0, %xmm4
	ja	.L78
	comisd	%xmm7, %xmm2
	ja	.L81
	comisd	%xmm0, %xmm4
	jbe	.L89
	jmp	.L153
	.p2align 4,,10
	.p2align 3
.L73:
	comisd	%xmm0, %xmm4
	jbe	.L89
.L79:
	comisd	%xmm8, %xmm10
	jbe	.L89
	jmp	.L88
	.p2align 4,,10
	.p2align 3
.L72:
	comisd	%xmm5, %xmm1
	ja	.L78
	comisd	%xmm7, %xmm2
	ja	.L75
	jmp	.L79
.L145:
	comisd	%xmm7, %xmm2
	jbe	.L73
	comisd	%xmm5, %xmm1
	ja	.L81
	jmp	.L85
.L157:
	comisd	%xmm2, %xmm4
	movl	$4, %edx
	ja	.L47
	comisd	%xmm7, %xmm0
	movl	$8, %edx
	ja	.L47
	comisd	%xmm0, %xmm4
	jbe	.L62
.L71:
	comisd	%xmm7, %xmm2
	ja	.L83
	jmp	.L79
.L154:
	comisd	%xmm5, %xmm1
	jbe	.L71
	jmp	.L78
.L116:
	movl	$1, %edx
	jmp	.L47
	.cfi_endproc
.LFE8169:
	.size	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_, .-_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	.type	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_, @function
_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_:
.LFB8170:
	.cfi_startproc
	movq	%rsi, %rax
	pxor	%xmm0, %xmm0
	pxor	%xmm5, %xmm5
	movq	%rdx, %r8
	pxor	%xmm6, %xmm6
	pxor	%xmm10, %xmm10
	pxor	%xmm1, %xmm1
	movq	%rcx, %rdx
	movzwl	294(%rsi), %esi
	movsd	240(%rax), %xmm4
	pxor	%xmm2, %xmm2
	pxor	%xmm3, %xmm3
	movsd	224(%rax), %xmm7
	movl	%esi, %ecx
	cvtsi2sdl	%esi, %xmm6
	shrw	%cx
	movapd	%xmm7, %xmm8
	movzwl	%cx, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movzwl	296(%rax), %ecx
	movl	%ecx, %edi
	shrw	%di
	subsd	%xmm0, %xmm4
	movzwl	%di, %edi
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	movzwl	290(%rax), %ecx
	cvtsi2sdl	%edi, %xmm5
	addsd	248(%rax), %xmm5
	movl	%ecx, %esi
	cvtsi2sdl	%ecx, %xmm10
	addsd	%xmm4, %xmm6
	shrw	%si
	movapd	%xmm5, %xmm9
	movzwl	%si, %esi
	subsd	%xmm0, %xmm9
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm0
	movzwl	290(%rdx), %esi
	movl	%esi, %ecx
	cvtsi2sdl	%esi, %xmm2
	shrw	%cx
	movzwl	%cx, %ecx
	subsd	%xmm0, %xmm8
	movsd	224(%rdx), %xmm0
	cvtsi2sdl	%ecx, %xmm1
	movzwl	292(%rdx), %ecx
	movl	%ecx, %edi
	cvtsi2sdl	%ecx, %xmm3
	addsd	%xmm8, %xmm10
	shrw	%di
	subsd	%xmm1, %xmm0
	movzwl	%di, %edi
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%edi, %xmm1
	addsd	232(%rdx), %xmm1
	comisd	%xmm6, %xmm0
	addsd	%xmm0, %xmm2
	movapd	%xmm1, %xmm12
	subsd	%xmm3, %xmm12
	ja	.L159
	comisd	%xmm2, %xmm4
	ja	.L159
	comisd	%xmm5, %xmm12
	ja	.L159
	comisd	%xmm1, %xmm9
	ja	.L159
.L396:
	xorl	%ecx, %ecx
.L158:
	movl	%ecx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L159:
	xorl	%ecx, %ecx
	comisd	%xmm10, %xmm0
	ja	.L158
	comisd	%xmm2, %xmm8
	ja	.L158
	movzwl	292(%rax), %edi
	pxor	%xmm3, %xmm3
	movsd	232(%rax), %xmm11
	movl	%edi, %esi
	shrw	%si
	movzwl	%si, %esi
	cvtsi2sdl	%esi, %xmm3
	addsd	%xmm11, %xmm3
	comisd	%xmm3, %xmm12
	ja	.L158
	pxor	%xmm13, %xmm13
	movapd	%xmm3, %xmm14
	cvtsi2sdl	%edi, %xmm13
	subsd	%xmm13, %xmm14
	comisd	%xmm1, %xmm14
	ja	.L158
	comisd	%xmm0, %xmm4
	movapd	%xmm7, %xmm13
	unpcklpd	%xmm11, %xmm13
	jb	.L388
	comisd	%xmm6, %xmm2
	jnb	.L164
	ucomisd	%xmm0, %xmm4
	jp	.L376
	je	.L165
.L376:
	comisd	%xmm12, %xmm9
	jnb	.L167
	comisd	%xmm9, %xmm12
	jb	.L470
	comisd	%xmm1, %xmm5
	jnb	.L178
	.p2align 4,,10
	.p2align 3
.L195:
	comisd	%xmm4, %xmm2
	movq	184(%rdx), %rcx
	jnb	.L463
	comisd	%xmm12, %xmm5
	subsd	%xmm8, %xmm2
	jnb	.L202
	subsd	%xmm12, %xmm3
	movapd	%xmm2, %xmm0
	comisd	%xmm3, %xmm2
	unpcklpd	%xmm3, %xmm0
	ja	.L462
	comisd	%xmm2, %xmm3
	ja	.L202
	cmpq	%r8, %rcx
	jb	.L471
	movsd	.LC3(%rip), %xmm1
	unpcklpd	%xmm1, %xmm1
	addpd	%xmm1, %xmm0
	movapd	%xmm13, %xmm1
	addpd	%xmm0, %xmm1
	subpd	%xmm0, %xmm13
	movsd	%xmm1, %xmm13
	movups	%xmm13, 224(%rax)
	jmp	.L262
	.p2align 4,,10
	.p2align 3
.L388:
	comisd	%xmm4, %xmm0
	jb	.L170
.L165:
	comisd	%xmm2, %xmm6
	jb	.L472
.L164:
	comisd	%xmm5, %xmm12
	ja	.L174
	comisd	%xmm1, %xmm9
	jbe	.L170
	movq	184(%rdx), %rcx
	cmpq	%r8, %rcx
	jnb	.L428
	testq	%r8, %r8
	js	.L315
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%r8, %xmm2
.L316:
	addq	%r8, %rcx
	js	.L317
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rcx, %xmm0
.L318:
	divsd	%xmm0, %xmm2
	movsd	.LC5(%rip), %xmm0
	subsd	%xmm14, %xmm1
	subsd	%xmm2, %xmm0
.L298:
	mulsd	%xmm1, %xmm0
	addsd	.LC3(%rip), %xmm0
	mulsd	%xmm2, %xmm1
	addsd	%xmm11, %xmm0
	movsd	%xmm0, 232(%rax)
	movsd	232(%rdx), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 232(%rdx)
	.p2align 4,,10
	.p2align 3
.L262:
	movl	$1, %ecx
	jmp	.L158
	.p2align 4,,10
	.p2align 3
.L170:
	comisd	%xmm12, %xmm9
	jnb	.L167
	comisd	%xmm9, %xmm12
	jnb	.L172
	comisd	%xmm0, %xmm4
	jbe	.L394
	comisd	%xmm5, %xmm1
	ja	.L195
	comisd	%xmm6, %xmm2
	jbe	.L196
	comisd	%xmm5, %xmm1
	jbe	.L469
	.p2align 4,,10
	.p2align 3
.L198:
	comisd	%xmm0, %xmm6
	movq	184(%rdx), %rcx
	jnb	.L463
	comisd	%xmm12, %xmm5
	subsd	%xmm0, %xmm10
	jnb	.L211
	subsd	%xmm12, %xmm3
	movapd	%xmm10, %xmm0
	comisd	%xmm3, %xmm10
	unpcklpd	%xmm3, %xmm0
	ja	.L462
	comisd	%xmm10, %xmm3
	ja	.L211
	cmpq	%r8, %rcx
	jb	.L473
	movsd	.LC3(%rip), %xmm1
	unpcklpd	%xmm1, %xmm1
	addpd	%xmm1, %xmm0
	subpd	%xmm0, %xmm13
	movups	%xmm13, 224(%rax)
	jmp	.L262
	.p2align 4,,10
	.p2align 3
.L167:
	comisd	%xmm5, %xmm1
	jb	.L474
.L178:
	comisd	%xmm2, %xmm4
	ja	.L184
	comisd	%xmm6, %xmm0
	ja	.L185
	comisd	%xmm0, %xmm4
	ja	.L187
	comisd	%xmm6, %xmm2
	jbe	.L188
	comisd	%xmm5, %xmm1
	jbe	.L190
	.p2align 4,,10
	.p2align 3
.L174:
	movq	184(%rdx), %rcx
.L463:
	subsd	%xmm12, %xmm3
.L462:
	cmpq	%r8, %rcx
	jnb	.L475
	testq	%r8, %r8
	js	.L335
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L336:
	addq	%r8, %rcx
	js	.L337
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rcx, %xmm0
.L338:
	divsd	%xmm0, %xmm1
	movsd	.LC5(%rip), %xmm0
	subsd	%xmm1, %xmm0
	mulsd	%xmm3, %xmm0
	addsd	.LC3(%rip), %xmm0
	mulsd	%xmm1, %xmm3
	subsd	%xmm0, %xmm11
	movsd	%xmm11, 232(%rax)
	addsd	232(%rdx), %xmm3
	movsd	%xmm3, 232(%rdx)
	jmp	.L262
	.p2align 4,,10
	.p2align 3
.L474:
	comisd	%xmm9, %xmm12
	jnb	.L178
	comisd	%xmm0, %xmm4
	ja	.L210
	comisd	%xmm6, %xmm2
	ja	.L365
	comisd	%xmm0, %xmm4
	ja	.L210
	.p2align 4,,10
	.p2align 3
.L215:
	comisd	%xmm6, %xmm2
	jbe	.L396
.L207:
	comisd	%xmm12, %xmm9
	jbe	.L396
.L365:
	comisd	%xmm0, %xmm6
	movq	184(%rdx), %rcx
	jnb	.L219
	comisd	%xmm9, %xmm1
	subsd	%xmm0, %xmm10
	jnb	.L211
	subsd	%xmm14, %xmm1
	movapd	%xmm10, %xmm0
	comisd	%xmm1, %xmm10
	unpcklpd	%xmm1, %xmm0
	ja	.L228
	comisd	%xmm10, %xmm1
	ja	.L229
	cmpq	%r8, %rcx
	jb	.L476
	movsd	.LC3(%rip), %xmm1
	unpcklpd	%xmm1, %xmm1
	addpd	%xmm1, %xmm0
	movapd	%xmm13, %xmm1
	subpd	%xmm0, %xmm1
	addpd	%xmm13, %xmm0
	movsd	%xmm1, %xmm0
	movups	%xmm0, 224(%rax)
	jmp	.L262
	.p2align 4,,10
	.p2align 3
.L472:
	comisd	%xmm12, %xmm9
	jnb	.L167
	comisd	%xmm9, %xmm12
	jnb	.L172
.L173:
	comisd	%xmm6, %xmm2
	jbe	.L188
.L200:
	comisd	%xmm5, %xmm1
	ja	.L198
.L190:
	comisd	%xmm0, %xmm4
	jbe	.L207
.L469:
	comisd	%xmm12, %xmm9
	jbe	.L396
	.p2align 4,,10
	.p2align 3
.L210:
	comisd	%xmm4, %xmm2
	movq	184(%rdx), %rcx
	jnb	.L219
	comisd	%xmm9, %xmm1
	subsd	%xmm8, %xmm2
	jnb	.L202
	subsd	%xmm14, %xmm1
	movapd	%xmm2, %xmm0
	comisd	%xmm1, %xmm2
	unpcklpd	%xmm1, %xmm0
	ja	.L221
	comisd	%xmm2, %xmm1
	jbe	.L477
	cmpq	%r8, %rcx
	jnb	.L235
	testq	%r8, %r8
	js	.L347
.L450:
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L348:
	addq	%r8, %rcx
	js	.L349
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rcx, %xmm0
.L350:
	divsd	%xmm0, %xmm1
	movsd	.LC5(%rip), %xmm0
	subsd	%xmm1, %xmm0
.L272:
	mulsd	%xmm2, %xmm0
	addsd	.LC3(%rip), %xmm0
	mulsd	%xmm1, %xmm2
	addsd	%xmm7, %xmm0
	movsd	%xmm0, 224(%rax)
	movsd	224(%rdx), %xmm0
	subsd	%xmm2, %xmm0
	movsd	%xmm0, 224(%rdx)
	jmp	.L262
.L471:
	testq	%r8, %r8
	js	.L281
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L282:
	addq	%r8, %rcx
	js	.L283
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rcx, %xmm0
.L284:
	divsd	%xmm0, %xmm1
	movsd	.LC5(%rip), %xmm0
	movapd	%xmm3, %xmm4
	movsd	.LC3(%rip), %xmm5
	subsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm3
	mulsd	%xmm2, %xmm1
	mulsd	%xmm0, %xmm4
	mulsd	%xmm2, %xmm0
	addsd	%xmm5, %xmm4
	addsd	%xmm5, %xmm0
	subsd	%xmm4, %xmm11
	addsd	%xmm7, %xmm0
	movsd	%xmm11, 232(%rax)
	addsd	232(%rdx), %xmm3
	movsd	%xmm3, 232(%rdx)
	movsd	%xmm0, 224(%rax)
	movsd	224(%rdx), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 224(%rdx)
	jmp	.L262
.L235:
	addsd	.LC3(%rip), %xmm2
	addsd	%xmm7, %xmm2
	movsd	%xmm2, 224(%rax)
	jmp	.L262
	.p2align 4,,10
	.p2align 3
.L475:
	addsd	.LC3(%rip), %xmm3
	subsd	%xmm3, %xmm11
	movsd	%xmm11, 232(%rax)
	jmp	.L262
.L473:
	testq	%r8, %r8
	js	.L339
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L340:
	addq	%r8, %rcx
	js	.L341
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rcx, %xmm0
.L342:
	divsd	%xmm0, %xmm1
	movsd	.LC5(%rip), %xmm0
	movapd	%xmm3, %xmm2
	movsd	.LC3(%rip), %xmm4
	subsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm3
	mulsd	%xmm10, %xmm1
	mulsd	%xmm0, %xmm2
	mulsd	%xmm10, %xmm0
	addsd	%xmm4, %xmm2
	addsd	%xmm4, %xmm0
	subsd	%xmm2, %xmm11
	subsd	%xmm0, %xmm7
	movsd	%xmm11, 232(%rax)
	addsd	232(%rdx), %xmm3
	movsd	%xmm3, 232(%rdx)
	movsd	%xmm7, 224(%rax)
	addsd	224(%rdx), %xmm1
	movsd	%xmm1, 224(%rdx)
	jmp	.L262
.L476:
	testq	%r8, %r8
	js	.L359
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%r8, %xmm2
.L360:
	addq	%r8, %rcx
	js	.L361
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rcx, %xmm0
.L362:
	divsd	%xmm0, %xmm2
	movsd	.LC5(%rip), %xmm0
	movapd	%xmm1, %xmm3
	movsd	.LC3(%rip), %xmm4
	subsd	%xmm2, %xmm0
	mulsd	%xmm2, %xmm1
	mulsd	%xmm10, %xmm2
	mulsd	%xmm0, %xmm3
	mulsd	%xmm10, %xmm0
	addsd	%xmm4, %xmm3
	addsd	%xmm4, %xmm0
	addsd	%xmm11, %xmm3
	subsd	%xmm0, %xmm7
	movsd	%xmm3, 232(%rax)
	movsd	232(%rdx), %xmm3
	subsd	%xmm1, %xmm3
	movsd	%xmm3, 232(%rdx)
	movsd	%xmm7, 224(%rax)
	addsd	224(%rdx), %xmm2
	movsd	%xmm2, 224(%rdx)
	jmp	.L262
	.p2align 4,,10
	.p2align 3
.L172:
	comisd	%xmm1, %xmm5
	jnb	.L478
	comisd	%xmm0, %xmm4
	ja	.L195
	comisd	%xmm6, %xmm2
	ja	.L198
	comisd	%xmm0, %xmm4
	jbe	.L215
	jmp	.L469
	.p2align 4,,10
	.p2align 3
.L188:
	comisd	%xmm0, %xmm4
	jbe	.L215
.L196:
	comisd	%xmm12, %xmm9
	jbe	.L215
	jmp	.L210
	.p2align 4,,10
	.p2align 3
.L187:
	comisd	%xmm5, %xmm1
	ja	.L195
	comisd	%xmm6, %xmm2
	ja	.L190
	jmp	.L196
	.p2align 4,,10
	.p2align 3
.L283:
	movq	%rcx, %rsi
	andl	$1, %ecx
	pxor	%xmm0, %xmm0
	shrq	%rsi
	orq	%rcx, %rsi
	cvtsi2sdq	%rsi, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L284
	.p2align 4,,10
	.p2align 3
.L281:
	movq	%r8, %rsi
	movq	%r8, %rdi
	pxor	%xmm1, %xmm1
	shrq	%rsi
	andl	$1, %edi
	orq	%rdi, %rsi
	cvtsi2sdq	%rsi, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L282
	.p2align 4,,10
	.p2align 3
.L341:
	movq	%rcx, %rsi
	andl	$1, %ecx
	pxor	%xmm0, %xmm0
	shrq	%rsi
	orq	%rcx, %rsi
	cvtsi2sdq	%rsi, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L342
	.p2align 4,,10
	.p2align 3
.L339:
	movq	%r8, %rsi
	movq	%r8, %rdi
	pxor	%xmm1, %xmm1
	shrq	%rsi
	andl	$1, %edi
	orq	%rdi, %rsi
	cvtsi2sdq	%rsi, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L340
	.p2align 4,,10
	.p2align 3
.L361:
	movq	%rcx, %rsi
	andl	$1, %ecx
	pxor	%xmm0, %xmm0
	shrq	%rsi
	orq	%rcx, %rsi
	cvtsi2sdq	%rsi, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L362
	.p2align 4,,10
	.p2align 3
.L359:
	movq	%r8, %rsi
	movq	%r8, %rdi
	pxor	%xmm2, %xmm2
	shrq	%rsi
	andl	$1, %edi
	orq	%rdi, %rsi
	cvtsi2sdq	%rsi, %xmm2
	addsd	%xmm2, %xmm2
	jmp	.L360
.L394:
	comisd	%xmm6, %xmm2
	jbe	.L188
	comisd	%xmm5, %xmm1
	ja	.L198
	jmp	.L207
	.p2align 4,,10
	.p2align 3
.L184:
	movq	184(%rdx), %rcx
	subsd	%xmm8, %xmm2
	cmpq	%r8, %rcx
	jnb	.L235
	testq	%r8, %r8
	jns	.L450
	movq	%r8, %rsi
	movq	%r8, %rdi
	pxor	%xmm1, %xmm1
	shrq	%rsi
	andl	$1, %edi
	orq	%rdi, %rsi
	cvtsi2sdq	%rsi, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L348
	.p2align 4,,10
	.p2align 3
.L202:
	cmpq	%r8, %rcx
	jnb	.L235
	testq	%r8, %r8
	js	.L343
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L344:
	addq	%r8, %rcx
	js	.L345
	pxor	%xmm3, %xmm3
	cvtsi2sdq	%rcx, %xmm3
.L346:
	divsd	%xmm3, %xmm1
	movsd	.LC5(%rip), %xmm0
	subsd	%xmm1, %xmm0
	jmp	.L272
.L337:
	movq	%rcx, %rsi
	andl	$1, %ecx
	pxor	%xmm0, %xmm0
	shrq	%rsi
	orq	%rcx, %rsi
	cvtsi2sdq	%rsi, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L338
.L335:
	movq	%r8, %rsi
	movq	%r8, %rdi
	pxor	%xmm1, %xmm1
	shrq	%rsi
	andl	$1, %edi
	orq	%rdi, %rsi
	cvtsi2sdq	%rsi, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L336
.L185:
	movq	184(%rdx), %rcx
	subsd	%xmm0, %xmm10
	cmpq	%r8, %rcx
	jnb	.L245
	testq	%r8, %r8
	js	.L319
.L447:
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L320:
	addq	%r8, %rcx
	js	.L321
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rcx, %xmm0
.L322:
	divsd	%xmm0, %xmm1
	movsd	.LC5(%rip), %xmm0
	subsd	%xmm1, %xmm0
.L289:
	mulsd	%xmm10, %xmm0
	addsd	.LC3(%rip), %xmm0
	subsd	%xmm0, %xmm7
	movapd	%xmm10, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm7, 224(%rax)
	addsd	224(%rdx), %xmm0
	movsd	%xmm0, 224(%rdx)
	jmp	.L262
.L245:
	movsd	.LC3(%rip), %xmm0
	addsd	%xmm10, %xmm0
	subsd	%xmm0, %xmm7
	movsd	%xmm7, 224(%rax)
	jmp	.L262
.L211:
	cmpq	%r8, %rcx
	jnb	.L245
	testq	%r8, %r8
	js	.L307
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L308:
	addq	%r8, %rcx
	js	.L309
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%rcx, %xmm2
.L310:
	divsd	%xmm2, %xmm1
	movsd	.LC5(%rip), %xmm0
	subsd	%xmm1, %xmm0
	jmp	.L289
.L478:
	comisd	%xmm2, %xmm4
	ja	.L184
	comisd	%xmm6, %xmm0
	ja	.L185
	comisd	%xmm0, %xmm4
	jbe	.L173
.L186:
	comisd	%xmm6, %xmm2
	ja	.L200
	jmp	.L196
.L428:
	subsd	%xmm14, %xmm1
.L232:
	addsd	.LC3(%rip), %xmm1
	addsd	%xmm11, %xmm1
	movsd	%xmm1, 232(%rax)
	jmp	.L262
.L470:
	comisd	%xmm5, %xmm1
	jbe	.L186
	jmp	.L195
.L219:
	cmpq	%r8, %rcx
	jnb	.L428
	testq	%r8, %r8
	js	.L351
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%r8, %xmm2
.L352:
	addq	%r8, %rcx
	js	.L353
	pxor	%xmm3, %xmm3
	cvtsi2sdq	%rcx, %xmm3
.L354:
	divsd	%xmm3, %xmm2
	movsd	.LC5(%rip), %xmm0
	subsd	%xmm14, %xmm1
	subsd	%xmm2, %xmm0
	jmp	.L298
.L477:
	cmpq	%r8, %rcx
	jb	.L479
	movsd	.LC3(%rip), %xmm1
	unpcklpd	%xmm1, %xmm1
	addpd	%xmm1, %xmm0
	addpd	%xmm13, %xmm0
	movups	%xmm0, 224(%rax)
	jmp	.L262
.L479:
	testq	%r8, %r8
	js	.L303
	pxor	%xmm4, %xmm4
	cvtsi2sdq	%r8, %xmm4
.L304:
	addq	%r8, %rcx
	js	.L305
	pxor	%xmm3, %xmm3
	cvtsi2sdq	%rcx, %xmm3
.L306:
	divsd	%xmm3, %xmm4
	movsd	.LC5(%rip), %xmm0
	movapd	%xmm1, %xmm3
	movsd	.LC3(%rip), %xmm5
	subsd	%xmm4, %xmm0
	mulsd	%xmm4, %xmm1
	mulsd	%xmm0, %xmm3
	mulsd	%xmm2, %xmm0
	mulsd	%xmm4, %xmm2
	addsd	%xmm5, %xmm3
	addsd	%xmm5, %xmm0
	addsd	%xmm11, %xmm3
	addsd	%xmm7, %xmm0
	movsd	%xmm3, 232(%rax)
	movsd	232(%rdx), %xmm3
	subsd	%xmm1, %xmm3
	movsd	%xmm3, 232(%rdx)
	movsd	%xmm0, 224(%rax)
	movsd	224(%rdx), %xmm1
	subsd	%xmm2, %xmm1
	movsd	%xmm1, 224(%rdx)
	jmp	.L262
	.p2align 4,,10
	.p2align 3
.L303:
	movq	%r8, %rsi
	movq	%r8, %rdi
	pxor	%xmm0, %xmm0
	shrq	%rsi
	andl	$1, %edi
	orq	%rdi, %rsi
	cvtsi2sdq	%rsi, %xmm0
	movapd	%xmm0, %xmm4
	addsd	%xmm0, %xmm4
	jmp	.L304
	.p2align 4,,10
	.p2align 3
.L305:
	movq	%rcx, %rsi
	andl	$1, %ecx
	pxor	%xmm3, %xmm3
	shrq	%rsi
	orq	%rcx, %rsi
	cvtsi2sdq	%rsi, %xmm3
	addsd	%xmm3, %xmm3
	jmp	.L306
.L349:
	movq	%rcx, %rsi
	andl	$1, %ecx
	pxor	%xmm0, %xmm0
	shrq	%rsi
	orq	%rcx, %rsi
	cvtsi2sdq	%rsi, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L350
.L229:
	cmpq	%r8, %rcx
	jnb	.L245
	testq	%r8, %r8
	jns	.L447
	movq	%r8, %rsi
	movq	%r8, %rdi
	pxor	%xmm0, %xmm0
	shrq	%rsi
	andl	$1, %edi
	orq	%rdi, %rsi
	cvtsi2sdq	%rsi, %xmm0
	movapd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
	jmp	.L320
.L321:
	movq	%rcx, %rsi
	andl	$1, %ecx
	pxor	%xmm0, %xmm0
	shrq	%rsi
	orq	%rcx, %rsi
	cvtsi2sdq	%rsi, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L322
.L345:
	movq	%rcx, %rsi
	andl	$1, %ecx
	pxor	%xmm3, %xmm3
	shrq	%rsi
	orq	%rcx, %rsi
	cvtsi2sdq	%rsi, %xmm3
	addsd	%xmm3, %xmm3
	jmp	.L346
.L343:
	movq	%r8, %rsi
	movq	%r8, %rdi
	pxor	%xmm1, %xmm1
	shrq	%rsi
	andl	$1, %edi
	orq	%rdi, %rsi
	cvtsi2sdq	%rsi, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L344
.L315:
	movq	%r8, %rsi
	movq	%r8, %rdi
	pxor	%xmm2, %xmm2
	shrq	%rsi
	andl	$1, %edi
	orq	%rdi, %rsi
	cvtsi2sdq	%rsi, %xmm2
	addsd	%xmm2, %xmm2
	jmp	.L316
.L221:
	cmpq	%r8, %rcx
	jnb	.L232
	testq	%r8, %r8
	js	.L299
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%r8, %xmm2
.L300:
	addq	%r8, %rcx
	js	.L301
	pxor	%xmm3, %xmm3
	cvtsi2sdq	%rcx, %xmm3
.L302:
	divsd	%xmm3, %xmm2
	movsd	.LC5(%rip), %xmm0
	subsd	%xmm2, %xmm0
	jmp	.L298
.L317:
	movq	%rcx, %rsi
	andl	$1, %ecx
	pxor	%xmm0, %xmm0
	shrq	%rsi
	orq	%rcx, %rsi
	cvtsi2sdq	%rsi, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L318
.L319:
	movq	%r8, %rsi
	movq	%r8, %rdi
	pxor	%xmm1, %xmm1
	shrq	%rsi
	andl	$1, %edi
	orq	%rdi, %rsi
	cvtsi2sdq	%rsi, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L320
.L309:
	movq	%rcx, %rsi
	andl	$1, %ecx
	pxor	%xmm2, %xmm2
	shrq	%rsi
	orq	%rcx, %rsi
	cvtsi2sdq	%rsi, %xmm2
	addsd	%xmm2, %xmm2
	jmp	.L310
.L307:
	movq	%r8, %rsi
	movq	%r8, %rdi
	pxor	%xmm1, %xmm1
	shrq	%rsi
	andl	$1, %edi
	orq	%rdi, %rsi
	cvtsi2sdq	%rsi, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L308
.L228:
	cmpq	%r8, %rcx
	jnb	.L232
	testq	%r8, %r8
	js	.L355
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%r8, %xmm2
.L356:
	addq	%r8, %rcx
	js	.L357
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rcx, %xmm0
.L358:
	divsd	%xmm0, %xmm2
	movsd	.LC5(%rip), %xmm0
	subsd	%xmm2, %xmm0
	jmp	.L298
.L353:
	movq	%rcx, %rsi
	andl	$1, %ecx
	pxor	%xmm3, %xmm3
	shrq	%rsi
	orq	%rcx, %rsi
	cvtsi2sdq	%rsi, %xmm3
	addsd	%xmm3, %xmm3
	jmp	.L354
.L351:
	movq	%r8, %rsi
	movq	%r8, %rdi
	pxor	%xmm2, %xmm2
	shrq	%rsi
	andl	$1, %edi
	orq	%rdi, %rsi
	cvtsi2sdq	%rsi, %xmm2
	addsd	%xmm2, %xmm2
	jmp	.L352
.L347:
	movq	%r8, %rsi
	movq	%r8, %rdi
	pxor	%xmm0, %xmm0
	shrq	%rsi
	andl	$1, %edi
	orq	%rdi, %rsi
	cvtsi2sdq	%rsi, %xmm0
	movapd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
	jmp	.L348
.L301:
	movq	%rcx, %rsi
	andl	$1, %ecx
	pxor	%xmm3, %xmm3
	shrq	%rsi
	orq	%rcx, %rsi
	cvtsi2sdq	%rsi, %xmm3
	addsd	%xmm3, %xmm3
	jmp	.L302
.L299:
	movq	%r8, %rsi
	movq	%r8, %rdi
	pxor	%xmm2, %xmm2
	shrq	%rsi
	andl	$1, %edi
	orq	%rdi, %rsi
	cvtsi2sdq	%rsi, %xmm2
	addsd	%xmm2, %xmm2
	jmp	.L300
.L357:
	movq	%rcx, %rsi
	andl	$1, %ecx
	pxor	%xmm0, %xmm0
	shrq	%rsi
	orq	%rcx, %rsi
	cvtsi2sdq	%rsi, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L358
.L355:
	movq	%r8, %rsi
	movq	%r8, %rdi
	pxor	%xmm0, %xmm0
	shrq	%rsi
	andl	$1, %edi
	orq	%rdi, %rsi
	cvtsi2sdq	%rsi, %xmm0
	movapd	%xmm0, %xmm2
	addsd	%xmm0, %xmm2
	jmp	.L356
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
	movq	%rdx, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdi, %r13
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
	jne	.L481
	movq	$0, 40(%rsp)
	xorl	%ebx, %ebx
.L484:
	movq	(%rsp), %rax
	movq	(%rax), %r8
	testq	%r8, %r8
	je	.L483
	movq	$0, 8(%rsp)
	movq	8(%rax), %r9
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	jmp	.L490
	.p2align 4,,10
	.p2align 3
.L485:
	addq	$1, %rbx
	cmpq	%r8, %rbx
	jnb	.L523
.L490:
	movq	(%r9,%rbx,8), %rdx
	leaq	0(,%rbx,8), %r15
	cmpq	%r14, %rdx
	je	.L485
	cmpq	%rbp, %rdx
	je	.L485
	movq	%rbp, %rsi
	movq	%r13, %rdi
	call	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	testl	%eax, %eax
	je	.L485
	cmpq	%r12, 32(%rsp)
	je	.L524
.L486:
	cmpq	%r8, %rbx
	jnb	.L525
	movq	(%r9,%r15), %rax
	movq	40(%rsp), %rcx
	leaq	1(%r12), %rdx
	cmpq	32(%rsp), %r12
	jnb	.L526
	addq	$1, %rbx
	movq	%rax, (%rcx,%r12,8)
	movq	184(%rax), %rax
	movq	%rdx, %r12
	addq	%rax, 8(%rsp)
	cmpq	%r8, %rbx
	jb	.L490
	.p2align 4,,10
	.p2align 3
.L523:
	movq	40(%rsp), %rbx
	movq	16(%rsp), %rdi
	cmpq	%rdi, 8(%rsp)
	jnb	.L491
	testq	%r12, %r12
	je	.L483
	movq	32(%rsp), %rax
	movq	8(%rsp), %rsi
	xorl	%r15d, %r15d
	movq	%rax, 24(%rsp)
	movq	16(%rsp), %rax
	subq	%rsi, %rax
	movq	%rax, 8(%rsp)
.L498:
	cmpq	%r15, 24(%rsp)
	je	.L527
	movq	(%rbx,%r15,8), %r9
	movq	8(%rsp), %rdx
	movq	%rbp, %rsi
	movq	%r13, %rdi
	addq	184(%r9), %rdx
	movq	%r9, %rcx
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	testb	%al, %al
	jne	.L528
.L497:
	addq	$1, %r15
	cmpq	%r15, %r12
	jne	.L498
.L483:
	movq	%rbx, %rdi
	call	free@PLT
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L529
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
.L491:
	.cfi_restore_state
	testq	%r12, %r12
	je	.L483
	movq	32(%rsp), %r10
	xorl	%r9d, %r9d
	.p2align 4,,10
	.p2align 3
.L495:
	cmpq	%r9, %r10
	je	.L530
	movq	(%rbx,%r9,8), %rcx
	xorl	%edx, %edx
	movq	%rbp, %rsi
	movq	%r13, %rdi
	addq	$1, %r9
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	cmpq	%r9, %r12
	jne	.L495
	jmp	.L483
	.p2align 4,,10
	.p2align 3
.L528:
	movq	8(%rsp), %rcx
	movq	(%rsp), %rsi
	movq	%r9, %r8
	movq	%r14, %rdx
	movq	%r13, %rdi
.LEHB0:
	call	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_
	movq	(%rbx,%r15,8), %rcx
	xorl	%edx, %edx
	movq	%rbp, %rsi
	movq	%r13, %rdi
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	jmp	.L497
	.p2align 4,,10
	.p2align 3
.L524:
	movzwl	8(%r13), %eax
	leaq	32(%rsp), %rdi
	movq	%r12, %rsi
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6InsertEyy.isra.0
.LEHE0:
	movq	(%rsp), %rax
	movq	(%rax), %r8
	movq	8(%rax), %r9
	jmp	.L486
	.p2align 4,,10
	.p2align 3
.L481:
	leaq	0(,%r12,8), %rdi
	call	malloc@PLT
	movq	%rax, 40(%rsp)
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.L484
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
.L530:
	movq	%r10, %rsi
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
.LEHB2:
	call	printf@PLT
.L489:
	movl	$1, %edi
	call	exit@PLT
.L526:
	movq	%r12, %rsi
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L489
.L525:
	movq	%rbx, %rsi
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L489
.L527:
	movq	24(%rsp), %rsi
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE2:
	jmp	.L489
.L529:
	call	__stack_chk_fail@PLT
.L502:
	movq	%rax, %rbx
	jmp	.L499
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
	.uleb128 .L502-.LFB8172
	.uleb128 0
	.uleb128 .LEHB1-.LFB8172
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB8172
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L502-.LFB8172
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
.L499:
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
	jne	.L531
	movq	%rbx, %rdi
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
.L531:
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
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	movzwl	8(%rdi), %r12d
	movq	%rdi, (%rsp)
	movq	%rdx, 40(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	movq	%r12, 48(%rsp)
	testq	%r12, %r12
	jne	.L533
	movq	$0, 56(%rsp)
	xorl	%ebx, %ebx
.L534:
	movq	(%rsp), %rax
	movq	24(%rax), %r13
	cmpq	16(%rax), %rbp
	jnb	.L590
	salq	$4, %rbp
	addq	%rbp, %r13
	movq	0(%r13), %r9
	testq	%r9, %r9
	je	.L536
	xorl	%ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L556:
	movq	$0, 16(%rsp)
	movq	8(%r13), %r8
	leaq	0(,%rbp,8), %r14
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	.p2align 4,,10
	.p2align 3
.L543:
	cmpq	%rbx, %rbp
	je	.L537
	movq	(%r8,%rbx,8), %rdx
	leaq	0(,%rbx,8), %r15
	cmpq	%r9, %rbp
	jnb	.L590
	movq	(%r8,%r14), %rsi
	movq	(%rsp), %rdi
	call	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	testl	%eax, %eax
	je	.L537
	cmpq	%r12, 48(%rsp)
	je	.L596
.L540:
	cmpq	%r9, %rbx
	jnb	.L593
	movq	(%r8,%r15), %rax
	movq	56(%rsp), %rcx
	leaq	1(%r12), %rdx
	cmpq	48(%rsp), %r12
	jnb	.L597
	movq	%rax, (%rcx,%r12,8)
	movq	184(%rax), %rax
	movq	%rdx, %r12
	addq	%rax, 16(%rsp)
.L537:
	addq	$1, %rbx
	cmpq	%r9, %rbx
	jb	.L543
	cmpq	%r9, %rbp
	jnb	.L590
	movq	(%r8,%r14), %r11
	movq	16(%rsp), %rax
	cmpq	176(%r11), %rax
	jnb	.L545
	testq	%r12, %r12
	je	.L550
	movq	48(%rsp), %rax
	xorl	%ebx, %ebx
	movq	%rax, 32(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 24(%rsp)
	jmp	.L555
	.p2align 4,,10
	.p2align 3
.L553:
	addq	$1, %rbx
	cmpq	%rbx, %r12
	je	.L550
.L555:
	cmpq	%rbx, 32(%rsp)
	je	.L598
	movq	24(%rsp), %rax
	movq	(%rax,%rbx,8), %r15
	movq	8(%r13), %rax
	movq	184(%r15), %rdx
	cmpq	%r9, %rbp
	jnb	.L590
	movq	(%rax,%r14), %r11
	movq	16(%rsp), %rax
	movq	%r15, %rcx
	movq	(%rsp), %rdi
	movq	176(%r11), %r10
	movq	%r11, %rsi
	subq	%rax, %r10
	addq	%r10, %rdx
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	testb	%al, %al
	je	.L553
	movq	(%rsp), %rdi
	movq	%r15, %r8
	movq	%r10, %rcx
	movq	%r11, %rdx
	movq	%r13, %rsi
.LEHB4:
	call	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_
	movq	24(%rsp), %rax
	movq	0(%r13), %r9
	movq	(%rax,%rbx,8), %rcx
	movq	8(%r13), %rax
	cmpq	%r9, %rbp
	jnb	.L590
	movq	(%rax,%r14), %rsi
	movq	(%rsp), %rdi
	xorl	%edx, %edx
	addq	$1, %rbx
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	cmpq	%rbx, %r12
	jne	.L555
.L550:
	addq	$1, %rbp
	cmpq	%r9, %rbp
	jb	.L556
.L600:
	movq	56(%rsp), %rbx
.L536:
	movq	40(%rsp), %rcx
	movl	290(%rcx), %eax
	movupd	224(%rcx), %xmm3
	movq	%rcx, %rdi
	movl	%eax, 294(%rcx)
	movups	%xmm3, 240(%rcx)
	movaps	%xmm3, (%rsp)
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv@PLT
	movq	0(%r13), %rdx
	xorl	%ebp, %ebp
	testq	%rdx, %rdx
	je	.L562
	.p2align 4,,10
	.p2align 3
.L557:
	movq	8(%r13), %rax
	movq	(%rax,%rbp,8), %rdi
	movq	40(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L558
	movupd	224(%rdi), %xmm0
	ucomisd	240(%rdi), %xmm0
	jp	.L559
	jne	.L559
	movapd	%xmm0, %xmm2
	unpckhpd	%xmm2, %xmm2
	ucomisd	248(%rdi), %xmm2
	jp	.L559
	je	.L558
.L559:
	movups	%xmm0, 240(%rdi)
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv@PLT
	movq	0(%r13), %rdx
.L558:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jb	.L557
.L562:
	movq	%rbx, %rdi
	call	free@PLT
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L599
	addq	$88, %rsp
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
.L596:
	.cfi_restore_state
	movq	(%rsp), %rax
	leaq	48(%rsp), %rdi
	movq	%r12, %rsi
	movzwl	8(%rax), %eax
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6InsertEyy.isra.0
	movq	0(%r13), %r9
	movq	8(%r13), %r8
	jmp	.L540
	.p2align 4,,10
	.p2align 3
.L545:
	testq	%r12, %r12
	je	.L550
	movq	48(%rsp), %rbx
	movq	56(%rsp), %r14
	xorl	%r10d, %r10d
	movq	(%rsp), %r15
	.p2align 4,,10
	.p2align 3
.L549:
	cmpq	%r10, %rbx
	je	.L593
	movq	(%r14,%r10,8), %rcx
	xorl	%edx, %edx
	movq	%r11, %rsi
	movq	%r15, %rdi
	addq	$1, %r10
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	cmpq	%r10, %r12
	jne	.L549
	addq	$1, %rbp
	cmpq	%r9, %rbp
	jb	.L556
	jmp	.L600
.L590:
	movq	%rbp, %rsi
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE4:
.L539:
	movl	$1, %edi
	call	exit@PLT
.L533:
	leaq	0(,%r12,8), %rdi
	call	malloc@PLT
	movq	%rax, 56(%rsp)
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.L534
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
.L593:
	movq	%rbx, %rsi
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
.LEHB6:
	call	printf@PLT
	jmp	.L539
.L598:
	movq	32(%rsp), %rsi
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L539
.L597:
	movq	%r12, %rsi
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE6:
	jmp	.L539
.L599:
	call	__stack_chk_fail@PLT
.L567:
	movq	%rax, %rbx
	jmp	.L563
	.section	.gcc_except_table
.LLSDA8171:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8171-.LLSDACSB8171
.LLSDACSB8171:
	.uleb128 .LEHB4-.LFB8171
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L567-.LFB8171
	.uleb128 0
	.uleb128 .LEHB5-.LFB8171
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB8171
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L567-.LFB8171
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
.L563:
	.cfi_def_cfa_offset 144
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	56(%rsp), %rdi
	call	free@PLT
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L601
	movq	%rbx, %rdi
.LEHB7:
	call	_Unwind_Resume@PLT
.LEHE7:
.L601:
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
