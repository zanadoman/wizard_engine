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
.LFB8625:
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
.LFB8433:
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
.LFB8435:
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
.LFB8436:
	.seh_endprologue
	movzbl	%dl, %edx
	shrw	$3, %dx
	leal	0(,%rdx,8), %eax
	movw	%dx, 8(%rcx)
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision14CheckCollisionEdddddddd
	.def	_ZN3wze6engine9collision14CheckCollisionEdddddddd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collision14CheckCollisionEdddddddd
_ZN3wze6engine9collision14CheckCollisionEdddddddd:
.LFB8437:
	.seh_endprologue
	xorl	%eax, %eax
	movsd	48(%rsp), %xmm0
	movsd	64(%rsp), %xmm4
	comisd	%xmm3, %xmm0
	ja	.L36
	comisd	%xmm4, %xmm1
	ja	.L36
	movsd	72(%rsp), %xmm5
	comisd	%xmm2, %xmm5
	ja	.L36
	movsd	40(%rsp), %xmm5
	comisd	56(%rsp), %xmm5
	ja	.L36
	comisd	%xmm1, %xmm4
	jb	.L38
	comisd	%xmm4, %xmm3
	jb	.L160
	movsd	72(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jb	.L142
	comisd	%xmm5, %xmm2
	movl	$1, %eax
	jnb	.L36
	comisd	%xmm0, %xmm1
	jnb	.L47
	comisd	%xmm1, %xmm0
	jnb	.L48
.L49:
	comisd	%xmm0, %xmm3
	jnb	.L161
	movsd	56(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jnb	.L86
	comisd	%xmm0, %xmm1
	jnb	.L79
	xorl	%eax, %eax
	comisd	%xmm1, %xmm0
	jb	.L70
.L36:
	ret
	.p2align 4,,10
	.p2align 3
.L55:
	movsd	56(%rsp), %xmm5
	movl	$1, %eax
	comisd	%xmm2, %xmm5
	jnb	.L36
	.p2align 4,,10
	.p2align 3
.L38:
	comisd	%xmm1, %xmm0
	jnb	.L42
.L53:
	comisd	%xmm0, %xmm3
	jb	.L44
.L56:
	comisd	%xmm3, %xmm4
	jnb	.L43
	comisd	%xmm1, %xmm4
	jb	.L77
	jmp	.L61
	.p2align 4,,10
	.p2align 3
.L42:
	comisd	%xmm0, %xmm3
	jnb	.L50
	comisd	%xmm1, %xmm4
	jnb	.L57
.L157:
	comisd	%xmm0, %xmm1
	jb	.L63
.L62:
	comisd	%xmm1, %xmm4
	jb	.L92
	.p2align 4,,10
	.p2align 3
.L79:
	movsd	40(%rsp), %xmm5
	comisd	72(%rsp), %xmm5
	jb	.L92
.L105:
	movsd	56(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jb	.L92
.L132:
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L160:
	comisd	%xmm0, %xmm1
	jnb	.L41
	comisd	%xmm1, %xmm0
	jnb	.L42
	comisd	%xmm0, %xmm3
	jnb	.L43
	.p2align 4,,10
	.p2align 3
.L44:
	comisd	%xmm1, %xmm4
	jnb	.L57
.L77:
	comisd	%xmm0, %xmm1
	jnb	.L62
.L92:
	comisd	%xmm1, %xmm0
	jnb	.L63
.L70:
	comisd	%xmm0, %xmm3
	jb	.L153
.L72:
	comisd	%xmm3, %xmm4
	jnb	.L80
.L153:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L142:
	comisd	%xmm0, %xmm1
	jnb	.L47
	comisd	%xmm1, %xmm0
	jb	.L49
	.p2align 4,,10
	.p2align 3
.L50:
	movsd	72(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jnb	.L48
	comisd	%xmm3, %xmm4
	jnb	.L43
	comisd	%xmm1, %xmm4
	jb	.L157
.L61:
	movsd	56(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jb	.L75
.L86:
	comisd	56(%rsp), %xmm2
	movl	$1, %eax
	jnb	.L36
	comisd	%xmm0, %xmm1
	jb	.L162
.L83:
	movsd	40(%rsp), %xmm5
	comisd	72(%rsp), %xmm5
	movl	$1, %eax
	jb	.L92
	ret
	.p2align 4,,10
	.p2align 3
.L41:
	comisd	72(%rsp), %xmm2
	jnb	.L55
	comisd	%xmm1, %xmm0
	jnb	.L42
	comisd	%xmm0, %xmm3
	jnb	.L56
	.p2align 4,,10
	.p2align 3
.L57:
	comisd	%xmm4, %xmm3
	jnb	.L61
.L73:
	comisd	%xmm0, %xmm1
	jnb	.L79
	comisd	%xmm1, %xmm0
	jnb	.L63
	comisd	%xmm0, %xmm3
	jb	.L153
	.p2align 4,,10
	.p2align 3
.L80:
	movsd	40(%rsp), %xmm5
	comisd	72(%rsp), %xmm5
	jb	.L153
	movsd	56(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	setnb	%al
	ret
	.p2align 4,,10
	.p2align 3
.L43:
	comisd	72(%rsp), %xmm2
	jb	.L147
.L108:
	movsd	56(%rsp), %xmm5
	movl	$1, %eax
	comisd	%xmm2, %xmm5
	jnb	.L36
	comisd	%xmm1, %xmm4
	jnb	.L69
	comisd	%xmm1, %xmm0
	jb	.L70
	comisd	40(%rsp), %xmm5
	jb	.L72
	ret
.L149:
	comisd	%xmm0, %xmm1
	jnb	.L79
	.p2align 4,,10
	.p2align 3
.L63:
	comisd	%xmm0, %xmm3
	jb	.L153
.L89:
	movsd	56(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jb	.L72
.L84:
	comisd	56(%rsp), %xmm2
	movl	$1, %eax
	jb	.L72
	ret
	.p2align 4,,10
	.p2align 3
.L48:
	comisd	72(%rsp), %xmm2
	movl	$1, %eax
	jb	.L56
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L147:
	comisd	%xmm1, %xmm4
	jnb	.L57
	comisd	%xmm1, %xmm0
	jnb	.L89
	jmp	.L70
	.p2align 4,,10
	.p2align 3
.L47:
	comisd	72(%rsp), %xmm2
	jb	.L143
	movsd	56(%rsp), %xmm5
	movl	$1, %eax
	comisd	%xmm2, %xmm5
	jnb	.L36
	comisd	%xmm1, %xmm0
	jnb	.L50
	jmp	.L53
.L69:
	ucomisd	%xmm4, %xmm3
	jp	.L73
	jne	.L73
	comisd	40(%rsp), %xmm5
	jnb	.L36
	.p2align 4,,10
	.p2align 3
.L75:
	comisd	%xmm0, %xmm1
	jb	.L92
	jmp	.L79
.L143:
	comisd	%xmm1, %xmm0
	jnb	.L50
	ucomisd	%xmm4, %xmm3
	jp	.L141
	je	.L102
.L141:
	movsd	56(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jnb	.L104
	movsd	40(%rsp), %xmm5
	comisd	72(%rsp), %xmm5
	jnb	.L105
	jmp	.L70
	.p2align 4,,10
	.p2align 3
.L162:
	comisd	%xmm1, %xmm0
	jb	.L70
	jmp	.L84
.L161:
	comisd	%xmm3, %xmm4
	jnb	.L43
	movsd	56(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jb	.L149
	comisd	%xmm5, %xmm2
	jnb	.L132
	comisd	%xmm0, %xmm1
	jnb	.L83
	jmp	.L84
.L102:
	comisd	72(%rsp), %xmm2
	jnb	.L108
	movsd	56(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jb	.L79
	comisd	%xmm5, %xmm2
	jb	.L83
	jmp	.L132
.L104:
	comisd	56(%rsp), %xmm2
	jb	.L83
	jmp	.L132
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	.def	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_:
.LFB8438:
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
	movsd	208(%r8), %xmm6
	movq	%rcx, %r10
	movzwl	278(%rdx), %ecx
	movq	%rdx, %rax
	movsd	224(%rax), %xmm7
	movl	%ecx, %edx
	cvtsi2sdl	%ecx, %xmm10
	movzwl	274(%r8), %ecx
	shrw	%dx
	movzwl	%dx, %edx
	cvtsi2sdl	%ecx, %xmm8
	cvtsi2sdl	%edx, %xmm0
	movzwl	280(%rax), %edx
	movl	%edx, %r9d
	shrw	%r9w
	subsd	%xmm0, %xmm7
	movzwl	%r9w, %r9d
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	movl	%ecx, %edx
	cvtsi2sdl	%r9d, %xmm11
	shrw	%dx
	addsd	232(%rax), %xmm11
	movzwl	%dx, %edx
	addsd	%xmm7, %xmm10
	movapd	%xmm11, %xmm13
	subsd	%xmm0, %xmm13
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	movzwl	276(%r8), %edx
	movl	%edx, %r9d
	shrw	%r9w
	subsd	%xmm0, %xmm6
	movzwl	%r9w, %r9d
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%r9d, %xmm9
	addsd	216(%r8), %xmm9
	cvtsi2sdl	%edx, %xmm0
	comisd	%xmm10, %xmm6
	addsd	%xmm6, %xmm8
	movapd	%xmm9, %xmm12
	subsd	%xmm0, %xmm12
	ja	.L164
	comisd	%xmm8, %xmm7
	ja	.L164
	comisd	%xmm11, %xmm12
	ja	.L164
	comisd	%xmm9, %xmm13
	ja	.L164
	comisd	%xmm7, %xmm8
	jb	.L334
	comisd	%xmm8, %xmm10
	jb	.L373
	xorl	%edx, %edx
	comisd	%xmm13, %xmm12
	jnb	.L163
	comisd	%xmm6, %xmm7
	jb	.L364
	comisd	%xmm12, %xmm11
	jb	.L336
	comisd	%xmm11, %xmm9
	jnb	.L163
	comisd	%xmm7, %xmm6
	jnb	.L177
	.p2align 4,,10
	.p2align 3
.L178:
	comisd	%xmm10, %xmm8
	jnb	.L172
	comisd	%xmm7, %xmm8
	jnb	.L174
	comisd	%xmm6, %xmm7
	jnb	.L188
.L199:
	comisd	%xmm13, %xmm9
	jb	.L164
	xorl	%edx, %edx
	comisd	%xmm9, %xmm11
	jb	.L211
.L163:
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
.L334:
	comisd	%xmm7, %xmm6
	jnb	.L183
	comisd	%xmm6, %xmm10
	jnb	.L374
	comisd	%xmm7, %xmm8
	jb	.L342
.L184:
	comisd	%xmm8, %xmm10
	jnb	.L174
	comisd	%xmm6, %xmm7
	jnb	.L204
.L189:
	comisd	%xmm6, %xmm10
	jnb	.L199
	.p2align 4,,10
	.p2align 3
.L164:
	movzwl	274(%rax), %ecx
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	pxor	%xmm3, %xmm3
	movsd	208(%rax), %xmm1
	movl	%ecx, %edx
	cvtsi2sdl	%ecx, %xmm3
	movq	%r10, %rcx
	shrw	%dx
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm0
	movzwl	276(%rax), %edx
	movl	%edx, %r8d
	shrw	%r8w
	subsd	%xmm0, %xmm1
	movzwl	%r8w, %r8d
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	xorl	%edx, %edx
	cvtsi2sdl	%r8d, %xmm2
	addsd	216(%rax), %xmm2
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
	je	.L163
	comisd	%xmm6, %xmm7
	jb	.L344
	comisd	%xmm10, %xmm8
	jnb	.L223
	ucomisd	%xmm6, %xmm7
	jp	.L326
	je	.L224
.L326:
	comisd	%xmm12, %xmm13
	jb	.L375
	.p2align 4,,10
	.p2align 3
.L226:
	comisd	%xmm11, %xmm9
	jnb	.L235
	comisd	%xmm13, %xmm12
	jnb	.L235
	comisd	%xmm6, %xmm7
	ja	.L257
	comisd	%xmm10, %xmm8
	ja	.L270
	comisd	%xmm6, %xmm7
	ja	.L257
	.p2align 4,,10
	.p2align 3
.L258:
	comisd	%xmm10, %xmm8
	ja	.L254
.L352:
	xorl	%edx, %edx
	jmp	.L163
	.p2align 4,,10
	.p2align 3
.L344:
	comisd	%xmm7, %xmm6
	jb	.L229
.L224:
	comisd	%xmm8, %xmm10
	jnb	.L223
	comisd	%xmm12, %xmm13
	jnb	.L226
	comisd	%xmm13, %xmm12
	jnb	.L231
	comisd	%xmm10, %xmm8
	jbe	.L242
.L252:
	comisd	%xmm11, %xmm9
	jbe	.L244
.L250:
	comisd	%xmm6, %xmm10
	jnb	.L300
	comisd	%xmm12, %xmm11
	movl	$8, %edx
	jnb	.L163
	subsd	%xmm6, %xmm3
	subsd	%xmm12, %xmm2
	movl	$1, %edx
	comisd	%xmm2, %xmm3
	ja	.L163
	comisd	%xmm3, %xmm2
	movl	$8, %edx
	movl	$32, %eax
	cmovbe	%eax, %edx
	jmp	.L163
	.p2align 4,,10
	.p2align 3
.L223:
	comisd	%xmm11, %xmm12
	movl	$1, %edx
	ja	.L163
	comisd	%xmm9, %xmm13
	movl	$2, %edx
	ja	.L163
.L229:
	comisd	%xmm12, %xmm13
	jnb	.L226
	comisd	%xmm13, %xmm12
	jnb	.L231
	comisd	%xmm6, %xmm7
	jbe	.L351
	comisd	%xmm11, %xmm9
	ja	.L247
	comisd	%xmm10, %xmm8
	jbe	.L248
	comisd	%xmm11, %xmm9
	ja	.L250
	jmp	.L372
	.p2align 4,,10
	.p2align 3
.L375:
	comisd	%xmm13, %xmm12
	jb	.L376
	comisd	%xmm9, %xmm11
	jb	.L247
	.p2align 4,,10
	.p2align 3
.L235:
	comisd	%xmm8, %xmm7
	movl	$4, %edx
	ja	.L163
	comisd	%xmm10, %xmm6
	movl	$8, %edx
	ja	.L163
	comisd	%xmm6, %xmm7
	jbe	.L377
	comisd	%xmm11, %xmm9
	ja	.L247
	comisd	%xmm10, %xmm8
	jbe	.L248
.L244:
	comisd	%xmm6, %xmm7
	jbe	.L254
.L372:
	comisd	%xmm12, %xmm13
	jbe	.L352
	.p2align 4,,10
	.p2align 3
.L257:
	comisd	%xmm7, %xmm8
	movl	$2, %edx
	jnb	.L163
	comisd	%xmm13, %xmm9
	movl	$4, %edx
	jnb	.L163
	subsd	%xmm1, %xmm8
	subsd	%xmm14, %xmm9
	movl	$2, %edx
	comisd	%xmm9, %xmm8
	ja	.L163
	comisd	%xmm8, %xmm9
	movl	$4, %edx
	movl	$64, %eax
	cmovbe	%eax, %edx
	jmp	.L163
	.p2align 4,,10
	.p2align 3
.L231:
	comisd	%xmm9, %xmm11
	jnb	.L235
	comisd	%xmm6, %xmm7
	ja	.L247
	comisd	%xmm10, %xmm8
	ja	.L250
	comisd	%xmm6, %xmm7
	jbe	.L258
	jmp	.L372
	.p2align 4,,10
	.p2align 3
.L247:
	comisd	%xmm7, %xmm8
	movl	$1, %edx
	jnb	.L163
	comisd	%xmm12, %xmm11
	movl	$4, %edx
	jnb	.L163
	subsd	%xmm1, %xmm8
	subsd	%xmm12, %xmm2
	movl	$1, %edx
	comisd	%xmm2, %xmm8
	ja	.L163
	comisd	%xmm8, %xmm2
	movl	$4, %edx
	movl	$16, %eax
	cmovbe	%eax, %edx
	jmp	.L163
	.p2align 4,,10
	.p2align 3
.L373:
	comisd	%xmm6, %xmm7
	jnb	.L168
	comisd	%xmm6, %xmm10
	jnb	.L378
.L335:
	comisd	%xmm7, %xmm8
	jnb	.L184
	comisd	%xmm6, %xmm7
	jb	.L189
.L188:
	comisd	%xmm7, %xmm8
	jnb	.L204
.L213:
	comisd	%xmm7, %xmm6
	jnb	.L189
	comisd	%xmm6, %xmm10
	jb	.L164
.L211:
	comisd	%xmm10, %xmm8
	jb	.L164
.L202:
	xorl	%edx, %edx
	comisd	%xmm12, %xmm13
	jnb	.L163
	jmp	.L164
	.p2align 4,,10
	.p2align 3
.L377:
	comisd	%xmm10, %xmm8
	jbe	.L242
	comisd	%xmm11, %xmm9
	movl	$1, %edx
	ja	.L163
	jmp	.L244
	.p2align 4,,10
	.p2align 3
.L342:
	comisd	%xmm6, %xmm7
	jb	.L213
	jmp	.L188
	.p2align 4,,10
	.p2align 3
.L374:
	comisd	%xmm10, %xmm8
	jnb	.L172
	comisd	%xmm7, %xmm8
	jb	.L213
	.p2align 4,,10
	.p2align 3
.L174:
	comisd	%xmm13, %xmm9
	jb	.L343
.L274:
	xorl	%edx, %edx
	comisd	%xmm9, %xmm11
	jnb	.L163
	comisd	%xmm6, %xmm7
	jb	.L211
.L204:
	xorl	%edx, %edx
.L370:
	comisd	%xmm12, %xmm13
	jnb	.L163
	jmp	.L213
	.p2align 4,,10
	.p2align 3
.L351:
	comisd	%xmm10, %xmm8
	jbe	.L242
	comisd	%xmm11, %xmm9
	ja	.L250
.L254:
	comisd	%xmm12, %xmm13
	jbe	.L352
.L270:
	comisd	%xmm6, %xmm10
	movl	$2, %edx
	jnb	.L163
	comisd	%xmm13, %xmm9
	movl	$8, %edx
	jnb	.L163
	subsd	%xmm6, %xmm3
	subsd	%xmm14, %xmm9
	movl	$2, %edx
	comisd	%xmm9, %xmm3
	ja	.L163
	comisd	%xmm3, %xmm9
	movl	$8, %edx
	movl	$128, %eax
	cmovbe	%eax, %edx
	jmp	.L163
	.p2align 4,,10
	.p2align 3
.L183:
	comisd	%xmm6, %xmm10
	jb	.L335
.L177:
	xorl	%edx, %edx
	comisd	%xmm13, %xmm12
	jnb	.L163
	jmp	.L178
	.p2align 4,,10
	.p2align 3
.L242:
	comisd	%xmm6, %xmm7
	jbe	.L258
.L248:
	comisd	%xmm12, %xmm13
	jbe	.L258
	jmp	.L257
	.p2align 4,,10
	.p2align 3
.L378:
	xorl	%edx, %edx
	comisd	%xmm13, %xmm12
	jnb	.L163
	.p2align 4,,10
	.p2align 3
.L172:
	comisd	%xmm12, %xmm11
	jb	.L184
.L275:
	xorl	%edx, %edx
	comisd	%xmm11, %xmm9
	jnb	.L163
	ucomisd	%xmm8, %xmm10
	jp	.L321
	je	.L196
.L321:
	xorl	%edx, %edx
	comisd	%xmm6, %xmm7
	jnb	.L370
	comisd	%xmm13, %xmm9
	jb	.L164
	jmp	.L163
	.p2align 4,,10
	.p2align 3
.L168:
	comisd	%xmm12, %xmm11
	jb	.L337
	xorl	%edx, %edx
	comisd	%xmm11, %xmm9
	jnb	.L163
.L337:
	comisd	%xmm7, %xmm6
	jnb	.L183
	comisd	%xmm6, %xmm10
	jb	.L184
	jmp	.L178
	.p2align 4,,10
	.p2align 3
.L343:
	comisd	%xmm6, %xmm7
	jb	.L199
	ucomisd	%xmm6, %xmm7
	jp	.L211
	jne	.L211
	jmp	.L199
.L379:
	xorl	%edx, %edx
.L364:
	comisd	%xmm13, %xmm12
	jnb	.L163
	comisd	%xmm10, %xmm8
	jnb	.L172
	jmp	.L174
	.p2align 4,,10
	.p2align 3
.L376:
	comisd	%xmm11, %xmm9
	ja	.L247
	comisd	%xmm10, %xmm8
	ja	.L252
	jmp	.L248
.L336:
	ucomisd	%xmm6, %xmm7
	jp	.L179
	je	.L379
.L179:
	ucomisd	%xmm8, %xmm10
	jp	.L269
	jne	.L269
	comisd	%xmm12, %xmm11
	jnb	.L275
	jmp	.L174
.L196:
	comisd	%xmm13, %xmm9
	jnb	.L163
	comisd	%xmm6, %xmm7
	jb	.L199
	ucomisd	%xmm6, %xmm7
	jp	.L202
	jne	.L202
	jmp	.L199
.L300:
	movl	$1, %edx
	jmp	.L163
.L269:
	comisd	%xmm13, %xmm9
	jnb	.L274
	jmp	.L164
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	.def	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_:
.LFB8439:
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
	je	.L380
	movzwl	274(%rbx), %ecx
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	movsd	208(%rbx), %xmm1
	pxor	%xmm5, %xmm5
	pxor	%xmm4, %xmm4
	pxor	%xmm3, %xmm3
	movsd	216(%rbx), %xmm9
	movl	%ecx, %edx
	movapd	%xmm1, %xmm10
	movsd	208(%r11), %xmm7
	shrw	%dx
	cvtsi2sdl	%ecx, %xmm5
	movzwl	274(%r11), %ecx
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm0
	movzwl	276(%rbx), %edx
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
	movzwl	276(%r11), %edx
	movl	%edx, %r8d
	cvtsi2sdl	%edx, %xmm3
	movq	184(%r11), %rdx
	shrw	%r8w
	subsd	%xmm0, %xmm7
	movzwl	%r8w, %r8d
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%r8d, %xmm0
	addsd	216(%r11), %xmm0
	addsd	%xmm7, %xmm4
	movapd	%xmm0, %xmm12
	subsd	%xmm3, %xmm12
	cmpq	%rsi, %rdx
	jb	.L382
	cmpl	$32, %eax
	ja	.L383
	leaq	.L385(%rip), %rdx
	movl	%eax, %eax
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L385:
	.long	.L410-.L385
	.long	.L390-.L385
	.long	.L389-.L385
	.long	.L410-.L385
	.long	.L388-.L385
	.long	.L410-.L385
	.long	.L410-.L385
	.long	.L410-.L385
	.long	.L387-.L385
	.long	.L410-.L385
	.long	.L410-.L385
	.long	.L410-.L385
	.long	.L410-.L385
	.long	.L410-.L385
	.long	.L410-.L385
	.long	.L410-.L385
	.long	.L386-.L385
	.long	.L410-.L385
	.long	.L410-.L385
	.long	.L410-.L385
	.long	.L410-.L385
	.long	.L410-.L385
	.long	.L410-.L385
	.long	.L410-.L385
	.long	.L410-.L385
	.long	.L410-.L385
	.long	.L410-.L385
	.long	.L410-.L385
	.long	.L410-.L385
	.long	.L410-.L385
	.long	.L410-.L385
	.long	.L410-.L385
	.long	.L384-.L385
	.text
	.p2align 4,,10
	.p2align 3
.L398:
	cmpl	$64, %eax
	je	.L406
	cmpl	$128, %eax
	je	.L407
	.p2align 4,,10
	.p2align 3
.L410:
	xorl	%r9d, %r9d
.L380:
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
.L382:
	testq	%rsi, %rsi
	js	.L394
	pxor	%xmm8, %xmm8
	cvtsi2sdq	%rsi, %xmm8
	addq	%rsi, %rdx
	js	.L396
.L415:
	pxor	%xmm3, %xmm3
	cvtsi2sdq	%rdx, %xmm3
.L397:
	divsd	%xmm3, %xmm8
	movsd	.LC4(%rip), %xmm6
	subsd	%xmm8, %xmm6
	cmpl	$32, %eax
	ja	.L398
	leaq	.L400(%rip), %rdx
	movl	%eax, %eax
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L400:
	.long	.L410-.L400
	.long	.L405-.L400
	.long	.L404-.L400
	.long	.L410-.L400
	.long	.L403-.L400
	.long	.L410-.L400
	.long	.L410-.L400
	.long	.L410-.L400
	.long	.L402-.L400
	.long	.L410-.L400
	.long	.L410-.L400
	.long	.L410-.L400
	.long	.L410-.L400
	.long	.L410-.L400
	.long	.L410-.L400
	.long	.L410-.L400
	.long	.L401-.L400
	.long	.L410-.L400
	.long	.L410-.L400
	.long	.L410-.L400
	.long	.L410-.L400
	.long	.L410-.L400
	.long	.L410-.L400
	.long	.L410-.L400
	.long	.L410-.L400
	.long	.L410-.L400
	.long	.L410-.L400
	.long	.L410-.L400
	.long	.L410-.L400
	.long	.L410-.L400
	.long	.L410-.L400
	.long	.L410-.L400
	.long	.L399-.L400
	.text
	.p2align 4,,10
	.p2align 3
.L394:
	movq	%rsi, %rcx
	movq	%rsi, %r8
	pxor	%xmm8, %xmm8
	shrq	%rcx
	andl	$1, %r8d
	orq	%r8, %rcx
	cvtsi2sdq	%rcx, %xmm8
	addsd	%xmm8, %xmm8
	addq	%rsi, %rdx
	jns	.L415
.L396:
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm3, %xmm3
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm3
	addsd	%xmm3, %xmm3
	jmp	.L397
	.p2align 4,,10
	.p2align 3
.L383:
	cmpl	$64, %eax
	je	.L391
	cmpl	$128, %eax
	jne	.L380
	subsd	%xmm11, %xmm0
	subsd	%xmm7, %xmm5
	movsd	.LC3(%rip), %xmm2
	addsd	%xmm2, %xmm0
	addsd	%xmm2, %xmm5
	addsd	%xmm9, %xmm0
	subsd	%xmm5, %xmm1
	movsd	%xmm0, 216(%rbx)
	movsd	%xmm1, 208(%rbx)
	jmp	.L393
	.p2align 4,,10
	.p2align 3
.L407:
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
	movsd	%xmm2, 216(%rbx)
	movsd	216(%r11), %xmm2
	subsd	%xmm0, %xmm2
	movsd	%xmm2, 216(%r11)
	movsd	%xmm1, 208(%rbx)
	addsd	208(%r11), %xmm8
	movsd	%xmm8, 208(%r11)
	.p2align 4,,10
	.p2align 3
.L393:
	movl	$1, %r9d
	jmp	.L380
.L387:
	subsd	%xmm7, %xmm5
	addsd	.LC3(%rip), %xmm5
	subsd	%xmm5, %xmm1
	movsd	%xmm1, 208(%rbx)
	jmp	.L393
.L386:
	subsd	%xmm10, %xmm4
	subsd	%xmm12, %xmm2
	movsd	.LC3(%rip), %xmm0
	movapd	%xmm4, %xmm3
	addsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm3
	subsd	%xmm2, %xmm9
	addsd	%xmm1, %xmm3
	movsd	%xmm9, 216(%rbx)
	movsd	%xmm3, 208(%rbx)
	jmp	.L393
.L390:
	subsd	%xmm12, %xmm2
	addsd	.LC3(%rip), %xmm2
	subsd	%xmm2, %xmm9
	movsd	%xmm9, 216(%rbx)
	jmp	.L393
.L389:
	subsd	%xmm11, %xmm0
	addsd	.LC3(%rip), %xmm0
	addsd	%xmm9, %xmm0
	movsd	%xmm0, 216(%rbx)
	jmp	.L393
.L388:
	subsd	%xmm10, %xmm4
	movsd	.LC3(%rip), %xmm3
	addsd	%xmm4, %xmm3
	addsd	%xmm1, %xmm3
	movsd	%xmm3, 208(%rbx)
	jmp	.L393
.L384:
	subsd	%xmm12, %xmm2
	subsd	%xmm7, %xmm5
	movsd	.LC3(%rip), %xmm0
	addsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm5
	subsd	%xmm2, %xmm9
	subsd	%xmm5, %xmm1
	movsd	%xmm9, 216(%rbx)
	movsd	%xmm1, 208(%rbx)
	jmp	.L393
.L399:
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
	movsd	%xmm9, 216(%rbx)
	addsd	216(%r11), %xmm2
	movsd	%xmm2, 216(%r11)
.L413:
	subsd	%xmm6, %xmm1
	mulsd	%xmm8, %xmm5
	movsd	%xmm1, 208(%rbx)
	addsd	208(%r11), %xmm5
	movsd	%xmm5, 208(%r11)
	jmp	.L393
.L401:
	subsd	%xmm12, %xmm2
	movapd	%xmm6, %xmm0
	movsd	.LC3(%rip), %xmm5
	mulsd	%xmm2, %xmm0
	mulsd	%xmm8, %xmm2
	addsd	%xmm5, %xmm0
	subsd	%xmm0, %xmm9
	movsd	%xmm9, 216(%rbx)
	addsd	216(%r11), %xmm2
.L412:
	movsd	%xmm2, 216(%r11)
	subsd	%xmm10, %xmm4
	mulsd	%xmm4, %xmm6
	movapd	%xmm4, %xmm3
	addsd	%xmm5, %xmm6
.L414:
	mulsd	%xmm8, %xmm3
	addsd	%xmm1, %xmm6
	movsd	%xmm6, 208(%rbx)
	movsd	208(%r11), %xmm0
	subsd	%xmm3, %xmm0
	movsd	%xmm0, 208(%r11)
	jmp	.L393
.L402:
	subsd	%xmm7, %xmm5
	mulsd	%xmm5, %xmm6
	addsd	.LC3(%rip), %xmm6
	jmp	.L413
.L403:
	subsd	%xmm10, %xmm4
	mulsd	%xmm4, %xmm6
	movapd	%xmm4, %xmm3
	addsd	.LC3(%rip), %xmm6
	jmp	.L414
.L404:
	subsd	%xmm11, %xmm0
	mulsd	%xmm0, %xmm6
	addsd	.LC3(%rip), %xmm6
	mulsd	%xmm8, %xmm0
	addsd	%xmm9, %xmm6
	movsd	%xmm6, 216(%rbx)
	movsd	216(%r11), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 216(%r11)
	jmp	.L393
.L405:
	subsd	%xmm12, %xmm2
	mulsd	%xmm2, %xmm6
	addsd	.LC3(%rip), %xmm6
	mulsd	%xmm8, %xmm2
	subsd	%xmm6, %xmm9
	movsd	%xmm9, 216(%rbx)
	addsd	216(%r11), %xmm2
	movsd	%xmm2, 216(%r11)
	jmp	.L393
	.p2align 4,,10
	.p2align 3
.L406:
	subsd	%xmm11, %xmm0
	movapd	%xmm6, %xmm2
	movsd	.LC3(%rip), %xmm5
	mulsd	%xmm0, %xmm2
	mulsd	%xmm8, %xmm0
	addsd	%xmm5, %xmm2
	addsd	%xmm9, %xmm2
	movsd	%xmm2, 216(%rbx)
	movsd	216(%r11), %xmm2
	subsd	%xmm0, %xmm2
	jmp	.L412
	.p2align 4,,10
	.p2align 3
.L391:
	subsd	%xmm10, %xmm4
	subsd	%xmm11, %xmm0
	movsd	.LC3(%rip), %xmm2
	movapd	%xmm4, %xmm3
	addsd	%xmm2, %xmm0
	addsd	%xmm2, %xmm3
	addsd	%xmm9, %xmm0
	addsd	%xmm1, %xmm3
	movsd	%xmm0, 216(%rbx)
	movsd	%xmm3, 208(%rbx)
	jmp	.L393
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
.LFB8441:
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
	jne	.L417
	movq	$0, 72(%rsp)
	xorl	%r12d, %r12d
.L420:
	movq	168(%rsp), %rax
	movq	(%rax), %r11
	testq	%r11, %r11
	je	.L419
	movq	8(%rax), %r14
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	jmp	.L426
	.p2align 4,,10
	.p2align 3
.L421:
	addq	$1, %r12
	cmpq	%r11, %r12
	jnb	.L456
.L426:
	movq	(%r14,%r12,8), %r8
	leaq	0(,%r12,8), %r13
	cmpq	%rbp, %r8
	je	.L421
	cmpq	%rbx, %r8
	je	.L421
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	call	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	testl	%eax, %eax
	je	.L421
	cmpq	%rsi, 64(%rsp)
	je	.L457
.L422:
	cmpq	%r11, %r12
	jnb	.L458
	movq	(%r14,%r13), %rax
	movq	72(%rsp), %rcx
	leaq	1(%rsi), %rdx
	cmpq	64(%rsp), %rsi
	jnb	.L459
	addq	$1, %r12
	movq	%rax, (%rcx,%rsi,8)
	addq	184(%rax), %r15
	movq	%rdx, %rsi
	cmpq	%r11, %r12
	jb	.L426
	.p2align 4,,10
	.p2align 3
.L456:
	movq	72(%rsp), %r12
	cmpq	184(%rsp), %r15
	jnb	.L427
	testq	%rsi, %rsi
	je	.L419
	movq	64(%rsp), %rax
	xorl	%r13d, %r13d
	movq	%rax, 56(%rsp)
	movq	184(%rsp), %rax
	subq	%r15, %rax
	movq	%rax, %r14
.L434:
	cmpq	%r13, 56(%rsp)
	je	.L460
	movq	(%r12,%r13,8), %r15
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	movq	184(%r15), %r8
	movq	%r15, %r9
	addq	%r14, %r8
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	testb	%al, %al
	jne	.L461
.L433:
	addq	$1, %r13
	cmpq	%r13, %rsi
	jne	.L434
.L419:
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
.L427:
	testq	%rsi, %rsi
	je	.L419
	movq	64(%rsp), %r13
	xorl	%ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L431:
	cmpq	%rbp, %r13
	je	.L462
	movq	(%r12,%rbp,8), %r9
	xorl	%r8d, %r8d
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	addq	$1, %rbp
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	cmpq	%rbp, %rsi
	jne	.L431
	jmp	.L419
	.p2align 4,,10
	.p2align 3
.L461:
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
	jmp	.L433
	.p2align 4,,10
	.p2align 3
.L457:
	movzwl	8(%rdi), %eax
	leaq	64(%rsp), %rcx
	movq	%rsi, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6InsertEyy.isra.0
.LEHE0:
	movq	168(%rsp), %rax
	movq	(%rax), %r11
	movq	8(%rax), %r14
	jmp	.L422
	.p2align 4,,10
	.p2align 3
.L417:
	leaq	0(,%rsi,8), %rcx
	call	malloc
	movq	%rax, 72(%rsp)
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.L420
	leaq	.LC2(%rip), %rcx
	movq	%rsi, %rdx
.LEHB1:
	call	_Z6printfPKcz
.LEHE1:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L462:
	movq	%r13, %rdx
	leaq	.LC5(%rip), %rcx
.LEHB2:
	call	_Z6printfPKcz
.L425:
	movl	$1, %ecx
	call	exit
.L459:
	movq	%rsi, %rdx
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L425
.L458:
	movq	%r12, %rdx
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L425
.L460:
	movq	56(%rsp), %rdx
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
.LEHE2:
	jmp	.L425
.L436:
	movq	%rax, %rbx
	jmp	.L435
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8441:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8441-.LLSDACSB8441
.LLSDACSB8441:
	.uleb128 .LEHB0-.LFB8441
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L436-.LFB8441
	.uleb128 0
	.uleb128 .LEHB1-.LFB8441
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB8441
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L436-.LFB8441
	.uleb128 0
.LLSDACSE8441:
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
.L435:
	movq	72(%rsp), %rcx
	call	free
	movq	%rbx, %rcx
.LEHB3:
	call	_Unwind_Resume
	nop
.LEHE3:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8441:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8441-.LLSDACSBC8441
.LLSDACSBC8441:
	.uleb128 .LEHB3-.LCOLDB6
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSEC8441:
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
.LFB8440:
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
	jne	.L464
	movq	$0, 104(%rsp)
	xorl	%esi, %esi
.L465:
	movq	192(%rsp), %rax
	movq	24(%rax), %r12
	cmpq	16(%rax), %rbx
	jnb	.L518
	salq	$4, %rbx
	addq	%rbx, %r12
	movq	(%r12), %rbp
	testq	%rbp, %rbp
	je	.L467
	leaq	96(%rsp), %rax
	xorl	%ebx, %ebx
	movq	%rax, 88(%rsp)
	.p2align 4,,10
	.p2align 3
.L487:
	movq	8(%r12), %r11
	xorl	%esi, %esi
	xorl	%r14d, %r14d
	xorl	%edi, %edi
	leaq	0(,%rbx,8), %r13
	.p2align 4,,10
	.p2align 3
.L474:
	cmpq	%rsi, %rbx
	je	.L468
	movq	(%r11,%rsi,8), %r8
	leaq	0(,%rsi,8), %r15
	cmpq	%rbp, %rbx
	jnb	.L518
	movq	(%r11,%r13), %rdx
	movq	192(%rsp), %rcx
	call	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	testl	%eax, %eax
	je	.L468
	cmpq	%rdi, 96(%rsp)
	je	.L522
.L471:
	cmpq	%rbp, %rsi
	jnb	.L523
	movq	(%r11,%r15), %rax
	movq	104(%rsp), %rcx
	leaq	1(%rdi), %rdx
	cmpq	96(%rsp), %rdi
	jnb	.L524
	movq	%rax, (%rcx,%rdi,8)
	addq	184(%rax), %r14
	movq	%rdx, %rdi
.L468:
	addq	$1, %rsi
	cmpq	%rbp, %rsi
	jb	.L474
	cmpq	%rbp, %rbx
	jnb	.L518
	movq	(%r11,%r13), %r15
	cmpq	176(%r15), %r14
	jnb	.L476
	testq	%rdi, %rdi
	je	.L481
	movq	96(%rsp), %rax
	xorl	%esi, %esi
	movq	%rax, 80(%rsp)
	movq	104(%rsp), %rax
	movq	%rax, 72(%rsp)
	jmp	.L486
	.p2align 4,,10
	.p2align 3
.L484:
	addq	$1, %rsi
	cmpq	%rsi, %rdi
	je	.L481
.L486:
	cmpq	%rsi, 80(%rsp)
	je	.L525
	movq	72(%rsp), %rax
	movq	8(%r12), %rdx
	movq	(%rax,%rsi,8), %r9
	movq	184(%r9), %rax
	cmpq	%rbp, %rbx
	jnb	.L518
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
	je	.L484
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
	jnb	.L518
	movq	(%rax,%r13), %rdx
	movq	192(%rsp), %rcx
	xorl	%r8d, %r8d
	addq	$1, %rsi
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	cmpq	%rsi, %rdi
	jne	.L486
.L481:
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	jb	.L487
.L527:
	movq	104(%rsp), %rsi
.L467:
	movq	208(%rsp), %rax
	movq	208(%rsp), %rdi
	movupd	208(%rax), %xmm3
	movq	%rdi, %rcx
	movups	%xmm3, 224(%rax)
	movl	274(%rax), %eax
	movaps	%xmm3, 48(%rsp)
	movl	%eax, 278(%rdi)
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv
	movq	(%r12), %rdx
	xorl	%ebx, %ebx
	testq	%rdx, %rdx
	je	.L493
	.p2align 4,,10
	.p2align 3
.L488:
	movq	8(%r12), %rax
	movq	(%rax,%rbx,8), %rcx
	cmpq	208(%rsp), %rcx
	je	.L489
	movupd	208(%rcx), %xmm0
	ucomisd	224(%rcx), %xmm0
	jp	.L490
	jne	.L490
	movapd	%xmm0, %xmm2
	unpckhpd	%xmm2, %xmm2
	ucomisd	232(%rcx), %xmm2
	jp	.L490
	je	.L489
.L490:
	movups	%xmm0, 224(%rcx)
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv
	movq	(%r12), %rdx
.L489:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L488
.L493:
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
.L522:
	movq	192(%rsp), %rax
	movq	88(%rsp), %rcx
	movq	%rdi, %rdx
	movzwl	8(%rax), %eax
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6InsertEyy.isra.0
	movq	(%r12), %rbp
	movq	8(%r12), %r11
	jmp	.L471
	.p2align 4,,10
	.p2align 3
.L476:
	testq	%rdi, %rdi
	je	.L481
	xorl	%r13d, %r13d
	movq	%rbx, 48(%rsp)
	movq	96(%rsp), %r14
	movq	%r13, %rbx
	movq	104(%rsp), %rsi
	movq	192(%rsp), %r13
	.p2align 4,,10
	.p2align 3
.L480:
	cmpq	%rbx, %r14
	je	.L526
	movq	(%rsi,%rbx,8), %r9
	xorl	%r8d, %r8d
	movq	%r15, %rdx
	movq	%r13, %rcx
	addq	$1, %rbx
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	cmpq	%rbx, %rdi
	jne	.L480
	movq	48(%rsp), %rbx
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	jb	.L487
	jmp	.L527
.L518:
	movq	%rbx, %rdx
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
.LEHE4:
.L470:
	movl	$1, %ecx
	call	exit
.L464:
	leaq	0(,%rdi,8), %rcx
	call	malloc
	movq	%rax, 104(%rsp)
	movq	%rax, %rsi
	testq	%rax, %rax
	jne	.L465
	leaq	.LC2(%rip), %rcx
	movq	%rdi, %rdx
.LEHB5:
	call	_Z6printfPKcz
.LEHE5:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L526:
	movq	%r14, %rdx
	leaq	.LC5(%rip), %rcx
.LEHB6:
	call	_Z6printfPKcz
	jmp	.L470
.L525:
	movq	80(%rsp), %rdx
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L470
.L524:
	movq	%rdi, %rdx
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L470
.L523:
	movq	%rsi, %rdx
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
.LEHE6:
	jmp	.L470
.L496:
	movq	%rax, %rbx
	jmp	.L494
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8440:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8440-.LLSDACSB8440
.LLSDACSB8440:
	.uleb128 .LEHB4-.LFB8440
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L496-.LFB8440
	.uleb128 0
	.uleb128 .LEHB5-.LFB8440
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB8440
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L496-.LFB8440
	.uleb128 0
.LLSDACSE8440:
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
.L494:
	movq	104(%rsp), %rcx
	call	free
	movq	%rbx, %rcx
.LEHB7:
	call	_Unwind_Resume
	nop
.LEHE7:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8440:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8440-.LLSDACSBC8440
.LLSDACSBC8440:
	.uleb128 .LEHB7-.LCOLDB7
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSEC8440:
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
