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
.LFB6922:
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
.LFB6890:
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
.LFB6892:
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
.LFB6893:
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
.LFB6894:
	subq	$40, %rsp
	.seh_stackalloc	40
	movaps	%xmm6, (%rsp)
	.seh_savexmm	%xmm6, 0
	movaps	%xmm7, 16(%rsp)
	.seh_savexmm	%xmm7, 16
	.seh_endprologue
	pxor	%xmm4, %xmm4
	movq	88(%rsp), %rcx
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
	pxor	%xmm4, %xmm4
	cvtsi2sdl	%edx, %xmm4
	addsd	%xmm0, %xmm4
	comisd	%xmm4, %xmm1
	ja	.L36
	movzwl	90(%rcx), %edx
	pxor	%xmm5, %xmm5
	pxor	%xmm7, %xmm7
	movl	%edx, %r8d
	cvtsi2sdl	%edx, %xmm7
	shrw	%r8w
	movzwl	%r8w, %r8d
	cvtsi2sdl	%r8d, %xmm5
	addsd	48(%rcx), %xmm5
	movapd	%xmm5, %xmm6
	subsd	%xmm7, %xmm6
	comisd	%xmm2, %xmm6
	ja	.L36
	movsd	80(%rsp), %xmm7
	comisd	%xmm5, %xmm7
	ja	.L36
	comisd	%xmm1, %xmm4
	jb	.L128
	comisd	%xmm4, %xmm3
	jb	.L150
	comisd	80(%rsp), %xmm6
	jb	.L130
	comisd	%xmm6, %xmm2
	movl	$1, %eax
	jnb	.L36
	comisd	%xmm0, %xmm1
	jnb	.L48
	comisd	%xmm6, %xmm2
	jnb	.L36
.L144:
	comisd	%xmm3, %xmm4
	jnb	.L45
	.p2align 4,,10
	.p2align 3
.L49:
	comisd	80(%rsp), %xmm5
	jb	.L137
.L98:
	comisd	%xmm5, %xmm2
	movl	$1, %eax
	jnb	.L36
	comisd	%xmm0, %xmm1
	jnb	.L77
.L78:
	comisd	%xmm5, %xmm2
	movl	$1, %eax
	jnb	.L36
.L73:
	comisd	%xmm3, %xmm4
	jnb	.L71
.L139:
	xorl	%eax, %eax
.L36:
	movaps	(%rsp), %xmm6
	movaps	16(%rsp), %xmm7
	addq	$40, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L128:
	comisd	%xmm1, %xmm0
	jnb	.L57
.L53:
	comisd	%xmm0, %xmm3
	jnb	.L58
	comisd	%xmm1, %xmm4
	jnb	.L59
.L79:
	comisd	%xmm0, %xmm1
	jb	.L85
	jmp	.L63
	.p2align 4,,10
	.p2align 3
.L57:
	comisd	%xmm0, %xmm3
	jb	.L129
.L52:
	comisd	80(%rsp), %xmm6
	jb	.L58
.L44:
	comisd	%xmm6, %xmm2
	movl	$1, %eax
	jnb	.L36
.L58:
	comisd	%xmm3, %xmm4
	jnb	.L45
	comisd	%xmm1, %xmm4
	jb	.L79
	jmp	.L49
	.p2align 4,,10
	.p2align 3
.L150:
	comisd	%xmm0, %xmm1
	jnb	.L41
	comisd	%xmm0, %xmm3
	jnb	.L151
.L129:
	comisd	%xmm1, %xmm4
	jnb	.L59
	comisd	%xmm0, %xmm1
	jb	.L64
.L63:
	comisd	%xmm1, %xmm4
	jnb	.L77
.L85:
	comisd	%xmm1, %xmm0
	jnb	.L64
.L88:
	comisd	%xmm0, %xmm3
	jnb	.L73
	xorl	%eax, %eax
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L151:
	comisd	%xmm7, %xmm6
	jnb	.L44
	.p2align 4,,10
	.p2align 3
.L45:
	comisd	%xmm6, %xmm2
	jnb	.L69
	comisd	%xmm1, %xmm4
	jnb	.L59
	comisd	%xmm1, %xmm0
	jb	.L71
.L70:
	comisd	80(%rsp), %xmm5
	jb	.L73
	jmp	.L78
	.p2align 4,,10
	.p2align 3
.L41:
	comisd	%xmm6, %xmm2
	jb	.L133
	comisd	%xmm2, %xmm5
	movl	$1, %eax
	jnb	.L36
.L133:
	comisd	%xmm1, %xmm0
	jnb	.L57
	comisd	%xmm0, %xmm3
	jnb	.L58
	.p2align 4,,10
	.p2align 3
.L59:
	comisd	%xmm4, %xmm3
	jnb	.L49
	comisd	%xmm0, %xmm1
	jnb	.L77
	comisd	%xmm0, %xmm3
	jb	.L139
.L146:
	comisd	80(%rsp), %xmm5
	jnb	.L78
.L71:
	movsd	80(%rsp), %xmm7
	comisd	%xmm6, %xmm7
	setnb	%al
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L137:
	comisd	%xmm0, %xmm1
	jb	.L64
.L77:
	movsd	80(%rsp), %xmm7
	movl	$1, %eax
	comisd	%xmm6, %xmm7
	jb	.L85
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L64:
	comisd	%xmm0, %xmm3
	jnb	.L70
	xorl	%eax, %eax
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L130:
	comisd	%xmm0, %xmm1
	jnb	.L48
	comisd	80(%rsp), %xmm6
	jb	.L144
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L69:
	comisd	%xmm2, %xmm5
	movl	$1, %eax
	jnb	.L36
	comisd	%xmm1, %xmm4
	jnb	.L72
	comisd	%xmm1, %xmm0
	jb	.L73
	comisd	80(%rsp), %xmm5
	jb	.L73
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L48:
	comisd	%xmm6, %xmm2
	jb	.L131
	comisd	%xmm2, %xmm5
	movl	$1, %eax
	jnb	.L36
	comisd	%xmm1, %xmm0
	jb	.L53
	jmp	.L52
.L131:
	comisd	%xmm1, %xmm0
	jnb	.L52
	ucomisd	%xmm3, %xmm4
	jp	.L126
	je	.L94
.L126:
	comisd	80(%rsp), %xmm5
	jb	.L140
	comisd	%xmm5, %xmm2
	jb	.L77
.L117:
	movl	$1, %eax
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L72:
	ucomisd	%xmm3, %xmm4
	jp	.L75
	jne	.L75
	comisd	80(%rsp), %xmm5
	jnb	.L36
	comisd	%xmm0, %xmm1
	jnb	.L77
	jmp	.L146
.L75:
	comisd	%xmm0, %xmm1
	jnb	.L77
	jmp	.L70
.L94:
	comisd	%xmm6, %xmm2
	jnb	.L69
	comisd	80(%rsp), %xmm5
	jnb	.L98
	jmp	.L77
.L140:
	movsd	80(%rsp), %xmm7
	comisd	%xmm6, %xmm7
	jb	.L88
	jmp	.L117
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision14CheckCollisionEdddddddd
	.def	_ZN3wze6engine9collision14CheckCollisionEdddddddd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collision14CheckCollisionEdddddddd
_ZN3wze6engine9collision14CheckCollisionEdddddddd:
.LFB6895:
	.seh_endprologue
	xorl	%eax, %eax
	movsd	48(%rsp), %xmm0
	movsd	64(%rsp), %xmm4
	comisd	%xmm3, %xmm0
	ja	.L152
	comisd	%xmm4, %xmm1
	ja	.L152
	movsd	72(%rsp), %xmm5
	comisd	%xmm2, %xmm5
	ja	.L152
	movsd	40(%rsp), %xmm5
	comisd	56(%rsp), %xmm5
	ja	.L152
	comisd	%xmm1, %xmm4
	jb	.L154
	comisd	%xmm4, %xmm3
	jb	.L276
	movsd	72(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jb	.L258
	comisd	%xmm5, %xmm2
	movl	$1, %eax
	jnb	.L152
	comisd	%xmm0, %xmm1
	jnb	.L163
	comisd	%xmm1, %xmm0
	jnb	.L164
.L165:
	comisd	%xmm0, %xmm3
	jnb	.L277
	movsd	56(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jnb	.L202
	comisd	%xmm0, %xmm1
	jnb	.L195
	xorl	%eax, %eax
	comisd	%xmm1, %xmm0
	jb	.L186
.L152:
	ret
	.p2align 4,,10
	.p2align 3
.L171:
	movsd	56(%rsp), %xmm5
	movl	$1, %eax
	comisd	%xmm2, %xmm5
	jnb	.L152
	.p2align 4,,10
	.p2align 3
.L154:
	comisd	%xmm1, %xmm0
	jnb	.L158
.L169:
	comisd	%xmm0, %xmm3
	jb	.L160
.L172:
	comisd	%xmm3, %xmm4
	jnb	.L159
	comisd	%xmm1, %xmm4
	jb	.L193
	jmp	.L177
	.p2align 4,,10
	.p2align 3
.L158:
	comisd	%xmm0, %xmm3
	jnb	.L166
	comisd	%xmm1, %xmm4
	jnb	.L173
.L273:
	comisd	%xmm0, %xmm1
	jb	.L179
.L178:
	comisd	%xmm1, %xmm4
	jb	.L208
	.p2align 4,,10
	.p2align 3
.L195:
	movsd	40(%rsp), %xmm5
	comisd	72(%rsp), %xmm5
	jb	.L208
.L221:
	movsd	56(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jb	.L208
.L248:
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L276:
	comisd	%xmm0, %xmm1
	jnb	.L157
	comisd	%xmm1, %xmm0
	jnb	.L158
	comisd	%xmm0, %xmm3
	jnb	.L159
	.p2align 4,,10
	.p2align 3
.L160:
	comisd	%xmm1, %xmm4
	jnb	.L173
.L193:
	comisd	%xmm0, %xmm1
	jnb	.L178
.L208:
	comisd	%xmm1, %xmm0
	jnb	.L179
.L186:
	comisd	%xmm0, %xmm3
	jb	.L269
.L188:
	comisd	%xmm3, %xmm4
	jnb	.L196
.L269:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L258:
	comisd	%xmm0, %xmm1
	jnb	.L163
	comisd	%xmm1, %xmm0
	jb	.L165
	.p2align 4,,10
	.p2align 3
.L166:
	movsd	72(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jnb	.L164
	comisd	%xmm3, %xmm4
	jnb	.L159
	comisd	%xmm1, %xmm4
	jb	.L273
.L177:
	movsd	56(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jb	.L191
.L202:
	comisd	56(%rsp), %xmm2
	movl	$1, %eax
	jnb	.L152
	comisd	%xmm0, %xmm1
	jb	.L278
.L199:
	movsd	40(%rsp), %xmm5
	comisd	72(%rsp), %xmm5
	movl	$1, %eax
	jb	.L208
	ret
	.p2align 4,,10
	.p2align 3
.L157:
	comisd	72(%rsp), %xmm2
	jnb	.L171
	comisd	%xmm1, %xmm0
	jnb	.L158
	comisd	%xmm0, %xmm3
	jnb	.L172
	.p2align 4,,10
	.p2align 3
.L173:
	comisd	%xmm4, %xmm3
	jnb	.L177
.L189:
	comisd	%xmm0, %xmm1
	jnb	.L195
	comisd	%xmm1, %xmm0
	jnb	.L179
	comisd	%xmm0, %xmm3
	jb	.L269
	.p2align 4,,10
	.p2align 3
.L196:
	movsd	40(%rsp), %xmm5
	comisd	72(%rsp), %xmm5
	jb	.L269
	movsd	56(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	setnb	%al
	ret
	.p2align 4,,10
	.p2align 3
.L159:
	comisd	72(%rsp), %xmm2
	jb	.L263
.L224:
	movsd	56(%rsp), %xmm5
	movl	$1, %eax
	comisd	%xmm2, %xmm5
	jnb	.L152
	comisd	%xmm1, %xmm4
	jnb	.L185
	comisd	%xmm1, %xmm0
	jb	.L186
	comisd	40(%rsp), %xmm5
	jb	.L188
	ret
.L265:
	comisd	%xmm0, %xmm1
	jnb	.L195
	.p2align 4,,10
	.p2align 3
.L179:
	comisd	%xmm0, %xmm3
	jb	.L269
.L205:
	movsd	56(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jb	.L188
.L200:
	comisd	56(%rsp), %xmm2
	movl	$1, %eax
	jb	.L188
	ret
	.p2align 4,,10
	.p2align 3
.L164:
	comisd	72(%rsp), %xmm2
	movl	$1, %eax
	jb	.L172
	jmp	.L152
	.p2align 4,,10
	.p2align 3
.L263:
	comisd	%xmm1, %xmm4
	jnb	.L173
	comisd	%xmm1, %xmm0
	jnb	.L205
	jmp	.L186
	.p2align 4,,10
	.p2align 3
.L163:
	comisd	72(%rsp), %xmm2
	jb	.L259
	movsd	56(%rsp), %xmm5
	movl	$1, %eax
	comisd	%xmm2, %xmm5
	jnb	.L152
	comisd	%xmm1, %xmm0
	jnb	.L166
	jmp	.L169
.L185:
	ucomisd	%xmm4, %xmm3
	jp	.L189
	jne	.L189
	comisd	40(%rsp), %xmm5
	jnb	.L152
	.p2align 4,,10
	.p2align 3
.L191:
	comisd	%xmm0, %xmm1
	jb	.L208
	jmp	.L195
.L259:
	comisd	%xmm1, %xmm0
	jnb	.L166
	ucomisd	%xmm4, %xmm3
	jp	.L257
	je	.L218
.L257:
	movsd	56(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jnb	.L220
	movsd	40(%rsp), %xmm5
	comisd	72(%rsp), %xmm5
	jnb	.L221
	jmp	.L186
	.p2align 4,,10
	.p2align 3
.L278:
	comisd	%xmm1, %xmm0
	jb	.L186
	jmp	.L200
.L277:
	comisd	%xmm3, %xmm4
	jnb	.L159
	movsd	56(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jb	.L265
	comisd	%xmm5, %xmm2
	jnb	.L248
	comisd	%xmm0, %xmm1
	jnb	.L199
	jmp	.L200
.L218:
	comisd	72(%rsp), %xmm2
	jnb	.L224
	movsd	56(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jb	.L195
	comisd	%xmm5, %xmm2
	jb	.L199
	jmp	.L248
.L220:
	comisd	56(%rsp), %xmm2
	jb	.L199
	jmp	.L248
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	.def	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_:
.LFB6896:
	subq	$232, %rsp
	.seh_stackalloc	232
	movaps	%xmm6, 80(%rsp)
	.seh_savexmm	%xmm6, 80
	movaps	%xmm7, 96(%rsp)
	.seh_savexmm	%xmm7, 96
	movaps	%xmm8, 112(%rsp)
	.seh_savexmm	%xmm8, 112
	movaps	%xmm9, 128(%rsp)
	.seh_savexmm	%xmm9, 128
	movaps	%xmm10, 144(%rsp)
	.seh_savexmm	%xmm10, 144
	movaps	%xmm11, 160(%rsp)
	.seh_savexmm	%xmm11, 160
	movaps	%xmm12, 176(%rsp)
	.seh_savexmm	%xmm12, 176
	movaps	%xmm13, 192(%rsp)
	.seh_savexmm	%xmm13, 192
	movaps	%xmm14, 208(%rsp)
	.seh_savexmm	%xmm14, 208
	.seh_endprologue
	pxor	%xmm0, %xmm0
	pxor	%xmm11, %xmm11
	pxor	%xmm10, %xmm10
	pxor	%xmm9, %xmm9
	pxor	%xmm8, %xmm8
	movsd	224(%r8), %xmm6
	movq	%rcx, %r10
	movzwl	294(%rdx), %ecx
	movq	%rdx, %rax
	movsd	240(%rax), %xmm7
	movl	%ecx, %edx
	cvtsi2sdl	%ecx, %xmm10
	movzwl	290(%r8), %ecx
	shrw	%dx
	movzwl	%dx, %edx
	cvtsi2sdl	%ecx, %xmm8
	cvtsi2sdl	%edx, %xmm0
	movzwl	296(%rax), %edx
	movl	%edx, %r9d
	shrw	%r9w
	subsd	%xmm0, %xmm7
	movzwl	%r9w, %r9d
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	movl	%ecx, %edx
	cvtsi2sdl	%r9d, %xmm11
	shrw	%dx
	addsd	248(%rax), %xmm11
	movzwl	%dx, %edx
	addsd	%xmm7, %xmm10
	movapd	%xmm11, %xmm13
	subsd	%xmm0, %xmm13
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	movzwl	292(%r8), %edx
	movl	%edx, %r9d
	shrw	%r9w
	subsd	%xmm0, %xmm6
	movzwl	%r9w, %r9d
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%r9d, %xmm9
	addsd	232(%r8), %xmm9
	cvtsi2sdl	%edx, %xmm0
	comisd	%xmm10, %xmm6
	addsd	%xmm6, %xmm8
	movapd	%xmm9, %xmm12
	subsd	%xmm0, %xmm12
	ja	.L280
	comisd	%xmm8, %xmm7
	ja	.L280
	comisd	%xmm11, %xmm12
	ja	.L280
	comisd	%xmm9, %xmm13
	ja	.L280
	comisd	%xmm7, %xmm8
	jb	.L450
	comisd	%xmm8, %xmm10
	jb	.L489
	xorl	%edx, %edx
	comisd	%xmm13, %xmm12
	jnb	.L279
	comisd	%xmm6, %xmm7
	jb	.L480
	comisd	%xmm12, %xmm11
	jb	.L452
	comisd	%xmm11, %xmm9
	jnb	.L279
	comisd	%xmm7, %xmm6
	jnb	.L293
	.p2align 4,,10
	.p2align 3
.L294:
	comisd	%xmm10, %xmm8
	jnb	.L288
	comisd	%xmm7, %xmm8
	jnb	.L290
	comisd	%xmm6, %xmm7
	jnb	.L304
.L315:
	comisd	%xmm13, %xmm9
	jb	.L280
	xorl	%edx, %edx
	comisd	%xmm9, %xmm11
	jb	.L327
.L279:
	movaps	80(%rsp), %xmm6
	movaps	96(%rsp), %xmm7
	movl	%edx, %eax
	movaps	128(%rsp), %xmm9
	movaps	112(%rsp), %xmm8
	movaps	144(%rsp), %xmm10
	movaps	160(%rsp), %xmm11
	movaps	176(%rsp), %xmm12
	movaps	192(%rsp), %xmm13
	movaps	208(%rsp), %xmm14
	addq	$232, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L450:
	comisd	%xmm7, %xmm6
	jnb	.L299
	comisd	%xmm6, %xmm10
	jnb	.L490
	comisd	%xmm7, %xmm8
	jb	.L458
.L300:
	comisd	%xmm8, %xmm10
	jnb	.L290
	comisd	%xmm6, %xmm7
	jnb	.L320
.L305:
	comisd	%xmm6, %xmm10
	jnb	.L315
	.p2align 4,,10
	.p2align 3
.L280:
	movzwl	290(%rax), %ecx
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	pxor	%xmm3, %xmm3
	movsd	224(%rax), %xmm1
	movl	%ecx, %edx
	cvtsi2sdl	%ecx, %xmm3
	movq	%r10, %rcx
	shrw	%dx
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm0
	movzwl	292(%rax), %edx
	movl	%edx, %r8d
	shrw	%r8w
	subsd	%xmm0, %xmm1
	movzwl	%r8w, %r8d
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	xorl	%edx, %edx
	cvtsi2sdl	%r8d, %xmm2
	addsd	232(%rax), %xmm2
	movsd	%xmm12, 64(%rsp)
	addsd	%xmm1, %xmm3
	movsd	%xmm8, 56(%rsp)
	movsd	%xmm9, 48(%rsp)
	movapd	%xmm2, %xmm14
	movsd	%xmm6, 40(%rsp)
	subsd	%xmm0, %xmm14
	movsd	%xmm14, 32(%rsp)
	call	_ZN3wze6engine9collision14CheckCollisionEdddddddd
	testb	%al, %al
	je	.L279
	comisd	%xmm6, %xmm7
	jb	.L460
	comisd	%xmm10, %xmm8
	jnb	.L339
	ucomisd	%xmm6, %xmm7
	jp	.L442
	je	.L340
.L442:
	comisd	%xmm12, %xmm13
	jb	.L491
	.p2align 4,,10
	.p2align 3
.L342:
	comisd	%xmm11, %xmm9
	jnb	.L351
	comisd	%xmm13, %xmm12
	jnb	.L351
	comisd	%xmm6, %xmm7
	ja	.L373
	comisd	%xmm10, %xmm8
	ja	.L386
	comisd	%xmm6, %xmm7
	ja	.L373
	.p2align 4,,10
	.p2align 3
.L374:
	comisd	%xmm10, %xmm8
	ja	.L370
.L468:
	xorl	%edx, %edx
	jmp	.L279
	.p2align 4,,10
	.p2align 3
.L460:
	comisd	%xmm7, %xmm6
	jb	.L345
.L340:
	comisd	%xmm8, %xmm10
	jnb	.L339
	comisd	%xmm12, %xmm13
	jnb	.L342
	comisd	%xmm13, %xmm12
	jnb	.L347
	comisd	%xmm10, %xmm8
	jbe	.L358
.L368:
	comisd	%xmm11, %xmm9
	jbe	.L360
.L366:
	comisd	%xmm6, %xmm10
	jnb	.L416
	comisd	%xmm12, %xmm11
	movl	$8, %edx
	jnb	.L279
	subsd	%xmm6, %xmm3
	subsd	%xmm12, %xmm2
	movl	$1, %edx
	comisd	%xmm2, %xmm3
	ja	.L279
	comisd	%xmm3, %xmm2
	movl	$8, %edx
	movl	$32, %eax
	cmovbe	%eax, %edx
	jmp	.L279
	.p2align 4,,10
	.p2align 3
.L339:
	comisd	%xmm11, %xmm12
	movl	$1, %edx
	ja	.L279
	comisd	%xmm9, %xmm13
	movl	$2, %edx
	ja	.L279
.L345:
	comisd	%xmm12, %xmm13
	jnb	.L342
	comisd	%xmm13, %xmm12
	jnb	.L347
	comisd	%xmm6, %xmm7
	jbe	.L467
	comisd	%xmm11, %xmm9
	ja	.L363
	comisd	%xmm10, %xmm8
	jbe	.L364
	comisd	%xmm11, %xmm9
	ja	.L366
	jmp	.L488
	.p2align 4,,10
	.p2align 3
.L491:
	comisd	%xmm13, %xmm12
	jb	.L492
	comisd	%xmm9, %xmm11
	jb	.L363
	.p2align 4,,10
	.p2align 3
.L351:
	comisd	%xmm8, %xmm7
	movl	$4, %edx
	ja	.L279
	comisd	%xmm10, %xmm6
	movl	$8, %edx
	ja	.L279
	comisd	%xmm6, %xmm7
	jbe	.L493
	comisd	%xmm11, %xmm9
	ja	.L363
	comisd	%xmm10, %xmm8
	jbe	.L364
.L360:
	comisd	%xmm6, %xmm7
	jbe	.L370
.L488:
	comisd	%xmm12, %xmm13
	jbe	.L468
	.p2align 4,,10
	.p2align 3
.L373:
	comisd	%xmm7, %xmm8
	movl	$2, %edx
	jnb	.L279
	comisd	%xmm13, %xmm9
	movl	$4, %edx
	jnb	.L279
	subsd	%xmm1, %xmm8
	subsd	%xmm14, %xmm9
	movl	$2, %edx
	comisd	%xmm9, %xmm8
	ja	.L279
	comisd	%xmm8, %xmm9
	movl	$4, %edx
	movl	$64, %eax
	cmovbe	%eax, %edx
	jmp	.L279
	.p2align 4,,10
	.p2align 3
.L347:
	comisd	%xmm9, %xmm11
	jnb	.L351
	comisd	%xmm6, %xmm7
	ja	.L363
	comisd	%xmm10, %xmm8
	ja	.L366
	comisd	%xmm6, %xmm7
	jbe	.L374
	jmp	.L488
	.p2align 4,,10
	.p2align 3
.L363:
	comisd	%xmm7, %xmm8
	movl	$1, %edx
	jnb	.L279
	comisd	%xmm12, %xmm11
	movl	$4, %edx
	jnb	.L279
	subsd	%xmm1, %xmm8
	subsd	%xmm12, %xmm2
	movl	$1, %edx
	comisd	%xmm2, %xmm8
	ja	.L279
	comisd	%xmm8, %xmm2
	movl	$4, %edx
	movl	$16, %eax
	cmovbe	%eax, %edx
	jmp	.L279
	.p2align 4,,10
	.p2align 3
.L489:
	comisd	%xmm6, %xmm7
	jnb	.L284
	comisd	%xmm6, %xmm10
	jnb	.L494
.L451:
	comisd	%xmm7, %xmm8
	jnb	.L300
	comisd	%xmm6, %xmm7
	jb	.L305
.L304:
	comisd	%xmm7, %xmm8
	jnb	.L320
.L329:
	comisd	%xmm7, %xmm6
	jnb	.L305
	comisd	%xmm6, %xmm10
	jb	.L280
.L327:
	comisd	%xmm10, %xmm8
	jb	.L280
.L318:
	xorl	%edx, %edx
	comisd	%xmm12, %xmm13
	jnb	.L279
	jmp	.L280
	.p2align 4,,10
	.p2align 3
.L493:
	comisd	%xmm10, %xmm8
	jbe	.L358
	comisd	%xmm11, %xmm9
	movl	$1, %edx
	ja	.L279
	jmp	.L360
	.p2align 4,,10
	.p2align 3
.L458:
	comisd	%xmm6, %xmm7
	jb	.L329
	jmp	.L304
	.p2align 4,,10
	.p2align 3
.L490:
	comisd	%xmm10, %xmm8
	jnb	.L288
	comisd	%xmm7, %xmm8
	jb	.L329
	.p2align 4,,10
	.p2align 3
.L290:
	comisd	%xmm13, %xmm9
	jb	.L459
.L390:
	xorl	%edx, %edx
	comisd	%xmm9, %xmm11
	jnb	.L279
	comisd	%xmm6, %xmm7
	jb	.L327
.L320:
	xorl	%edx, %edx
.L486:
	comisd	%xmm12, %xmm13
	jnb	.L279
	jmp	.L329
	.p2align 4,,10
	.p2align 3
.L467:
	comisd	%xmm10, %xmm8
	jbe	.L358
	comisd	%xmm11, %xmm9
	ja	.L366
.L370:
	comisd	%xmm12, %xmm13
	jbe	.L468
.L386:
	comisd	%xmm6, %xmm10
	movl	$2, %edx
	jnb	.L279
	comisd	%xmm13, %xmm9
	movl	$8, %edx
	jnb	.L279
	subsd	%xmm6, %xmm3
	subsd	%xmm14, %xmm9
	movl	$2, %edx
	comisd	%xmm9, %xmm3
	ja	.L279
	comisd	%xmm3, %xmm9
	movl	$8, %edx
	movl	$128, %eax
	cmovbe	%eax, %edx
	jmp	.L279
	.p2align 4,,10
	.p2align 3
.L299:
	comisd	%xmm6, %xmm10
	jb	.L451
.L293:
	xorl	%edx, %edx
	comisd	%xmm13, %xmm12
	jnb	.L279
	jmp	.L294
	.p2align 4,,10
	.p2align 3
.L358:
	comisd	%xmm6, %xmm7
	jbe	.L374
.L364:
	comisd	%xmm12, %xmm13
	jbe	.L374
	jmp	.L373
	.p2align 4,,10
	.p2align 3
.L494:
	xorl	%edx, %edx
	comisd	%xmm13, %xmm12
	jnb	.L279
	.p2align 4,,10
	.p2align 3
.L288:
	comisd	%xmm12, %xmm11
	jb	.L300
.L391:
	xorl	%edx, %edx
	comisd	%xmm11, %xmm9
	jnb	.L279
	ucomisd	%xmm8, %xmm10
	jp	.L437
	je	.L312
.L437:
	xorl	%edx, %edx
	comisd	%xmm6, %xmm7
	jnb	.L486
	comisd	%xmm13, %xmm9
	jb	.L280
	jmp	.L279
	.p2align 4,,10
	.p2align 3
.L284:
	comisd	%xmm12, %xmm11
	jb	.L453
	xorl	%edx, %edx
	comisd	%xmm11, %xmm9
	jnb	.L279
.L453:
	comisd	%xmm7, %xmm6
	jnb	.L299
	comisd	%xmm6, %xmm10
	jb	.L300
	jmp	.L294
	.p2align 4,,10
	.p2align 3
.L459:
	comisd	%xmm6, %xmm7
	jb	.L315
	ucomisd	%xmm6, %xmm7
	jp	.L327
	jne	.L327
	jmp	.L315
.L495:
	xorl	%edx, %edx
.L480:
	comisd	%xmm13, %xmm12
	jnb	.L279
	comisd	%xmm10, %xmm8
	jnb	.L288
	jmp	.L290
	.p2align 4,,10
	.p2align 3
.L492:
	comisd	%xmm11, %xmm9
	ja	.L363
	comisd	%xmm10, %xmm8
	ja	.L368
	jmp	.L364
.L452:
	ucomisd	%xmm6, %xmm7
	jp	.L295
	je	.L495
.L295:
	ucomisd	%xmm8, %xmm10
	jp	.L385
	jne	.L385
	comisd	%xmm12, %xmm11
	jnb	.L391
	jmp	.L290
.L312:
	comisd	%xmm13, %xmm9
	jnb	.L279
	comisd	%xmm6, %xmm7
	jb	.L315
	ucomisd	%xmm6, %xmm7
	jp	.L318
	jne	.L318
	jmp	.L315
.L416:
	movl	$1, %edx
	jmp	.L279
.L385:
	comisd	%xmm13, %xmm9
	jnb	.L390
	jmp	.L280
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	.def	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_:
.LFB6897:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$152, %rsp
	.seh_stackalloc	152
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	movaps	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	movaps	%xmm9, 80(%rsp)
	.seh_savexmm	%xmm9, 80
	movaps	%xmm10, 96(%rsp)
	.seh_savexmm	%xmm10, 96
	movaps	%xmm11, 112(%rsp)
	.seh_savexmm	%xmm11, 112
	movaps	%xmm12, 128(%rsp)
	.seh_savexmm	%xmm12, 128
	.seh_endprologue
	movq	%r8, %rsi
	movq	%r9, %r8
	movq	%r9, %r11
	movq	%rdx, %rbx
	call	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	xorl	%r9d, %r9d
	testl	%eax, %eax
	je	.L496
	movzwl	290(%rbx), %ecx
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	movsd	224(%rbx), %xmm1
	pxor	%xmm5, %xmm5
	pxor	%xmm4, %xmm4
	pxor	%xmm3, %xmm3
	movsd	232(%rbx), %xmm9
	movl	%ecx, %edx
	movapd	%xmm1, %xmm10
	movsd	224(%r11), %xmm7
	shrw	%dx
	cvtsi2sdl	%ecx, %xmm5
	movzwl	290(%r11), %ecx
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm0
	movzwl	292(%rbx), %edx
	cvtsi2sdl	%ecx, %xmm4
	movl	%edx, %r8d
	shrw	%r8w
	movzwl	%r8w, %r8d
	subsd	%xmm0, %xmm10
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%r8d, %xmm2
	cvtsi2sdl	%edx, %xmm0
	movl	%ecx, %edx
	shrw	%dx
	addsd	%xmm10, %xmm5
	movzwl	%dx, %edx
	addsd	%xmm9, %xmm2
	movapd	%xmm2, %xmm11
	subsd	%xmm0, %xmm11
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	movzwl	292(%r11), %edx
	movl	%edx, %r8d
	cvtsi2sdl	%edx, %xmm3
	movq	184(%r11), %rdx
	shrw	%r8w
	subsd	%xmm0, %xmm7
	movzwl	%r8w, %r8d
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%r8d, %xmm0
	addsd	232(%r11), %xmm0
	addsd	%xmm7, %xmm4
	movapd	%xmm0, %xmm12
	subsd	%xmm3, %xmm12
	cmpq	%rsi, %rdx
	jb	.L498
	cmpl	$32, %eax
	ja	.L499
	leaq	.L501(%rip), %rdx
	movl	%eax, %eax
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L501:
	.long	.L526-.L501
	.long	.L506-.L501
	.long	.L505-.L501
	.long	.L526-.L501
	.long	.L504-.L501
	.long	.L526-.L501
	.long	.L526-.L501
	.long	.L526-.L501
	.long	.L503-.L501
	.long	.L526-.L501
	.long	.L526-.L501
	.long	.L526-.L501
	.long	.L526-.L501
	.long	.L526-.L501
	.long	.L526-.L501
	.long	.L526-.L501
	.long	.L502-.L501
	.long	.L526-.L501
	.long	.L526-.L501
	.long	.L526-.L501
	.long	.L526-.L501
	.long	.L526-.L501
	.long	.L526-.L501
	.long	.L526-.L501
	.long	.L526-.L501
	.long	.L526-.L501
	.long	.L526-.L501
	.long	.L526-.L501
	.long	.L526-.L501
	.long	.L526-.L501
	.long	.L526-.L501
	.long	.L526-.L501
	.long	.L500-.L501
	.text
	.p2align 4,,10
	.p2align 3
.L514:
	cmpl	$64, %eax
	je	.L522
	cmpl	$128, %eax
	je	.L523
	.p2align 4,,10
	.p2align 3
.L526:
	xorl	%r9d, %r9d
.L496:
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	movl	%r9d, %eax
	movaps	64(%rsp), %xmm8
	movaps	80(%rsp), %xmm9
	movaps	96(%rsp), %xmm10
	movaps	112(%rsp), %xmm11
	movaps	128(%rsp), %xmm12
	addq	$152, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L498:
	testq	%rsi, %rsi
	js	.L510
	pxor	%xmm8, %xmm8
	cvtsi2sdq	%rsi, %xmm8
	addq	%rsi, %rdx
	js	.L512
.L531:
	pxor	%xmm3, %xmm3
	cvtsi2sdq	%rdx, %xmm3
.L513:
	divsd	%xmm3, %xmm8
	movsd	.LC4(%rip), %xmm6
	subsd	%xmm8, %xmm6
	cmpl	$32, %eax
	ja	.L514
	leaq	.L516(%rip), %rdx
	movl	%eax, %eax
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L516:
	.long	.L526-.L516
	.long	.L521-.L516
	.long	.L520-.L516
	.long	.L526-.L516
	.long	.L519-.L516
	.long	.L526-.L516
	.long	.L526-.L516
	.long	.L526-.L516
	.long	.L518-.L516
	.long	.L526-.L516
	.long	.L526-.L516
	.long	.L526-.L516
	.long	.L526-.L516
	.long	.L526-.L516
	.long	.L526-.L516
	.long	.L526-.L516
	.long	.L517-.L516
	.long	.L526-.L516
	.long	.L526-.L516
	.long	.L526-.L516
	.long	.L526-.L516
	.long	.L526-.L516
	.long	.L526-.L516
	.long	.L526-.L516
	.long	.L526-.L516
	.long	.L526-.L516
	.long	.L526-.L516
	.long	.L526-.L516
	.long	.L526-.L516
	.long	.L526-.L516
	.long	.L526-.L516
	.long	.L526-.L516
	.long	.L515-.L516
	.text
	.p2align 4,,10
	.p2align 3
.L510:
	movq	%rsi, %rcx
	movq	%rsi, %r8
	pxor	%xmm8, %xmm8
	shrq	%rcx
	andl	$1, %r8d
	orq	%r8, %rcx
	cvtsi2sdq	%rcx, %xmm8
	addsd	%xmm8, %xmm8
	addq	%rsi, %rdx
	jns	.L531
.L512:
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm3, %xmm3
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm3
	addsd	%xmm3, %xmm3
	jmp	.L513
	.p2align 4,,10
	.p2align 3
.L499:
	cmpl	$64, %eax
	je	.L507
	cmpl	$128, %eax
	jne	.L496
	subsd	%xmm11, %xmm0
	subsd	%xmm7, %xmm5
	movsd	.LC3(%rip), %xmm2
	addsd	%xmm2, %xmm0
	addsd	%xmm2, %xmm5
	addsd	%xmm9, %xmm0
	subsd	%xmm5, %xmm1
	movsd	%xmm0, 232(%rbx)
	movsd	%xmm1, 224(%rbx)
	jmp	.L509
	.p2align 4,,10
	.p2align 3
.L523:
	subsd	%xmm11, %xmm0
	movapd	%xmm6, %xmm2
	subsd	%xmm7, %xmm5
	movsd	.LC3(%rip), %xmm3
	mulsd	%xmm0, %xmm2
	mulsd	%xmm5, %xmm6
	mulsd	%xmm8, %xmm0
	mulsd	%xmm5, %xmm8
	addsd	%xmm3, %xmm2
	addsd	%xmm3, %xmm6
	addsd	%xmm9, %xmm2
	subsd	%xmm6, %xmm1
	movsd	%xmm2, 232(%rbx)
	movsd	232(%r11), %xmm2
	subsd	%xmm0, %xmm2
	movsd	%xmm2, 232(%r11)
	movsd	%xmm1, 224(%rbx)
	addsd	224(%r11), %xmm8
	movsd	%xmm8, 224(%r11)
	.p2align 4,,10
	.p2align 3
.L509:
	movl	$1, %r9d
	jmp	.L496
.L503:
	subsd	%xmm7, %xmm5
	addsd	.LC3(%rip), %xmm5
	subsd	%xmm5, %xmm1
	movsd	%xmm1, 224(%rbx)
	jmp	.L509
.L502:
	subsd	%xmm10, %xmm4
	subsd	%xmm12, %xmm2
	movsd	.LC3(%rip), %xmm0
	movapd	%xmm4, %xmm3
	addsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm3
	subsd	%xmm2, %xmm9
	addsd	%xmm1, %xmm3
	movsd	%xmm9, 232(%rbx)
	movsd	%xmm3, 224(%rbx)
	jmp	.L509
.L506:
	subsd	%xmm12, %xmm2
	addsd	.LC3(%rip), %xmm2
	subsd	%xmm2, %xmm9
	movsd	%xmm9, 232(%rbx)
	jmp	.L509
.L505:
	subsd	%xmm11, %xmm0
	addsd	.LC3(%rip), %xmm0
	addsd	%xmm9, %xmm0
	movsd	%xmm0, 232(%rbx)
	jmp	.L509
.L504:
	subsd	%xmm10, %xmm4
	movsd	.LC3(%rip), %xmm3
	addsd	%xmm4, %xmm3
	addsd	%xmm1, %xmm3
	movsd	%xmm3, 224(%rbx)
	jmp	.L509
.L500:
	subsd	%xmm12, %xmm2
	subsd	%xmm7, %xmm5
	movsd	.LC3(%rip), %xmm0
	addsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm5
	subsd	%xmm2, %xmm9
	subsd	%xmm5, %xmm1
	movsd	%xmm9, 232(%rbx)
	movsd	%xmm1, 224(%rbx)
	jmp	.L509
.L515:
	subsd	%xmm12, %xmm2
	movapd	%xmm6, %xmm0
	movsd	.LC3(%rip), %xmm3
	subsd	%xmm7, %xmm5
	mulsd	%xmm2, %xmm0
	mulsd	%xmm5, %xmm6
	mulsd	%xmm8, %xmm2
	addsd	%xmm3, %xmm0
	addsd	%xmm3, %xmm6
	subsd	%xmm0, %xmm9
	movsd	%xmm9, 232(%rbx)
	addsd	232(%r11), %xmm2
	movsd	%xmm2, 232(%r11)
.L529:
	subsd	%xmm6, %xmm1
	mulsd	%xmm8, %xmm5
	movsd	%xmm1, 224(%rbx)
	addsd	224(%r11), %xmm5
	movsd	%xmm5, 224(%r11)
	jmp	.L509
.L517:
	subsd	%xmm12, %xmm2
	movapd	%xmm6, %xmm0
	movsd	.LC3(%rip), %xmm5
	mulsd	%xmm2, %xmm0
	mulsd	%xmm8, %xmm2
	addsd	%xmm5, %xmm0
	subsd	%xmm0, %xmm9
	movsd	%xmm9, 232(%rbx)
	addsd	232(%r11), %xmm2
.L528:
	movsd	%xmm2, 232(%r11)
	subsd	%xmm10, %xmm4
	mulsd	%xmm4, %xmm6
	movapd	%xmm4, %xmm3
	addsd	%xmm5, %xmm6
.L530:
	mulsd	%xmm8, %xmm3
	addsd	%xmm1, %xmm6
	movsd	%xmm6, 224(%rbx)
	movsd	224(%r11), %xmm0
	subsd	%xmm3, %xmm0
	movsd	%xmm0, 224(%r11)
	jmp	.L509
.L518:
	subsd	%xmm7, %xmm5
	mulsd	%xmm5, %xmm6
	addsd	.LC3(%rip), %xmm6
	jmp	.L529
.L519:
	subsd	%xmm10, %xmm4
	mulsd	%xmm4, %xmm6
	movapd	%xmm4, %xmm3
	addsd	.LC3(%rip), %xmm6
	jmp	.L530
.L520:
	subsd	%xmm11, %xmm0
	mulsd	%xmm0, %xmm6
	addsd	.LC3(%rip), %xmm6
	mulsd	%xmm8, %xmm0
	addsd	%xmm9, %xmm6
	movsd	%xmm6, 232(%rbx)
	movsd	232(%r11), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 232(%r11)
	jmp	.L509
.L521:
	subsd	%xmm12, %xmm2
	mulsd	%xmm2, %xmm6
	addsd	.LC3(%rip), %xmm6
	mulsd	%xmm8, %xmm2
	subsd	%xmm6, %xmm9
	movsd	%xmm9, 232(%rbx)
	addsd	232(%r11), %xmm2
	movsd	%xmm2, 232(%r11)
	jmp	.L509
	.p2align 4,,10
	.p2align 3
.L522:
	subsd	%xmm11, %xmm0
	movapd	%xmm6, %xmm2
	movsd	.LC3(%rip), %xmm5
	mulsd	%xmm0, %xmm2
	mulsd	%xmm8, %xmm0
	addsd	%xmm5, %xmm2
	addsd	%xmm9, %xmm2
	movsd	%xmm2, 232(%rbx)
	movsd	232(%r11), %xmm2
	subsd	%xmm0, %xmm2
	jmp	.L528
	.p2align 4,,10
	.p2align 3
.L507:
	subsd	%xmm10, %xmm4
	subsd	%xmm11, %xmm0
	movsd	.LC3(%rip), %xmm2
	movapd	%xmm4, %xmm3
	addsd	%xmm2, %xmm0
	addsd	%xmm2, %xmm3
	addsd	%xmm9, %xmm0
	addsd	%xmm1, %xmm3
	movsd	%xmm0, 232(%rbx)
	movsd	%xmm3, 224(%rbx)
	jmp	.L509
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC5:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB6:
	.text
.LHOTB6:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_
	.def	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_
_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_:
.LFB6899:
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
	movq	%rdx, 168(%rsp)
	movq	%rcx, %rdi
	movq	%r8, %rbp
	movq	%r9, 184(%rsp)
	movq	%rsi, 64(%rsp)
	testq	%rsi, %rsi
	jne	.L533
	movq	$0, 72(%rsp)
	xorl	%r12d, %r12d
.L536:
	movq	168(%rsp), %rax
	movq	(%rax), %r11
	testq	%r11, %r11
	je	.L535
	movq	8(%rax), %r14
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	jmp	.L542
	.p2align 4,,10
	.p2align 3
.L537:
	addq	$1, %r12
	cmpq	%r11, %r12
	jnb	.L572
.L542:
	movq	(%r14,%r12,8), %r8
	leaq	0(,%r12,8), %r13
	cmpq	%rbp, %r8
	je	.L537
	cmpq	%rbx, %r8
	je	.L537
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	call	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	testl	%eax, %eax
	je	.L537
	cmpq	%rsi, 64(%rsp)
	je	.L573
.L538:
	cmpq	%r11, %r12
	jnb	.L574
	movq	(%r14,%r13), %rax
	movq	72(%rsp), %rcx
	leaq	1(%rsi), %rdx
	cmpq	64(%rsp), %rsi
	jnb	.L575
	addq	$1, %r12
	movq	%rax, (%rcx,%rsi,8)
	addq	184(%rax), %r15
	movq	%rdx, %rsi
	cmpq	%r11, %r12
	jb	.L542
	.p2align 4,,10
	.p2align 3
.L572:
	movq	72(%rsp), %r12
	cmpq	184(%rsp), %r15
	jnb	.L543
	testq	%rsi, %rsi
	je	.L535
	movq	64(%rsp), %rax
	xorl	%r13d, %r13d
	movq	%rax, 56(%rsp)
	movq	184(%rsp), %rax
	subq	%r15, %rax
	movq	%rax, %r14
.L550:
	cmpq	%r13, 56(%rsp)
	je	.L576
	movq	(%r12,%r13,8), %r15
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	movq	184(%r15), %r8
	movq	%r15, %r9
	addq	%r14, %r8
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	testb	%al, %al
	jne	.L577
.L549:
	addq	$1, %r13
	cmpq	%r13, %rsi
	jne	.L550
.L535:
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
.L543:
	testq	%rsi, %rsi
	je	.L535
	movq	64(%rsp), %r13
	xorl	%ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L547:
	cmpq	%rbp, %r13
	je	.L578
	movq	(%r12,%rbp,8), %r9
	xorl	%r8d, %r8d
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	addq	$1, %rbp
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	cmpq	%rbp, %rsi
	jne	.L547
	jmp	.L535
	.p2align 4,,10
	.p2align 3
.L577:
	movq	%r15, 32(%rsp)
	movq	%r14, %r9
	movq	%rbp, %r8
	movq	%rdi, %rcx
	movq	168(%rsp), %rdx
.LEHB0:
	call	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_
	movq	(%r12,%r13,8), %r9
	xorl	%r8d, %r8d
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	jmp	.L549
	.p2align 4,,10
	.p2align 3
.L573:
	movzwl	8(%rdi), %eax
	leaq	64(%rsp), %rcx
	movq	%rsi, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6InsertEyy.isra.0
.LEHE0:
	movq	168(%rsp), %rax
	movq	(%rax), %r11
	movq	8(%rax), %r14
	jmp	.L538
	.p2align 4,,10
	.p2align 3
.L533:
	leaq	0(,%rsi,8), %rcx
	call	malloc
	movq	%rax, 72(%rsp)
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.L536
	leaq	.LC2(%rip), %rcx
	movq	%rsi, %rdx
.LEHB1:
	call	_Z6printfPKcz
.LEHE1:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L578:
	movq	%r13, %rdx
	leaq	.LC5(%rip), %rcx
.LEHB2:
	call	_Z6printfPKcz
.L541:
	movl	$1, %ecx
	call	exit
.L575:
	movq	%rsi, %rdx
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L541
.L574:
	movq	%r12, %rdx
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L541
.L576:
	movq	56(%rsp), %rdx
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
.LEHE2:
	jmp	.L541
.L552:
	movq	%rax, %rbx
	jmp	.L551
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6899:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6899-.LLSDACSB6899
.LLSDACSB6899:
	.uleb128 .LEHB0-.LFB6899
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L552-.LFB6899
	.uleb128 0
	.uleb128 .LEHB1-.LFB6899
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB6899
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L552-.LFB6899
	.uleb128 0
.LLSDACSE6899:
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
.L551:
	movq	72(%rsp), %rcx
	call	free
	movq	%rbx, %rcx
.LEHB3:
	call	_Unwind_Resume
	nop
.LEHE3:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC6899:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6899-.LLSDACSBC6899
.LLSDACSBC6899:
	.uleb128 .LEHB3-.LCOLDB6
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSEC6899:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE6:
	.text
.LHOTE6:
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB7:
	.text
.LHOTB7:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE
	.def	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE
_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE:
.LFB6898:
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
	jne	.L580
	movq	$0, 104(%rsp)
	xorl	%esi, %esi
.L581:
	movq	192(%rsp), %rax
	movq	24(%rax), %r12
	cmpq	16(%rax), %rbx
	jnb	.L634
	salq	$4, %rbx
	addq	%rbx, %r12
	movq	(%r12), %rbp
	testq	%rbp, %rbp
	je	.L583
	leaq	96(%rsp), %rax
	xorl	%ebx, %ebx
	movq	%rax, 88(%rsp)
	.p2align 4,,10
	.p2align 3
.L603:
	movq	8(%r12), %r11
	xorl	%esi, %esi
	xorl	%r14d, %r14d
	xorl	%edi, %edi
	leaq	0(,%rbx,8), %r13
	.p2align 4,,10
	.p2align 3
.L590:
	cmpq	%rsi, %rbx
	je	.L584
	movq	(%r11,%rsi,8), %r8
	leaq	0(,%rsi,8), %r15
	cmpq	%rbp, %rbx
	jnb	.L634
	movq	(%r11,%r13), %rdx
	movq	192(%rsp), %rcx
	call	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	testl	%eax, %eax
	je	.L584
	cmpq	%rdi, 96(%rsp)
	je	.L638
.L587:
	cmpq	%rbp, %rsi
	jnb	.L639
	movq	(%r11,%r15), %rax
	movq	104(%rsp), %rcx
	leaq	1(%rdi), %rdx
	cmpq	96(%rsp), %rdi
	jnb	.L640
	movq	%rax, (%rcx,%rdi,8)
	addq	184(%rax), %r14
	movq	%rdx, %rdi
.L584:
	addq	$1, %rsi
	cmpq	%rbp, %rsi
	jb	.L590
	cmpq	%rbp, %rbx
	jnb	.L634
	movq	(%r11,%r13), %r15
	cmpq	176(%r15), %r14
	jnb	.L592
	testq	%rdi, %rdi
	je	.L597
	movq	96(%rsp), %rax
	xorl	%esi, %esi
	movq	%rax, 80(%rsp)
	movq	104(%rsp), %rax
	movq	%rax, 72(%rsp)
	jmp	.L602
	.p2align 4,,10
	.p2align 3
.L600:
	addq	$1, %rsi
	cmpq	%rsi, %rdi
	je	.L597
.L602:
	cmpq	%rsi, 80(%rsp)
	je	.L641
	movq	72(%rsp), %rax
	movq	8(%r12), %rdx
	movq	(%rax,%rsi,8), %r9
	movq	184(%r9), %rax
	cmpq	%rbp, %rbx
	jnb	.L634
	movq	(%rdx,%r13), %r15
	movq	192(%rsp), %rcx
	movq	%r9, 64(%rsp)
	movq	176(%r15), %r11
	movq	%r15, %rdx
	subq	%r14, %r11
	leaq	(%rax,%r11), %r8
	movq	%r11, 48(%rsp)
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	movq	48(%rsp), %r11
	movq	64(%rsp), %r9
	testb	%al, %al
	je	.L600
	movq	%r9, 32(%rsp)
	movq	%r15, %r8
	movq	%r11, %r9
	movq	%r12, %rdx
	movq	192(%rsp), %rcx
.LEHB4:
	call	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_
	movq	72(%rsp), %rax
	movq	(%r12), %rbp
	movq	(%rax,%rsi,8), %r9
	movq	8(%r12), %rax
	cmpq	%rbp, %rbx
	jnb	.L634
	movq	(%rax,%r13), %rdx
	movq	192(%rsp), %rcx
	xorl	%r8d, %r8d
	addq	$1, %rsi
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	cmpq	%rsi, %rdi
	jne	.L602
.L597:
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	jb	.L603
.L643:
	movq	104(%rsp), %rsi
.L583:
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
	je	.L609
	.p2align 4,,10
	.p2align 3
.L604:
	movq	8(%r12), %rax
	movq	(%rax,%rbx,8), %rcx
	cmpq	208(%rsp), %rcx
	je	.L605
	movupd	224(%rcx), %xmm0
	ucomisd	240(%rcx), %xmm0
	jp	.L606
	jne	.L606
	movapd	%xmm0, %xmm2
	unpckhpd	%xmm2, %xmm2
	ucomisd	248(%rcx), %xmm2
	jp	.L606
	je	.L605
.L606:
	movups	%xmm0, 240(%rcx)
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv
	movq	(%r12), %rdx
.L605:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L604
.L609:
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
.L638:
	movq	192(%rsp), %rax
	movq	88(%rsp), %rcx
	movq	%rdi, %rdx
	movzwl	8(%rax), %eax
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6InsertEyy.isra.0
	movq	(%r12), %rbp
	movq	8(%r12), %r11
	jmp	.L587
	.p2align 4,,10
	.p2align 3
.L592:
	testq	%rdi, %rdi
	je	.L597
	xorl	%r13d, %r13d
	movq	%rbx, 48(%rsp)
	movq	96(%rsp), %r14
	movq	%r13, %rbx
	movq	104(%rsp), %rsi
	movq	192(%rsp), %r13
	.p2align 4,,10
	.p2align 3
.L596:
	cmpq	%rbx, %r14
	je	.L642
	movq	(%rsi,%rbx,8), %r9
	xorl	%r8d, %r8d
	movq	%r15, %rdx
	movq	%r13, %rcx
	addq	$1, %rbx
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	cmpq	%rbx, %rdi
	jne	.L596
	movq	48(%rsp), %rbx
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	jb	.L603
	jmp	.L643
.L634:
	movq	%rbx, %rdx
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
.LEHE4:
.L586:
	movl	$1, %ecx
	call	exit
.L580:
	leaq	0(,%rdi,8), %rcx
	call	malloc
	movq	%rax, 104(%rsp)
	movq	%rax, %rsi
	testq	%rax, %rax
	jne	.L581
	leaq	.LC2(%rip), %rcx
	movq	%rdi, %rdx
.LEHB5:
	call	_Z6printfPKcz
.LEHE5:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L642:
	movq	%r14, %rdx
	leaq	.LC5(%rip), %rcx
.LEHB6:
	call	_Z6printfPKcz
	jmp	.L586
.L641:
	movq	80(%rsp), %rdx
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L586
.L640:
	movq	%rdi, %rdx
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L586
.L639:
	movq	%rsi, %rdx
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
.LEHE6:
	jmp	.L586
.L612:
	movq	%rax, %rbx
	jmp	.L610
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6898:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6898-.LLSDACSB6898
.LLSDACSB6898:
	.uleb128 .LEHB4-.LFB6898
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L612-.LFB6898
	.uleb128 0
	.uleb128 .LEHB5-.LFB6898
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB6898
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L612-.LFB6898
	.uleb128 0
.LLSDACSE6898:
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
.L610:
	movq	104(%rsp), %rcx
	call	free
	movq	%rbx, %rcx
.LEHB7:
	call	_Unwind_Resume
	nop
.LEHE7:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC6898:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6898-.LLSDACSBC6898
.LLSDACSBC6898:
	.uleb128 .LEHB7-.LCOLDB7
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSEC6898:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE7:
	.text
.LHOTE7:
	.section .rdata,"dr"
	.align 8
.LC3:
	.long	-350469331
	.long	1058682594
	.align 8
.LC4:
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
