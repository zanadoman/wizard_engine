	.file	"WZECollision.cpp"
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
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "neo::array.Insert(): Index out of range\12Params: Index: %lld, Length: %lld\12\0"
	.align 8
.LC1:
	.ascii "neo::array.Insert(): Memory allocation failed\12Params: Index: %lld, Length: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.def	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6InsertEyy.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6InsertEyy.isra.0
_ZN3neo5arrayIPN3wze6engine6actors5actorEE6InsertEyy.isra.0:
.LFB6927:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rdx, %rbx
	movq	(%rcx), %rdx
	movq	%rcx, %rsi
	movq	%r8, %rdi
	cmpq	%rbx, %rdx
	jb	.L26
	testq	%r8, %r8
	jne	.L27
.L3:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L27:
	addq	%r8, %rdx
	movq	%rdx, (%rcx)
	movq	8(%rcx), %rcx
	salq	$3, %rdx
	call	realloc
	movq	%rax, 8(%rsi)
	movq	%rax, %r8
	testq	%rax, %rax
	je	.L28
	movq	(%rsi), %rcx
	leaq	(%rbx,%rdi), %rdx
	leaq	-1(%rcx), %rax
	cmpq	%rdx, %rax
	jb	.L3
	movq	%rcx, %r9
	subq	%rdx, %r9
	leaq	-1(%r9), %r10
	cmpq	$2, %r10
	jbe	.L7
	leaq	8(,%rdi,8), %r10
	testq	%r10, %r10
	je	.L7
	testq	%rdx, %rdx
	je	.L7
	movq	%rcx, %rdx
	leaq	-16(%r8,%rcx,8), %r10
	movq	%r9, %rcx
	shrq	%rcx
	subq	%rdi, %rdx
	negq	%rcx
	leaq	-16(%r8,%rdx,8), %r11
	xorl	%edx, %edx
	salq	$4, %rcx
	.p2align 4,,10
	.p2align 3
.L8:
	movdqu	(%r11,%rdx), %xmm0
	movups	%xmm0, (%r10,%rdx)
	subq	$16, %rdx
	cmpq	%rcx, %rdx
	jne	.L8
	movq	%r9, %rdx
	andq	$-2, %rdx
	subq	%rdx, %rax
	andl	$1, %r9d
	je	.L3
	movq	%rax, %rdx
	subq	%rdi, %rdx
	movq	(%r8,%rdx,8), %rdx
	movq	%rdx, (%r8,%rax,8)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	negq	%rdi
	leaq	(%r8,%rdi,8), %r9
	.p2align 4,,10
	.p2align 3
.L10:
	movq	(%r9,%rax,8), %rcx
	movq	%rcx, (%r8,%rax,8)
	subq	$1, %rax
	cmpq	%rdx, %rax
	jnb	.L10
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L26:
	leaq	.LC0(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L28:
	leaq	.LC1(%rip), %rcx
	movq	%rdi, %r8
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC2:
	.ascii "neo::array(): Memory allocation failed\12Params: Length: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collisionC2EPS0_
	.def	_ZN3wze6engine9collisionC2EPS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collisionC2EPS0_
_ZN3wze6engine9collisionC2EPS0_:
.LFB6896:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	movq	$256, 16(%rcx)
	movl	$4096, %ecx
	call	malloc
	movq	%rax, 24(%rbx)
	testq	%rax, %rax
	je	.L33
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
	addq	$32, %rsp
	popq	%rbx
	ret
.L33:
	leaq	.LC2(%rip), %rcx
	movl	$256, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.globl	_ZN3wze6engine9collisionC1EPS0_
	.def	_ZN3wze6engine9collisionC1EPS0_;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine9collisionC1EPS0_,_ZN3wze6engine9collisionC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision14GetBufferSizeBEv
	.def	_ZN3wze6engine9collision14GetBufferSizeBEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collision14GetBufferSizeBEv
_ZN3wze6engine9collision14GetBufferSizeBEv:
.LFB6898:
	.seh_endprologue
	movzwl	8(%rcx), %eax
	sall	$3, %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision14SetBufferSizeBEh
	.def	_ZN3wze6engine9collision14SetBufferSizeBEh;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collision14SetBufferSizeBEh
_ZN3wze6engine9collision14SetBufferSizeBEh:
.LFB6899:
	.seh_endprologue
	movzbl	%dl, %edx
	shrw	$3, %dx
	leal	0(,%rdx,8), %eax
	movw	%dx, 8(%rcx)
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE
	.def	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE
_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE:
.LFB6900:
	.seh_endprologue
	pxor	%xmm4, %xmm4
	movq	48(%rsp), %rcx
	movzwl	88(%rcx), %edx
	movsd	40(%rcx), %xmm0
	movl	%edx, %eax
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm4
	xorl	%eax, %eax
	subsd	%xmm4, %xmm0
	comisd	%xmm3, %xmm0
	ja	.L36
	pxor	%xmm3, %xmm3
	cvtsi2sdl	%edx, %xmm3
	addsd	%xmm3, %xmm0
	comisd	%xmm0, %xmm1
	ja	.L36
	movzwl	90(%rcx), %edx
	pxor	%xmm0, %xmm0
	pxor	%xmm3, %xmm3
	movl	%edx, %r8d
	cvtsi2sdl	%edx, %xmm3
	shrw	%r8w
	movzwl	%r8w, %r8d
	cvtsi2sdl	%r8d, %xmm0
	addsd	48(%rcx), %xmm0
	movapd	%xmm0, %xmm1
	subsd	%xmm3, %xmm1
	comisd	%xmm2, %xmm1
	ja	.L36
	movsd	40(%rsp), %xmm1
	comisd	%xmm0, %xmm1
	setbe	%al
.L36:
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision14CheckCollisionEdddddddd
	.def	_ZN3wze6engine9collision14CheckCollisionEdddddddd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collision14CheckCollisionEdddddddd
_ZN3wze6engine9collision14CheckCollisionEdddddddd:
.LFB6901:
	.seh_endprologue
	xorl	%eax, %eax
	movsd	48(%rsp), %xmm0
	comisd	%xmm3, %xmm0
	ja	.L41
	comisd	64(%rsp), %xmm1
	ja	.L41
	movsd	72(%rsp), %xmm0
	comisd	%xmm2, %xmm0
	ja	.L41
	movsd	40(%rsp), %xmm0
	comisd	56(%rsp), %xmm0
	setbe	%al
.L41:
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	.def	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_:
.LFB6902:
	subq	$120, %rsp
	.seh_stackalloc	120
	movaps	%xmm6, (%rsp)
	.seh_savexmm	%xmm6, 0
	movaps	%xmm7, 16(%rsp)
	.seh_savexmm	%xmm7, 16
	movaps	%xmm8, 32(%rsp)
	.seh_savexmm	%xmm8, 32
	movaps	%xmm9, 48(%rsp)
	.seh_savexmm	%xmm9, 48
	movaps	%xmm10, 64(%rsp)
	.seh_savexmm	%xmm10, 64
	movaps	%xmm11, 80(%rsp)
	.seh_savexmm	%xmm11, 80
	movaps	%xmm12, 96(%rsp)
	.seh_savexmm	%xmm12, 96
	.seh_endprologue
	pxor	%xmm0, %xmm0
	pxor	%xmm5, %xmm5
	pxor	%xmm7, %xmm7
	pxor	%xmm9, %xmm9
	pxor	%xmm1, %xmm1
	pxor	%xmm2, %xmm2
	movzwl	294(%rdx), %ecx
	pxor	%xmm3, %xmm3
	cvtsi2sdl	%ecx, %xmm7
	movq	%rdx, %rax
	movl	%ecx, %edx
	shrw	%dx
	movsd	240(%rax), %xmm4
	movsd	224(%rax), %xmm6
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm0
	movzwl	296(%rax), %edx
	movl	%edx, %r9d
	shrw	%r9w
	subsd	%xmm0, %xmm4
	movzwl	%r9w, %r9d
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	movzwl	290(%rax), %edx
	cvtsi2sdl	%r9d, %xmm5
	addsd	248(%rax), %xmm5
	movl	%edx, %ecx
	cvtsi2sdl	%edx, %xmm9
	addsd	%xmm4, %xmm7
	shrw	%cx
	movapd	%xmm5, %xmm10
	movzwl	%cx, %ecx
	subsd	%xmm0, %xmm10
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	movzwl	290(%r8), %ecx
	movl	%ecx, %edx
	cvtsi2sdl	%ecx, %xmm2
	shrw	%dx
	movzwl	%dx, %edx
	subsd	%xmm0, %xmm6
	movsd	224(%r8), %xmm0
	cvtsi2sdl	%edx, %xmm1
	movzwl	292(%r8), %edx
	movl	%edx, %r9d
	cvtsi2sdl	%edx, %xmm3
	addsd	%xmm6, %xmm9
	shrw	%r9w
	subsd	%xmm1, %xmm0
	movzwl	%r9w, %r9d
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%r9d, %xmm1
	addsd	232(%r8), %xmm1
	comisd	%xmm7, %xmm0
	addsd	%xmm0, %xmm2
	movapd	%xmm1, %xmm8
	subsd	%xmm3, %xmm8
	ja	.L47
	comisd	%xmm2, %xmm4
	ja	.L47
	comisd	%xmm5, %xmm8
	ja	.L47
	comisd	%xmm1, %xmm10
	ja	.L47
.L145:
	xorl	%edx, %edx
.L46:
	movaps	(%rsp), %xmm6
	movaps	16(%rsp), %xmm7
	movl	%edx, %eax
	movaps	32(%rsp), %xmm8
	movaps	48(%rsp), %xmm9
	movaps	64(%rsp), %xmm10
	movaps	80(%rsp), %xmm11
	movaps	96(%rsp), %xmm12
	addq	$120, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L47:
	xorl	%edx, %edx
	comisd	%xmm9, %xmm0
	ja	.L46
	comisd	%xmm2, %xmm6
	ja	.L46
	movzwl	292(%rax), %r8d
	pxor	%xmm3, %xmm3
	movl	%r8d, %ecx
	shrw	%cx
	movzwl	%cx, %ecx
	cvtsi2sdl	%ecx, %xmm3
	addsd	232(%rax), %xmm3
	comisd	%xmm3, %xmm8
	ja	.L46
	pxor	%xmm12, %xmm12
	movapd	%xmm3, %xmm11
	cvtsi2sdl	%r8d, %xmm12
	subsd	%xmm12, %xmm11
	comisd	%xmm1, %xmm11
	ja	.L46
	comisd	%xmm0, %xmm4
	jb	.L138
	comisd	%xmm7, %xmm2
	jnb	.L52
	ucomisd	%xmm0, %xmm4
	jp	.L130
	je	.L53
.L130:
	comisd	%xmm8, %xmm10
	jnb	.L55
	comisd	%xmm10, %xmm8
	jb	.L153
	comisd	%xmm1, %xmm5
	jnb	.L64
	.p2align 4,,10
	.p2align 3
.L77:
	comisd	%xmm4, %xmm2
	movl	$1, %edx
	jnb	.L46
	comisd	%xmm8, %xmm5
	movl	$4, %edx
	jnb	.L46
	subsd	%xmm6, %xmm2
	subsd	%xmm8, %xmm3
	movl	$1, %edx
	comisd	%xmm3, %xmm2
	ja	.L46
	comisd	%xmm2, %xmm3
	movl	$4, %edx
	movl	$16, %eax
	cmovbe	%eax, %edx
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L138:
	comisd	%xmm4, %xmm0
	jb	.L58
.L53:
	comisd	%xmm2, %xmm7
	jb	.L154
.L52:
	comisd	%xmm5, %xmm8
	movl	$1, %edx
	ja	.L46
	comisd	%xmm1, %xmm10
	movl	$2, %edx
	ja	.L46
.L58:
	comisd	%xmm8, %xmm10
	jnb	.L55
	comisd	%xmm10, %xmm8
	jnb	.L60
	comisd	%xmm0, %xmm4
	jbe	.L144
	comisd	%xmm5, %xmm1
	ja	.L77
	comisd	%xmm7, %xmm2
	jbe	.L78
	comisd	%xmm5, %xmm1
	jbe	.L152
	.p2align 4,,10
	.p2align 3
.L80:
	comisd	%xmm0, %xmm7
	jnb	.L115
	comisd	%xmm8, %xmm5
	movl	$8, %edx
	jnb	.L46
	subsd	%xmm0, %xmm9
	subsd	%xmm8, %xmm3
	movl	$1, %edx
	comisd	%xmm3, %xmm9
	ja	.L46
	comisd	%xmm9, %xmm3
	movl	$8, %edx
	movl	$32, %eax
	cmovbe	%eax, %edx
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L55:
	comisd	%xmm5, %xmm1
	jb	.L155
.L64:
	comisd	%xmm2, %xmm4
	movl	$4, %edx
	ja	.L46
	comisd	%xmm7, %xmm0
	movl	$8, %edx
	ja	.L46
	comisd	%xmm0, %xmm4
	ja	.L71
	comisd	%xmm7, %xmm2
	jbe	.L72
	comisd	%xmm5, %xmm1
	movl	$1, %edx
	ja	.L46
.L74:
	comisd	%xmm0, %xmm4
	jbe	.L84
.L152:
	comisd	%xmm8, %xmm10
	jbe	.L145
	.p2align 4,,10
	.p2align 3
.L87:
	comisd	%xmm4, %xmm2
	movl	$2, %edx
	jnb	.L46
	comisd	%xmm10, %xmm1
	movl	$4, %edx
	jnb	.L46
	subsd	%xmm6, %xmm2
	subsd	%xmm11, %xmm1
	movl	$2, %edx
	comisd	%xmm1, %xmm2
	ja	.L46
	comisd	%xmm2, %xmm1
	movl	$4, %edx
	movl	$64, %eax
	cmovbe	%eax, %edx
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L155:
	comisd	%xmm10, %xmm8
	jnb	.L64
	comisd	%xmm0, %xmm4
	ja	.L87
	comisd	%xmm7, %xmm2
	ja	.L96
	comisd	%xmm0, %xmm4
	ja	.L87
	.p2align 4,,10
	.p2align 3
.L88:
	comisd	%xmm7, %xmm2
	jbe	.L145
.L84:
	comisd	%xmm8, %xmm10
	jbe	.L145
.L96:
	comisd	%xmm0, %xmm7
	movl	$2, %edx
	jnb	.L46
	comisd	%xmm10, %xmm1
	movl	$8, %edx
	jnb	.L46
	subsd	%xmm0, %xmm9
	subsd	%xmm11, %xmm1
	movl	$2, %edx
	comisd	%xmm1, %xmm9
	ja	.L46
	comisd	%xmm9, %xmm1
	movl	$8, %edx
	movl	$128, %eax
	cmovbe	%eax, %edx
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L154:
	comisd	%xmm8, %xmm10
	jnb	.L55
	comisd	%xmm10, %xmm8
	jnb	.L60
.L61:
	comisd	%xmm7, %xmm2
	jbe	.L72
.L82:
	comisd	%xmm5, %xmm1
	ja	.L80
	jmp	.L74
	.p2align 4,,10
	.p2align 3
.L60:
	comisd	%xmm1, %xmm5
	jnb	.L156
	comisd	%xmm0, %xmm4
	ja	.L77
	comisd	%xmm7, %xmm2
	ja	.L80
	comisd	%xmm0, %xmm4
	jbe	.L88
	jmp	.L152
	.p2align 4,,10
	.p2align 3
.L72:
	comisd	%xmm0, %xmm4
	jbe	.L88
.L78:
	comisd	%xmm8, %xmm10
	jbe	.L88
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L71:
	comisd	%xmm5, %xmm1
	ja	.L77
	comisd	%xmm7, %xmm2
	ja	.L74
	jmp	.L78
.L144:
	comisd	%xmm7, %xmm2
	jbe	.L72
	comisd	%xmm5, %xmm1
	ja	.L80
	jmp	.L84
.L156:
	comisd	%xmm2, %xmm4
	movl	$4, %edx
	ja	.L46
	comisd	%xmm7, %xmm0
	movl	$8, %edx
	ja	.L46
	comisd	%xmm0, %xmm4
	jbe	.L61
.L70:
	comisd	%xmm7, %xmm2
	ja	.L82
	jmp	.L78
.L153:
	comisd	%xmm5, %xmm1
	jbe	.L70
	jmp	.L77
.L115:
	movl	$1, %edx
	jmp	.L46
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	.def	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_:
.LFB6903:
	subq	$152, %rsp
	.seh_stackalloc	152
	movaps	%xmm6, (%rsp)
	.seh_savexmm	%xmm6, 0
	movaps	%xmm7, 16(%rsp)
	.seh_savexmm	%xmm7, 16
	movaps	%xmm8, 32(%rsp)
	.seh_savexmm	%xmm8, 32
	movaps	%xmm9, 48(%rsp)
	.seh_savexmm	%xmm9, 48
	movaps	%xmm10, 64(%rsp)
	.seh_savexmm	%xmm10, 64
	movaps	%xmm11, 80(%rsp)
	.seh_savexmm	%xmm11, 80
	movaps	%xmm12, 96(%rsp)
	.seh_savexmm	%xmm12, 96
	movaps	%xmm13, 112(%rsp)
	.seh_savexmm	%xmm13, 112
	movaps	%xmm14, 128(%rsp)
	.seh_savexmm	%xmm14, 128
	.seh_endprologue
	pxor	%xmm0, %xmm0
	pxor	%xmm5, %xmm5
	pxor	%xmm6, %xmm6
	pxor	%xmm10, %xmm10
	pxor	%xmm1, %xmm1
	pxor	%xmm2, %xmm2
	movzwl	294(%rdx), %ecx
	pxor	%xmm3, %xmm3
	cvtsi2sdl	%ecx, %xmm6
	movq	%rdx, %rax
	movl	%ecx, %edx
	shrw	%dx
	movsd	240(%rax), %xmm4
	movsd	224(%rax), %xmm7
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm0
	movzwl	296(%rax), %edx
	movapd	%xmm7, %xmm8
	movl	%edx, %r10d
	shrw	%r10w
	subsd	%xmm0, %xmm4
	movzwl	%r10w, %r10d
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	movzwl	290(%rax), %edx
	cvtsi2sdl	%r10d, %xmm5
	addsd	248(%rax), %xmm5
	movl	%edx, %ecx
	cvtsi2sdl	%edx, %xmm10
	addsd	%xmm4, %xmm6
	shrw	%cx
	movapd	%xmm5, %xmm9
	movzwl	%cx, %ecx
	subsd	%xmm0, %xmm9
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	movzwl	290(%r9), %ecx
	movl	%ecx, %edx
	cvtsi2sdl	%ecx, %xmm2
	shrw	%dx
	movzwl	%dx, %edx
	subsd	%xmm0, %xmm8
	movsd	224(%r9), %xmm0
	cvtsi2sdl	%edx, %xmm1
	movzwl	292(%r9), %edx
	movl	%edx, %r10d
	cvtsi2sdl	%edx, %xmm3
	addsd	%xmm8, %xmm10
	shrw	%r10w
	subsd	%xmm1, %xmm0
	movzwl	%r10w, %r10d
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%r10d, %xmm1
	addsd	232(%r9), %xmm1
	comisd	%xmm6, %xmm0
	addsd	%xmm0, %xmm2
	movapd	%xmm1, %xmm12
	subsd	%xmm3, %xmm12
	ja	.L158
	comisd	%xmm2, %xmm4
	ja	.L158
	comisd	%xmm5, %xmm12
	ja	.L158
	comisd	%xmm1, %xmm9
	ja	.L158
.L395:
	xorl	%edx, %edx
.L157:
	movaps	(%rsp), %xmm6
	movaps	16(%rsp), %xmm7
	movl	%edx, %eax
	movaps	32(%rsp), %xmm8
	movaps	48(%rsp), %xmm9
	movaps	64(%rsp), %xmm10
	movaps	80(%rsp), %xmm11
	movaps	96(%rsp), %xmm12
	movaps	112(%rsp), %xmm13
	movaps	128(%rsp), %xmm14
	addq	$152, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L158:
	xorl	%edx, %edx
	comisd	%xmm10, %xmm0
	ja	.L157
	comisd	%xmm2, %xmm8
	ja	.L157
	movzwl	292(%rax), %r10d
	pxor	%xmm3, %xmm3
	movsd	232(%rax), %xmm11
	movl	%r10d, %ecx
	shrw	%cx
	movzwl	%cx, %ecx
	cvtsi2sdl	%ecx, %xmm3
	addsd	%xmm11, %xmm3
	comisd	%xmm3, %xmm12
	ja	.L157
	pxor	%xmm13, %xmm13
	movapd	%xmm3, %xmm14
	cvtsi2sdl	%r10d, %xmm13
	subsd	%xmm13, %xmm14
	comisd	%xmm1, %xmm14
	ja	.L157
	comisd	%xmm0, %xmm4
	movapd	%xmm7, %xmm13
	unpcklpd	%xmm11, %xmm13
	jb	.L387
	comisd	%xmm6, %xmm2
	jnb	.L163
	ucomisd	%xmm0, %xmm4
	jp	.L375
	je	.L164
.L375:
	comisd	%xmm12, %xmm9
	jnb	.L166
	comisd	%xmm9, %xmm12
	jb	.L469
	comisd	%xmm1, %xmm5
	jnb	.L177
	.p2align 4,,10
	.p2align 3
.L194:
	comisd	%xmm4, %xmm2
	movq	184(%r9), %rdx
	jnb	.L462
	comisd	%xmm12, %xmm5
	subsd	%xmm8, %xmm2
	jnb	.L201
	subsd	%xmm12, %xmm3
	movapd	%xmm2, %xmm0
	comisd	%xmm3, %xmm2
	unpcklpd	%xmm3, %xmm0
	ja	.L461
	comisd	%xmm2, %xmm3
	ja	.L201
	cmpq	%r8, %rdx
	jb	.L470
	movsd	.LC3(%rip), %xmm1
	unpcklpd	%xmm1, %xmm1
	addpd	%xmm1, %xmm0
	movapd	%xmm13, %xmm1
	addpd	%xmm0, %xmm1
	subpd	%xmm0, %xmm13
	movsd	%xmm1, %xmm13
	movups	%xmm13, 224(%rax)
	jmp	.L261
	.p2align 4,,10
	.p2align 3
.L387:
	comisd	%xmm4, %xmm0
	jb	.L169
.L164:
	comisd	%xmm2, %xmm6
	jb	.L471
.L163:
	comisd	%xmm5, %xmm12
	ja	.L173
	comisd	%xmm1, %xmm9
	jbe	.L169
	movq	184(%r9), %rdx
	cmpq	%r8, %rdx
	jnb	.L427
	testq	%r8, %r8
	js	.L314
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%r8, %xmm2
.L315:
	addq	%r8, %rdx
	js	.L316
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
.L317:
	divsd	%xmm0, %xmm2
	movsd	.LC5(%rip), %xmm0
	subsd	%xmm14, %xmm1
	subsd	%xmm2, %xmm0
.L297:
	mulsd	%xmm1, %xmm0
	addsd	.LC3(%rip), %xmm0
	mulsd	%xmm2, %xmm1
	addsd	%xmm11, %xmm0
	movsd	%xmm0, 232(%rax)
	movsd	232(%r9), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 232(%r9)
	.p2align 4,,10
	.p2align 3
.L261:
	movl	$1, %edx
	jmp	.L157
	.p2align 4,,10
	.p2align 3
.L169:
	comisd	%xmm12, %xmm9
	jnb	.L166
	comisd	%xmm9, %xmm12
	jnb	.L171
	comisd	%xmm0, %xmm4
	jbe	.L393
	comisd	%xmm5, %xmm1
	ja	.L194
	comisd	%xmm6, %xmm2
	jbe	.L195
	comisd	%xmm5, %xmm1
	jbe	.L468
	.p2align 4,,10
	.p2align 3
.L197:
	comisd	%xmm0, %xmm6
	movq	184(%r9), %rdx
	jnb	.L462
	comisd	%xmm12, %xmm5
	subsd	%xmm0, %xmm10
	jnb	.L210
	subsd	%xmm12, %xmm3
	movapd	%xmm10, %xmm0
	comisd	%xmm3, %xmm10
	unpcklpd	%xmm3, %xmm0
	ja	.L461
	comisd	%xmm10, %xmm3
	ja	.L210
	cmpq	%r8, %rdx
	jb	.L472
	movsd	.LC3(%rip), %xmm1
	unpcklpd	%xmm1, %xmm1
	addpd	%xmm1, %xmm0
	subpd	%xmm0, %xmm13
	movups	%xmm13, 224(%rax)
	jmp	.L261
	.p2align 4,,10
	.p2align 3
.L166:
	comisd	%xmm5, %xmm1
	jb	.L473
.L177:
	comisd	%xmm2, %xmm4
	ja	.L183
	comisd	%xmm6, %xmm0
	ja	.L184
	comisd	%xmm0, %xmm4
	ja	.L186
	comisd	%xmm6, %xmm2
	jbe	.L187
	comisd	%xmm5, %xmm1
	jbe	.L189
	.p2align 4,,10
	.p2align 3
.L173:
	movq	184(%r9), %rdx
.L462:
	subsd	%xmm12, %xmm3
.L461:
	cmpq	%r8, %rdx
	jnb	.L474
	testq	%r8, %r8
	js	.L334
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L335:
	addq	%r8, %rdx
	js	.L336
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
.L337:
	divsd	%xmm0, %xmm1
	movsd	.LC5(%rip), %xmm0
	subsd	%xmm1, %xmm0
	mulsd	%xmm3, %xmm0
	addsd	.LC3(%rip), %xmm0
	mulsd	%xmm1, %xmm3
	subsd	%xmm0, %xmm11
	movsd	%xmm11, 232(%rax)
	addsd	232(%r9), %xmm3
	movsd	%xmm3, 232(%r9)
	jmp	.L261
	.p2align 4,,10
	.p2align 3
.L473:
	comisd	%xmm9, %xmm12
	jnb	.L177
	comisd	%xmm0, %xmm4
	ja	.L209
	comisd	%xmm6, %xmm2
	ja	.L364
	comisd	%xmm0, %xmm4
	ja	.L209
	.p2align 4,,10
	.p2align 3
.L214:
	comisd	%xmm6, %xmm2
	jbe	.L395
.L206:
	comisd	%xmm12, %xmm9
	jbe	.L395
.L364:
	comisd	%xmm0, %xmm6
	movq	184(%r9), %rdx
	jnb	.L218
	comisd	%xmm9, %xmm1
	subsd	%xmm0, %xmm10
	jnb	.L210
	subsd	%xmm14, %xmm1
	movapd	%xmm10, %xmm0
	comisd	%xmm1, %xmm10
	unpcklpd	%xmm1, %xmm0
	ja	.L227
	comisd	%xmm10, %xmm1
	ja	.L228
	cmpq	%r8, %rdx
	jb	.L475
	movsd	.LC3(%rip), %xmm1
	unpcklpd	%xmm1, %xmm1
	addpd	%xmm1, %xmm0
	movapd	%xmm13, %xmm1
	subpd	%xmm0, %xmm1
	addpd	%xmm13, %xmm0
	movsd	%xmm1, %xmm0
	movups	%xmm0, 224(%rax)
	jmp	.L261
	.p2align 4,,10
	.p2align 3
.L471:
	comisd	%xmm12, %xmm9
	jnb	.L166
	comisd	%xmm9, %xmm12
	jnb	.L171
.L172:
	comisd	%xmm6, %xmm2
	jbe	.L187
.L199:
	comisd	%xmm5, %xmm1
	ja	.L197
.L189:
	comisd	%xmm0, %xmm4
	jbe	.L206
.L468:
	comisd	%xmm12, %xmm9
	jbe	.L395
	.p2align 4,,10
	.p2align 3
.L209:
	comisd	%xmm4, %xmm2
	movq	184(%r9), %rdx
	jnb	.L218
	comisd	%xmm9, %xmm1
	subsd	%xmm8, %xmm2
	jnb	.L201
	subsd	%xmm14, %xmm1
	movapd	%xmm2, %xmm0
	comisd	%xmm1, %xmm2
	unpcklpd	%xmm1, %xmm0
	ja	.L220
	comisd	%xmm2, %xmm1
	jbe	.L476
	cmpq	%r8, %rdx
	jnb	.L234
	testq	%r8, %r8
	js	.L346
.L449:
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L347:
	addq	%r8, %rdx
	js	.L348
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
.L349:
	divsd	%xmm0, %xmm1
	movsd	.LC5(%rip), %xmm0
	subsd	%xmm1, %xmm0
.L271:
	mulsd	%xmm2, %xmm0
	addsd	.LC3(%rip), %xmm0
	mulsd	%xmm1, %xmm2
	addsd	%xmm7, %xmm0
	movsd	%xmm0, 224(%rax)
	movsd	224(%r9), %xmm0
	subsd	%xmm2, %xmm0
	movsd	%xmm0, 224(%r9)
	jmp	.L261
.L470:
	testq	%r8, %r8
	js	.L280
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L281:
	addq	%r8, %rdx
	js	.L282
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
.L283:
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
	addsd	232(%r9), %xmm3
	movsd	%xmm3, 232(%r9)
	movsd	%xmm0, 224(%rax)
	movsd	224(%r9), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 224(%r9)
	jmp	.L261
.L234:
	addsd	.LC3(%rip), %xmm2
	addsd	%xmm7, %xmm2
	movsd	%xmm2, 224(%rax)
	jmp	.L261
	.p2align 4,,10
	.p2align 3
.L474:
	addsd	.LC3(%rip), %xmm3
	subsd	%xmm3, %xmm11
	movsd	%xmm11, 232(%rax)
	jmp	.L261
.L472:
	testq	%r8, %r8
	js	.L338
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L339:
	addq	%r8, %rdx
	js	.L340
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
.L341:
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
	addsd	232(%r9), %xmm3
	movsd	%xmm3, 232(%r9)
	movsd	%xmm7, 224(%rax)
	addsd	224(%r9), %xmm1
	movsd	%xmm1, 224(%r9)
	jmp	.L261
.L475:
	testq	%r8, %r8
	js	.L358
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%r8, %xmm2
.L359:
	addq	%r8, %rdx
	js	.L360
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
.L361:
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
	movsd	232(%r9), %xmm3
	subsd	%xmm1, %xmm3
	movsd	%xmm3, 232(%r9)
	movsd	%xmm7, 224(%rax)
	addsd	224(%r9), %xmm2
	movsd	%xmm2, 224(%r9)
	jmp	.L261
	.p2align 4,,10
	.p2align 3
.L171:
	comisd	%xmm1, %xmm5
	jnb	.L477
	comisd	%xmm0, %xmm4
	ja	.L194
	comisd	%xmm6, %xmm2
	ja	.L197
	comisd	%xmm0, %xmm4
	jbe	.L214
	jmp	.L468
	.p2align 4,,10
	.p2align 3
.L187:
	comisd	%xmm0, %xmm4
	jbe	.L214
.L195:
	comisd	%xmm12, %xmm9
	jbe	.L214
	jmp	.L209
	.p2align 4,,10
	.p2align 3
.L186:
	comisd	%xmm5, %xmm1
	ja	.L194
	comisd	%xmm6, %xmm2
	ja	.L189
	jmp	.L195
	.p2align 4,,10
	.p2align 3
.L282:
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm0, %xmm0
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L283
	.p2align 4,,10
	.p2align 3
.L280:
	movq	%r8, %rcx
	movq	%r8, %r10
	pxor	%xmm1, %xmm1
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L281
	.p2align 4,,10
	.p2align 3
.L340:
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm0, %xmm0
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L341
	.p2align 4,,10
	.p2align 3
.L338:
	movq	%r8, %rcx
	movq	%r8, %r10
	pxor	%xmm1, %xmm1
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L339
	.p2align 4,,10
	.p2align 3
.L360:
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm0, %xmm0
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L361
	.p2align 4,,10
	.p2align 3
.L358:
	movq	%r8, %rcx
	movq	%r8, %r10
	pxor	%xmm2, %xmm2
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm2
	addsd	%xmm2, %xmm2
	jmp	.L359
.L393:
	comisd	%xmm6, %xmm2
	jbe	.L187
	comisd	%xmm5, %xmm1
	ja	.L197
	jmp	.L206
	.p2align 4,,10
	.p2align 3
.L183:
	movq	184(%r9), %rdx
	subsd	%xmm8, %xmm2
	cmpq	%r8, %rdx
	jnb	.L234
	testq	%r8, %r8
	jns	.L449
	movq	%r8, %rcx
	movq	%r8, %r10
	pxor	%xmm1, %xmm1
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L347
	.p2align 4,,10
	.p2align 3
.L201:
	cmpq	%r8, %rdx
	jnb	.L234
	testq	%r8, %r8
	js	.L342
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L343:
	addq	%r8, %rdx
	js	.L344
	pxor	%xmm3, %xmm3
	cvtsi2sdq	%rdx, %xmm3
.L345:
	divsd	%xmm3, %xmm1
	movsd	.LC5(%rip), %xmm0
	subsd	%xmm1, %xmm0
	jmp	.L271
.L336:
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm0, %xmm0
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L337
.L334:
	movq	%r8, %rcx
	movq	%r8, %r10
	pxor	%xmm1, %xmm1
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L335
.L184:
	movq	184(%r9), %rdx
	subsd	%xmm0, %xmm10
	cmpq	%r8, %rdx
	jnb	.L244
	testq	%r8, %r8
	js	.L318
.L446:
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L319:
	addq	%r8, %rdx
	js	.L320
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
.L321:
	divsd	%xmm0, %xmm1
	movsd	.LC5(%rip), %xmm0
	subsd	%xmm1, %xmm0
.L288:
	mulsd	%xmm10, %xmm0
	addsd	.LC3(%rip), %xmm0
	subsd	%xmm0, %xmm7
	movapd	%xmm10, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm7, 224(%rax)
	addsd	224(%r9), %xmm0
	movsd	%xmm0, 224(%r9)
	jmp	.L261
.L244:
	movsd	.LC3(%rip), %xmm0
	addsd	%xmm10, %xmm0
	subsd	%xmm0, %xmm7
	movsd	%xmm7, 224(%rax)
	jmp	.L261
.L210:
	cmpq	%r8, %rdx
	jnb	.L244
	testq	%r8, %r8
	js	.L306
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L307:
	addq	%r8, %rdx
	js	.L308
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%rdx, %xmm2
.L309:
	divsd	%xmm2, %xmm1
	movsd	.LC5(%rip), %xmm0
	subsd	%xmm1, %xmm0
	jmp	.L288
.L477:
	comisd	%xmm2, %xmm4
	ja	.L183
	comisd	%xmm6, %xmm0
	ja	.L184
	comisd	%xmm0, %xmm4
	jbe	.L172
.L185:
	comisd	%xmm6, %xmm2
	ja	.L199
	jmp	.L195
.L427:
	subsd	%xmm14, %xmm1
.L231:
	addsd	.LC3(%rip), %xmm1
	addsd	%xmm11, %xmm1
	movsd	%xmm1, 232(%rax)
	jmp	.L261
.L469:
	comisd	%xmm5, %xmm1
	jbe	.L185
	jmp	.L194
.L218:
	cmpq	%r8, %rdx
	jnb	.L427
	testq	%r8, %r8
	js	.L350
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%r8, %xmm2
.L351:
	addq	%r8, %rdx
	js	.L352
	pxor	%xmm3, %xmm3
	cvtsi2sdq	%rdx, %xmm3
.L353:
	divsd	%xmm3, %xmm2
	movsd	.LC5(%rip), %xmm0
	subsd	%xmm14, %xmm1
	subsd	%xmm2, %xmm0
	jmp	.L297
.L476:
	cmpq	%r8, %rdx
	jb	.L478
	movsd	.LC3(%rip), %xmm1
	unpcklpd	%xmm1, %xmm1
	addpd	%xmm1, %xmm0
	addpd	%xmm13, %xmm0
	movups	%xmm0, 224(%rax)
	jmp	.L261
.L478:
	testq	%r8, %r8
	js	.L302
	pxor	%xmm4, %xmm4
	cvtsi2sdq	%r8, %xmm4
.L303:
	addq	%r8, %rdx
	js	.L304
	pxor	%xmm3, %xmm3
	cvtsi2sdq	%rdx, %xmm3
.L305:
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
	movsd	232(%r9), %xmm3
	subsd	%xmm1, %xmm3
	movsd	%xmm3, 232(%r9)
	movsd	%xmm0, 224(%rax)
	movsd	224(%r9), %xmm1
	subsd	%xmm2, %xmm1
	movsd	%xmm1, 224(%r9)
	jmp	.L261
	.p2align 4,,10
	.p2align 3
.L302:
	movq	%r8, %rcx
	movq	%r8, %r10
	pxor	%xmm0, %xmm0
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm0
	movapd	%xmm0, %xmm4
	addsd	%xmm0, %xmm4
	jmp	.L303
	.p2align 4,,10
	.p2align 3
.L304:
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm3, %xmm3
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm3
	addsd	%xmm3, %xmm3
	jmp	.L305
.L348:
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm0, %xmm0
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L349
.L228:
	cmpq	%r8, %rdx
	jnb	.L244
	testq	%r8, %r8
	jns	.L446
	movq	%r8, %rcx
	movq	%r8, %r10
	pxor	%xmm0, %xmm0
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm0
	movapd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
	jmp	.L319
.L320:
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm0, %xmm0
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L321
.L344:
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm3, %xmm3
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm3
	addsd	%xmm3, %xmm3
	jmp	.L345
.L342:
	movq	%r8, %rcx
	movq	%r8, %r10
	pxor	%xmm1, %xmm1
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L343
.L314:
	movq	%r8, %rcx
	movq	%r8, %r10
	pxor	%xmm2, %xmm2
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm2
	addsd	%xmm2, %xmm2
	jmp	.L315
.L220:
	cmpq	%r8, %rdx
	jnb	.L231
	testq	%r8, %r8
	js	.L298
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%r8, %xmm2
.L299:
	addq	%r8, %rdx
	js	.L300
	pxor	%xmm3, %xmm3
	cvtsi2sdq	%rdx, %xmm3
.L301:
	divsd	%xmm3, %xmm2
	movsd	.LC5(%rip), %xmm0
	subsd	%xmm2, %xmm0
	jmp	.L297
.L316:
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm0, %xmm0
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L317
.L318:
	movq	%r8, %rcx
	movq	%r8, %r10
	pxor	%xmm1, %xmm1
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L319
.L308:
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm2, %xmm2
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm2
	addsd	%xmm2, %xmm2
	jmp	.L309
.L306:
	movq	%r8, %rcx
	movq	%r8, %r10
	pxor	%xmm1, %xmm1
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L307
.L227:
	cmpq	%r8, %rdx
	jnb	.L231
	testq	%r8, %r8
	js	.L354
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%r8, %xmm2
.L355:
	addq	%r8, %rdx
	js	.L356
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
.L357:
	divsd	%xmm0, %xmm2
	movsd	.LC5(%rip), %xmm0
	subsd	%xmm2, %xmm0
	jmp	.L297
.L352:
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm3, %xmm3
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm3
	addsd	%xmm3, %xmm3
	jmp	.L353
.L350:
	movq	%r8, %rcx
	movq	%r8, %r10
	pxor	%xmm2, %xmm2
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm2
	addsd	%xmm2, %xmm2
	jmp	.L351
.L346:
	movq	%r8, %rcx
	movq	%r8, %r10
	pxor	%xmm0, %xmm0
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm0
	movapd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
	jmp	.L347
.L300:
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm3, %xmm3
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm3
	addsd	%xmm3, %xmm3
	jmp	.L301
.L298:
	movq	%r8, %rcx
	movq	%r8, %r10
	pxor	%xmm2, %xmm2
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm2
	addsd	%xmm2, %xmm2
	jmp	.L299
.L356:
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm0, %xmm0
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L357
.L354:
	movq	%r8, %rcx
	movq	%r8, %r10
	pxor	%xmm0, %xmm0
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm0
	movapd	%xmm0, %xmm2
	addsd	%xmm0, %xmm2
	jmp	.L355
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC6:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB7:
	.text
.LHOTB7:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_
	.def	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_
_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_:
.LFB6905:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	movzwl	8(%rcx), %esi
	movq	192(%rsp), %rbx
	movq	%rsi, 64(%rsp)
	movq	%rcx, %rdi
	movq	%rdx, %r14
	movq	%r8, %rbp
	movq	%r9, 184(%rsp)
	testq	%rsi, %rsi
	jne	.L480
	movq	$0, 72(%rsp)
	xorl	%r12d, %r12d
.L483:
	movq	(%r14), %r10
	testq	%r10, %r10
	je	.L482
	movq	8(%r14), %r11
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	jmp	.L489
	.p2align 4,,10
	.p2align 3
.L484:
	addq	$1, %r12
	cmpq	%r10, %r12
	jnb	.L519
.L489:
	movq	(%r11,%r12,8), %r8
	leaq	0(,%r12,8), %r13
	cmpq	%rbp, %r8
	je	.L484
	cmpq	%rbx, %r8
	je	.L484
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	call	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	testl	%eax, %eax
	je	.L484
	cmpq	%rsi, 64(%rsp)
	je	.L520
.L485:
	cmpq	%r10, %r12
	jnb	.L521
	movq	(%r11,%r13), %rax
	movq	72(%rsp), %rcx
	leaq	1(%rsi), %rdx
	cmpq	64(%rsp), %rsi
	jnb	.L522
	addq	$1, %r12
	movq	%rax, (%rcx,%rsi,8)
	addq	184(%rax), %r15
	movq	%rdx, %rsi
	cmpq	%r10, %r12
	jb	.L489
	.p2align 4,,10
	.p2align 3
.L519:
	movq	72(%rsp), %r12
	cmpq	184(%rsp), %r15
	jnb	.L490
	testq	%rsi, %rsi
	je	.L482
	movq	64(%rsp), %rax
	xorl	%r13d, %r13d
	movq	%rax, 56(%rsp)
	movq	184(%rsp), %rax
	subq	%r15, %rax
	movq	%rax, %r15
.L497:
	cmpq	%r13, 56(%rsp)
	je	.L523
	movq	(%r12,%r13,8), %r9
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	movq	184(%r9), %r8
	addq	%r15, %r8
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	testb	%al, %al
	jne	.L524
.L496:
	addq	$1, %r13
	cmpq	%r13, %rsi
	jne	.L497
.L482:
	movq	%r12, %rcx
	call	free
	xorl	%eax, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
	.p2align 3
.L490:
	testq	%rsi, %rsi
	je	.L482
	movq	64(%rsp), %rbp
	xorl	%r11d, %r11d
	.p2align 4,,10
	.p2align 3
.L494:
	cmpq	%r11, %rbp
	je	.L525
	movq	(%r12,%r11,8), %r9
	xorl	%r8d, %r8d
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	addq	$1, %r11
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	cmpq	%r11, %rsi
	jne	.L494
	jmp	.L482
	.p2align 4,,10
	.p2align 3
.L524:
	movq	%r9, 32(%rsp)
	movq	%rbp, %r8
	movq	%r15, %r9
	movq	%r14, %rdx
	movq	%rdi, %rcx
.LEHB0:
	call	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_
	movq	(%r12,%r13,8), %r9
	xorl	%r8d, %r8d
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	jmp	.L496
	.p2align 4,,10
	.p2align 3
.L520:
	movzwl	8(%rdi), %eax
	leaq	64(%rsp), %rcx
	movq	%rsi, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6InsertEyy.isra.0
.LEHE0:
	movq	(%r14), %r10
	movq	8(%r14), %r11
	jmp	.L485
	.p2align 4,,10
	.p2align 3
.L480:
	leaq	0(,%rsi,8), %rcx
	call	malloc
	movq	%rax, 72(%rsp)
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.L483
	leaq	.LC2(%rip), %rcx
	movq	%rsi, %rdx
.LEHB1:
	call	_Z6printfPKcz
.LEHE1:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L525:
	movq	%rbp, %rdx
	leaq	.LC6(%rip), %rcx
.LEHB2:
	call	_Z6printfPKcz
.L488:
	movl	$1, %ecx
	call	exit
.L522:
	movq	%rsi, %rdx
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L488
.L521:
	movq	%r12, %rdx
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L488
.L523:
	movq	56(%rsp), %rdx
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
.LEHE2:
	jmp	.L488
.L499:
	movq	%rax, %rbx
	jmp	.L498
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6905:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6905-.LLSDACSB6905
.LLSDACSB6905:
	.uleb128 .LEHB0-.LFB6905
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L499-.LFB6905
	.uleb128 0
	.uleb128 .LEHB1-.LFB6905
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB6905
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L499-.LFB6905
	.uleb128 0
.LLSDACSE6905:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_.cold
	.seh_stackalloc	152
	.seh_savereg	%rbx, 88
	.seh_savereg	%rsi, 96
	.seh_savereg	%rdi, 104
	.seh_savereg	%rbp, 112
	.seh_savereg	%r12, 120
	.seh_savereg	%r13, 128
	.seh_savereg	%r14, 136
	.seh_savereg	%r15, 144
	.seh_endprologue
_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_.cold:
.L498:
	movq	72(%rsp), %rcx
	call	free
	movq	%rbx, %rcx
.LEHB3:
	call	_Unwind_Resume
	nop
.LEHE3:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC6905:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6905-.LLSDACSBC6905
.LLSDACSBC6905:
	.uleb128 .LEHB3-.LCOLDB7
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSEC6905:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE7:
	.text
.LHOTE7:
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB8:
	.text
.LHOTB8:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE
	.def	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE
_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE:
.LFB6904:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
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
	.seh_endprologue
	movzwl	8(%rcx), %edi
	movq	%r8, 208(%rsp)
	movq	%rcx, %rbp
	movq	%rdx, %rbx
	movq	%rdi, 96(%rsp)
	testq	%rdi, %rdi
	jne	.L527
	movq	$0, 104(%rsp)
	xorl	%esi, %esi
.L528:
	movq	24(%rbp), %r12
	cmpq	16(%rbp), %rbx
	jnb	.L581
	salq	$4, %rbx
	addq	%rbx, %r12
	movq	(%r12), %r11
	testq	%r11, %r11
	je	.L530
	leaq	96(%rsp), %rax
	xorl	%ebx, %ebx
	movq	%rax, 88(%rsp)
	.p2align 4,,10
	.p2align 3
.L550:
	movq	8(%r12), %r10
	xorl	%esi, %esi
	xorl	%r14d, %r14d
	xorl	%edi, %edi
	leaq	0(,%rbx,8), %r13
	.p2align 4,,10
	.p2align 3
.L537:
	cmpq	%rsi, %rbx
	je	.L531
	movq	(%r10,%rsi,8), %r8
	leaq	0(,%rsi,8), %r15
	cmpq	%r11, %rbx
	jnb	.L581
	movq	(%r10,%r13), %rdx
	movq	%rbp, %rcx
	call	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	testl	%eax, %eax
	je	.L531
	cmpq	%rdi, 96(%rsp)
	je	.L585
.L534:
	cmpq	%r11, %rsi
	jnb	.L586
	movq	(%r10,%r15), %rax
	movq	104(%rsp), %rcx
	leaq	1(%rdi), %rdx
	cmpq	96(%rsp), %rdi
	jnb	.L587
	movq	%rax, (%rcx,%rdi,8)
	addq	184(%rax), %r14
	movq	%rdx, %rdi
.L531:
	addq	$1, %rsi
	cmpq	%r11, %rsi
	jb	.L537
	cmpq	%r11, %rbx
	jnb	.L581
	movq	(%r10,%r13), %r15
	cmpq	176(%r15), %r14
	jnb	.L539
	testq	%rdi, %rdi
	je	.L544
	movq	96(%rsp), %rax
	xorl	%esi, %esi
	movq	%rax, 80(%rsp)
	movq	104(%rsp), %rax
	movq	%rax, 72(%rsp)
	jmp	.L549
	.p2align 4,,10
	.p2align 3
.L547:
	addq	$1, %rsi
	cmpq	%rsi, %rdi
	je	.L544
.L549:
	cmpq	%rsi, 80(%rsp)
	je	.L588
	movq	72(%rsp), %rax
	movq	8(%r12), %rdx
	movq	(%rax,%rsi,8), %r9
	movq	184(%r9), %rax
	cmpq	%r11, %rbx
	jnb	.L581
	movq	(%rdx,%r13), %r15
	movq	%rbp, %rcx
	movq	176(%r15), %r10
	movq	%r15, %rdx
	subq	%r14, %r10
	leaq	(%rax,%r10), %r8
	movq	%r10, 48(%rsp)
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	movq	48(%rsp), %r10
	testb	%al, %al
	je	.L547
	movq	%r9, 32(%rsp)
	movq	%r15, %r8
	movq	%r10, %r9
	movq	%r12, %rdx
	movq	%rbp, %rcx
.LEHB4:
	call	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_
	movq	72(%rsp), %rax
	movq	(%r12), %r11
	movq	(%rax,%rsi,8), %r9
	movq	8(%r12), %rax
	cmpq	%r11, %rbx
	jnb	.L581
	movq	(%rax,%r13), %rdx
	xorl	%r8d, %r8d
	movq	%rbp, %rcx
	addq	$1, %rsi
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	cmpq	%rsi, %rdi
	jne	.L549
.L544:
	addq	$1, %rbx
	cmpq	%r11, %rbx
	jb	.L550
.L590:
	movq	104(%rsp), %rsi
.L530:
	movq	208(%rsp), %rax
	movq	208(%rsp), %rdi
	movupd	224(%rax), %xmm3
	movq	%rdi, %rcx
	movups	%xmm3, 240(%rax)
	movl	290(%rax), %eax
	movaps	%xmm3, 48(%rsp)
	movl	%eax, 294(%rdi)
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv
	movq	(%r12), %rdx
	xorl	%ebx, %ebx
	testq	%rdx, %rdx
	je	.L556
	.p2align 4,,10
	.p2align 3
.L551:
	movq	8(%r12), %rax
	movq	(%rax,%rbx,8), %rcx
	cmpq	208(%rsp), %rcx
	je	.L552
	movupd	224(%rcx), %xmm0
	ucomisd	240(%rcx), %xmm0
	jp	.L553
	jne	.L553
	movapd	%xmm0, %xmm2
	unpckhpd	%xmm2, %xmm2
	ucomisd	248(%rcx), %xmm2
	jp	.L553
	je	.L552
.L553:
	movups	%xmm0, 240(%rcx)
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv
	movq	(%r12), %rdx
.L552:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L551
.L556:
	movq	%rsi, %rcx
	call	free
	xorl	%eax, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
	.p2align 3
.L585:
	movzwl	8(%rbp), %eax
	movq	88(%rsp), %rcx
	movq	%rdi, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6InsertEyy.isra.0
	movq	(%r12), %r11
	movq	8(%r12), %r10
	jmp	.L534
	.p2align 4,,10
	.p2align 3
.L539:
	testq	%rdi, %rdi
	je	.L544
	movq	96(%rsp), %r14
	movq	104(%rsp), %r13
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L543:
	cmpq	%rsi, %r14
	je	.L589
	movq	0(%r13,%rsi,8), %r9
	xorl	%r8d, %r8d
	movq	%r15, %rdx
	movq	%rbp, %rcx
	addq	$1, %rsi
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	cmpq	%rsi, %rdi
	jne	.L543
	addq	$1, %rbx
	cmpq	%r11, %rbx
	jb	.L550
	jmp	.L590
.L581:
	movq	%rbx, %rdx
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
.LEHE4:
.L533:
	movl	$1, %ecx
	call	exit
.L527:
	leaq	0(,%rdi,8), %rcx
	call	malloc
	movq	%rax, 104(%rsp)
	movq	%rax, %rsi
	testq	%rax, %rax
	jne	.L528
	leaq	.LC2(%rip), %rcx
	movq	%rdi, %rdx
.LEHB5:
	call	_Z6printfPKcz
.LEHE5:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L589:
	movq	%r14, %rdx
	leaq	.LC6(%rip), %rcx
.LEHB6:
	call	_Z6printfPKcz
	jmp	.L533
.L588:
	movq	80(%rsp), %rdx
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L533
.L587:
	movq	%rdi, %rdx
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L533
.L586:
	movq	%rsi, %rdx
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
.LEHE6:
	jmp	.L533
.L559:
	movq	%rax, %rbx
	jmp	.L557
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6904:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6904-.LLSDACSB6904
.LLSDACSB6904:
	.uleb128 .LEHB4-.LFB6904
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L559-.LFB6904
	.uleb128 0
	.uleb128 .LEHB5-.LFB6904
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB6904
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L559-.LFB6904
	.uleb128 0
.LLSDACSE6904:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE.cold
	.seh_stackalloc	184
	.seh_savereg	%rbx, 120
	.seh_savereg	%rsi, 128
	.seh_savereg	%rdi, 136
	.seh_savereg	%rbp, 144
	.seh_savereg	%r12, 152
	.seh_savereg	%r13, 160
	.seh_savereg	%r14, 168
	.seh_savereg	%r15, 176
	.seh_endprologue
_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE.cold:
.L557:
	movq	104(%rsp), %rcx
	call	free
	movq	%rbx, %rcx
.LEHB7:
	call	_Unwind_Resume
	nop
.LEHE7:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC6904:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6904-.LLSDACSBC6904
.LLSDACSBC6904:
	.uleb128 .LEHB7-.LCOLDB8
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSEC6904:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE8:
	.text
.LHOTE8:
	.section .rdata,"dr"
	.align 8
.LC3:
	.long	-350469331
	.long	1058682594
	.align 8
.LC5:
	.long	0
	.long	1072693248
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv;	.scl	2;	.type	32;	.endef
