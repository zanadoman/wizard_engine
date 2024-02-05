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
	movq	$256, 8(%rcx)
	movl	$4096, %ecx
	call	malloc
	movq	%rax, 16(%rbx)
	testq	%rax, %rax
	je	.L7
	leaq	4096(%rax), %rdx
	.p2align 4,,10
	.p2align 3
.L5:
	movq	$0, (%rax)
	addq	$16, %rax
	movq	$0, -8(%rax)
	cmpq	%rdx, %rax
	jne	.L5
	addq	$32, %rsp
	popq	%rbx
	ret
.L7:
	leaq	.LC0(%rip), %rcx
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
	.globl	_ZN3wze6engine9collision14CheckCollisionEdddddddd
	.def	_ZN3wze6engine9collision14CheckCollisionEdddddddd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collision14CheckCollisionEdddddddd
_ZN3wze6engine9collision14CheckCollisionEdddddddd:
.LFB8435:
	.seh_endprologue
	xorl	%eax, %eax
	movsd	48(%rsp), %xmm0
	movsd	64(%rsp), %xmm4
	comisd	%xmm3, %xmm0
	ja	.L8
	comisd	%xmm4, %xmm1
	ja	.L8
	movsd	72(%rsp), %xmm5
	comisd	%xmm2, %xmm5
	ja	.L8
	movsd	40(%rsp), %xmm5
	comisd	56(%rsp), %xmm5
	ja	.L8
	comisd	%xmm1, %xmm4
	jb	.L10
	comisd	%xmm4, %xmm3
	jb	.L132
	movsd	72(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jb	.L114
	comisd	%xmm5, %xmm2
	movl	$1, %eax
	jnb	.L8
	comisd	%xmm0, %xmm1
	jnb	.L19
	comisd	%xmm1, %xmm0
	jnb	.L20
.L21:
	comisd	%xmm0, %xmm3
	jnb	.L133
	movsd	56(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jnb	.L58
	comisd	%xmm0, %xmm1
	jnb	.L51
	xorl	%eax, %eax
	comisd	%xmm1, %xmm0
	jb	.L42
.L8:
	ret
	.p2align 4,,10
	.p2align 3
.L27:
	movsd	56(%rsp), %xmm5
	movl	$1, %eax
	comisd	%xmm2, %xmm5
	jnb	.L8
	.p2align 4,,10
	.p2align 3
.L10:
	comisd	%xmm1, %xmm0
	jnb	.L14
.L25:
	comisd	%xmm0, %xmm3
	jb	.L16
.L28:
	comisd	%xmm3, %xmm4
	jnb	.L15
	comisd	%xmm1, %xmm4
	jb	.L49
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L14:
	comisd	%xmm0, %xmm3
	jnb	.L22
	comisd	%xmm1, %xmm4
	jnb	.L29
.L129:
	comisd	%xmm0, %xmm1
	jb	.L35
.L34:
	comisd	%xmm1, %xmm4
	jb	.L64
	.p2align 4,,10
	.p2align 3
.L51:
	movsd	40(%rsp), %xmm5
	comisd	72(%rsp), %xmm5
	jb	.L64
.L77:
	movsd	56(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jb	.L64
.L104:
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L132:
	comisd	%xmm0, %xmm1
	jnb	.L13
	comisd	%xmm1, %xmm0
	jnb	.L14
	comisd	%xmm0, %xmm3
	jnb	.L15
	.p2align 4,,10
	.p2align 3
.L16:
	comisd	%xmm1, %xmm4
	jnb	.L29
.L49:
	comisd	%xmm0, %xmm1
	jnb	.L34
.L64:
	comisd	%xmm1, %xmm0
	jnb	.L35
.L42:
	comisd	%xmm0, %xmm3
	jb	.L125
.L44:
	comisd	%xmm3, %xmm4
	jnb	.L52
.L125:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L114:
	comisd	%xmm0, %xmm1
	jnb	.L19
	comisd	%xmm1, %xmm0
	jb	.L21
	.p2align 4,,10
	.p2align 3
.L22:
	movsd	72(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jnb	.L20
	comisd	%xmm3, %xmm4
	jnb	.L15
	comisd	%xmm1, %xmm4
	jb	.L129
.L33:
	movsd	56(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jb	.L47
.L58:
	comisd	56(%rsp), %xmm2
	movl	$1, %eax
	jnb	.L8
	comisd	%xmm0, %xmm1
	jb	.L134
.L55:
	movsd	40(%rsp), %xmm5
	comisd	72(%rsp), %xmm5
	movl	$1, %eax
	jb	.L64
	ret
	.p2align 4,,10
	.p2align 3
.L13:
	comisd	72(%rsp), %xmm2
	jnb	.L27
	comisd	%xmm1, %xmm0
	jnb	.L14
	comisd	%xmm0, %xmm3
	jnb	.L28
	.p2align 4,,10
	.p2align 3
.L29:
	comisd	%xmm4, %xmm3
	jnb	.L33
.L45:
	comisd	%xmm0, %xmm1
	jnb	.L51
	comisd	%xmm1, %xmm0
	jnb	.L35
	comisd	%xmm0, %xmm3
	jb	.L125
	.p2align 4,,10
	.p2align 3
.L52:
	movsd	40(%rsp), %xmm5
	comisd	72(%rsp), %xmm5
	jb	.L125
	movsd	56(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	setnb	%al
	ret
	.p2align 4,,10
	.p2align 3
.L15:
	comisd	72(%rsp), %xmm2
	jb	.L119
.L80:
	movsd	56(%rsp), %xmm5
	movl	$1, %eax
	comisd	%xmm2, %xmm5
	jnb	.L8
	comisd	%xmm1, %xmm4
	jnb	.L41
	comisd	%xmm1, %xmm0
	jb	.L42
	comisd	40(%rsp), %xmm5
	jb	.L44
	ret
.L121:
	comisd	%xmm0, %xmm1
	jnb	.L51
	.p2align 4,,10
	.p2align 3
.L35:
	comisd	%xmm0, %xmm3
	jb	.L125
.L61:
	movsd	56(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jb	.L44
.L56:
	comisd	56(%rsp), %xmm2
	movl	$1, %eax
	jb	.L44
	ret
	.p2align 4,,10
	.p2align 3
.L20:
	comisd	72(%rsp), %xmm2
	movl	$1, %eax
	jb	.L28
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L119:
	comisd	%xmm1, %xmm4
	jnb	.L29
	comisd	%xmm1, %xmm0
	jnb	.L61
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L19:
	comisd	72(%rsp), %xmm2
	jb	.L115
	movsd	56(%rsp), %xmm5
	movl	$1, %eax
	comisd	%xmm2, %xmm5
	jnb	.L8
	comisd	%xmm1, %xmm0
	jnb	.L22
	jmp	.L25
.L41:
	ucomisd	%xmm4, %xmm3
	jp	.L45
	jne	.L45
	comisd	40(%rsp), %xmm5
	jnb	.L8
	.p2align 4,,10
	.p2align 3
.L47:
	comisd	%xmm0, %xmm1
	jb	.L64
	jmp	.L51
.L115:
	comisd	%xmm1, %xmm0
	jnb	.L22
	ucomisd	%xmm4, %xmm3
	jp	.L113
	je	.L74
.L113:
	movsd	56(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jnb	.L76
	movsd	40(%rsp), %xmm5
	comisd	72(%rsp), %xmm5
	jnb	.L77
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L134:
	comisd	%xmm1, %xmm0
	jb	.L42
	jmp	.L56
.L133:
	comisd	%xmm3, %xmm4
	jnb	.L15
	movsd	56(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jb	.L121
	comisd	%xmm5, %xmm2
	jnb	.L104
	comisd	%xmm0, %xmm1
	jnb	.L55
	jmp	.L56
.L74:
	comisd	72(%rsp), %xmm2
	jnb	.L80
	movsd	56(%rsp), %xmm5
	comisd	40(%rsp), %xmm5
	jb	.L51
	comisd	%xmm5, %xmm2
	jb	.L55
	jmp	.L104
.L76:
	comisd	56(%rsp), %xmm2
	jb	.L55
	jmp	.L104
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	.def	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_:
.LFB8436:
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
	movsd	168(%r8), %xmm6
	movq	%rcx, %r10
	movzwl	238(%rdx), %ecx
	movq	%rdx, %rax
	movsd	184(%rax), %xmm7
	movl	%ecx, %edx
	cvtsi2sdl	%ecx, %xmm10
	movzwl	234(%r8), %ecx
	shrw	%dx
	movzwl	%dx, %edx
	cvtsi2sdl	%ecx, %xmm8
	cvtsi2sdl	%edx, %xmm0
	movzwl	240(%rax), %edx
	movl	%edx, %r9d
	shrw	%r9w
	subsd	%xmm0, %xmm7
	movzwl	%r9w, %r9d
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	movl	%ecx, %edx
	cvtsi2sdl	%r9d, %xmm11
	shrw	%dx
	addsd	192(%rax), %xmm11
	movzwl	%dx, %edx
	addsd	%xmm7, %xmm10
	movapd	%xmm11, %xmm13
	subsd	%xmm0, %xmm13
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	movzwl	236(%r8), %edx
	movl	%edx, %r9d
	shrw	%r9w
	subsd	%xmm0, %xmm6
	movzwl	%r9w, %r9d
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%r9d, %xmm9
	addsd	176(%r8), %xmm9
	cvtsi2sdl	%edx, %xmm0
	comisd	%xmm10, %xmm6
	addsd	%xmm6, %xmm8
	movapd	%xmm9, %xmm12
	subsd	%xmm0, %xmm12
	ja	.L136
	comisd	%xmm8, %xmm7
	ja	.L136
	comisd	%xmm11, %xmm12
	ja	.L136
	comisd	%xmm9, %xmm13
	ja	.L136
	comisd	%xmm7, %xmm8
	jb	.L306
	comisd	%xmm8, %xmm10
	jb	.L345
	xorl	%edx, %edx
	comisd	%xmm13, %xmm12
	jnb	.L135
	comisd	%xmm6, %xmm7
	jb	.L336
	comisd	%xmm12, %xmm11
	jb	.L308
	comisd	%xmm11, %xmm9
	jnb	.L135
	comisd	%xmm7, %xmm6
	jnb	.L149
	.p2align 4,,10
	.p2align 3
.L150:
	comisd	%xmm10, %xmm8
	jnb	.L144
	comisd	%xmm7, %xmm8
	jnb	.L146
	comisd	%xmm6, %xmm7
	jnb	.L160
.L171:
	comisd	%xmm13, %xmm9
	jb	.L136
	xorl	%edx, %edx
	comisd	%xmm9, %xmm11
	jb	.L183
.L135:
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
.L306:
	comisd	%xmm7, %xmm6
	jnb	.L155
	comisd	%xmm6, %xmm10
	jnb	.L346
	comisd	%xmm7, %xmm8
	jb	.L314
.L156:
	comisd	%xmm8, %xmm10
	jnb	.L146
	comisd	%xmm6, %xmm7
	jnb	.L176
.L161:
	comisd	%xmm6, %xmm10
	jnb	.L171
	.p2align 4,,10
	.p2align 3
.L136:
	movzwl	234(%rax), %ecx
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	pxor	%xmm3, %xmm3
	movsd	168(%rax), %xmm1
	movl	%ecx, %edx
	cvtsi2sdl	%ecx, %xmm3
	movq	%r10, %rcx
	shrw	%dx
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm0
	movzwl	236(%rax), %edx
	movl	%edx, %r8d
	shrw	%r8w
	subsd	%xmm0, %xmm1
	movzwl	%r8w, %r8d
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	xorl	%edx, %edx
	cvtsi2sdl	%r8d, %xmm2
	addsd	176(%rax), %xmm2
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
	je	.L135
	comisd	%xmm6, %xmm7
	jb	.L316
	comisd	%xmm10, %xmm8
	jnb	.L195
	ucomisd	%xmm6, %xmm7
	jp	.L298
	je	.L196
.L298:
	comisd	%xmm12, %xmm13
	jb	.L347
	.p2align 4,,10
	.p2align 3
.L198:
	comisd	%xmm11, %xmm9
	jnb	.L207
	comisd	%xmm13, %xmm12
	jnb	.L207
	comisd	%xmm6, %xmm7
	ja	.L229
	comisd	%xmm10, %xmm8
	ja	.L242
	comisd	%xmm6, %xmm7
	ja	.L229
	.p2align 4,,10
	.p2align 3
.L230:
	comisd	%xmm10, %xmm8
	ja	.L226
.L324:
	xorl	%edx, %edx
	jmp	.L135
	.p2align 4,,10
	.p2align 3
.L316:
	comisd	%xmm7, %xmm6
	jb	.L201
.L196:
	comisd	%xmm8, %xmm10
	jnb	.L195
	comisd	%xmm12, %xmm13
	jnb	.L198
	comisd	%xmm13, %xmm12
	jnb	.L203
	comisd	%xmm10, %xmm8
	jbe	.L214
.L224:
	comisd	%xmm11, %xmm9
	jbe	.L216
.L222:
	comisd	%xmm6, %xmm10
	jnb	.L272
	comisd	%xmm12, %xmm11
	movl	$8, %edx
	jnb	.L135
	subsd	%xmm6, %xmm3
	subsd	%xmm12, %xmm2
	movl	$1, %edx
	comisd	%xmm2, %xmm3
	ja	.L135
	comisd	%xmm3, %xmm2
	movl	$8, %edx
	movl	$32, %eax
	cmovbe	%eax, %edx
	jmp	.L135
	.p2align 4,,10
	.p2align 3
.L195:
	comisd	%xmm11, %xmm12
	movl	$1, %edx
	ja	.L135
	comisd	%xmm9, %xmm13
	movl	$2, %edx
	ja	.L135
.L201:
	comisd	%xmm12, %xmm13
	jnb	.L198
	comisd	%xmm13, %xmm12
	jnb	.L203
	comisd	%xmm6, %xmm7
	jbe	.L323
	comisd	%xmm11, %xmm9
	ja	.L219
	comisd	%xmm10, %xmm8
	jbe	.L220
	comisd	%xmm11, %xmm9
	ja	.L222
	jmp	.L344
	.p2align 4,,10
	.p2align 3
.L347:
	comisd	%xmm13, %xmm12
	jb	.L348
	comisd	%xmm9, %xmm11
	jb	.L219
	.p2align 4,,10
	.p2align 3
.L207:
	comisd	%xmm8, %xmm7
	movl	$4, %edx
	ja	.L135
	comisd	%xmm10, %xmm6
	movl	$8, %edx
	ja	.L135
	comisd	%xmm6, %xmm7
	jbe	.L349
	comisd	%xmm11, %xmm9
	ja	.L219
	comisd	%xmm10, %xmm8
	jbe	.L220
.L216:
	comisd	%xmm6, %xmm7
	jbe	.L226
.L344:
	comisd	%xmm12, %xmm13
	jbe	.L324
	.p2align 4,,10
	.p2align 3
.L229:
	comisd	%xmm7, %xmm8
	movl	$2, %edx
	jnb	.L135
	comisd	%xmm13, %xmm9
	movl	$4, %edx
	jnb	.L135
	subsd	%xmm1, %xmm8
	subsd	%xmm14, %xmm9
	movl	$2, %edx
	comisd	%xmm9, %xmm8
	ja	.L135
	comisd	%xmm8, %xmm9
	movl	$4, %edx
	movl	$64, %eax
	cmovbe	%eax, %edx
	jmp	.L135
	.p2align 4,,10
	.p2align 3
.L203:
	comisd	%xmm9, %xmm11
	jnb	.L207
	comisd	%xmm6, %xmm7
	ja	.L219
	comisd	%xmm10, %xmm8
	ja	.L222
	comisd	%xmm6, %xmm7
	jbe	.L230
	jmp	.L344
	.p2align 4,,10
	.p2align 3
.L219:
	comisd	%xmm7, %xmm8
	movl	$1, %edx
	jnb	.L135
	comisd	%xmm12, %xmm11
	movl	$4, %edx
	jnb	.L135
	subsd	%xmm1, %xmm8
	subsd	%xmm12, %xmm2
	movl	$1, %edx
	comisd	%xmm2, %xmm8
	ja	.L135
	comisd	%xmm8, %xmm2
	movl	$4, %edx
	movl	$16, %eax
	cmovbe	%eax, %edx
	jmp	.L135
	.p2align 4,,10
	.p2align 3
.L345:
	comisd	%xmm6, %xmm7
	jnb	.L140
	comisd	%xmm6, %xmm10
	jnb	.L350
.L307:
	comisd	%xmm7, %xmm8
	jnb	.L156
	comisd	%xmm6, %xmm7
	jb	.L161
.L160:
	comisd	%xmm7, %xmm8
	jnb	.L176
.L185:
	comisd	%xmm7, %xmm6
	jnb	.L161
	comisd	%xmm6, %xmm10
	jb	.L136
.L183:
	comisd	%xmm10, %xmm8
	jb	.L136
.L174:
	xorl	%edx, %edx
	comisd	%xmm12, %xmm13
	jnb	.L135
	jmp	.L136
	.p2align 4,,10
	.p2align 3
.L349:
	comisd	%xmm10, %xmm8
	jbe	.L214
	comisd	%xmm11, %xmm9
	movl	$1, %edx
	ja	.L135
	jmp	.L216
	.p2align 4,,10
	.p2align 3
.L314:
	comisd	%xmm6, %xmm7
	jb	.L185
	jmp	.L160
	.p2align 4,,10
	.p2align 3
.L346:
	comisd	%xmm10, %xmm8
	jnb	.L144
	comisd	%xmm7, %xmm8
	jb	.L185
	.p2align 4,,10
	.p2align 3
.L146:
	comisd	%xmm13, %xmm9
	jb	.L315
.L246:
	xorl	%edx, %edx
	comisd	%xmm9, %xmm11
	jnb	.L135
	comisd	%xmm6, %xmm7
	jb	.L183
.L176:
	xorl	%edx, %edx
.L342:
	comisd	%xmm12, %xmm13
	jnb	.L135
	jmp	.L185
	.p2align 4,,10
	.p2align 3
.L323:
	comisd	%xmm10, %xmm8
	jbe	.L214
	comisd	%xmm11, %xmm9
	ja	.L222
.L226:
	comisd	%xmm12, %xmm13
	jbe	.L324
.L242:
	comisd	%xmm6, %xmm10
	movl	$2, %edx
	jnb	.L135
	comisd	%xmm13, %xmm9
	movl	$8, %edx
	jnb	.L135
	subsd	%xmm6, %xmm3
	subsd	%xmm14, %xmm9
	movl	$2, %edx
	comisd	%xmm9, %xmm3
	ja	.L135
	comisd	%xmm3, %xmm9
	movl	$8, %edx
	movl	$128, %eax
	cmovbe	%eax, %edx
	jmp	.L135
	.p2align 4,,10
	.p2align 3
.L155:
	comisd	%xmm6, %xmm10
	jb	.L307
.L149:
	xorl	%edx, %edx
	comisd	%xmm13, %xmm12
	jnb	.L135
	jmp	.L150
	.p2align 4,,10
	.p2align 3
.L214:
	comisd	%xmm6, %xmm7
	jbe	.L230
.L220:
	comisd	%xmm12, %xmm13
	jbe	.L230
	jmp	.L229
	.p2align 4,,10
	.p2align 3
.L350:
	xorl	%edx, %edx
	comisd	%xmm13, %xmm12
	jnb	.L135
	.p2align 4,,10
	.p2align 3
.L144:
	comisd	%xmm12, %xmm11
	jb	.L156
.L247:
	xorl	%edx, %edx
	comisd	%xmm11, %xmm9
	jnb	.L135
	ucomisd	%xmm8, %xmm10
	jp	.L293
	je	.L168
.L293:
	xorl	%edx, %edx
	comisd	%xmm6, %xmm7
	jnb	.L342
	comisd	%xmm13, %xmm9
	jb	.L136
	jmp	.L135
	.p2align 4,,10
	.p2align 3
.L140:
	comisd	%xmm12, %xmm11
	jb	.L309
	xorl	%edx, %edx
	comisd	%xmm11, %xmm9
	jnb	.L135
.L309:
	comisd	%xmm7, %xmm6
	jnb	.L155
	comisd	%xmm6, %xmm10
	jb	.L156
	jmp	.L150
	.p2align 4,,10
	.p2align 3
.L315:
	comisd	%xmm6, %xmm7
	jb	.L171
	ucomisd	%xmm6, %xmm7
	jp	.L183
	jne	.L183
	jmp	.L171
.L351:
	xorl	%edx, %edx
.L336:
	comisd	%xmm13, %xmm12
	jnb	.L135
	comisd	%xmm10, %xmm8
	jnb	.L144
	jmp	.L146
	.p2align 4,,10
	.p2align 3
.L348:
	comisd	%xmm11, %xmm9
	ja	.L219
	comisd	%xmm10, %xmm8
	ja	.L224
	jmp	.L220
.L308:
	ucomisd	%xmm6, %xmm7
	jp	.L151
	je	.L351
.L151:
	ucomisd	%xmm8, %xmm10
	jp	.L241
	jne	.L241
	comisd	%xmm12, %xmm11
	jnb	.L247
	jmp	.L146
.L168:
	comisd	%xmm13, %xmm9
	jnb	.L135
	comisd	%xmm6, %xmm7
	jb	.L171
	ucomisd	%xmm6, %xmm7
	jp	.L174
	jne	.L174
	jmp	.L171
.L272:
	movl	$1, %edx
	jmp	.L135
.L241:
	comisd	%xmm13, %xmm9
	jnb	.L246
	jmp	.L136
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	.def	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_:
.LFB8437:
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
	je	.L352
	movzwl	234(%rbx), %ecx
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	movsd	168(%rbx), %xmm1
	pxor	%xmm5, %xmm5
	pxor	%xmm4, %xmm4
	pxor	%xmm3, %xmm3
	movsd	176(%rbx), %xmm8
	movl	%ecx, %edx
	movapd	%xmm1, %xmm10
	movsd	168(%r11), %xmm7
	shrw	%dx
	cvtsi2sdl	%ecx, %xmm5
	movzwl	234(%r11), %ecx
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm0
	movzwl	236(%rbx), %edx
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
	addsd	%xmm8, %xmm2
	movapd	%xmm2, %xmm11
	subsd	%xmm0, %xmm11
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	movzwl	236(%r11), %edx
	movl	%edx, %r8d
	cvtsi2sdl	%edx, %xmm3
	movq	144(%r11), %rdx
	shrw	%r8w
	subsd	%xmm0, %xmm7
	movzwl	%r8w, %r8d
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%r8d, %xmm0
	addsd	176(%r11), %xmm0
	addsd	%xmm7, %xmm4
	movapd	%xmm0, %xmm12
	subsd	%xmm3, %xmm12
	cmpq	%rsi, %rdx
	jb	.L354
	cmpl	$32, %eax
	ja	.L355
	leaq	.L357(%rip), %rdx
	movl	%eax, %eax
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L357:
	.long	.L382-.L357
	.long	.L362-.L357
	.long	.L361-.L357
	.long	.L382-.L357
	.long	.L360-.L357
	.long	.L382-.L357
	.long	.L382-.L357
	.long	.L382-.L357
	.long	.L359-.L357
	.long	.L382-.L357
	.long	.L382-.L357
	.long	.L382-.L357
	.long	.L382-.L357
	.long	.L382-.L357
	.long	.L382-.L357
	.long	.L382-.L357
	.long	.L358-.L357
	.long	.L382-.L357
	.long	.L382-.L357
	.long	.L382-.L357
	.long	.L382-.L357
	.long	.L382-.L357
	.long	.L382-.L357
	.long	.L382-.L357
	.long	.L382-.L357
	.long	.L382-.L357
	.long	.L382-.L357
	.long	.L382-.L357
	.long	.L382-.L357
	.long	.L382-.L357
	.long	.L382-.L357
	.long	.L382-.L357
	.long	.L356-.L357
	.text
	.p2align 4,,10
	.p2align 3
.L370:
	cmpl	$64, %eax
	je	.L378
	cmpl	$128, %eax
	je	.L379
	.p2align 4,,10
	.p2align 3
.L382:
	xorl	%r9d, %r9d
.L352:
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
.L354:
	testq	%rsi, %rsi
	js	.L366
	pxor	%xmm9, %xmm9
	cvtsi2sdq	%rsi, %xmm9
	addq	%rsi, %rdx
	js	.L368
.L388:
	pxor	%xmm3, %xmm3
	cvtsi2sdq	%rdx, %xmm3
.L369:
	divsd	%xmm3, %xmm9
	movsd	.LC2(%rip), %xmm6
	subsd	%xmm9, %xmm6
	cmpl	$32, %eax
	ja	.L370
	leaq	.L372(%rip), %rdx
	movl	%eax, %eax
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L372:
	.long	.L382-.L372
	.long	.L377-.L372
	.long	.L376-.L372
	.long	.L382-.L372
	.long	.L375-.L372
	.long	.L382-.L372
	.long	.L382-.L372
	.long	.L382-.L372
	.long	.L374-.L372
	.long	.L382-.L372
	.long	.L382-.L372
	.long	.L382-.L372
	.long	.L382-.L372
	.long	.L382-.L372
	.long	.L382-.L372
	.long	.L382-.L372
	.long	.L373-.L372
	.long	.L382-.L372
	.long	.L382-.L372
	.long	.L382-.L372
	.long	.L382-.L372
	.long	.L382-.L372
	.long	.L382-.L372
	.long	.L382-.L372
	.long	.L382-.L372
	.long	.L382-.L372
	.long	.L382-.L372
	.long	.L382-.L372
	.long	.L382-.L372
	.long	.L382-.L372
	.long	.L382-.L372
	.long	.L382-.L372
	.long	.L371-.L372
	.text
	.p2align 4,,10
	.p2align 3
.L366:
	movq	%rsi, %rcx
	movq	%rsi, %r8
	pxor	%xmm9, %xmm9
	shrq	%rcx
	andl	$1, %r8d
	orq	%r8, %rcx
	cvtsi2sdq	%rcx, %xmm9
	addsd	%xmm9, %xmm9
	addq	%rsi, %rdx
	jns	.L388
.L368:
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm3, %xmm3
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm3
	addsd	%xmm3, %xmm3
	jmp	.L369
	.p2align 4,,10
	.p2align 3
.L355:
	cmpl	$64, %eax
	je	.L363
	cmpl	$128, %eax
	jne	.L352
	subsd	%xmm11, %xmm0
	subsd	%xmm7, %xmm5
	movsd	.LC1(%rip), %xmm2
	addsd	%xmm2, %xmm0
	addsd	%xmm2, %xmm5
	addsd	%xmm8, %xmm0
	subsd	%xmm5, %xmm1
	movsd	%xmm0, 176(%rbx)
	movsd	%xmm1, 168(%rbx)
	jmp	.L365
	.p2align 4,,10
	.p2align 3
.L379:
	subsd	%xmm11, %xmm0
	movsd	.LC1(%rip), %xmm3
	movapd	%xmm0, %xmm2
	mulsd	%xmm6, %xmm2
	mulsd	%xmm9, %xmm0
	addsd	%xmm3, %xmm2
	addsd	%xmm8, %xmm2
	movsd	%xmm2, 176(%rbx)
	movsd	176(%r11), %xmm2
	subsd	%xmm0, %xmm2
.L384:
	movsd	%xmm2, 176(%r11)
	subsd	%xmm7, %xmm5
	mulsd	%xmm5, %xmm6
	addsd	%xmm3, %xmm6
.L386:
	subsd	%xmm6, %xmm1
	mulsd	%xmm9, %xmm5
	movsd	%xmm1, 168(%rbx)
	addsd	168(%r11), %xmm5
	movsd	%xmm5, 168(%r11)
	.p2align 4,,10
	.p2align 3
.L365:
	movl	$1, %r9d
	jmp	.L352
.L359:
	subsd	%xmm7, %xmm5
	addsd	.LC1(%rip), %xmm5
	subsd	%xmm5, %xmm1
	movsd	%xmm1, 168(%rbx)
	jmp	.L365
.L358:
	subsd	%xmm10, %xmm4
	subsd	%xmm12, %xmm2
	movsd	.LC1(%rip), %xmm0
	movapd	%xmm4, %xmm3
	addsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm3
	subsd	%xmm2, %xmm8
	addsd	%xmm1, %xmm3
	movsd	%xmm8, 176(%rbx)
	movsd	%xmm3, 168(%rbx)
	jmp	.L365
.L362:
	subsd	%xmm12, %xmm2
	addsd	.LC1(%rip), %xmm2
	subsd	%xmm2, %xmm8
	movsd	%xmm8, 176(%rbx)
	jmp	.L365
.L361:
	subsd	%xmm11, %xmm0
	addsd	.LC1(%rip), %xmm0
	addsd	%xmm8, %xmm0
	movsd	%xmm0, 176(%rbx)
	jmp	.L365
.L360:
	subsd	%xmm10, %xmm4
	movsd	.LC1(%rip), %xmm3
	addsd	%xmm4, %xmm3
	addsd	%xmm1, %xmm3
	movsd	%xmm3, 168(%rbx)
	jmp	.L365
.L356:
	subsd	%xmm12, %xmm2
	subsd	%xmm7, %xmm5
	movsd	.LC1(%rip), %xmm0
	addsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm5
	subsd	%xmm2, %xmm8
	subsd	%xmm5, %xmm1
	movsd	%xmm8, 176(%rbx)
	movsd	%xmm1, 168(%rbx)
	jmp	.L365
.L371:
	subsd	%xmm12, %xmm2
	movsd	.LC1(%rip), %xmm3
	movapd	%xmm2, %xmm0
	mulsd	%xmm6, %xmm0
	mulsd	%xmm9, %xmm2
	addsd	%xmm3, %xmm0
	subsd	%xmm0, %xmm8
	movsd	%xmm8, 176(%rbx)
	addsd	176(%r11), %xmm2
	jmp	.L384
.L373:
	subsd	%xmm12, %xmm2
	movsd	.LC1(%rip), %xmm5
	movapd	%xmm2, %xmm0
	mulsd	%xmm6, %xmm0
	mulsd	%xmm9, %xmm2
	addsd	%xmm5, %xmm0
	subsd	%xmm0, %xmm8
	movsd	%xmm8, 176(%rbx)
	addsd	176(%r11), %xmm2
.L385:
	movsd	%xmm2, 176(%r11)
	subsd	%xmm10, %xmm4
	mulsd	%xmm4, %xmm6
	movapd	%xmm4, %xmm3
	addsd	%xmm5, %xmm6
.L387:
	mulsd	%xmm9, %xmm3
	addsd	%xmm1, %xmm6
	movsd	%xmm6, 168(%rbx)
	movsd	168(%r11), %xmm0
	subsd	%xmm3, %xmm0
	movsd	%xmm0, 168(%r11)
	jmp	.L365
.L374:
	subsd	%xmm7, %xmm5
	mulsd	%xmm5, %xmm6
	addsd	.LC1(%rip), %xmm6
	jmp	.L386
.L375:
	subsd	%xmm10, %xmm4
	mulsd	%xmm4, %xmm6
	movapd	%xmm4, %xmm3
	addsd	.LC1(%rip), %xmm6
	jmp	.L387
.L376:
	subsd	%xmm11, %xmm0
	mulsd	%xmm0, %xmm6
	addsd	.LC1(%rip), %xmm6
	mulsd	%xmm9, %xmm0
	addsd	%xmm8, %xmm6
	movsd	%xmm6, 176(%rbx)
	movsd	176(%r11), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 176(%r11)
	jmp	.L365
.L377:
	subsd	%xmm12, %xmm2
	mulsd	%xmm2, %xmm6
	addsd	.LC1(%rip), %xmm6
	mulsd	%xmm9, %xmm2
	subsd	%xmm6, %xmm8
	movsd	%xmm8, 176(%rbx)
	addsd	176(%r11), %xmm2
	movsd	%xmm2, 176(%r11)
	jmp	.L365
	.p2align 4,,10
	.p2align 3
.L378:
	subsd	%xmm11, %xmm0
	movsd	.LC1(%rip), %xmm5
	movapd	%xmm0, %xmm2
	mulsd	%xmm6, %xmm2
	mulsd	%xmm9, %xmm0
	addsd	%xmm5, %xmm2
	addsd	%xmm8, %xmm2
	movsd	%xmm2, 176(%rbx)
	movsd	176(%r11), %xmm2
	subsd	%xmm0, %xmm2
	jmp	.L385
	.p2align 4,,10
	.p2align 3
.L363:
	subsd	%xmm10, %xmm4
	subsd	%xmm11, %xmm0
	movsd	.LC1(%rip), %xmm2
	movapd	%xmm4, %xmm3
	addsd	%xmm2, %xmm0
	addsd	%xmm2, %xmm3
	addsd	%xmm8, %xmm0
	addsd	%xmm1, %xmm3
	movsd	%xmm0, 176(%rbx)
	movsd	%xmm3, 168(%rbx)
	jmp	.L365
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC3:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision18NewCollisionBranchEyyyy
	.def	_ZN3wze6engine9collision18NewCollisionBranchEyyyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collision18NewCollisionBranchEyyyy
_ZN3wze6engine9collision18NewCollisionBranchEyyyy:
.LFB8439:
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
	movq	192(%rsp), %rbx
	movq	16(%rcx), %rdi
	movq	%r9, 184(%rsp)
	movq	%rcx, %r12
	movq	%rdx, %rbp
	movq	%r8, %rsi
	cmpq	8(%rcx), %rdx
	jnb	.L390
	movq	%rdx, %r14
	leaq	0(,%rbx,8), %rax
	salq	$4, %r14
	movq	%rax, 56(%rsp)
	leaq	(%rdi,%r14), %r15
	movq	(%r15), %r13
	cmpq	%r13, %rbx
	jnb	.L407
	movq	$0, 64(%rsp)
	xorl	%r11d, %r11d
	movq	%r15, %rsi
	movq	%rdi, 72(%rsp)
	movq	%r8, %rdi
	.p2align 4,,10
	.p2align 3
.L393:
	cmpq	%r11, %rbx
	je	.L392
	cmpq	%r11, %rdi
	je	.L392
	movq	8(%rsi), %rax
	movq	56(%rsp), %rcx
	movq	(%rax,%r11,8), %r15
	movq	(%rax,%rcx), %rdx
	movq	%r12, %rcx
	movq	%r15, %r8
	call	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	testl	%eax, %eax
	jne	.L434
.L392:
	addq	$1, %r11
	cmpq	%r11, %r13
	jne	.L393
	movq	%rdi, %rsi
	movq	72(%rsp), %rdi
.L394:
	xorl	%r15d, %r15d
	movq	%r13, %rax
	movq	%rbx, 192(%rsp)
	movq	%r12, %rbx
	movq	192(%rsp), %r12
	cmpq	%rax, %r15
	jnb	.L435
.L406:
	cmpq	%r15, %rsi
	je	.L433
	cmpq	%r15, %r12
	je	.L433
	movq	8(%rdi,%r14), %rdx
	movq	64(%rsp), %rcx
	leaq	0(,%r15,8), %r13
	movq	(%rdx,%r15,8), %r9
	cmpq	184(%rsp), %rcx
	jb	.L401
	cmpq	%rax, %r12
	jnb	.L431
	movq	56(%rsp), %rax
	xorl	%r8d, %r8d
	movq	%rbx, %rcx
	movq	(%rdx,%rax), %rdx
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
.L433:
	movq	8(%rbx), %rax
	movq	16(%rbx), %rdi
	addq	$1, %r15
	cmpq	%rax, %rbp
	jnb	.L390
.L405:
	movq	(%rdi,%r14), %rax
	cmpq	%rax, %r15
	jb	.L406
.L435:
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
.L401:
	movq	184(%rsp), %rdi
	movq	144(%r9), %r8
	subq	%rcx, %rdi
	addq	%rdi, %r8
	cmpq	%rax, %r12
	jnb	.L431
	movq	56(%rsp), %rax
	movq	%rbx, %rcx
	movq	(%rdx,%rax), %rdx
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	testb	%al, %al
	je	.L433
	movq	%r15, 32(%rsp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	call	_ZN3wze6engine9collision18NewCollisionBranchEyyyy
	movq	16(%rbx), %rdi
	cmpq	8(%rbx), %rbp
	jnb	.L390
	leaq	(%rdi,%r14), %rax
	movq	(%rax), %rdx
	movq	8(%rax), %rax
	cmpq	%rdx, %r15
	jnb	.L436
	movq	(%rax,%r13), %r9
	cmpq	%rdx, %r12
	jnb	.L431
	movq	56(%rsp), %rcx
	xorl	%r8d, %r8d
	addq	$1, %r15
	movq	(%rax,%rcx), %rdx
	movq	%rbx, %rcx
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	jmp	.L405
	.p2align 4,,10
	.p2align 3
.L434:
	movq	144(%r15), %rcx
	addq	%rcx, 64(%rsp)
	jmp	.L392
.L390:
	leaq	.LC3(%rip), %rcx
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L431:
	movq	%r12, %rbx
.L402:
	leaq	.LC3(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L407:
	xorl	%eax, %eax
	jmp	.L391
.L396:
	cmpq	%rax, %rsi
	je	.L395
	cmpq	%rax, %rbx
	jne	.L402
.L395:
	addq	$1, %rax
.L391:
	cmpq	%rax, %r13
	jne	.L396
	xorl	%eax, %eax
	movq	%rax, 64(%rsp)
	jmp	.L394
.L436:
	leaq	.LC3(%rip), %rcx
	movq	%r15, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision21ResolveCollisionLayerEy
	.def	_ZN3wze6engine9collision21ResolveCollisionLayerEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collision21ResolveCollisionLayerEy
_ZN3wze6engine9collision21ResolveCollisionLayerEy:
.LFB8438:
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
	movq	8(%rcx), %r12
	movq	16(%rcx), %rsi
	movq	%rcx, %rdi
	movq	%rdx, %rbp
	cmpq	%r12, %rdx
	jnb	.L439
	movq	%rdx, %rax
	xorl	%r14d, %r14d
	salq	$4, %rax
	movq	%rax, 72(%rsp)
	addq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L453:
	movq	(%rsi), %rbx
	cmpq	%rbx, %r14
	jnb	.L466
	movq	$0, 56(%rsp)
	leaq	0(,%r14,8), %r13
	xorl	%r11d, %r11d
	jmp	.L441
	.p2align 4,,10
	.p2align 3
.L440:
	addq	$1, %r11
	cmpq	%r11, %rbx
	je	.L467
.L441:
	cmpq	%r14, %r11
	je	.L440
	movq	8(%rsi), %rax
	movq	%rdi, %rcx
	movq	(%rax,%r11,8), %r15
	movq	(%rax,%r13), %rdx
	movq	%r15, %r8
	call	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	testl	%eax, %eax
	je	.L440
	addq	$1, %r11
	movq	144(%r15), %rcx
	addq	%rcx, 56(%rsp)
	cmpq	%r11, %rbx
	jne	.L441
	.p2align 4,,10
	.p2align 3
.L467:
	cmpq	%r12, %rbp
	jnb	.L439
	xorl	%ebx, %ebx
	jmp	.L443
	.p2align 4,,10
	.p2align 3
.L469:
	xorl	%r8d, %r8d
	movq	%rax, %rdx
	movq	%rdi, %rcx
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
.L448:
	addq	$1, %rbx
	cmpq	%r12, %rbp
	jnb	.L439
.L443:
	movq	(%rsi), %rax
	cmpq	%rax, %rbx
	jnb	.L468
.L452:
	cmpq	%r14, %rbx
	je	.L448
	movq	8(%rsi), %rdx
	cmpq	%rax, %r14
	jnb	.L465
	movq	(%rdx,%r13), %rax
	movq	(%rdx,%rbx,8), %r9
	leaq	0(,%rbx,8), %r15
	movq	136(%rax), %r11
	cmpq	%r11, 56(%rsp)
	jnb	.L469
	movq	56(%rsp), %rcx
	movq	%rax, %rdx
	subq	%rcx, %r11
	movq	%rdi, %rcx
	movq	%r11, %r8
	addq	144(%r9), %r8
	movq	%r11, 64(%rsp)
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	movq	64(%rsp), %r11
	testb	%al, %al
	je	.L448
	movq	%rbx, 32(%rsp)
	movq	%r11, %r9
	movq	%r14, %r8
	movq	%rbp, %rdx
	movq	%rdi, %rcx
	call	_ZN3wze6engine9collision18NewCollisionBranchEyyyy
	movq	8(%rdi), %r12
	movq	16(%rdi), %rsi
	cmpq	%r12, %rbp
	jnb	.L439
	movq	72(%rsp), %rax
	addq	%rax, %rsi
	movq	(%rsi), %rdx
	movq	8(%rsi), %rax
	cmpq	%rdx, %rbx
	jnb	.L470
	movq	(%rax,%r15), %r9
	cmpq	%rdx, %r14
	jnb	.L465
	movq	(%rax,%r13), %rdx
	xorl	%r8d, %r8d
	movq	%rdi, %rcx
	addq	$1, %rbx
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	movq	(%rsi), %rax
	cmpq	%rax, %rbx
	jb	.L452
	.p2align 4,,10
	.p2align 3
.L468:
	addq	$1, %r14
	cmpq	%r12, %rbp
	jb	.L453
.L439:
	leaq	.LC3(%rip), %rcx
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L466:
	cmpq	%r12, %rbp
	jnb	.L439
	xorl	%r12d, %r12d
	jmp	.L455
	.p2align 4,,10
	.p2align 3
.L457:
	movq	8(%rsi), %rax
	leaq	0(,%r12,8), %r13
	movq	(%rax,%r12,8), %rcx
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv
	movq	16(%rdi), %rsi
	cmpq	8(%rdi), %rbp
	jnb	.L439
	movq	72(%rsp), %rax
	addq	%rax, %rsi
	movq	(%rsi), %rbx
	movq	8(%rsi), %rax
	cmpq	%rbx, %r12
	jnb	.L471
	movq	(%rax,%r13), %rax
	addq	$1, %r12
	movl	234(%rax), %edx
	movupd	168(%rax), %xmm0
	movl	%edx, 238(%rax)
	movups	%xmm0, 184(%rax)
.L455:
	cmpq	%rbx, %r12
	jb	.L457
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
.L465:
	leaq	.LC3(%rip), %rcx
	movq	%r14, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L471:
	leaq	.LC3(%rip), %rcx
	movq	%r12, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L470:
	leaq	.LC3(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC1:
	.long	-350469331
	.long	1058682594
	.align 8
.LC2:
	.long	0
	.long	1072693248
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv;	.scl	2;	.type	32;	.endef
