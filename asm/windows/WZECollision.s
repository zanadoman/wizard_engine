	.file	"WZECollision.cpp"
	.text
	.align 2
	.p2align 4
	.def	_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_.constprop.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_.constprop.0
_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_.constprop.0:
.LFB6928:
	.seh_endprologue
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	movzwl	290(%rdx), %r9d
	movq	%rcx, %rax
	movzwl	290(%rcx), %ecx
	movsd	224(%rax), %xmm1
	movl	%ecx, %r8d
	shrw	%r8w
	movzwl	%r8w, %r8d
	cvtsi2sdl	%r8d, %xmm0
	movl	%r9d, %r8d
	shrw	%r8w
	movzwl	%r8w, %r8d
	cvtsi2sdl	%r8d, %xmm2
	xorl	%r8d, %r8d
	subsd	%xmm0, %xmm1
	movsd	224(%rdx), %xmm0
	subsd	%xmm2, %xmm0
	pxor	%xmm2, %xmm2
	cvtsi2sdl	%ecx, %xmm2
	addsd	%xmm1, %xmm2
	comisd	%xmm2, %xmm0
	ja	.L1
	pxor	%xmm2, %xmm2
	cvtsi2sdl	%r9d, %xmm2
	addsd	%xmm0, %xmm2
	comisd	%xmm2, %xmm1
	ja	.L1
	movzwl	292(%rax), %r10d
	pxor	%xmm1, %xmm1
	pxor	%xmm3, %xmm3
	pxor	%xmm5, %xmm5
	movl	%r10d, %ecx
	shrw	%cx
	movzwl	%cx, %ecx
	cvtsi2sdl	%ecx, %xmm1
	movzwl	292(%rdx), %ecx
	addsd	232(%rax), %xmm1
	movl	%ecx, %r9d
	cvtsi2sdl	%ecx, %xmm5
	shrw	%r9w
	movzwl	%r9w, %r9d
	cvtsi2sdl	%r9d, %xmm3
	addsd	232(%rdx), %xmm3
	movapd	%xmm3, %xmm4
	subsd	%xmm5, %xmm4
	comisd	%xmm1, %xmm4
	ja	.L1
	pxor	%xmm5, %xmm5
	cvtsi2sdl	%r10d, %xmm5
	subsd	%xmm5, %xmm1
	comisd	%xmm3, %xmm1
	ja	.L1
	movzwl	294(%rax), %edx
	pxor	%xmm5, %xmm5
	movsd	240(%rax), %xmm1
	movl	$1, %r8d
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
	seta	%r8b
.L1:
	movl	%r8d, %eax
	ret
	.seh_endproc
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
.LFB6929:
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
	jb	.L35
	testq	%r8, %r8
	jne	.L36
.L12:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L36:
	addq	%r8, %rdx
	movq	%rdx, (%rcx)
	movq	8(%rcx), %rcx
	salq	$3, %rdx
	call	realloc
	movq	%rax, 8(%rsi)
	movq	%rax, %r8
	testq	%rax, %rax
	je	.L37
	movq	(%rsi), %rcx
	leaq	(%rbx,%rdi), %rdx
	leaq	-1(%rcx), %rax
	cmpq	%rdx, %rax
	jb	.L12
	movq	%rcx, %r9
	subq	%rdx, %r9
	leaq	-1(%r9), %r10
	cmpq	$2, %r10
	jbe	.L16
	leaq	8(,%rdi,8), %r10
	testq	%r10, %r10
	je	.L16
	testq	%rdx, %rdx
	je	.L16
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
.L17:
	movdqu	(%r11,%rdx), %xmm0
	movups	%xmm0, (%r10,%rdx)
	subq	$16, %rdx
	cmpq	%rcx, %rdx
	jne	.L17
	movq	%r9, %rdx
	andq	$-2, %rdx
	subq	%rdx, %rax
	andl	$1, %r9d
	je	.L12
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
.L16:
	negq	%rdi
	leaq	(%r8,%rdi,8), %r9
	.p2align 4,,10
	.p2align 3
.L19:
	movq	(%r9,%rax,8), %rcx
	movq	%rcx, (%r8,%rax,8)
	subq	$1, %rax
	cmpq	%rdx, %rax
	jnb	.L19
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L35:
	leaq	.LC0(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L37:
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
	je	.L42
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
	addq	$32, %rsp
	popq	%rbx
	ret
.L42:
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
	ja	.L45
	pxor	%xmm3, %xmm3
	cvtsi2sdl	%edx, %xmm3
	addsd	%xmm3, %xmm0
	comisd	%xmm0, %xmm1
	ja	.L45
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
	ja	.L45
	movsd	40(%rsp), %xmm1
	comisd	%xmm0, %xmm1
	setbe	%al
.L45:
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_
	.def	_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_
_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_:
.LFB6901:
	.seh_endprologue
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	movzwl	290(%r8), %r9d
	movq	%rdx, %rax
	movzwl	290(%rdx), %edx
	movsd	224(%rax), %xmm1
	movl	%edx, %ecx
	shrw	%cx
	movzwl	%cx, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movl	%r9d, %ecx
	shrw	%cx
	movzwl	%cx, %ecx
	cvtsi2sdl	%ecx, %xmm2
	xorl	%ecx, %ecx
	subsd	%xmm0, %xmm1
	movsd	224(%r8), %xmm0
	subsd	%xmm2, %xmm0
	pxor	%xmm2, %xmm2
	cvtsi2sdl	%edx, %xmm2
	addsd	%xmm1, %xmm2
	comisd	%xmm2, %xmm0
	ja	.L50
	pxor	%xmm2, %xmm2
	cvtsi2sdl	%r9d, %xmm2
	addsd	%xmm0, %xmm2
	comisd	%xmm2, %xmm1
	ja	.L50
	movzwl	292(%rax), %r10d
	pxor	%xmm1, %xmm1
	pxor	%xmm3, %xmm3
	pxor	%xmm5, %xmm5
	movl	%r10d, %edx
	shrw	%dx
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm1
	movzwl	292(%r8), %edx
	addsd	232(%rax), %xmm1
	movl	%edx, %r9d
	cvtsi2sdl	%edx, %xmm5
	shrw	%r9w
	movzwl	%r9w, %r9d
	cvtsi2sdl	%r9d, %xmm3
	addsd	232(%r8), %xmm3
	movapd	%xmm3, %xmm4
	subsd	%xmm5, %xmm4
	comisd	%xmm1, %xmm4
	ja	.L50
	pxor	%xmm5, %xmm5
	cvtsi2sdl	%r10d, %xmm5
	subsd	%xmm5, %xmm1
	comisd	%xmm3, %xmm1
	ja	.L50
	movzwl	294(%rax), %edx
	pxor	%xmm5, %xmm5
	movsd	240(%rax), %xmm1
	movl	%edx, %ecx
	shrw	%cx
	movzwl	%cx, %ecx
	cvtsi2sdl	%ecx, %xmm5
	movl	$1, %ecx
	subsd	%xmm5, %xmm1
	pxor	%xmm5, %xmm5
	cvtsi2sdl	%edx, %xmm5
	addsd	%xmm1, %xmm5
	comisd	%xmm5, %xmm0
	ja	.L50
	comisd	%xmm2, %xmm1
	ja	.L50
	movzwl	296(%rax), %r8d
	pxor	%xmm0, %xmm0
	movl	%r8d, %edx
	shrw	%dx
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm0
	addsd	248(%rax), %xmm0
	comisd	%xmm0, %xmm4
	ja	.L50
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%r8d, %xmm1
	subsd	%xmm1, %xmm0
	comisd	%xmm3, %xmm0
	seta	%cl
.L50:
	movl	%ecx, %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision21GetCollisionDirectionEdddddddddddd
	.def	_ZN3wze6engine9collision21GetCollisionDirectionEdddddddddddd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collision21GetCollisionDirectionEdddddddddddd
_ZN3wze6engine9collision21GetCollisionDirectionEdddddddddddd:
.LFB6902:
	.seh_endprologue
	xorl	%eax, %eax
	movsd	80(%rsp), %xmm0
	movsd	96(%rsp), %xmm4
	comisd	%xmm3, %xmm0
	ja	.L59
	comisd	%xmm4, %xmm1
	ja	.L59
	movsd	104(%rsp), %xmm5
	comisd	%xmm2, %xmm5
	ja	.L59
	movsd	40(%rsp), %xmm5
	comisd	88(%rsp), %xmm5
	ja	.L59
	comisd	64(%rsp), %xmm0
	ja	.L61
	movsd	48(%rsp), %xmm5
	comisd	%xmm4, %xmm5
	ja	.L61
	movsd	104(%rsp), %xmm5
	comisd	56(%rsp), %xmm5
	jbe	.L144
	movsd	48(%rsp), %xmm5
	comisd	%xmm0, %xmm5
	jnb	.L64
	comisd	%xmm5, %xmm0
	jb	.L65
	movsd	64(%rsp), %xmm5
	movl	$1, %eax
	comisd	%xmm4, %xmm5
	jnb	.L59
	.p2align 4,,10
	.p2align 3
.L67:
	movsd	72(%rsp), %xmm5
	comisd	104(%rsp), %xmm5
	jnb	.L76
	movsd	104(%rsp), %xmm5
	comisd	72(%rsp), %xmm5
	jb	.L81
	movsd	56(%rsp), %xmm5
	comisd	88(%rsp), %xmm5
	jnb	.L83
	movsd	48(%rsp), %xmm5
	comisd	%xmm0, %xmm5
	ja	.L78
	comisd	64(%rsp), %xmm4
	jbe	.L148
	.p2align 4,,10
	.p2align 3
.L84:
	movsd	88(%rsp), %xmm5
	comisd	56(%rsp), %xmm5
	ja	.L95
	movsd	48(%rsp), %xmm5
	comisd	%xmm0, %xmm5
	ja	.L96
.L99:
	movsd	72(%rsp), %xmm4
	comisd	104(%rsp), %xmm4
	jbe	.L148
	movsd	64(%rsp), %xmm4
	movl	$2, %eax
	comisd	%xmm0, %xmm4
	jnb	.L59
	movsd	88(%rsp), %xmm4
	comisd	72(%rsp), %xmm4
	movl	$8, %eax
	jnb	.L59
	subsd	%xmm0, %xmm3
	movapd	%xmm4, %xmm0
	subsd	40(%rsp), %xmm0
	movl	$2, %eax
	comisd	%xmm0, %xmm3
	ja	.L59
	comisd	%xmm3, %xmm0
	movl	$8, %eax
	movl	$128, %edx
	cmovbe	%edx, %eax
.L59:
	ret
	.p2align 4,,10
	.p2align 3
.L61:
	movsd	48(%rsp), %xmm5
	comisd	%xmm0, %xmm5
	jb	.L70
	comisd	64(%rsp), %xmm4
	jnb	.L74
.L72:
	comisd	48(%rsp), %xmm0
	jnb	.L75
	movsd	72(%rsp), %xmm5
	comisd	104(%rsp), %xmm5
	jnb	.L76
	movsd	104(%rsp), %xmm5
	comisd	72(%rsp), %xmm5
	jnb	.L77
.L78:
	movsd	88(%rsp), %xmm5
	comisd	56(%rsp), %xmm5
	ja	.L92
	comisd	64(%rsp), %xmm4
	ja	.L84
	.p2align 4,,10
	.p2align 3
.L93:
	movsd	72(%rsp), %xmm5
	comisd	104(%rsp), %xmm5
	jbe	.L85
.L101:
	comisd	48(%rsp), %xmm4
	movl	$2, %eax
	jnb	.L59
	movsd	88(%rsp), %xmm0
	comisd	72(%rsp), %xmm0
	movl	$4, %eax
	jnb	.L59
	subsd	%xmm1, %xmm4
	subsd	40(%rsp), %xmm0
	movl	$2, %eax
	comisd	%xmm0, %xmm4
	ja	.L59
	comisd	%xmm4, %xmm0
	movl	$64, %edx
	movl	$4, %eax
	cmovbe	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L70:
	comisd	48(%rsp), %xmm0
	jb	.L65
.L75:
	movsd	64(%rsp), %xmm5
	comisd	%xmm4, %xmm5
	jb	.L67
.L74:
	movsd	104(%rsp), %xmm5
	comisd	56(%rsp), %xmm5
	movl	$1, %eax
	ja	.L59
	movsd	72(%rsp), %xmm5
	comisd	88(%rsp), %xmm5
	ja	.L115
.L65:
	movsd	72(%rsp), %xmm5
	comisd	104(%rsp), %xmm5
	jb	.L86
.L76:
	movsd	88(%rsp), %xmm5
	comisd	56(%rsp), %xmm5
	jb	.L86
.L83:
	movsd	48(%rsp), %xmm5
	movl	$4, %eax
	comisd	%xmm4, %xmm5
	ja	.L59
	comisd	64(%rsp), %xmm0
	movl	$8, %eax
	ja	.L59
.L88:
	movsd	48(%rsp), %xmm5
	comisd	%xmm0, %xmm5
	jbe	.L81
.L79:
	movsd	88(%rsp), %xmm5
	comisd	56(%rsp), %xmm5
	jbe	.L150
.L92:
	comisd	48(%rsp), %xmm4
	movl	$1, %eax
	jnb	.L59
	movsd	56(%rsp), %xmm0
	comisd	104(%rsp), %xmm0
	movl	$4, %eax
	jnb	.L59
	subsd	%xmm1, %xmm4
	subsd	104(%rsp), %xmm2
	movl	$1, %eax
	comisd	%xmm2, %xmm4
	ja	.L59
	comisd	%xmm4, %xmm2
	movl	$16, %edx
	movl	$4, %eax
	cmovbe	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L86:
	movsd	104(%rsp), %xmm5
	comisd	72(%rsp), %xmm5
	jb	.L88
.L77:
	movsd	56(%rsp), %xmm5
	comisd	88(%rsp), %xmm5
	jb	.L88
	jmp	.L83
	.p2align 4,,10
	.p2align 3
.L81:
	comisd	64(%rsp), %xmm4
	ja	.L84
	movsd	48(%rsp), %xmm5
	comisd	%xmm0, %xmm5
	ja	.L93
.L85:
	comisd	64(%rsp), %xmm4
	ja	.L99
.L148:
	xorl	%eax, %eax
.L151:
	ret
	.p2align 4,,10
	.p2align 3
.L150:
	comisd	64(%rsp), %xmm4
	jbe	.L93
	comisd	56(%rsp), %xmm5
	ja	.L95
.L96:
	movsd	72(%rsp), %xmm0
	comisd	104(%rsp), %xmm0
	ja	.L101
	xorl	%eax, %eax
	jmp	.L151
.L115:
	movl	$2, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L144:
	movsd	72(%rsp), %xmm5
	comisd	88(%rsp), %xmm5
	jbe	.L59
	movsd	48(%rsp), %xmm5
	comisd	%xmm0, %xmm5
	jb	.L70
	comisd	64(%rsp), %xmm4
	movl	$2, %eax
	jb	.L72
	ret
	.p2align 4,,10
	.p2align 3
.L95:
	movsd	64(%rsp), %xmm4
	movl	$1, %eax
	comisd	%xmm0, %xmm4
	jnb	.L59
	movsd	56(%rsp), %xmm4
	comisd	104(%rsp), %xmm4
	movl	$8, %eax
	jnb	.L59
	subsd	%xmm0, %xmm3
	subsd	104(%rsp), %xmm2
	movl	$1, %eax
	comisd	%xmm2, %xmm3
	ja	.L59
	comisd	%xmm3, %xmm2
	movl	$32, %edx
	movl	$8, %eax
	cmovbe	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L64:
	comisd	64(%rsp), %xmm4
	movl	$1, %eax
	jnb	.L59
	comisd	48(%rsp), %xmm0
	jnb	.L75
	movsd	72(%rsp), %xmm5
	comisd	104(%rsp), %xmm5
	jnb	.L76
	movsd	104(%rsp), %xmm5
	comisd	72(%rsp), %xmm5
	jnb	.L77
	jmp	.L79
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	.def	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_:
.LFB6903:
	subq	$168, %rsp
	.seh_stackalloc	168
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
	movaps	%xmm15, 144(%rsp)
	.seh_savexmm	%xmm15, 144
	.seh_endprologue
	pxor	%xmm0, %xmm0
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	xorl	%r11d, %r11d
	movsd	224(%rdx), %xmm7
	movapd	%xmm7, %xmm8
	movq	%rdx, %rax
	movzwl	290(%rdx), %edx
	movl	%edx, %ecx
	cvtsi2sdl	%edx, %xmm3
	shrw	%cx
	movzwl	%cx, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movzwl	290(%r9), %ecx
	movl	%ecx, %edx
	shrw	%dx
	movzwl	%dx, %edx
	subsd	%xmm0, %xmm8
	movsd	224(%r9), %xmm0
	cvtsi2sdl	%edx, %xmm2
	addsd	%xmm8, %xmm3
	subsd	%xmm2, %xmm0
	comisd	%xmm3, %xmm0
	ja	.L152
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%ecx, %xmm1
	addsd	%xmm0, %xmm1
	comisd	%xmm1, %xmm8
	ja	.L152
	movzwl	292(%rax), %r10d
	pxor	%xmm9, %xmm9
	pxor	%xmm2, %xmm2
	pxor	%xmm4, %xmm4
	movsd	232(%rax), %xmm10
	movl	%r10d, %edx
	shrw	%dx
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm9
	movzwl	292(%r9), %edx
	movl	%edx, %ecx
	cvtsi2sdl	%edx, %xmm4
	shrw	%cx
	movzwl	%cx, %ecx
	addsd	%xmm10, %xmm9
	cvtsi2sdl	%ecx, %xmm2
	addsd	232(%r9), %xmm2
	movapd	%xmm2, %xmm11
	subsd	%xmm4, %xmm11
	comisd	%xmm9, %xmm11
	ja	.L152
	pxor	%xmm4, %xmm4
	movapd	%xmm9, %xmm12
	cvtsi2sdl	%r10d, %xmm4
	subsd	%xmm4, %xmm12
	comisd	%xmm2, %xmm12
	ja	.L152
	movzwl	294(%rax), %ecx
	pxor	%xmm5, %xmm5
	pxor	%xmm6, %xmm6
	movsd	240(%rax), %xmm4
	pxor	%xmm15, %xmm15
	movapd	%xmm7, %xmm13
	movl	%ecx, %edx
	unpcklpd	%xmm10, %xmm13
	shrw	%dx
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm5
	movzwl	296(%rax), %edx
	movl	%edx, %r10d
	cvtsi2sdl	%edx, %xmm15
	shrw	%r10w
	subsd	%xmm5, %xmm4
	pxor	%xmm5, %xmm5
	movzwl	%r10w, %r10d
	cvtsi2sdl	%ecx, %xmm5
	cvtsi2sdl	%r10d, %xmm6
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
	movq	184(%r9), %rdx
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
	cmpq	%r8, %rdx
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
	xorl	%r11d, %r11d
.L152:
	movaps	(%rsp), %xmm6
	movaps	16(%rsp), %xmm7
	movl	%r11d, %eax
	movaps	32(%rsp), %xmm8
	movaps	48(%rsp), %xmm9
	movaps	64(%rsp), %xmm10
	movaps	80(%rsp), %xmm11
	movaps	96(%rsp), %xmm12
	movaps	112(%rsp), %xmm13
	movaps	128(%rsp), %xmm14
	movaps	144(%rsp), %xmm15
	addq	$168, %rsp
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
	movq	184(%r9), %rdx
.L208:
	movapd	%xmm9, %xmm0
	subsd	%xmm11, %xmm0
.L549:
	cmpq	%r8, %rdx
	jnb	.L186
.L446:
	testq	%r8, %r8
	js	.L378
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%r8, %xmm2
.L379:
	addq	%r8, %rdx
	js	.L380
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rdx, %xmm1
.L381:
	divsd	%xmm1, %xmm2
	movsd	.LC5(%rip), %xmm1
	subsd	%xmm2, %xmm1
	mulsd	%xmm0, %xmm1
	addsd	.LC3(%rip), %xmm1
	mulsd	%xmm2, %xmm0
	subsd	%xmm1, %xmm10
	movsd	%xmm10, 232(%rax)
	addsd	232(%r9), %xmm0
	movsd	%xmm0, 232(%r9)
	.p2align 4,,10
	.p2align 3
.L285:
	movl	$1, %r11d
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
	movq	184(%r9), %rdx
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
	cmpq	%r8, %rdx
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
	movq	184(%r9), %rdx
.L533:
	cmpq	%r8, %rdx
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
	movq	184(%r9), %rdx
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
	cmpq	%r8, %rdx
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
	movq	184(%r9), %rdx
	subsd	%xmm8, %xmm1
	cmpq	%r8, %rdx
	jnb	.L197
	testq	%r8, %r8
	js	.L382
.L520:
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%r8, %xmm2
.L383:
	addq	%r8, %rdx
	js	.L384
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
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
	movsd	224(%r9), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 224(%r9)
	jmp	.L285
.L550:
	testq	%r8, %r8
	js	.L291
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%r8, %xmm0
.L292:
	addq	%r8, %rdx
	js	.L293
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rdx, %xmm1
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
	movsd	232(%r9), %xmm4
	subsd	%xmm2, %xmm4
	movsd	%xmm4, 232(%r9)
	movsd	%xmm7, 224(%rax)
	addsd	224(%r9), %xmm0
	movsd	%xmm0, 224(%r9)
	jmp	.L285
.L197:
	addsd	.LC3(%rip), %xmm1
	addsd	%xmm7, %xmm1
	movsd	%xmm1, 224(%rax)
	jmp	.L285
.L557:
	testq	%r8, %r8
	js	.L350
	pxor	%xmm4, %xmm4
	cvtsi2sdq	%r8, %xmm4
.L351:
	addq	%r8, %rdx
	js	.L352
	pxor	%xmm3, %xmm3
	cvtsi2sdq	%rdx, %xmm3
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
	movsd	232(%r9), %xmm3
	subsd	%xmm2, %xmm3
	movsd	%xmm3, 232(%r9)
	movsd	%xmm0, 224(%rax)
.L490:
	mulsd	%xmm4, %xmm1
	movapd	%xmm1, %xmm0
	movsd	224(%r9), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 224(%r9)
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
	movq	184(%r9), %rdx
	movapd	%xmm9, %xmm0
	subsd	%xmm11, %xmm0
	cmpq	%r8, %rdx
	jb	.L446
.L186:
	addsd	.LC3(%rip), %xmm0
	subsd	%xmm0, %xmm10
	movsd	%xmm10, 232(%rax)
	jmp	.L285
.L556:
	testq	%r8, %r8
	js	.L312
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L313:
	addq	%r8, %rdx
	js	.L314
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%rdx, %xmm2
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
	addsd	232(%r9), %xmm0
	movsd	%xmm0, 232(%r9)
	movsd	%xmm7, 224(%rax)
	addsd	224(%r9), %xmm1
	movsd	%xmm1, 224(%r9)
	jmp	.L285
	.p2align 4,,10
	.p2align 3
.L210:
	comisd	%xmm4, %xmm1
	movq	184(%r9), %rdx
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
	cmpq	%r8, %rdx
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
	testq	%r8, %r8
	js	.L370
	pxor	%xmm4, %xmm4
	cvtsi2sdq	%r8, %xmm4
.L371:
	addq	%r8, %rdx
	js	.L372
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%rdx, %xmm2
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
	addsd	232(%r9), %xmm0
	movsd	%xmm0, 232(%r9)
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
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm1, %xmm1
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L294
	.p2align 4,,10
	.p2align 3
.L291:
	movq	%r8, %rcx
	movq	%r8, %r10
	pxor	%xmm0, %xmm0
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L292
	.p2align 4,,10
	.p2align 3
.L352:
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm3, %xmm3
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm3
	addsd	%xmm3, %xmm3
	jmp	.L353
	.p2align 4,,10
	.p2align 3
.L350:
	movq	%r8, %rcx
	movq	%r8, %r10
	pxor	%xmm0, %xmm0
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm0
	movapd	%xmm0, %xmm4
	addsd	%xmm0, %xmm4
	jmp	.L351
	.p2align 4,,10
	.p2align 3
.L314:
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm2, %xmm2
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm2
	addsd	%xmm2, %xmm2
	jmp	.L315
	.p2align 4,,10
	.p2align 3
.L312:
	movq	%r8, %rcx
	movq	%r8, %r10
	pxor	%xmm1, %xmm1
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L313
	.p2align 4,,10
	.p2align 3
.L372:
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm2, %xmm2
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm2
	addsd	%xmm2, %xmm2
	jmp	.L373
	.p2align 4,,10
	.p2align 3
.L370:
	movq	%r8, %rcx
	movq	%r8, %r10
	pxor	%xmm3, %xmm3
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm3
	movapd	%xmm3, %xmm4
	addsd	%xmm3, %xmm4
	jmp	.L371
	.p2align 4,,10
	.p2align 3
.L538:
	cmpq	%r8, %rdx
	jnb	.L197
	testq	%r8, %r8
	js	.L325
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%r8, %xmm2
.L326:
	addq	%r8, %rdx
	js	.L327
	pxor	%xmm3, %xmm3
	cvtsi2sdq	%rdx, %xmm3
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
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm1, %xmm1
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L381
.L378:
	movq	%r8, %rcx
	movq	%r8, %r10
	pxor	%xmm2, %xmm2
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm2
	addsd	%xmm2, %xmm2
	jmp	.L379
	.p2align 4,,10
	.p2align 3
.L553:
	movq	184(%r9), %rdx
	subsd	%xmm0, %xmm3
	cmpq	%r8, %rdx
	jnb	.L201
	testq	%r8, %r8
	js	.L333
.L518:
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L367:
	addq	%r8, %rdx
	js	.L368
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
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
	addsd	224(%r9), %xmm3
	movsd	%xmm3, 224(%r9)
	jmp	.L285
.L201:
	addsd	.LC3(%rip), %xmm3
	subsd	%xmm3, %xmm7
	movsd	%xmm7, 224(%rax)
	jmp	.L285
.L465:
	testq	%r8, %r8
	js	.L358
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L359:
	addq	%r8, %rdx
	js	.L360
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
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
	movsd	232(%r9), %xmm0
	subsd	%xmm2, %xmm0
	movsd	%xmm0, 232(%r9)
	jmp	.L285
.L544:
	cmpq	%r8, %rdx
	jnb	.L201
	testq	%r8, %r8
	js	.L362
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L363:
	addq	%r8, %rdx
	js	.L364
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%rdx, %xmm2
.L365:
	divsd	%xmm2, %xmm1
	movsd	.LC5(%rip), %xmm0
	subsd	%xmm1, %xmm0
	jmp	.L337
.L558:
	cmpq	%r8, %rdx
	jnb	.L197
	testq	%r8, %r8
	jns	.L520
	movq	%r8, %rcx
	movq	%r8, %r10
	pxor	%xmm0, %xmm0
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm0
	movapd	%xmm0, %xmm2
	addsd	%xmm0, %xmm2
	jmp	.L383
.L540:
	cmpq	%r8, %rdx
	jnb	.L255
	testq	%r8, %r8
	js	.L354
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L355:
	addq	%r8, %rdx
	js	.L356
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
.L357:
	divsd	%xmm0, %xmm1
	movsd	.LC5(%rip), %xmm0
	subsd	%xmm1, %xmm0
	jmp	.L290
.L360:
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm0, %xmm0
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L361
.L358:
	movq	%r8, %rcx
	movq	%r8, %r10
	pxor	%xmm1, %xmm1
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L359
.L384:
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm0, %xmm0
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L385
.L555:
	cmpq	%r8, %rdx
	jnb	.L201
	testq	%r8, %r8
	jns	.L518
	movq	%r8, %rcx
	movq	%r8, %r10
	pxor	%xmm0, %xmm0
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm0
	movapd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
	jmp	.L367
.L368:
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm0, %xmm0
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L369
.L382:
	movq	%r8, %rcx
	movq	%r8, %r10
	pxor	%xmm2, %xmm2
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm2
	addsd	%xmm2, %xmm2
	jmp	.L383
.L327:
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm3, %xmm3
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm3
	addsd	%xmm3, %xmm3
	jmp	.L328
.L325:
	movq	%r8, %rcx
	movq	%r8, %r10
	pxor	%xmm2, %xmm2
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm2
	addsd	%xmm2, %xmm2
	jmp	.L326
.L333:
	movq	%r8, %rcx
	movq	%r8, %r10
	pxor	%xmm1, %xmm1
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L367
.L364:
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm2, %xmm2
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm2
	addsd	%xmm2, %xmm2
	jmp	.L365
.L362:
	movq	%r8, %rcx
	movq	%r8, %r10
	pxor	%xmm1, %xmm1
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L363
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
	pxor	%xmm1, %xmm1
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm1
	addsd	%xmm1, %xmm1
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
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movzwl	8(%rcx), %esi
	movq	176(%rsp), %rbx
	movq	%rdx, 152(%rsp)
	movq	%rcx, %rbp
	movq	%r8, %rdi
	movq	%r9, 168(%rsp)
	movq	%rsi, 48(%rsp)
	testq	%rsi, %rsi
	jne	.L561
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
.L564:
	movq	152(%rsp), %rax
	movq	(%rax), %r11
	testq	%r11, %r11
	je	.L563
	movq	8(%rax), %r14
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	jmp	.L570
	.p2align 4,,10
	.p2align 3
.L565:
	addq	$1, %r12
	cmpq	%r11, %r12
	jnb	.L600
.L570:
	movq	(%r14,%r12,8), %rdx
	leaq	0(,%r12,8), %r13
	cmpq	%rdi, %rdx
	je	.L565
	cmpq	%rbx, %rdx
	je	.L565
	movq	%rbx, %rcx
	call	_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_.constprop.0
	testb	%al, %al
	je	.L565
	cmpq	%rsi, 48(%rsp)
	je	.L601
.L566:
	cmpq	%r11, %r12
	jnb	.L602
	movq	(%r14,%r13), %rax
	movq	56(%rsp), %rcx
	leaq	1(%rsi), %rdx
	cmpq	48(%rsp), %rsi
	jnb	.L603
	addq	$1, %r12
	movq	%rax, (%rcx,%rsi,8)
	addq	184(%rax), %r15
	movq	%rdx, %rsi
	cmpq	%r11, %r12
	jb	.L570
	.p2align 4,,10
	.p2align 3
.L600:
	movq	56(%rsp), %r12
	cmpq	168(%rsp), %r15
	jnb	.L571
	testq	%rsi, %rsi
	je	.L563
	movq	168(%rsp), %rax
	movq	48(%rsp), %r14
	xorl	%r13d, %r13d
	subq	%r15, %rax
	movq	%rax, %r15
.L578:
	cmpq	%r13, %r14
	je	.L604
	movq	(%r12,%r13,8), %r9
	movq	%rbx, %rdx
	movq	%rbp, %rcx
	movq	184(%r9), %r8
	addq	%r15, %r8
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	testb	%al, %al
	jne	.L605
.L577:
	addq	$1, %r13
	cmpq	%r13, %rsi
	jne	.L578
.L563:
	movq	%r12, %rcx
	call	free
	xorl	%eax, %eax
	addq	$72, %rsp
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
.L571:
	testq	%rsi, %rsi
	je	.L563
	movq	48(%rsp), %r13
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L575:
	cmpq	%rdi, %r13
	je	.L606
	movq	(%r12,%rdi,8), %r9
	xorl	%r8d, %r8d
	movq	%rbx, %rdx
	movq	%rbp, %rcx
	addq	$1, %rdi
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	cmpq	%rdi, %rsi
	jne	.L575
	jmp	.L563
	.p2align 4,,10
	.p2align 3
.L605:
	movq	%r9, 32(%rsp)
	movq	%rdi, %r8
	movq	%r15, %r9
	movq	%rbp, %rcx
	movq	152(%rsp), %rdx
.LEHB0:
	call	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_
	movq	(%r12,%r13,8), %r9
	xorl	%r8d, %r8d
	movq	%rbx, %rdx
	movq	%rbp, %rcx
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	jmp	.L577
	.p2align 4,,10
	.p2align 3
.L601:
	movzwl	8(%rbp), %eax
	leaq	48(%rsp), %rcx
	movq	%rsi, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6InsertEyy.isra.0
.LEHE0:
	movq	152(%rsp), %rax
	movq	(%rax), %r11
	movq	8(%rax), %r14
	jmp	.L566
	.p2align 4,,10
	.p2align 3
.L561:
	leaq	0(,%rsi,8), %rcx
	call	malloc
	movq	%rax, 56(%rsp)
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.L564
	leaq	.LC2(%rip), %rcx
	movq	%rsi, %rdx
.LEHB1:
	call	_Z6printfPKcz
.LEHE1:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L606:
	movq	%r13, %rdx
	leaq	.LC6(%rip), %rcx
.LEHB2:
	call	_Z6printfPKcz
.L569:
	movl	$1, %ecx
	call	exit
.L603:
	movq	%rsi, %rdx
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L569
.L602:
	movq	%r12, %rdx
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L569
.L604:
	movq	%r14, %rdx
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
.LEHE2:
	jmp	.L569
.L580:
	movq	%rax, %rbx
	jmp	.L579
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
	.uleb128 .L580-.LFB6905
	.uleb128 0
	.uleb128 .LEHB1-.LFB6905
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB6905
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L580-.LFB6905
	.uleb128 0
.LLSDACSE6905:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_.cold
	.seh_stackalloc	136
	.seh_savereg	%rbx, 72
	.seh_savereg	%rsi, 80
	.seh_savereg	%rdi, 88
	.seh_savereg	%rbp, 96
	.seh_savereg	%r12, 104
	.seh_savereg	%r13, 112
	.seh_savereg	%r14, 120
	.seh_savereg	%r15, 128
	.seh_endprologue
_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_.cold:
.L579:
	movq	56(%rsp), %rcx
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
	movq	%rcx, 192(%rsp)
	movq	%rdx, %rbx
	movq	%r8, 208(%rsp)
	movq	%rdi, 96(%rsp)
	testq	%rdi, %rdi
	jne	.L608
	movq	$0, 104(%rsp)
	xorl	%esi, %esi
.L609:
	movq	192(%rsp), %rax
	movq	24(%rax), %rbp
	cmpq	16(%rax), %rbx
	jnb	.L662
	salq	$4, %rbx
	addq	%rbx, %rbp
	movq	0(%rbp), %r12
	testq	%r12, %r12
	je	.L611
	leaq	96(%rsp), %rax
	xorl	%ebx, %ebx
	movq	%rax, 88(%rsp)
	.p2align 4,,10
	.p2align 3
.L631:
	movq	8(%rbp), %r11
	leaq	0(,%rbx,8), %r13
	xorl	%esi, %esi
	xorl	%edi, %edi
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L618:
	cmpq	%rsi, %rbx
	je	.L612
	movq	(%r11,%rsi,8), %rdx
	leaq	0(,%rsi,8), %r15
	cmpq	%r12, %rbx
	jnb	.L662
	movq	(%r11,%r13), %rcx
	call	_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_.constprop.0
	testb	%al, %al
	je	.L612
	cmpq	%rdi, 96(%rsp)
	je	.L666
.L615:
	cmpq	%r12, %rsi
	jnb	.L667
	movq	(%r11,%r15), %rax
	movq	104(%rsp), %rcx
	leaq	1(%rdi), %rdx
	cmpq	96(%rsp), %rdi
	jnb	.L668
	movq	%rax, (%rcx,%rdi,8)
	addq	184(%rax), %r14
	movq	%rdx, %rdi
.L612:
	addq	$1, %rsi
	cmpq	%r12, %rsi
	jb	.L618
	cmpq	%r12, %rbx
	jnb	.L662
	movq	(%r11,%r13), %r15
	cmpq	176(%r15), %r14
	jnb	.L620
	testq	%rdi, %rdi
	je	.L625
	movq	96(%rsp), %rax
	xorl	%esi, %esi
	movq	%rax, 80(%rsp)
	movq	104(%rsp), %rax
	movq	%rax, 72(%rsp)
	jmp	.L630
	.p2align 4,,10
	.p2align 3
.L628:
	addq	$1, %rsi
	cmpq	%rsi, %rdi
	je	.L625
.L630:
	cmpq	%rsi, 80(%rsp)
	je	.L669
	movq	72(%rsp), %rax
	movq	8(%rbp), %rdx
	movq	(%rax,%rsi,8), %r9
	movq	184(%r9), %rax
	cmpq	%r12, %rbx
	jnb	.L662
	movq	(%rdx,%r13), %r15
	movq	192(%rsp), %rcx
	movq	176(%r15), %r11
	movq	%r15, %rdx
	subq	%r14, %r11
	leaq	(%rax,%r11), %r8
	movq	%r11, 48(%rsp)
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	movq	48(%rsp), %r11
	testb	%al, %al
	je	.L628
	movq	%r9, 32(%rsp)
	movq	%r15, %r8
	movq	%r11, %r9
	movq	%rbp, %rdx
	movq	192(%rsp), %rcx
.LEHB4:
	call	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_
	movq	72(%rsp), %rax
	movq	0(%rbp), %r12
	movq	(%rax,%rsi,8), %r9
	movq	8(%rbp), %rax
	cmpq	%r12, %rbx
	jnb	.L662
	movq	(%rax,%r13), %rdx
	movq	192(%rsp), %rcx
	xorl	%r8d, %r8d
	addq	$1, %rsi
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	cmpq	%rsi, %rdi
	jne	.L630
.L625:
	addq	$1, %rbx
	cmpq	%r12, %rbx
	jb	.L631
.L671:
	movq	104(%rsp), %rsi
.L611:
	movq	208(%rsp), %rax
	movq	208(%rsp), %rdi
	movupd	224(%rax), %xmm3
	movq	%rdi, %rcx
	movups	%xmm3, 240(%rax)
	movl	290(%rax), %eax
	movaps	%xmm3, 48(%rsp)
	movl	%eax, 294(%rdi)
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv
	movq	0(%rbp), %rdx
	xorl	%ebx, %ebx
	testq	%rdx, %rdx
	je	.L637
	.p2align 4,,10
	.p2align 3
.L632:
	movq	8(%rbp), %rax
	movq	(%rax,%rbx,8), %rcx
	cmpq	208(%rsp), %rcx
	je	.L633
	movupd	224(%rcx), %xmm0
	ucomisd	240(%rcx), %xmm0
	jp	.L634
	jne	.L634
	movapd	%xmm0, %xmm2
	unpckhpd	%xmm2, %xmm2
	ucomisd	248(%rcx), %xmm2
	jp	.L634
	je	.L633
.L634:
	movups	%xmm0, 240(%rcx)
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv
	movq	0(%rbp), %rdx
.L633:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L632
.L637:
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
.L666:
	movq	192(%rsp), %rax
	movq	88(%rsp), %rcx
	movq	%rdi, %rdx
	movzwl	8(%rax), %eax
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6InsertEyy.isra.0
	movq	0(%rbp), %r12
	movq	8(%rbp), %r11
	jmp	.L615
	.p2align 4,,10
	.p2align 3
.L620:
	testq	%rdi, %rdi
	je	.L625
	xorl	%r13d, %r13d
	movq	%rbx, 48(%rsp)
	movq	96(%rsp), %r14
	movq	%r13, %rbx
	movq	104(%rsp), %rsi
	movq	192(%rsp), %r13
	.p2align 4,,10
	.p2align 3
.L624:
	cmpq	%rbx, %r14
	je	.L670
	movq	(%rsi,%rbx,8), %r9
	xorl	%r8d, %r8d
	movq	%r15, %rdx
	movq	%r13, %rcx
	addq	$1, %rbx
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	cmpq	%rbx, %rdi
	jne	.L624
	movq	48(%rsp), %rbx
	addq	$1, %rbx
	cmpq	%r12, %rbx
	jb	.L631
	jmp	.L671
.L662:
	movq	%rbx, %rdx
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
.LEHE4:
.L614:
	movl	$1, %ecx
	call	exit
.L608:
	leaq	0(,%rdi,8), %rcx
	call	malloc
	movq	%rax, 104(%rsp)
	movq	%rax, %rsi
	testq	%rax, %rax
	jne	.L609
	leaq	.LC2(%rip), %rcx
	movq	%rdi, %rdx
.LEHB5:
	call	_Z6printfPKcz
.LEHE5:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L670:
	movq	%r14, %rdx
	leaq	.LC6(%rip), %rcx
.LEHB6:
	call	_Z6printfPKcz
	jmp	.L614
.L669:
	movq	80(%rsp), %rdx
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L614
.L668:
	movq	%rdi, %rdx
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L614
.L667:
	movq	%rsi, %rdx
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
.LEHE6:
	jmp	.L614
.L640:
	movq	%rax, %rbx
	jmp	.L638
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
	.uleb128 .L640-.LFB6904
	.uleb128 0
	.uleb128 .LEHB5-.LFB6904
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB6904
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L640-.LFB6904
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
.L638:
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
