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
.LFB8629:
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
.LFB8435:
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
.LFB8437:
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
.LFB8438:
	.seh_endprologue
	movzbl	%dl, %edx
	shrw	$3, %dx
	leal	0(,%rdx,8), %eax
	movw	%dx, 8(%rcx)
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision12CheckOverlapEPNS0_6actors5actor12overlapboxes10overlapboxES6_
	.def	_ZN3wze6engine9collision12CheckOverlapEPNS0_6actors5actor12overlapboxes10overlapboxES6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collision12CheckOverlapEPNS0_6actors5actor12overlapboxes10overlapboxES6_
_ZN3wze6engine9collision12CheckOverlapEPNS0_6actors5actor12overlapboxes10overlapboxES6_:
.LFB8439:
	subq	$56, %rsp
	.seh_stackalloc	56
	movaps	%xmm6, (%rsp)
	.seh_savexmm	%xmm6, 0
	movaps	%xmm7, 16(%rsp)
	.seh_savexmm	%xmm7, 16
	movaps	%xmm8, 32(%rsp)
	.seh_savexmm	%xmm8, 32
	.seh_endprologue
	pxor	%xmm1, %xmm1
	pxor	%xmm2, %xmm2
	pxor	%xmm3, %xmm3
	movq	%rdx, %rax
	movzwl	80(%rdx), %edx
	movsd	32(%rax), %xmm0
	movl	%edx, %ecx
	cvtsi2sdl	%edx, %xmm2
	shrw	%cx
	movzwl	%cx, %ecx
	cvtsi2sdl	%ecx, %xmm1
	movzwl	80(%r8), %ecx
	movl	%ecx, %edx
	shrw	%dx
	movzwl	%dx, %edx
	subsd	%xmm1, %xmm0
	movsd	32(%r8), %xmm1
	cvtsi2sdl	%edx, %xmm3
	xorl	%edx, %edx
	addsd	%xmm0, %xmm2
	subsd	%xmm3, %xmm1
	comisd	%xmm2, %xmm1
	ja	.L36
	pxor	%xmm3, %xmm3
	cvtsi2sdl	%ecx, %xmm3
	addsd	%xmm1, %xmm3
	comisd	%xmm3, %xmm0
	ja	.L36
	movzwl	82(%rax), %r9d
	pxor	%xmm4, %xmm4
	pxor	%xmm5, %xmm5
	pxor	%xmm7, %xmm7
	movl	%r9d, %ecx
	shrw	%cx
	movzwl	%cx, %ecx
	cvtsi2sdl	%ecx, %xmm4
	addsd	40(%rax), %xmm4
	movzwl	82(%r8), %eax
	movl	%eax, %ecx
	cvtsi2sdl	%eax, %xmm7
	shrw	%cx
	movzwl	%cx, %ecx
	cvtsi2sdl	%ecx, %xmm5
	addsd	40(%r8), %xmm5
	movapd	%xmm5, %xmm6
	subsd	%xmm7, %xmm6
	comisd	%xmm4, %xmm6
	ja	.L36
	pxor	%xmm8, %xmm8
	movapd	%xmm4, %xmm7
	cvtsi2sdl	%r9d, %xmm8
	subsd	%xmm8, %xmm7
	comisd	%xmm5, %xmm7
	ja	.L36
	comisd	%xmm0, %xmm3
	jb	.L125
	comisd	%xmm3, %xmm2
	jb	.L149
	comisd	%xmm7, %xmm6
	movl	$1, %edx
	jnb	.L36
	comisd	%xmm1, %xmm0
	jb	.L144
	comisd	%xmm6, %xmm4
	jb	.L127
	comisd	%xmm4, %xmm5
	jnb	.L36
	comisd	%xmm0, %xmm1
	jnb	.L49
	.p2align 4,,10
	.p2align 3
.L50:
	comisd	%xmm2, %xmm3
	jnb	.L44
	comisd	%xmm0, %xmm3
	jnb	.L46
	comisd	%xmm1, %xmm0
	jnb	.L60
.L74:
	comisd	%xmm7, %xmm5
	jb	.L71
.L72:
	comisd	%xmm5, %xmm4
	movl	$1, %edx
	jb	.L71
.L36:
	movaps	(%rsp), %xmm6
	movaps	16(%rsp), %xmm7
	movl	%edx, %eax
	movaps	32(%rsp), %xmm8
	addq	$56, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L125:
	comisd	%xmm0, %xmm1
	jnb	.L55
	comisd	%xmm1, %xmm2
	jnb	.L150
	comisd	%xmm0, %xmm3
	jnb	.L56
	comisd	%xmm1, %xmm0
	jnb	.L60
.L84:
	comisd	%xmm0, %xmm1
	jnb	.L61
	comisd	%xmm1, %xmm2
	jnb	.L71
.L137:
	xorl	%edx, %edx
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L149:
	comisd	%xmm1, %xmm0
	jnb	.L41
	comisd	%xmm1, %xmm2
	jb	.L126
	comisd	%xmm7, %xmm6
	movl	$1, %edx
	jnb	.L36
.L44:
	comisd	%xmm6, %xmm4
	jb	.L56
.L95:
	comisd	%xmm4, %xmm5
	movl	$1, %edx
	jnb	.L36
	ucomisd	%xmm3, %xmm2
	jp	.L121
	je	.L68
.L121:
	comisd	%xmm1, %xmm0
	jnb	.L70
	comisd	%xmm7, %xmm5
	movl	$1, %edx
	jnb	.L36
	.p2align 4,,10
	.p2align 3
.L71:
	comisd	%xmm2, %xmm3
	jb	.L137
.L73:
	comisd	%xmm6, %xmm7
	setnb	%dl
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L150:
	comisd	%xmm2, %xmm3
	jnb	.L44
	comisd	%xmm0, %xmm3
	jb	.L84
	.p2align 4,,10
	.p2align 3
.L46:
	comisd	%xmm7, %xmm5
	jb	.L135
.L94:
	comisd	%xmm5, %xmm4
	movl	$1, %edx
	jnb	.L36
	comisd	%xmm1, %xmm0
	jb	.L71
	.p2align 4,,10
	.p2align 3
.L70:
	comisd	%xmm6, %xmm7
	movl	$1, %edx
	jb	.L84
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L41:
	comisd	%xmm6, %xmm4
	jb	.L128
	comisd	%xmm4, %xmm5
	movl	$1, %edx
	jnb	.L36
.L128:
	comisd	%xmm0, %xmm1
	jnb	.L55
	comisd	%xmm1, %xmm2
	jnb	.L50
	.p2align 4,,10
	.p2align 3
.L56:
	comisd	%xmm3, %xmm2
	jnb	.L46
	comisd	%xmm1, %xmm0
	jnb	.L70
	comisd	%xmm1, %xmm2
	jb	.L137
.L143:
	comisd	%xmm7, %xmm5
	jb	.L73
	jmp	.L72
	.p2align 4,,10
	.p2align 3
.L55:
	comisd	%xmm1, %xmm2
	jb	.L126
.L49:
	comisd	%xmm7, %xmm6
	movl	$1, %edx
	jb	.L50
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L126:
	comisd	%xmm0, %xmm3
	jnb	.L56
	comisd	%xmm1, %xmm0
	jnb	.L60
.L61:
	comisd	%xmm1, %xmm2
	jnb	.L74
	xorl	%edx, %edx
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L60:
	comisd	%xmm0, %xmm3
	jb	.L84
	jmp	.L70
.L151:
	movl	$1, %edx
	.p2align 4,,10
	.p2align 3
.L144:
	comisd	%xmm7, %xmm6
	jnb	.L36
	comisd	%xmm2, %xmm3
	jb	.L46
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L135:
	comisd	%xmm1, %xmm0
	jb	.L74
	jmp	.L70
.L127:
	ucomisd	%xmm1, %xmm0
	jp	.L51
	je	.L151
.L51:
	ucomisd	%xmm3, %xmm2
	jp	.L124
	je	.L92
.L124:
	comisd	%xmm7, %xmm5
	jnb	.L94
	jmp	.L70
.L68:
	comisd	%xmm7, %xmm5
	jnb	.L36
	comisd	%xmm1, %xmm0
	jb	.L143
	jmp	.L70
.L92:
	comisd	%xmm6, %xmm4
	jnb	.L95
	jmp	.L46
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE
	.def	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE
_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE:
.LFB8440:
	subq	$40, %rsp
	.seh_stackalloc	40
	movaps	%xmm6, (%rsp)
	.seh_savexmm	%xmm6, 0
	movaps	%xmm7, 16(%rsp)
	.seh_savexmm	%xmm7, 16
	.seh_endprologue
	pxor	%xmm4, %xmm4
	movq	88(%rsp), %rcx
	movzwl	80(%rcx), %edx
	movsd	32(%rcx), %xmm0
	movl	%edx, %eax
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm4
	xorl	%eax, %eax
	subsd	%xmm4, %xmm0
	comisd	%xmm3, %xmm0
	ja	.L152
	pxor	%xmm4, %xmm4
	cvtsi2sdl	%edx, %xmm4
	addsd	%xmm0, %xmm4
	comisd	%xmm4, %xmm1
	ja	.L152
	movzwl	82(%rcx), %edx
	pxor	%xmm5, %xmm5
	pxor	%xmm7, %xmm7
	movl	%edx, %r8d
	cvtsi2sdl	%edx, %xmm7
	shrw	%r8w
	movzwl	%r8w, %r8d
	cvtsi2sdl	%r8d, %xmm5
	addsd	40(%rcx), %xmm5
	movapd	%xmm5, %xmm6
	subsd	%xmm7, %xmm6
	comisd	%xmm2, %xmm6
	ja	.L152
	movsd	80(%rsp), %xmm7
	comisd	%xmm5, %xmm7
	ja	.L152
	comisd	%xmm1, %xmm4
	jb	.L244
	comisd	%xmm4, %xmm3
	jb	.L266
	comisd	80(%rsp), %xmm6
	jb	.L246
	comisd	%xmm6, %xmm2
	movl	$1, %eax
	jnb	.L152
	comisd	%xmm0, %xmm1
	jnb	.L164
	comisd	%xmm6, %xmm2
	jnb	.L152
.L260:
	comisd	%xmm3, %xmm4
	jnb	.L161
	.p2align 4,,10
	.p2align 3
.L165:
	comisd	80(%rsp), %xmm5
	jb	.L253
.L214:
	comisd	%xmm5, %xmm2
	movl	$1, %eax
	jnb	.L152
	comisd	%xmm0, %xmm1
	jnb	.L193
.L194:
	comisd	%xmm5, %xmm2
	movl	$1, %eax
	jnb	.L152
.L189:
	comisd	%xmm3, %xmm4
	jnb	.L187
.L255:
	xorl	%eax, %eax
.L152:
	movaps	(%rsp), %xmm6
	movaps	16(%rsp), %xmm7
	addq	$40, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L244:
	comisd	%xmm1, %xmm0
	jnb	.L173
.L169:
	comisd	%xmm0, %xmm3
	jnb	.L174
	comisd	%xmm1, %xmm4
	jnb	.L175
.L195:
	comisd	%xmm0, %xmm1
	jb	.L201
	jmp	.L179
	.p2align 4,,10
	.p2align 3
.L173:
	comisd	%xmm0, %xmm3
	jb	.L245
.L168:
	comisd	80(%rsp), %xmm6
	jb	.L174
.L160:
	comisd	%xmm6, %xmm2
	movl	$1, %eax
	jnb	.L152
.L174:
	comisd	%xmm3, %xmm4
	jnb	.L161
	comisd	%xmm1, %xmm4
	jb	.L195
	jmp	.L165
	.p2align 4,,10
	.p2align 3
.L266:
	comisd	%xmm0, %xmm1
	jnb	.L157
	comisd	%xmm0, %xmm3
	jnb	.L267
.L245:
	comisd	%xmm1, %xmm4
	jnb	.L175
	comisd	%xmm0, %xmm1
	jb	.L180
.L179:
	comisd	%xmm1, %xmm4
	jnb	.L193
.L201:
	comisd	%xmm1, %xmm0
	jnb	.L180
.L204:
	comisd	%xmm0, %xmm3
	jnb	.L189
	xorl	%eax, %eax
	jmp	.L152
	.p2align 4,,10
	.p2align 3
.L267:
	comisd	%xmm7, %xmm6
	jnb	.L160
	.p2align 4,,10
	.p2align 3
.L161:
	comisd	%xmm6, %xmm2
	jnb	.L185
	comisd	%xmm1, %xmm4
	jnb	.L175
	comisd	%xmm1, %xmm0
	jb	.L187
.L186:
	comisd	80(%rsp), %xmm5
	jb	.L189
	jmp	.L194
	.p2align 4,,10
	.p2align 3
.L157:
	comisd	%xmm6, %xmm2
	jb	.L249
	comisd	%xmm2, %xmm5
	movl	$1, %eax
	jnb	.L152
.L249:
	comisd	%xmm1, %xmm0
	jnb	.L173
	comisd	%xmm0, %xmm3
	jnb	.L174
	.p2align 4,,10
	.p2align 3
.L175:
	comisd	%xmm4, %xmm3
	jnb	.L165
	comisd	%xmm0, %xmm1
	jnb	.L193
	comisd	%xmm0, %xmm3
	jb	.L255
.L262:
	comisd	80(%rsp), %xmm5
	jnb	.L194
.L187:
	movsd	80(%rsp), %xmm7
	comisd	%xmm6, %xmm7
	setnb	%al
	jmp	.L152
	.p2align 4,,10
	.p2align 3
.L253:
	comisd	%xmm0, %xmm1
	jb	.L180
.L193:
	movsd	80(%rsp), %xmm7
	movl	$1, %eax
	comisd	%xmm6, %xmm7
	jb	.L201
	jmp	.L152
	.p2align 4,,10
	.p2align 3
.L180:
	comisd	%xmm0, %xmm3
	jnb	.L186
	xorl	%eax, %eax
	jmp	.L152
	.p2align 4,,10
	.p2align 3
.L246:
	comisd	%xmm0, %xmm1
	jnb	.L164
	comisd	80(%rsp), %xmm6
	jb	.L260
	jmp	.L160
	.p2align 4,,10
	.p2align 3
.L185:
	comisd	%xmm2, %xmm5
	movl	$1, %eax
	jnb	.L152
	comisd	%xmm1, %xmm4
	jnb	.L188
	comisd	%xmm1, %xmm0
	jb	.L189
	comisd	80(%rsp), %xmm5
	jb	.L189
	jmp	.L152
	.p2align 4,,10
	.p2align 3
.L164:
	comisd	%xmm6, %xmm2
	jb	.L247
	comisd	%xmm2, %xmm5
	movl	$1, %eax
	jnb	.L152
	comisd	%xmm1, %xmm0
	jb	.L169
	jmp	.L168
.L247:
	comisd	%xmm1, %xmm0
	jnb	.L168
	ucomisd	%xmm3, %xmm4
	jp	.L242
	je	.L210
.L242:
	comisd	80(%rsp), %xmm5
	jb	.L256
	comisd	%xmm5, %xmm2
	jb	.L193
.L233:
	movl	$1, %eax
	jmp	.L152
	.p2align 4,,10
	.p2align 3
.L188:
	ucomisd	%xmm3, %xmm4
	jp	.L191
	jne	.L191
	comisd	80(%rsp), %xmm5
	jnb	.L152
	comisd	%xmm0, %xmm1
	jnb	.L193
	jmp	.L262
.L191:
	comisd	%xmm0, %xmm1
	jnb	.L193
	jmp	.L186
.L210:
	comisd	%xmm6, %xmm2
	jnb	.L185
	comisd	80(%rsp), %xmm5
	jnb	.L214
	jmp	.L193
.L256:
	movsd	80(%rsp), %xmm7
	comisd	%xmm6, %xmm7
	jb	.L204
	jmp	.L233
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision14CheckCollisionEdddddddd
	.def	_ZN3wze6engine9collision14CheckCollisionEdddddddd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collision14CheckCollisionEdddddddd
_ZN3wze6engine9collision14CheckCollisionEdddddddd:
.LFB8441:
	.seh_endprologue
	xorl	%eax, %eax
	movsd	48(%rsp), %xmm0
	movsd	64(%rsp), %xmm4
	comisd	%xmm3, %xmm0
	ja	.L268
	comisd	%xmm4, %xmm1
	ja	.L268
	movsd	72(%rsp), %xmm5
	comisd	%xmm2, %xmm5
	ja	.L268
	movsd	40(%rsp), %xmm5
	comisd	56(%rsp), %xmm5
	ja	.L268
	comisd	%xmm1, %xmm4
	jb	.L270
	comisd	%xmm4, %xmm3
	jb	.L392
	movsd	72(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jb	.L374
	comisd	%xmm5, %xmm2
	movl	$1, %eax
	jnb	.L268
	comisd	%xmm0, %xmm1
	jnb	.L279
	comisd	%xmm1, %xmm0
	jnb	.L280
.L281:
	comisd	%xmm0, %xmm3
	jnb	.L393
	movsd	56(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jnb	.L318
	comisd	%xmm0, %xmm1
	jnb	.L311
	xorl	%eax, %eax
	comisd	%xmm1, %xmm0
	jb	.L302
.L268:
	ret
	.p2align 4,,10
	.p2align 3
.L287:
	movsd	56(%rsp), %xmm5
	movl	$1, %eax
	comisd	%xmm2, %xmm5
	jnb	.L268
	.p2align 4,,10
	.p2align 3
.L270:
	comisd	%xmm1, %xmm0
	jnb	.L274
.L285:
	comisd	%xmm0, %xmm3
	jb	.L276
.L288:
	comisd	%xmm3, %xmm4
	jnb	.L275
	comisd	%xmm1, %xmm4
	jb	.L309
	jmp	.L293
	.p2align 4,,10
	.p2align 3
.L274:
	comisd	%xmm0, %xmm3
	jnb	.L282
	comisd	%xmm1, %xmm4
	jnb	.L289
.L389:
	comisd	%xmm0, %xmm1
	jb	.L295
.L294:
	comisd	%xmm1, %xmm4
	jb	.L324
	.p2align 4,,10
	.p2align 3
.L311:
	movsd	40(%rsp), %xmm5
	comisd	72(%rsp), %xmm5
	jb	.L324
.L337:
	movsd	56(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jb	.L324
.L364:
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L392:
	comisd	%xmm0, %xmm1
	jnb	.L273
	comisd	%xmm1, %xmm0
	jnb	.L274
	comisd	%xmm0, %xmm3
	jnb	.L275
	.p2align 4,,10
	.p2align 3
.L276:
	comisd	%xmm1, %xmm4
	jnb	.L289
.L309:
	comisd	%xmm0, %xmm1
	jnb	.L294
.L324:
	comisd	%xmm1, %xmm0
	jnb	.L295
.L302:
	comisd	%xmm0, %xmm3
	jb	.L385
.L304:
	comisd	%xmm3, %xmm4
	jnb	.L312
.L385:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L374:
	comisd	%xmm0, %xmm1
	jnb	.L279
	comisd	%xmm1, %xmm0
	jb	.L281
	.p2align 4,,10
	.p2align 3
.L282:
	movsd	72(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jnb	.L280
	comisd	%xmm3, %xmm4
	jnb	.L275
	comisd	%xmm1, %xmm4
	jb	.L389
.L293:
	movsd	56(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jb	.L307
.L318:
	comisd	56(%rsp), %xmm2
	movl	$1, %eax
	jnb	.L268
	comisd	%xmm0, %xmm1
	jb	.L394
.L315:
	movsd	40(%rsp), %xmm5
	comisd	72(%rsp), %xmm5
	movl	$1, %eax
	jb	.L324
	ret
	.p2align 4,,10
	.p2align 3
.L273:
	comisd	72(%rsp), %xmm2
	jnb	.L287
	comisd	%xmm1, %xmm0
	jnb	.L274
	comisd	%xmm0, %xmm3
	jnb	.L288
	.p2align 4,,10
	.p2align 3
.L289:
	comisd	%xmm4, %xmm3
	jnb	.L293
.L305:
	comisd	%xmm0, %xmm1
	jnb	.L311
	comisd	%xmm1, %xmm0
	jnb	.L295
	comisd	%xmm0, %xmm3
	jb	.L385
	.p2align 4,,10
	.p2align 3
.L312:
	movsd	40(%rsp), %xmm5
	comisd	72(%rsp), %xmm5
	jb	.L385
	movsd	56(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	setnb	%al
	ret
	.p2align 4,,10
	.p2align 3
.L275:
	comisd	72(%rsp), %xmm2
	jb	.L379
.L340:
	movsd	56(%rsp), %xmm5
	movl	$1, %eax
	comisd	%xmm2, %xmm5
	jnb	.L268
	comisd	%xmm1, %xmm4
	jnb	.L301
	comisd	%xmm1, %xmm0
	jb	.L302
	comisd	40(%rsp), %xmm5
	jb	.L304
	ret
.L381:
	comisd	%xmm0, %xmm1
	jnb	.L311
	.p2align 4,,10
	.p2align 3
.L295:
	comisd	%xmm0, %xmm3
	jb	.L385
.L321:
	movsd	56(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jb	.L304
.L316:
	comisd	56(%rsp), %xmm2
	movl	$1, %eax
	jb	.L304
	ret
	.p2align 4,,10
	.p2align 3
.L280:
	comisd	72(%rsp), %xmm2
	movl	$1, %eax
	jb	.L288
	jmp	.L268
	.p2align 4,,10
	.p2align 3
.L379:
	comisd	%xmm1, %xmm4
	jnb	.L289
	comisd	%xmm1, %xmm0
	jnb	.L321
	jmp	.L302
	.p2align 4,,10
	.p2align 3
.L279:
	comisd	72(%rsp), %xmm2
	jb	.L375
	movsd	56(%rsp), %xmm5
	movl	$1, %eax
	comisd	%xmm2, %xmm5
	jnb	.L268
	comisd	%xmm1, %xmm0
	jnb	.L282
	jmp	.L285
.L301:
	ucomisd	%xmm4, %xmm3
	jp	.L305
	jne	.L305
	comisd	40(%rsp), %xmm5
	jnb	.L268
	.p2align 4,,10
	.p2align 3
.L307:
	comisd	%xmm0, %xmm1
	jb	.L324
	jmp	.L311
.L375:
	comisd	%xmm1, %xmm0
	jnb	.L282
	ucomisd	%xmm4, %xmm3
	jp	.L373
	je	.L334
.L373:
	movsd	56(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jnb	.L336
	movsd	40(%rsp), %xmm5
	comisd	72(%rsp), %xmm5
	jnb	.L337
	jmp	.L302
	.p2align 4,,10
	.p2align 3
.L394:
	comisd	%xmm1, %xmm0
	jb	.L302
	jmp	.L316
.L393:
	comisd	%xmm3, %xmm4
	jnb	.L275
	movsd	56(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jb	.L381
	comisd	%xmm5, %xmm2
	jnb	.L364
	comisd	%xmm0, %xmm1
	jnb	.L315
	jmp	.L316
.L334:
	comisd	72(%rsp), %xmm2
	jnb	.L340
	movsd	56(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jb	.L311
	comisd	%xmm5, %xmm2
	jb	.L315
	jmp	.L364
.L336:
	comisd	56(%rsp), %xmm2
	jb	.L315
	jmp	.L364
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	.def	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_:
.LFB8442:
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
	movsd	216(%r8), %xmm6
	movq	%rcx, %r10
	movzwl	286(%rdx), %ecx
	movq	%rdx, %rax
	movsd	232(%rax), %xmm7
	movl	%ecx, %edx
	cvtsi2sdl	%ecx, %xmm10
	movzwl	282(%r8), %ecx
	shrw	%dx
	movzwl	%dx, %edx
	cvtsi2sdl	%ecx, %xmm8
	cvtsi2sdl	%edx, %xmm0
	movzwl	288(%rax), %edx
	movl	%edx, %r9d
	shrw	%r9w
	subsd	%xmm0, %xmm7
	movzwl	%r9w, %r9d
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	movl	%ecx, %edx
	cvtsi2sdl	%r9d, %xmm11
	shrw	%dx
	addsd	240(%rax), %xmm11
	movzwl	%dx, %edx
	addsd	%xmm7, %xmm10
	movapd	%xmm11, %xmm13
	subsd	%xmm0, %xmm13
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	movzwl	284(%r8), %edx
	movl	%edx, %r9d
	shrw	%r9w
	subsd	%xmm0, %xmm6
	movzwl	%r9w, %r9d
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%r9d, %xmm9
	addsd	224(%r8), %xmm9
	cvtsi2sdl	%edx, %xmm0
	comisd	%xmm10, %xmm6
	addsd	%xmm6, %xmm8
	movapd	%xmm9, %xmm12
	subsd	%xmm0, %xmm12
	ja	.L396
	comisd	%xmm8, %xmm7
	ja	.L396
	comisd	%xmm11, %xmm12
	ja	.L396
	comisd	%xmm9, %xmm13
	ja	.L396
	comisd	%xmm7, %xmm8
	jb	.L566
	comisd	%xmm8, %xmm10
	jb	.L605
	xorl	%edx, %edx
	comisd	%xmm13, %xmm12
	jnb	.L395
	comisd	%xmm6, %xmm7
	jb	.L596
	comisd	%xmm12, %xmm11
	jb	.L568
	comisd	%xmm11, %xmm9
	jnb	.L395
	comisd	%xmm7, %xmm6
	jnb	.L409
	.p2align 4,,10
	.p2align 3
.L410:
	comisd	%xmm10, %xmm8
	jnb	.L404
	comisd	%xmm7, %xmm8
	jnb	.L406
	comisd	%xmm6, %xmm7
	jnb	.L420
.L431:
	comisd	%xmm13, %xmm9
	jb	.L396
	xorl	%edx, %edx
	comisd	%xmm9, %xmm11
	jb	.L443
.L395:
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
.L566:
	comisd	%xmm7, %xmm6
	jnb	.L415
	comisd	%xmm6, %xmm10
	jnb	.L606
	comisd	%xmm7, %xmm8
	jb	.L574
.L416:
	comisd	%xmm8, %xmm10
	jnb	.L406
	comisd	%xmm6, %xmm7
	jnb	.L436
.L421:
	comisd	%xmm6, %xmm10
	jnb	.L431
	.p2align 4,,10
	.p2align 3
.L396:
	movzwl	282(%rax), %ecx
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	pxor	%xmm3, %xmm3
	movsd	216(%rax), %xmm1
	movl	%ecx, %edx
	cvtsi2sdl	%ecx, %xmm3
	movq	%r10, %rcx
	shrw	%dx
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm0
	movzwl	284(%rax), %edx
	movl	%edx, %r8d
	shrw	%r8w
	subsd	%xmm0, %xmm1
	movzwl	%r8w, %r8d
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	xorl	%edx, %edx
	cvtsi2sdl	%r8d, %xmm2
	addsd	224(%rax), %xmm2
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
	je	.L395
	comisd	%xmm6, %xmm7
	jb	.L576
	comisd	%xmm10, %xmm8
	jnb	.L455
	ucomisd	%xmm6, %xmm7
	jp	.L558
	je	.L456
.L558:
	comisd	%xmm12, %xmm13
	jb	.L607
	.p2align 4,,10
	.p2align 3
.L458:
	comisd	%xmm11, %xmm9
	jnb	.L467
	comisd	%xmm13, %xmm12
	jnb	.L467
	comisd	%xmm6, %xmm7
	ja	.L489
	comisd	%xmm10, %xmm8
	ja	.L502
	comisd	%xmm6, %xmm7
	ja	.L489
	.p2align 4,,10
	.p2align 3
.L490:
	comisd	%xmm10, %xmm8
	ja	.L486
.L584:
	xorl	%edx, %edx
	jmp	.L395
	.p2align 4,,10
	.p2align 3
.L576:
	comisd	%xmm7, %xmm6
	jb	.L461
.L456:
	comisd	%xmm8, %xmm10
	jnb	.L455
	comisd	%xmm12, %xmm13
	jnb	.L458
	comisd	%xmm13, %xmm12
	jnb	.L463
	comisd	%xmm10, %xmm8
	jbe	.L474
.L484:
	comisd	%xmm11, %xmm9
	jbe	.L476
.L482:
	comisd	%xmm6, %xmm10
	jnb	.L532
	comisd	%xmm12, %xmm11
	movl	$8, %edx
	jnb	.L395
	subsd	%xmm6, %xmm3
	subsd	%xmm12, %xmm2
	movl	$1, %edx
	comisd	%xmm2, %xmm3
	ja	.L395
	comisd	%xmm3, %xmm2
	movl	$8, %edx
	movl	$32, %eax
	cmovbe	%eax, %edx
	jmp	.L395
	.p2align 4,,10
	.p2align 3
.L455:
	comisd	%xmm11, %xmm12
	movl	$1, %edx
	ja	.L395
	comisd	%xmm9, %xmm13
	movl	$2, %edx
	ja	.L395
.L461:
	comisd	%xmm12, %xmm13
	jnb	.L458
	comisd	%xmm13, %xmm12
	jnb	.L463
	comisd	%xmm6, %xmm7
	jbe	.L583
	comisd	%xmm11, %xmm9
	ja	.L479
	comisd	%xmm10, %xmm8
	jbe	.L480
	comisd	%xmm11, %xmm9
	ja	.L482
	jmp	.L604
	.p2align 4,,10
	.p2align 3
.L607:
	comisd	%xmm13, %xmm12
	jb	.L608
	comisd	%xmm9, %xmm11
	jb	.L479
	.p2align 4,,10
	.p2align 3
.L467:
	comisd	%xmm8, %xmm7
	movl	$4, %edx
	ja	.L395
	comisd	%xmm10, %xmm6
	movl	$8, %edx
	ja	.L395
	comisd	%xmm6, %xmm7
	jbe	.L609
	comisd	%xmm11, %xmm9
	ja	.L479
	comisd	%xmm10, %xmm8
	jbe	.L480
.L476:
	comisd	%xmm6, %xmm7
	jbe	.L486
.L604:
	comisd	%xmm12, %xmm13
	jbe	.L584
	.p2align 4,,10
	.p2align 3
.L489:
	comisd	%xmm7, %xmm8
	movl	$2, %edx
	jnb	.L395
	comisd	%xmm13, %xmm9
	movl	$4, %edx
	jnb	.L395
	subsd	%xmm1, %xmm8
	subsd	%xmm14, %xmm9
	movl	$2, %edx
	comisd	%xmm9, %xmm8
	ja	.L395
	comisd	%xmm8, %xmm9
	movl	$4, %edx
	movl	$64, %eax
	cmovbe	%eax, %edx
	jmp	.L395
	.p2align 4,,10
	.p2align 3
.L463:
	comisd	%xmm9, %xmm11
	jnb	.L467
	comisd	%xmm6, %xmm7
	ja	.L479
	comisd	%xmm10, %xmm8
	ja	.L482
	comisd	%xmm6, %xmm7
	jbe	.L490
	jmp	.L604
	.p2align 4,,10
	.p2align 3
.L479:
	comisd	%xmm7, %xmm8
	movl	$1, %edx
	jnb	.L395
	comisd	%xmm12, %xmm11
	movl	$4, %edx
	jnb	.L395
	subsd	%xmm1, %xmm8
	subsd	%xmm12, %xmm2
	movl	$1, %edx
	comisd	%xmm2, %xmm8
	ja	.L395
	comisd	%xmm8, %xmm2
	movl	$4, %edx
	movl	$16, %eax
	cmovbe	%eax, %edx
	jmp	.L395
	.p2align 4,,10
	.p2align 3
.L605:
	comisd	%xmm6, %xmm7
	jnb	.L400
	comisd	%xmm6, %xmm10
	jnb	.L610
.L567:
	comisd	%xmm7, %xmm8
	jnb	.L416
	comisd	%xmm6, %xmm7
	jb	.L421
.L420:
	comisd	%xmm7, %xmm8
	jnb	.L436
.L445:
	comisd	%xmm7, %xmm6
	jnb	.L421
	comisd	%xmm6, %xmm10
	jb	.L396
.L443:
	comisd	%xmm10, %xmm8
	jb	.L396
.L434:
	xorl	%edx, %edx
	comisd	%xmm12, %xmm13
	jnb	.L395
	jmp	.L396
	.p2align 4,,10
	.p2align 3
.L609:
	comisd	%xmm10, %xmm8
	jbe	.L474
	comisd	%xmm11, %xmm9
	movl	$1, %edx
	ja	.L395
	jmp	.L476
	.p2align 4,,10
	.p2align 3
.L574:
	comisd	%xmm6, %xmm7
	jb	.L445
	jmp	.L420
	.p2align 4,,10
	.p2align 3
.L606:
	comisd	%xmm10, %xmm8
	jnb	.L404
	comisd	%xmm7, %xmm8
	jb	.L445
	.p2align 4,,10
	.p2align 3
.L406:
	comisd	%xmm13, %xmm9
	jb	.L575
.L506:
	xorl	%edx, %edx
	comisd	%xmm9, %xmm11
	jnb	.L395
	comisd	%xmm6, %xmm7
	jb	.L443
.L436:
	xorl	%edx, %edx
.L602:
	comisd	%xmm12, %xmm13
	jnb	.L395
	jmp	.L445
	.p2align 4,,10
	.p2align 3
.L583:
	comisd	%xmm10, %xmm8
	jbe	.L474
	comisd	%xmm11, %xmm9
	ja	.L482
.L486:
	comisd	%xmm12, %xmm13
	jbe	.L584
.L502:
	comisd	%xmm6, %xmm10
	movl	$2, %edx
	jnb	.L395
	comisd	%xmm13, %xmm9
	movl	$8, %edx
	jnb	.L395
	subsd	%xmm6, %xmm3
	subsd	%xmm14, %xmm9
	movl	$2, %edx
	comisd	%xmm9, %xmm3
	ja	.L395
	comisd	%xmm3, %xmm9
	movl	$8, %edx
	movl	$128, %eax
	cmovbe	%eax, %edx
	jmp	.L395
	.p2align 4,,10
	.p2align 3
.L415:
	comisd	%xmm6, %xmm10
	jb	.L567
.L409:
	xorl	%edx, %edx
	comisd	%xmm13, %xmm12
	jnb	.L395
	jmp	.L410
	.p2align 4,,10
	.p2align 3
.L474:
	comisd	%xmm6, %xmm7
	jbe	.L490
.L480:
	comisd	%xmm12, %xmm13
	jbe	.L490
	jmp	.L489
	.p2align 4,,10
	.p2align 3
.L610:
	xorl	%edx, %edx
	comisd	%xmm13, %xmm12
	jnb	.L395
	.p2align 4,,10
	.p2align 3
.L404:
	comisd	%xmm12, %xmm11
	jb	.L416
.L507:
	xorl	%edx, %edx
	comisd	%xmm11, %xmm9
	jnb	.L395
	ucomisd	%xmm8, %xmm10
	jp	.L553
	je	.L428
.L553:
	xorl	%edx, %edx
	comisd	%xmm6, %xmm7
	jnb	.L602
	comisd	%xmm13, %xmm9
	jb	.L396
	jmp	.L395
	.p2align 4,,10
	.p2align 3
.L400:
	comisd	%xmm12, %xmm11
	jb	.L569
	xorl	%edx, %edx
	comisd	%xmm11, %xmm9
	jnb	.L395
.L569:
	comisd	%xmm7, %xmm6
	jnb	.L415
	comisd	%xmm6, %xmm10
	jb	.L416
	jmp	.L410
	.p2align 4,,10
	.p2align 3
.L575:
	comisd	%xmm6, %xmm7
	jb	.L431
	ucomisd	%xmm6, %xmm7
	jp	.L443
	jne	.L443
	jmp	.L431
.L611:
	xorl	%edx, %edx
.L596:
	comisd	%xmm13, %xmm12
	jnb	.L395
	comisd	%xmm10, %xmm8
	jnb	.L404
	jmp	.L406
	.p2align 4,,10
	.p2align 3
.L608:
	comisd	%xmm11, %xmm9
	ja	.L479
	comisd	%xmm10, %xmm8
	ja	.L484
	jmp	.L480
.L568:
	ucomisd	%xmm6, %xmm7
	jp	.L411
	je	.L611
.L411:
	ucomisd	%xmm8, %xmm10
	jp	.L501
	jne	.L501
	comisd	%xmm12, %xmm11
	jnb	.L507
	jmp	.L406
.L428:
	comisd	%xmm13, %xmm9
	jnb	.L395
	comisd	%xmm6, %xmm7
	jb	.L431
	ucomisd	%xmm6, %xmm7
	jp	.L434
	jne	.L434
	jmp	.L431
.L532:
	movl	$1, %edx
	jmp	.L395
.L501:
	comisd	%xmm13, %xmm9
	jnb	.L506
	jmp	.L396
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	.def	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_:
.LFB8443:
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
	je	.L612
	movzwl	282(%rbx), %ecx
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	movsd	216(%rbx), %xmm1
	pxor	%xmm5, %xmm5
	pxor	%xmm4, %xmm4
	pxor	%xmm3, %xmm3
	movsd	224(%rbx), %xmm9
	movl	%ecx, %edx
	movapd	%xmm1, %xmm10
	movsd	216(%r11), %xmm7
	shrw	%dx
	cvtsi2sdl	%ecx, %xmm5
	movzwl	282(%r11), %ecx
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm0
	movzwl	284(%rbx), %edx
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
	movzwl	284(%r11), %edx
	movl	%edx, %r8d
	cvtsi2sdl	%edx, %xmm3
	movq	184(%r11), %rdx
	shrw	%r8w
	subsd	%xmm0, %xmm7
	movzwl	%r8w, %r8d
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%r8d, %xmm0
	addsd	224(%r11), %xmm0
	addsd	%xmm7, %xmm4
	movapd	%xmm0, %xmm12
	subsd	%xmm3, %xmm12
	cmpq	%rsi, %rdx
	jb	.L614
	cmpl	$32, %eax
	ja	.L615
	leaq	.L617(%rip), %rdx
	movl	%eax, %eax
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L617:
	.long	.L642-.L617
	.long	.L622-.L617
	.long	.L621-.L617
	.long	.L642-.L617
	.long	.L620-.L617
	.long	.L642-.L617
	.long	.L642-.L617
	.long	.L642-.L617
	.long	.L619-.L617
	.long	.L642-.L617
	.long	.L642-.L617
	.long	.L642-.L617
	.long	.L642-.L617
	.long	.L642-.L617
	.long	.L642-.L617
	.long	.L642-.L617
	.long	.L618-.L617
	.long	.L642-.L617
	.long	.L642-.L617
	.long	.L642-.L617
	.long	.L642-.L617
	.long	.L642-.L617
	.long	.L642-.L617
	.long	.L642-.L617
	.long	.L642-.L617
	.long	.L642-.L617
	.long	.L642-.L617
	.long	.L642-.L617
	.long	.L642-.L617
	.long	.L642-.L617
	.long	.L642-.L617
	.long	.L642-.L617
	.long	.L616-.L617
	.text
	.p2align 4,,10
	.p2align 3
.L630:
	cmpl	$64, %eax
	je	.L638
	cmpl	$128, %eax
	je	.L639
	.p2align 4,,10
	.p2align 3
.L642:
	xorl	%r9d, %r9d
.L612:
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
.L614:
	testq	%rsi, %rsi
	js	.L626
	pxor	%xmm8, %xmm8
	cvtsi2sdq	%rsi, %xmm8
	addq	%rsi, %rdx
	js	.L628
.L647:
	pxor	%xmm3, %xmm3
	cvtsi2sdq	%rdx, %xmm3
.L629:
	divsd	%xmm3, %xmm8
	movsd	.LC4(%rip), %xmm6
	subsd	%xmm8, %xmm6
	cmpl	$32, %eax
	ja	.L630
	leaq	.L632(%rip), %rdx
	movl	%eax, %eax
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L632:
	.long	.L642-.L632
	.long	.L637-.L632
	.long	.L636-.L632
	.long	.L642-.L632
	.long	.L635-.L632
	.long	.L642-.L632
	.long	.L642-.L632
	.long	.L642-.L632
	.long	.L634-.L632
	.long	.L642-.L632
	.long	.L642-.L632
	.long	.L642-.L632
	.long	.L642-.L632
	.long	.L642-.L632
	.long	.L642-.L632
	.long	.L642-.L632
	.long	.L633-.L632
	.long	.L642-.L632
	.long	.L642-.L632
	.long	.L642-.L632
	.long	.L642-.L632
	.long	.L642-.L632
	.long	.L642-.L632
	.long	.L642-.L632
	.long	.L642-.L632
	.long	.L642-.L632
	.long	.L642-.L632
	.long	.L642-.L632
	.long	.L642-.L632
	.long	.L642-.L632
	.long	.L642-.L632
	.long	.L642-.L632
	.long	.L631-.L632
	.text
	.p2align 4,,10
	.p2align 3
.L626:
	movq	%rsi, %rcx
	movq	%rsi, %r8
	pxor	%xmm8, %xmm8
	shrq	%rcx
	andl	$1, %r8d
	orq	%r8, %rcx
	cvtsi2sdq	%rcx, %xmm8
	addsd	%xmm8, %xmm8
	addq	%rsi, %rdx
	jns	.L647
.L628:
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm3, %xmm3
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm3
	addsd	%xmm3, %xmm3
	jmp	.L629
	.p2align 4,,10
	.p2align 3
.L615:
	cmpl	$64, %eax
	je	.L623
	cmpl	$128, %eax
	jne	.L612
	subsd	%xmm11, %xmm0
	subsd	%xmm7, %xmm5
	movsd	.LC3(%rip), %xmm2
	addsd	%xmm2, %xmm0
	addsd	%xmm2, %xmm5
	addsd	%xmm9, %xmm0
	subsd	%xmm5, %xmm1
	movsd	%xmm0, 224(%rbx)
	movsd	%xmm1, 216(%rbx)
	jmp	.L625
	.p2align 4,,10
	.p2align 3
.L639:
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
	movsd	%xmm2, 224(%rbx)
	movsd	224(%r11), %xmm2
	subsd	%xmm0, %xmm2
	movsd	%xmm2, 224(%r11)
	movsd	%xmm1, 216(%rbx)
	addsd	216(%r11), %xmm8
	movsd	%xmm8, 216(%r11)
	.p2align 4,,10
	.p2align 3
.L625:
	movl	$1, %r9d
	jmp	.L612
.L619:
	subsd	%xmm7, %xmm5
	addsd	.LC3(%rip), %xmm5
	subsd	%xmm5, %xmm1
	movsd	%xmm1, 216(%rbx)
	jmp	.L625
.L618:
	subsd	%xmm10, %xmm4
	subsd	%xmm12, %xmm2
	movsd	.LC3(%rip), %xmm0
	movapd	%xmm4, %xmm3
	addsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm3
	subsd	%xmm2, %xmm9
	addsd	%xmm1, %xmm3
	movsd	%xmm9, 224(%rbx)
	movsd	%xmm3, 216(%rbx)
	jmp	.L625
.L622:
	subsd	%xmm12, %xmm2
	addsd	.LC3(%rip), %xmm2
	subsd	%xmm2, %xmm9
	movsd	%xmm9, 224(%rbx)
	jmp	.L625
.L621:
	subsd	%xmm11, %xmm0
	addsd	.LC3(%rip), %xmm0
	addsd	%xmm9, %xmm0
	movsd	%xmm0, 224(%rbx)
	jmp	.L625
.L620:
	subsd	%xmm10, %xmm4
	movsd	.LC3(%rip), %xmm3
	addsd	%xmm4, %xmm3
	addsd	%xmm1, %xmm3
	movsd	%xmm3, 216(%rbx)
	jmp	.L625
.L616:
	subsd	%xmm12, %xmm2
	subsd	%xmm7, %xmm5
	movsd	.LC3(%rip), %xmm0
	addsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm5
	subsd	%xmm2, %xmm9
	subsd	%xmm5, %xmm1
	movsd	%xmm9, 224(%rbx)
	movsd	%xmm1, 216(%rbx)
	jmp	.L625
.L631:
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
	movsd	%xmm9, 224(%rbx)
	addsd	224(%r11), %xmm2
	movsd	%xmm2, 224(%r11)
.L645:
	subsd	%xmm6, %xmm1
	mulsd	%xmm8, %xmm5
	movsd	%xmm1, 216(%rbx)
	addsd	216(%r11), %xmm5
	movsd	%xmm5, 216(%r11)
	jmp	.L625
.L633:
	subsd	%xmm12, %xmm2
	movapd	%xmm6, %xmm0
	movsd	.LC3(%rip), %xmm5
	mulsd	%xmm2, %xmm0
	mulsd	%xmm8, %xmm2
	addsd	%xmm5, %xmm0
	subsd	%xmm0, %xmm9
	movsd	%xmm9, 224(%rbx)
	addsd	224(%r11), %xmm2
.L644:
	movsd	%xmm2, 224(%r11)
	subsd	%xmm10, %xmm4
	mulsd	%xmm4, %xmm6
	movapd	%xmm4, %xmm3
	addsd	%xmm5, %xmm6
.L646:
	mulsd	%xmm8, %xmm3
	addsd	%xmm1, %xmm6
	movsd	%xmm6, 216(%rbx)
	movsd	216(%r11), %xmm0
	subsd	%xmm3, %xmm0
	movsd	%xmm0, 216(%r11)
	jmp	.L625
.L634:
	subsd	%xmm7, %xmm5
	mulsd	%xmm5, %xmm6
	addsd	.LC3(%rip), %xmm6
	jmp	.L645
.L635:
	subsd	%xmm10, %xmm4
	mulsd	%xmm4, %xmm6
	movapd	%xmm4, %xmm3
	addsd	.LC3(%rip), %xmm6
	jmp	.L646
.L636:
	subsd	%xmm11, %xmm0
	mulsd	%xmm0, %xmm6
	addsd	.LC3(%rip), %xmm6
	mulsd	%xmm8, %xmm0
	addsd	%xmm9, %xmm6
	movsd	%xmm6, 224(%rbx)
	movsd	224(%r11), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 224(%r11)
	jmp	.L625
.L637:
	subsd	%xmm12, %xmm2
	mulsd	%xmm2, %xmm6
	addsd	.LC3(%rip), %xmm6
	mulsd	%xmm8, %xmm2
	subsd	%xmm6, %xmm9
	movsd	%xmm9, 224(%rbx)
	addsd	224(%r11), %xmm2
	movsd	%xmm2, 224(%r11)
	jmp	.L625
	.p2align 4,,10
	.p2align 3
.L638:
	subsd	%xmm11, %xmm0
	movapd	%xmm6, %xmm2
	movsd	.LC3(%rip), %xmm5
	mulsd	%xmm0, %xmm2
	mulsd	%xmm8, %xmm0
	addsd	%xmm5, %xmm2
	addsd	%xmm9, %xmm2
	movsd	%xmm2, 224(%rbx)
	movsd	224(%r11), %xmm2
	subsd	%xmm0, %xmm2
	jmp	.L644
	.p2align 4,,10
	.p2align 3
.L623:
	subsd	%xmm10, %xmm4
	subsd	%xmm11, %xmm0
	movsd	.LC3(%rip), %xmm2
	movapd	%xmm4, %xmm3
	addsd	%xmm2, %xmm0
	addsd	%xmm2, %xmm3
	addsd	%xmm9, %xmm0
	addsd	%xmm1, %xmm3
	movsd	%xmm0, 224(%rbx)
	movsd	%xmm3, 216(%rbx)
	jmp	.L625
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
.LFB8445:
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
	jne	.L649
	movq	$0, 72(%rsp)
	xorl	%r12d, %r12d
.L652:
	movq	168(%rsp), %rax
	movq	(%rax), %r11
	testq	%r11, %r11
	je	.L651
	movq	8(%rax), %r14
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	jmp	.L658
	.p2align 4,,10
	.p2align 3
.L653:
	addq	$1, %r12
	cmpq	%r11, %r12
	jnb	.L688
.L658:
	movq	(%r14,%r12,8), %r8
	leaq	0(,%r12,8), %r13
	cmpq	%rbp, %r8
	je	.L653
	cmpq	%rbx, %r8
	je	.L653
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	call	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	testl	%eax, %eax
	je	.L653
	cmpq	%rsi, 64(%rsp)
	je	.L689
.L654:
	cmpq	%r11, %r12
	jnb	.L690
	movq	(%r14,%r13), %rax
	movq	72(%rsp), %rcx
	leaq	1(%rsi), %rdx
	cmpq	64(%rsp), %rsi
	jnb	.L691
	addq	$1, %r12
	movq	%rax, (%rcx,%rsi,8)
	addq	184(%rax), %r15
	movq	%rdx, %rsi
	cmpq	%r11, %r12
	jb	.L658
	.p2align 4,,10
	.p2align 3
.L688:
	movq	72(%rsp), %r12
	cmpq	184(%rsp), %r15
	jnb	.L659
	testq	%rsi, %rsi
	je	.L651
	movq	64(%rsp), %rax
	xorl	%r13d, %r13d
	movq	%rax, 56(%rsp)
	movq	184(%rsp), %rax
	subq	%r15, %rax
	movq	%rax, %r14
.L666:
	cmpq	%r13, 56(%rsp)
	je	.L692
	movq	(%r12,%r13,8), %r15
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	movq	184(%r15), %r8
	movq	%r15, %r9
	addq	%r14, %r8
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	testb	%al, %al
	jne	.L693
.L665:
	addq	$1, %r13
	cmpq	%r13, %rsi
	jne	.L666
.L651:
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
.L659:
	testq	%rsi, %rsi
	je	.L651
	movq	64(%rsp), %r13
	xorl	%ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L663:
	cmpq	%rbp, %r13
	je	.L694
	movq	(%r12,%rbp,8), %r9
	xorl	%r8d, %r8d
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	addq	$1, %rbp
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	cmpq	%rbp, %rsi
	jne	.L663
	jmp	.L651
	.p2align 4,,10
	.p2align 3
.L693:
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
	jmp	.L665
	.p2align 4,,10
	.p2align 3
.L689:
	movzwl	8(%rdi), %eax
	leaq	64(%rsp), %rcx
	movq	%rsi, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6InsertEyy.isra.0
.LEHE0:
	movq	168(%rsp), %rax
	movq	(%rax), %r11
	movq	8(%rax), %r14
	jmp	.L654
	.p2align 4,,10
	.p2align 3
.L649:
	leaq	0(,%rsi,8), %rcx
	call	malloc
	movq	%rax, 72(%rsp)
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.L652
	leaq	.LC2(%rip), %rcx
	movq	%rsi, %rdx
.LEHB1:
	call	_Z6printfPKcz
.LEHE1:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L694:
	movq	%r13, %rdx
	leaq	.LC5(%rip), %rcx
.LEHB2:
	call	_Z6printfPKcz
.L657:
	movl	$1, %ecx
	call	exit
.L691:
	movq	%rsi, %rdx
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L657
.L690:
	movq	%r12, %rdx
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L657
.L692:
	movq	56(%rsp), %rdx
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
.LEHE2:
	jmp	.L657
.L668:
	movq	%rax, %rbx
	jmp	.L667
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8445:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8445-.LLSDACSB8445
.LLSDACSB8445:
	.uleb128 .LEHB0-.LFB8445
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L668-.LFB8445
	.uleb128 0
	.uleb128 .LEHB1-.LFB8445
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB8445
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L668-.LFB8445
	.uleb128 0
.LLSDACSE8445:
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
.L667:
	movq	72(%rsp), %rcx
	call	free
	movq	%rbx, %rcx
.LEHB3:
	call	_Unwind_Resume
	nop
.LEHE3:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8445:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8445-.LLSDACSBC8445
.LLSDACSBC8445:
	.uleb128 .LEHB3-.LCOLDB6
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSEC8445:
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
.LFB8444:
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
	jne	.L696
	movq	$0, 104(%rsp)
	xorl	%esi, %esi
.L697:
	movq	192(%rsp), %rax
	movq	24(%rax), %r12
	cmpq	16(%rax), %rbx
	jnb	.L750
	salq	$4, %rbx
	addq	%rbx, %r12
	movq	(%r12), %rbp
	testq	%rbp, %rbp
	je	.L699
	leaq	96(%rsp), %rax
	xorl	%ebx, %ebx
	movq	%rax, 88(%rsp)
	.p2align 4,,10
	.p2align 3
.L719:
	movq	8(%r12), %r11
	xorl	%esi, %esi
	xorl	%r14d, %r14d
	xorl	%edi, %edi
	leaq	0(,%rbx,8), %r13
	.p2align 4,,10
	.p2align 3
.L706:
	cmpq	%rsi, %rbx
	je	.L700
	movq	(%r11,%rsi,8), %r8
	leaq	0(,%rsi,8), %r15
	cmpq	%rbp, %rbx
	jnb	.L750
	movq	(%r11,%r13), %rdx
	movq	192(%rsp), %rcx
	call	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	testl	%eax, %eax
	je	.L700
	cmpq	%rdi, 96(%rsp)
	je	.L754
.L703:
	cmpq	%rbp, %rsi
	jnb	.L755
	movq	(%r11,%r15), %rax
	movq	104(%rsp), %rcx
	leaq	1(%rdi), %rdx
	cmpq	96(%rsp), %rdi
	jnb	.L756
	movq	%rax, (%rcx,%rdi,8)
	addq	184(%rax), %r14
	movq	%rdx, %rdi
.L700:
	addq	$1, %rsi
	cmpq	%rbp, %rsi
	jb	.L706
	cmpq	%rbp, %rbx
	jnb	.L750
	movq	(%r11,%r13), %r15
	cmpq	176(%r15), %r14
	jnb	.L708
	testq	%rdi, %rdi
	je	.L713
	movq	96(%rsp), %rax
	xorl	%esi, %esi
	movq	%rax, 80(%rsp)
	movq	104(%rsp), %rax
	movq	%rax, 72(%rsp)
	jmp	.L718
	.p2align 4,,10
	.p2align 3
.L716:
	addq	$1, %rsi
	cmpq	%rsi, %rdi
	je	.L713
.L718:
	cmpq	%rsi, 80(%rsp)
	je	.L757
	movq	72(%rsp), %rax
	movq	8(%r12), %rdx
	movq	(%rax,%rsi,8), %r9
	movq	184(%r9), %rax
	cmpq	%rbp, %rbx
	jnb	.L750
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
	je	.L716
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
	jnb	.L750
	movq	(%rax,%r13), %rdx
	movq	192(%rsp), %rcx
	xorl	%r8d, %r8d
	addq	$1, %rsi
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	cmpq	%rsi, %rdi
	jne	.L718
.L713:
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	jb	.L719
.L759:
	movq	104(%rsp), %rsi
.L699:
	movq	208(%rsp), %rax
	movq	208(%rsp), %rdi
	movupd	216(%rax), %xmm3
	movq	%rdi, %rcx
	movups	%xmm3, 232(%rax)
	movl	282(%rax), %eax
	movaps	%xmm3, 48(%rsp)
	movl	%eax, 286(%rdi)
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv
	movq	(%r12), %rdx
	xorl	%ebx, %ebx
	testq	%rdx, %rdx
	je	.L725
	.p2align 4,,10
	.p2align 3
.L720:
	movq	8(%r12), %rax
	movq	(%rax,%rbx,8), %rcx
	cmpq	208(%rsp), %rcx
	je	.L721
	movupd	216(%rcx), %xmm0
	ucomisd	232(%rcx), %xmm0
	jp	.L722
	jne	.L722
	movapd	%xmm0, %xmm2
	unpckhpd	%xmm2, %xmm2
	ucomisd	240(%rcx), %xmm2
	jp	.L722
	je	.L721
.L722:
	movups	%xmm0, 232(%rcx)
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv
	movq	(%r12), %rdx
.L721:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L720
.L725:
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
.L754:
	movq	192(%rsp), %rax
	movq	88(%rsp), %rcx
	movq	%rdi, %rdx
	movzwl	8(%rax), %eax
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6InsertEyy.isra.0
	movq	(%r12), %rbp
	movq	8(%r12), %r11
	jmp	.L703
	.p2align 4,,10
	.p2align 3
.L708:
	testq	%rdi, %rdi
	je	.L713
	xorl	%r13d, %r13d
	movq	%rbx, 48(%rsp)
	movq	96(%rsp), %r14
	movq	%r13, %rbx
	movq	104(%rsp), %rsi
	movq	192(%rsp), %r13
	.p2align 4,,10
	.p2align 3
.L712:
	cmpq	%rbx, %r14
	je	.L758
	movq	(%rsi,%rbx,8), %r9
	xorl	%r8d, %r8d
	movq	%r15, %rdx
	movq	%r13, %rcx
	addq	$1, %rbx
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	cmpq	%rbx, %rdi
	jne	.L712
	movq	48(%rsp), %rbx
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	jb	.L719
	jmp	.L759
.L750:
	movq	%rbx, %rdx
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
.LEHE4:
.L702:
	movl	$1, %ecx
	call	exit
.L696:
	leaq	0(,%rdi,8), %rcx
	call	malloc
	movq	%rax, 104(%rsp)
	movq	%rax, %rsi
	testq	%rax, %rax
	jne	.L697
	leaq	.LC2(%rip), %rcx
	movq	%rdi, %rdx
.LEHB5:
	call	_Z6printfPKcz
.LEHE5:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L758:
	movq	%r14, %rdx
	leaq	.LC5(%rip), %rcx
.LEHB6:
	call	_Z6printfPKcz
	jmp	.L702
.L757:
	movq	80(%rsp), %rdx
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L702
.L756:
	movq	%rdi, %rdx
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L702
.L755:
	movq	%rsi, %rdx
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
.LEHE6:
	jmp	.L702
.L728:
	movq	%rax, %rbx
	jmp	.L726
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8444:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8444-.LLSDACSB8444
.LLSDACSB8444:
	.uleb128 .LEHB4-.LFB8444
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L728-.LFB8444
	.uleb128 0
	.uleb128 .LEHB5-.LFB8444
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB8444
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L728-.LFB8444
	.uleb128 0
.LLSDACSE8444:
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
.L726:
	movq	104(%rsp), %rcx
	call	free
	movq	%rbx, %rcx
.LEHB7:
	call	_Unwind_Resume
	nop
.LEHE7:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8444:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8444-.LLSDACSBC8444
.LLSDACSBC8444:
	.uleb128 .LEHB7-.LCOLDB7
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSEC8444:
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
