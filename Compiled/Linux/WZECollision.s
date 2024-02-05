	.file	"WZECollision.cpp"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"neo::array(): Memory allocation failed\nParams: Length: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collisionC2EPS0_
	.type	_ZN3wze6engine9collisionC2EPS0_, @function
_ZN3wze6engine9collisionC2EPS0_:
.LFB2232:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	%rsi, (%rdi)
	movq	$256, 8(%rdi)
	movl	$4096, %edi
	call	malloc@PLT
	movq	%rax, 16(%rbx)
	testq	%rax, %rax
	je	.L7
	leaq	4096(%rax), %rdx
	.p2align 4,,10
	.p2align 3
.L3:
	movq	$0, (%rax)
	addq	$16, %rax
	movq	$0, -8(%rax)
	cmpq	%rdx, %rax
	jne	.L3
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L7:
	.cfi_restore_state
	leaq	.LC0(%rip), %rdi
	movl	$256, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2232:
	.size	_ZN3wze6engine9collisionC2EPS0_, .-_ZN3wze6engine9collisionC2EPS0_
	.globl	_ZN3wze6engine9collisionC1EPS0_
	.set	_ZN3wze6engine9collisionC1EPS0_,_ZN3wze6engine9collisionC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision14CheckCollisionEdddddddd
	.type	_ZN3wze6engine9collision14CheckCollisionEdddddddd, @function
_ZN3wze6engine9collision14CheckCollisionEdddddddd:
.LFB2234:
	.cfi_startproc
	xorl	%eax, %eax
	comisd	%xmm2, %xmm4
	ja	.L8
	comisd	%xmm6, %xmm0
	ja	.L8
	comisd	%xmm1, %xmm7
	ja	.L8
	comisd	%xmm5, %xmm3
	ja	.L8
	comisd	%xmm0, %xmm6
	jb	.L10
	comisd	%xmm6, %xmm2
	jnb	.L12
	comisd	%xmm4, %xmm0
	jnb	.L13
	comisd	%xmm0, %xmm4
	jnb	.L14
	comisd	%xmm4, %xmm2
	jnb	.L15
	.p2align 4,,10
	.p2align 3
.L16:
	comisd	%xmm0, %xmm6
	jnb	.L29
.L49:
	comisd	%xmm4, %xmm0
	jnb	.L34
.L64:
	comisd	%xmm0, %xmm4
	jnb	.L35
.L42:
	comisd	%xmm4, %xmm2
	jb	.L125
.L44:
	comisd	%xmm2, %xmm6
	jnb	.L52
.L125:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L27:
	comisd	%xmm1, %xmm5
	movl	$1, %eax
	jb	.L10
.L8:
	ret
	.p2align 4,,10
	.p2align 3
.L10:
	comisd	%xmm0, %xmm4
	jnb	.L14
.L25:
	comisd	%xmm4, %xmm2
	jb	.L16
.L28:
	comisd	%xmm2, %xmm6
	jnb	.L15
	comisd	%xmm0, %xmm6
	jb	.L49
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L14:
	comisd	%xmm4, %xmm2
	jnb	.L22
	comisd	%xmm0, %xmm6
	jnb	.L29
.L129:
	comisd	%xmm4, %xmm0
	jb	.L35
.L34:
	comisd	%xmm0, %xmm6
	jb	.L64
	.p2align 4,,10
	.p2align 3
.L51:
	comisd	%xmm7, %xmm3
	jb	.L64
.L77:
	comisd	%xmm3, %xmm5
	jb	.L64
.L104:
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L12:
	comisd	%xmm3, %xmm7
	jb	.L114
	comisd	%xmm7, %xmm1
	movl	$1, %eax
	jnb	.L8
	comisd	%xmm4, %xmm0
	jnb	.L19
	comisd	%xmm0, %xmm4
	jnb	.L20
.L21:
	comisd	%xmm4, %xmm2
	jnb	.L135
	comisd	%xmm3, %xmm5
	jnb	.L58
	comisd	%xmm4, %xmm0
	jnb	.L51
	xorl	%eax, %eax
	comisd	%xmm0, %xmm4
	jb	.L42
	ret
	.p2align 4,,10
	.p2align 3
.L114:
	comisd	%xmm4, %xmm0
	jnb	.L19
	comisd	%xmm0, %xmm4
	jb	.L21
	.p2align 4,,10
	.p2align 3
.L22:
	comisd	%xmm3, %xmm7
	jnb	.L20
	comisd	%xmm2, %xmm6
	jnb	.L15
	comisd	%xmm0, %xmm6
	jb	.L129
.L33:
	comisd	%xmm3, %xmm5
	jb	.L47
.L58:
	comisd	%xmm5, %xmm1
	movl	$1, %eax
	jnb	.L8
	comisd	%xmm4, %xmm0
	jb	.L136
.L55:
	comisd	%xmm7, %xmm3
	movl	$1, %eax
	jb	.L64
	ret
	.p2align 4,,10
	.p2align 3
.L15:
	comisd	%xmm7, %xmm1
	jb	.L119
.L80:
	comisd	%xmm1, %xmm5
	movl	$1, %eax
	jnb	.L8
	comisd	%xmm0, %xmm6
	jnb	.L41
	comisd	%xmm0, %xmm4
	jb	.L42
	comisd	%xmm3, %xmm5
	jb	.L44
	ret
.L121:
	comisd	%xmm4, %xmm0
	jnb	.L51
	.p2align 4,,10
	.p2align 3
.L35:
	comisd	%xmm4, %xmm2
	jb	.L125
.L61:
	comisd	%xmm3, %xmm5
	jb	.L44
.L56:
	comisd	%xmm5, %xmm1
	movl	$1, %eax
	jb	.L44
	ret
	.p2align 4,,10
	.p2align 3
.L13:
	comisd	%xmm7, %xmm1
	jnb	.L27
	comisd	%xmm0, %xmm4
	jnb	.L14
	comisd	%xmm4, %xmm2
	jnb	.L28
	.p2align 4,,10
	.p2align 3
.L29:
	comisd	%xmm6, %xmm2
	jnb	.L33
.L45:
	comisd	%xmm4, %xmm0
	jnb	.L51
	comisd	%xmm0, %xmm4
	jnb	.L35
	comisd	%xmm4, %xmm2
	jb	.L125
	.p2align 4,,10
	.p2align 3
.L52:
	comisd	%xmm7, %xmm3
	jb	.L125
	comisd	%xmm3, %xmm5
	setnb	%al
	ret
	.p2align 4,,10
	.p2align 3
.L20:
	comisd	%xmm7, %xmm1
	movl	$1, %eax
	jb	.L28
	ret
	.p2align 4,,10
	.p2align 3
.L119:
	comisd	%xmm0, %xmm6
	jnb	.L29
	comisd	%xmm0, %xmm4
	jnb	.L61
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L19:
	comisd	%xmm7, %xmm1
	jb	.L115
	comisd	%xmm1, %xmm5
	movl	$1, %eax
	jnb	.L8
	comisd	%xmm0, %xmm4
	jnb	.L22
	jmp	.L25
.L41:
	ucomisd	%xmm6, %xmm2
	jp	.L45
	jne	.L45
	comisd	%xmm3, %xmm5
	jnb	.L8
	.p2align 4,,10
	.p2align 3
.L47:
	comisd	%xmm4, %xmm0
	jb	.L64
	jmp	.L51
.L115:
	comisd	%xmm0, %xmm4
	jnb	.L22
	ucomisd	%xmm6, %xmm2
	jp	.L113
	je	.L74
.L113:
	comisd	%xmm3, %xmm5
	jnb	.L76
	comisd	%xmm7, %xmm3
	jnb	.L77
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L136:
	comisd	%xmm0, %xmm4
	jb	.L42
	jmp	.L56
.L135:
	comisd	%xmm2, %xmm6
	jnb	.L15
	comisd	%xmm3, %xmm5
	jb	.L121
	comisd	%xmm5, %xmm1
	jnb	.L104
	comisd	%xmm4, %xmm0
	jnb	.L55
	jmp	.L56
.L74:
	comisd	%xmm7, %xmm1
	jnb	.L80
	comisd	%xmm3, %xmm5
	jb	.L51
.L76:
	comisd	%xmm5, %xmm1
	jb	.L55
	jmp	.L104
	.cfi_endproc
.LFE2234:
	.size	_ZN3wze6engine9collision14CheckCollisionEdddddddd, .-_ZN3wze6engine9collision14CheckCollisionEdddddddd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	.type	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_, @function
_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_:
.LFB2235:
	.cfi_startproc
	movq	%rsi, %rax
	pxor	%xmm0, %xmm0
	pxor	%xmm10, %xmm10
	movq	%rdi, %r8
	movzwl	238(%rsi), %esi
	pxor	%xmm5, %xmm5
	pxor	%xmm6, %xmm6
	movsd	184(%rax), %xmm8
	pxor	%xmm9, %xmm9
	movsd	168(%rdx), %xmm4
	movl	%esi, %ecx
	cvtsi2sdl	%esi, %xmm9
	movzwl	234(%rdx), %esi
	shrw	%cx
	movzwl	%cx, %ecx
	cvtsi2sdl	%esi, %xmm6
	cvtsi2sdl	%ecx, %xmm0
	movzwl	240(%rax), %ecx
	movl	%ecx, %edi
	shrw	%di
	subsd	%xmm0, %xmm8
	movzwl	%di, %edi
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	movl	%esi, %ecx
	cvtsi2sdl	%edi, %xmm10
	shrw	%cx
	addsd	192(%rax), %xmm10
	movzwl	%cx, %ecx
	addsd	%xmm8, %xmm9
	movapd	%xmm10, %xmm11
	subsd	%xmm0, %xmm11
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	movzwl	236(%rdx), %ecx
	movl	%ecx, %edi
	shrw	%di
	subsd	%xmm0, %xmm4
	movzwl	%di, %edi
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edi, %xmm5
	addsd	176(%rdx), %xmm5
	cvtsi2sdl	%ecx, %xmm0
	comisd	%xmm9, %xmm4
	addsd	%xmm4, %xmm6
	movapd	%xmm5, %xmm7
	subsd	%xmm0, %xmm7
	ja	.L138
	comisd	%xmm6, %xmm8
	ja	.L138
	comisd	%xmm10, %xmm7
	ja	.L138
	comisd	%xmm5, %xmm11
	ja	.L138
	comisd	%xmm8, %xmm6
	jb	.L308
	comisd	%xmm6, %xmm9
	jb	.L347
	xorl	%edx, %edx
	comisd	%xmm11, %xmm7
	jnb	.L137
	comisd	%xmm4, %xmm8
	jb	.L338
	comisd	%xmm7, %xmm10
	jb	.L310
	comisd	%xmm10, %xmm5
	jnb	.L137
	comisd	%xmm8, %xmm4
	jnb	.L151
	.p2align 4,,10
	.p2align 3
.L152:
	comisd	%xmm9, %xmm6
	jnb	.L146
	comisd	%xmm8, %xmm6
	jnb	.L148
	comisd	%xmm4, %xmm8
	jnb	.L162
.L173:
	comisd	%xmm11, %xmm5
	jb	.L138
	xorl	%edx, %edx
	comisd	%xmm5, %xmm10
	jb	.L185
.L137:
	movl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L308:
	comisd	%xmm8, %xmm4
	jnb	.L157
	comisd	%xmm4, %xmm9
	jnb	.L348
	comisd	%xmm8, %xmm6
	jb	.L316
.L158:
	comisd	%xmm6, %xmm9
	jnb	.L148
	comisd	%xmm4, %xmm8
	jnb	.L178
.L163:
	comisd	%xmm4, %xmm9
	jnb	.L173
	.p2align 4,,10
	.p2align 3
.L138:
	pxor	%xmm1, %xmm1
	pxor	%xmm2, %xmm2
	pxor	%xmm12, %xmm12
	movq	%r8, %rdi
	movzwl	234(%rax), %ecx
	movsd	168(%rax), %xmm0
	movl	%ecx, %edx
	cvtsi2sdl	%ecx, %xmm2
	shrw	%dx
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm1
	movzwl	236(%rax), %edx
	movl	%edx, %esi
	cvtsi2sdl	%edx, %xmm12
	xorl	%edx, %edx
	shrw	%si
	subsd	%xmm1, %xmm0
	movzwl	%si, %esi
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%esi, %xmm1
	addsd	176(%rax), %xmm1
	addsd	%xmm0, %xmm2
	movapd	%xmm1, %xmm3
	subsd	%xmm12, %xmm3
	call	_ZN3wze6engine9collision14CheckCollisionEdddddddd
	testb	%al, %al
	je	.L137
	comisd	%xmm4, %xmm8
	jb	.L318
	comisd	%xmm9, %xmm6
	jnb	.L197
	ucomisd	%xmm4, %xmm8
	jp	.L300
	je	.L198
.L300:
	comisd	%xmm7, %xmm11
	jb	.L349
	.p2align 4,,10
	.p2align 3
.L200:
	comisd	%xmm10, %xmm5
	jnb	.L209
	comisd	%xmm11, %xmm7
	jnb	.L209
	comisd	%xmm4, %xmm8
	ja	.L231
	comisd	%xmm9, %xmm6
	ja	.L244
	comisd	%xmm4, %xmm8
	ja	.L231
	.p2align 4,,10
	.p2align 3
.L232:
	comisd	%xmm9, %xmm6
	ja	.L228
.L326:
	xorl	%edx, %edx
	jmp	.L137
	.p2align 4,,10
	.p2align 3
.L318:
	comisd	%xmm8, %xmm4
	jb	.L203
.L198:
	comisd	%xmm6, %xmm9
	jnb	.L197
	comisd	%xmm7, %xmm11
	jnb	.L200
	comisd	%xmm11, %xmm7
	jnb	.L205
	comisd	%xmm9, %xmm6
	jbe	.L216
.L226:
	comisd	%xmm10, %xmm5
	jbe	.L218
.L224:
	comisd	%xmm4, %xmm9
	jnb	.L274
	comisd	%xmm7, %xmm10
	movl	$8, %edx
	jnb	.L137
	subsd	%xmm4, %xmm2
	subsd	%xmm7, %xmm1
	movl	$1, %edx
	comisd	%xmm1, %xmm2
	ja	.L137
	comisd	%xmm2, %xmm1
	movl	$8, %edx
	movl	$32, %eax
	cmovbe	%eax, %edx
	jmp	.L137
	.p2align 4,,10
	.p2align 3
.L197:
	comisd	%xmm10, %xmm7
	movl	$1, %edx
	ja	.L137
	comisd	%xmm5, %xmm11
	movl	$2, %edx
	ja	.L137
.L203:
	comisd	%xmm7, %xmm11
	jnb	.L200
	comisd	%xmm11, %xmm7
	jnb	.L205
	comisd	%xmm4, %xmm8
	jbe	.L325
	comisd	%xmm10, %xmm5
	ja	.L221
	comisd	%xmm9, %xmm6
	jbe	.L222
	comisd	%xmm10, %xmm5
	ja	.L224
	jmp	.L346
	.p2align 4,,10
	.p2align 3
.L349:
	comisd	%xmm11, %xmm7
	jb	.L350
	comisd	%xmm5, %xmm10
	jb	.L221
	.p2align 4,,10
	.p2align 3
.L209:
	comisd	%xmm6, %xmm8
	movl	$4, %edx
	ja	.L137
	comisd	%xmm9, %xmm4
	movl	$8, %edx
	ja	.L137
	comisd	%xmm4, %xmm8
	jbe	.L351
	comisd	%xmm10, %xmm5
	ja	.L221
	comisd	%xmm9, %xmm6
	jbe	.L222
.L218:
	comisd	%xmm4, %xmm8
	jbe	.L228
.L346:
	comisd	%xmm7, %xmm11
	jbe	.L326
	.p2align 4,,10
	.p2align 3
.L231:
	comisd	%xmm8, %xmm6
	movl	$2, %edx
	jnb	.L137
	comisd	%xmm11, %xmm5
	movl	$4, %edx
	jnb	.L137
	subsd	%xmm0, %xmm6
	subsd	%xmm3, %xmm5
	movl	$2, %edx
	comisd	%xmm5, %xmm6
	ja	.L137
	comisd	%xmm6, %xmm5
	movl	$4, %edx
	movl	$64, %eax
	cmovbe	%eax, %edx
	jmp	.L137
	.p2align 4,,10
	.p2align 3
.L205:
	comisd	%xmm5, %xmm10
	jnb	.L209
	comisd	%xmm4, %xmm8
	ja	.L221
	comisd	%xmm9, %xmm6
	ja	.L224
	comisd	%xmm4, %xmm8
	jbe	.L232
	jmp	.L346
	.p2align 4,,10
	.p2align 3
.L221:
	comisd	%xmm8, %xmm6
	movl	$1, %edx
	jnb	.L137
	comisd	%xmm7, %xmm10
	movl	$4, %edx
	jnb	.L137
	subsd	%xmm0, %xmm6
	subsd	%xmm7, %xmm1
	movl	$1, %edx
	comisd	%xmm1, %xmm6
	ja	.L137
	comisd	%xmm6, %xmm1
	movl	$4, %edx
	movl	$16, %eax
	cmovbe	%eax, %edx
	jmp	.L137
	.p2align 4,,10
	.p2align 3
.L347:
	comisd	%xmm4, %xmm8
	jnb	.L142
	comisd	%xmm4, %xmm9
	jnb	.L352
.L309:
	comisd	%xmm8, %xmm6
	jnb	.L158
	comisd	%xmm4, %xmm8
	jb	.L163
.L162:
	comisd	%xmm8, %xmm6
	jnb	.L178
.L187:
	comisd	%xmm8, %xmm4
	jnb	.L163
	comisd	%xmm4, %xmm9
	jb	.L138
.L185:
	comisd	%xmm9, %xmm6
	jb	.L138
.L176:
	xorl	%edx, %edx
	comisd	%xmm7, %xmm11
	jnb	.L137
	jmp	.L138
	.p2align 4,,10
	.p2align 3
.L351:
	comisd	%xmm9, %xmm6
	jbe	.L216
	comisd	%xmm10, %xmm5
	movl	$1, %edx
	ja	.L137
	jmp	.L218
	.p2align 4,,10
	.p2align 3
.L316:
	comisd	%xmm4, %xmm8
	jb	.L187
	jmp	.L162
	.p2align 4,,10
	.p2align 3
.L348:
	comisd	%xmm9, %xmm6
	jnb	.L146
	comisd	%xmm8, %xmm6
	jb	.L187
	.p2align 4,,10
	.p2align 3
.L148:
	comisd	%xmm11, %xmm5
	jb	.L317
.L248:
	xorl	%edx, %edx
	comisd	%xmm5, %xmm10
	jnb	.L137
	comisd	%xmm4, %xmm8
	jb	.L185
.L178:
	xorl	%edx, %edx
.L344:
	comisd	%xmm7, %xmm11
	jnb	.L137
	jmp	.L187
	.p2align 4,,10
	.p2align 3
.L325:
	comisd	%xmm9, %xmm6
	jbe	.L216
	comisd	%xmm10, %xmm5
	ja	.L224
.L228:
	comisd	%xmm7, %xmm11
	jbe	.L326
.L244:
	comisd	%xmm4, %xmm9
	movl	$2, %edx
	jnb	.L137
	comisd	%xmm11, %xmm5
	movl	$8, %edx
	jnb	.L137
	subsd	%xmm4, %xmm2
	subsd	%xmm3, %xmm5
	movl	$2, %edx
	comisd	%xmm5, %xmm2
	ja	.L137
	comisd	%xmm2, %xmm5
	movl	$8, %edx
	movl	$128, %eax
	cmovbe	%eax, %edx
	jmp	.L137
	.p2align 4,,10
	.p2align 3
.L157:
	comisd	%xmm4, %xmm9
	jb	.L309
.L151:
	xorl	%edx, %edx
	comisd	%xmm11, %xmm7
	jnb	.L137
	jmp	.L152
	.p2align 4,,10
	.p2align 3
.L216:
	comisd	%xmm4, %xmm8
	jbe	.L232
.L222:
	comisd	%xmm7, %xmm11
	jbe	.L232
	jmp	.L231
	.p2align 4,,10
	.p2align 3
.L352:
	xorl	%edx, %edx
	comisd	%xmm11, %xmm7
	jnb	.L137
	.p2align 4,,10
	.p2align 3
.L146:
	comisd	%xmm7, %xmm10
	jb	.L158
.L249:
	xorl	%edx, %edx
	comisd	%xmm10, %xmm5
	jnb	.L137
	ucomisd	%xmm6, %xmm9
	jp	.L295
	je	.L170
.L295:
	xorl	%edx, %edx
	comisd	%xmm4, %xmm8
	jnb	.L344
	comisd	%xmm11, %xmm5
	jb	.L138
	jmp	.L137
	.p2align 4,,10
	.p2align 3
.L142:
	comisd	%xmm7, %xmm10
	jb	.L311
	xorl	%edx, %edx
	comisd	%xmm10, %xmm5
	jnb	.L137
.L311:
	comisd	%xmm8, %xmm4
	jnb	.L157
	comisd	%xmm4, %xmm9
	jb	.L158
	jmp	.L152
	.p2align 4,,10
	.p2align 3
.L317:
	comisd	%xmm4, %xmm8
	jb	.L173
	ucomisd	%xmm4, %xmm8
	jp	.L185
	jne	.L185
	jmp	.L173
.L353:
	xorl	%edx, %edx
.L338:
	comisd	%xmm11, %xmm7
	jnb	.L137
	comisd	%xmm9, %xmm6
	jnb	.L146
	jmp	.L148
	.p2align 4,,10
	.p2align 3
.L350:
	comisd	%xmm10, %xmm5
	ja	.L221
	comisd	%xmm9, %xmm6
	ja	.L226
	jmp	.L222
.L310:
	ucomisd	%xmm4, %xmm8
	jp	.L153
	je	.L353
.L153:
	ucomisd	%xmm6, %xmm9
	jp	.L243
	jne	.L243
	comisd	%xmm7, %xmm10
	jnb	.L249
	jmp	.L148
.L170:
	comisd	%xmm11, %xmm5
	jnb	.L137
	comisd	%xmm4, %xmm8
	jb	.L173
	ucomisd	%xmm4, %xmm8
	jp	.L176
	jne	.L176
	jmp	.L173
.L274:
	movl	$1, %edx
	jmp	.L137
.L243:
	comisd	%xmm11, %xmm5
	jnb	.L248
	jmp	.L138
	.cfi_endproc
.LFE2235:
	.size	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_, .-_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	.type	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_, @function
_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_:
.LFB2236:
	.cfi_startproc
	movq	%rdx, %r11
	movq	%rcx, %rdx
	movq	%rsi, %r10
	movq	%rcx, %r9
	call	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L354
	movzwl	234(%r10), %ecx
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	movsd	168(%r10), %xmm1
	pxor	%xmm5, %xmm5
	pxor	%xmm4, %xmm4
	pxor	%xmm3, %xmm3
	movsd	176(%r10), %xmm8
	movl	%ecx, %edx
	movapd	%xmm1, %xmm10
	movsd	168(%r9), %xmm7
	shrw	%dx
	cvtsi2sdl	%ecx, %xmm5
	movzwl	234(%r9), %ecx
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm0
	movzwl	236(%r10), %edx
	cvtsi2sdl	%ecx, %xmm4
	movl	%edx, %esi
	shrw	%si
	movzwl	%si, %esi
	subsd	%xmm0, %xmm10
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm2
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
	movzwl	236(%r9), %edx
	movl	%edx, %esi
	cvtsi2sdl	%edx, %xmm3
	movq	144(%r9), %rdx
	shrw	%si
	subsd	%xmm0, %xmm7
	movzwl	%si, %esi
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm0
	addsd	176(%r9), %xmm0
	addsd	%xmm7, %xmm4
	movapd	%xmm0, %xmm12
	subsd	%xmm3, %xmm12
	cmpq	%r11, %rdx
	jb	.L356
	cmpl	$32, %eax
	ja	.L357
	leaq	.L359(%rip), %rdx
	movl	%eax, %eax
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L359:
	.long	.L384-.L359
	.long	.L364-.L359
	.long	.L363-.L359
	.long	.L384-.L359
	.long	.L362-.L359
	.long	.L384-.L359
	.long	.L384-.L359
	.long	.L384-.L359
	.long	.L361-.L359
	.long	.L384-.L359
	.long	.L384-.L359
	.long	.L384-.L359
	.long	.L384-.L359
	.long	.L384-.L359
	.long	.L384-.L359
	.long	.L384-.L359
	.long	.L360-.L359
	.long	.L384-.L359
	.long	.L384-.L359
	.long	.L384-.L359
	.long	.L384-.L359
	.long	.L384-.L359
	.long	.L384-.L359
	.long	.L384-.L359
	.long	.L384-.L359
	.long	.L384-.L359
	.long	.L384-.L359
	.long	.L384-.L359
	.long	.L384-.L359
	.long	.L384-.L359
	.long	.L384-.L359
	.long	.L384-.L359
	.long	.L358-.L359
	.text
	.p2align 4,,10
	.p2align 3
.L372:
	cmpl	$64, %eax
	je	.L380
	cmpl	$128, %eax
	je	.L381
	.p2align 4,,10
	.p2align 3
.L384:
	xorl	%edi, %edi
.L354:
	movl	%edi, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L356:
	testq	%r11, %r11
	js	.L368
	pxor	%xmm9, %xmm9
	cvtsi2sdq	%r11, %xmm9
	addq	%r11, %rdx
	js	.L370
.L390:
	pxor	%xmm3, %xmm3
	cvtsi2sdq	%rdx, %xmm3
.L371:
	divsd	%xmm3, %xmm9
	movsd	.LC2(%rip), %xmm6
	subsd	%xmm9, %xmm6
	cmpl	$32, %eax
	ja	.L372
	leaq	.L374(%rip), %rdx
	movl	%eax, %eax
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L374:
	.long	.L384-.L374
	.long	.L379-.L374
	.long	.L378-.L374
	.long	.L384-.L374
	.long	.L377-.L374
	.long	.L384-.L374
	.long	.L384-.L374
	.long	.L384-.L374
	.long	.L376-.L374
	.long	.L384-.L374
	.long	.L384-.L374
	.long	.L384-.L374
	.long	.L384-.L374
	.long	.L384-.L374
	.long	.L384-.L374
	.long	.L384-.L374
	.long	.L375-.L374
	.long	.L384-.L374
	.long	.L384-.L374
	.long	.L384-.L374
	.long	.L384-.L374
	.long	.L384-.L374
	.long	.L384-.L374
	.long	.L384-.L374
	.long	.L384-.L374
	.long	.L384-.L374
	.long	.L384-.L374
	.long	.L384-.L374
	.long	.L384-.L374
	.long	.L384-.L374
	.long	.L384-.L374
	.long	.L384-.L374
	.long	.L373-.L374
	.text
	.p2align 4,,10
	.p2align 3
.L368:
	movq	%r11, %rcx
	movq	%r11, %rsi
	pxor	%xmm9, %xmm9
	shrq	%rcx
	andl	$1, %esi
	orq	%rsi, %rcx
	cvtsi2sdq	%rcx, %xmm9
	addsd	%xmm9, %xmm9
	addq	%r11, %rdx
	jns	.L390
.L370:
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm3, %xmm3
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm3
	addsd	%xmm3, %xmm3
	jmp	.L371
	.p2align 4,,10
	.p2align 3
.L357:
	cmpl	$64, %eax
	je	.L365
	cmpl	$128, %eax
	jne	.L354
	subsd	%xmm11, %xmm0
	subsd	%xmm7, %xmm5
	movsd	.LC1(%rip), %xmm2
	addsd	%xmm2, %xmm0
	addsd	%xmm2, %xmm5
	addsd	%xmm8, %xmm0
	subsd	%xmm5, %xmm1
	movsd	%xmm0, 176(%r10)
	movsd	%xmm1, 168(%r10)
	jmp	.L367
	.p2align 4,,10
	.p2align 3
.L381:
	subsd	%xmm11, %xmm0
	movsd	.LC1(%rip), %xmm3
	movapd	%xmm0, %xmm2
	mulsd	%xmm6, %xmm2
	mulsd	%xmm9, %xmm0
	addsd	%xmm3, %xmm2
	addsd	%xmm8, %xmm2
	movsd	%xmm2, 176(%r10)
	movsd	176(%r9), %xmm2
	subsd	%xmm0, %xmm2
.L386:
	movsd	%xmm2, 176(%r9)
	subsd	%xmm7, %xmm5
	mulsd	%xmm5, %xmm6
	addsd	%xmm3, %xmm6
.L388:
	subsd	%xmm6, %xmm1
	mulsd	%xmm9, %xmm5
	movsd	%xmm1, 168(%r10)
	addsd	168(%r9), %xmm5
	movsd	%xmm5, 168(%r9)
	.p2align 4,,10
	.p2align 3
.L367:
	movl	$1, %edi
	jmp	.L354
.L361:
	subsd	%xmm7, %xmm5
	addsd	.LC1(%rip), %xmm5
	subsd	%xmm5, %xmm1
	movsd	%xmm1, 168(%r10)
	jmp	.L367
.L360:
	subsd	%xmm10, %xmm4
	subsd	%xmm12, %xmm2
	movsd	.LC1(%rip), %xmm0
	movapd	%xmm4, %xmm3
	addsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm3
	subsd	%xmm2, %xmm8
	addsd	%xmm1, %xmm3
	movsd	%xmm8, 176(%r10)
	movsd	%xmm3, 168(%r10)
	jmp	.L367
.L364:
	subsd	%xmm12, %xmm2
	addsd	.LC1(%rip), %xmm2
	subsd	%xmm2, %xmm8
	movsd	%xmm8, 176(%r10)
	jmp	.L367
.L363:
	subsd	%xmm11, %xmm0
	addsd	.LC1(%rip), %xmm0
	addsd	%xmm8, %xmm0
	movsd	%xmm0, 176(%r10)
	jmp	.L367
.L362:
	subsd	%xmm10, %xmm4
	movsd	.LC1(%rip), %xmm3
	addsd	%xmm4, %xmm3
	addsd	%xmm1, %xmm3
	movsd	%xmm3, 168(%r10)
	jmp	.L367
.L358:
	subsd	%xmm12, %xmm2
	subsd	%xmm7, %xmm5
	movsd	.LC1(%rip), %xmm0
	addsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm5
	subsd	%xmm2, %xmm8
	subsd	%xmm5, %xmm1
	movsd	%xmm8, 176(%r10)
	movsd	%xmm1, 168(%r10)
	jmp	.L367
.L373:
	subsd	%xmm12, %xmm2
	movsd	.LC1(%rip), %xmm3
	movapd	%xmm2, %xmm0
	mulsd	%xmm6, %xmm0
	mulsd	%xmm9, %xmm2
	addsd	%xmm3, %xmm0
	subsd	%xmm0, %xmm8
	movsd	%xmm8, 176(%r10)
	addsd	176(%r9), %xmm2
	jmp	.L386
.L375:
	subsd	%xmm12, %xmm2
	movsd	.LC1(%rip), %xmm5
	movapd	%xmm2, %xmm0
	mulsd	%xmm6, %xmm0
	mulsd	%xmm9, %xmm2
	addsd	%xmm5, %xmm0
	subsd	%xmm0, %xmm8
	movsd	%xmm8, 176(%r10)
	addsd	176(%r9), %xmm2
.L387:
	movsd	%xmm2, 176(%r9)
	subsd	%xmm10, %xmm4
	mulsd	%xmm4, %xmm6
	movapd	%xmm4, %xmm3
	addsd	%xmm5, %xmm6
.L389:
	mulsd	%xmm9, %xmm3
	addsd	%xmm1, %xmm6
	movsd	%xmm6, 168(%r10)
	movsd	168(%r9), %xmm0
	subsd	%xmm3, %xmm0
	movsd	%xmm0, 168(%r9)
	jmp	.L367
.L376:
	subsd	%xmm7, %xmm5
	mulsd	%xmm5, %xmm6
	addsd	.LC1(%rip), %xmm6
	jmp	.L388
.L377:
	subsd	%xmm10, %xmm4
	mulsd	%xmm4, %xmm6
	movapd	%xmm4, %xmm3
	addsd	.LC1(%rip), %xmm6
	jmp	.L389
.L378:
	subsd	%xmm11, %xmm0
	mulsd	%xmm0, %xmm6
	addsd	.LC1(%rip), %xmm6
	mulsd	%xmm9, %xmm0
	addsd	%xmm8, %xmm6
	movsd	%xmm6, 176(%r10)
	movsd	176(%r9), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 176(%r9)
	jmp	.L367
.L379:
	subsd	%xmm12, %xmm2
	mulsd	%xmm2, %xmm6
	addsd	.LC1(%rip), %xmm6
	mulsd	%xmm9, %xmm2
	subsd	%xmm6, %xmm8
	movsd	%xmm8, 176(%r10)
	addsd	176(%r9), %xmm2
	movsd	%xmm2, 176(%r9)
	jmp	.L367
	.p2align 4,,10
	.p2align 3
.L380:
	subsd	%xmm11, %xmm0
	movsd	.LC1(%rip), %xmm5
	movapd	%xmm0, %xmm2
	mulsd	%xmm6, %xmm2
	mulsd	%xmm9, %xmm0
	addsd	%xmm5, %xmm2
	addsd	%xmm8, %xmm2
	movsd	%xmm2, 176(%r10)
	movsd	176(%r9), %xmm2
	subsd	%xmm0, %xmm2
	jmp	.L387
	.p2align 4,,10
	.p2align 3
.L365:
	subsd	%xmm10, %xmm4
	subsd	%xmm11, %xmm0
	movsd	.LC1(%rip), %xmm2
	movapd	%xmm4, %xmm3
	addsd	%xmm2, %xmm0
	addsd	%xmm2, %xmm3
	addsd	%xmm8, %xmm0
	addsd	%xmm1, %xmm3
	movsd	%xmm0, 176(%r10)
	movsd	%xmm3, 168(%r10)
	jmp	.L367
	.cfi_endproc
.LFE2236:
	.size	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_, .-_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision18NewCollisionBranchEyyyy
	.type	_ZN3wze6engine9collision18NewCollisionBranchEyyyy, @function
_ZN3wze6engine9collision18NewCollisionBranchEyyyy:
.LFB2238:
	.cfi_startproc
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
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	16(%rdi), %r11
	movq	%rcx, 24(%rsp)
	cmpq	8(%rdi), %rsi
	jnb	.L392
	movq	%rsi, %r13
	movq	%rdi, %r14
	movq	%rdx, %rbp
	movq	%r8, %rbx
	salq	$4, %r13
	leaq	0(,%r8,8), %rax
	leaq	(%r11,%r13), %r15
	movq	%rax, 8(%rsp)
	movq	(%r15), %r10
	cmpq	%r10, %r8
	jnb	.L409
	movq	$0, 16(%rsp)
	xorl	%r9d, %r9d
	movq	%r11, 32(%rsp)
	movq	%r15, %r11
	.p2align 4,,10
	.p2align 3
.L395:
	cmpq	%r9, %rbx
	je	.L394
	cmpq	%r9, %rbp
	je	.L394
	movq	8(%r11), %rax
	movq	8(%rsp), %rdi
	movq	(%rax,%r9,8), %r15
	movq	(%rax,%rdi), %rsi
	movq	%r14, %rdi
	movq	%r15, %rdx
	call	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	testl	%eax, %eax
	jne	.L438
.L394:
	addq	$1, %r9
	cmpq	%r9, %r10
	jne	.L395
	movq	32(%rsp), %r11
.L396:
	movq	%rbx, %rcx
	xorl	%r15d, %r15d
	movq	%r10, %rax
	movq	%r13, %rbx
	movq	%r14, %r13
	movq	%rcx, %r14
	cmpq	%rax, %r15
	jnb	.L439
.L408:
	cmpq	%r15, %rbp
	je	.L436
	cmpq	%r15, %r14
	je	.L436
	movq	8(%r11,%rbx), %rsi
	leaq	0(,%r15,8), %rcx
	movq	24(%rsp), %rdi
	movq	%rcx, 32(%rsp)
	movq	(%rsi,%r15,8), %rcx
	cmpq	%rdi, 16(%rsp)
	jnb	.L440
	movq	%rdi, %r11
	movq	16(%rsp), %rdi
	subq	%rdi, %r11
	movq	%r11, %rdx
	movq	%r11, 40(%rsp)
	addq	144(%rcx), %rdx
	cmpq	%rax, %r14
	jnb	.L433
	movq	8(%rsp), %rax
	movq	%r13, %rdi
	movq	(%rsi,%rax), %rsi
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	movq	40(%rsp), %r11
	testb	%al, %al
	jne	.L405
.L436:
	movq	8(%r13), %rax
	movq	16(%r13), %r11
	addq	$1, %r15
	cmpq	%rax, %r12
	jnb	.L392
.L407:
	movq	(%r11,%rbx), %rax
	cmpq	%rax, %r15
	jb	.L408
.L439:
	addq	$56, %rsp
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
.L438:
	.cfi_restore_state
	movq	144(%r15), %rcx
	addq	%rcx, 16(%rsp)
	jmp	.L394
	.p2align 4,,10
	.p2align 3
.L440:
	cmpq	%rax, %r14
	jnb	.L433
	movq	8(%rsp), %rax
	xorl	%edx, %edx
	movq	%r13, %rdi
	movq	(%rsi,%rax), %rsi
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	jmp	.L436
	.p2align 4,,10
	.p2align 3
.L405:
	movq	%r11, %rcx
	movq	%r15, %r8
	movq	%rbp, %rdx
	movq	%r12, %rsi
	movq	%r13, %rdi
	call	_ZN3wze6engine9collision18NewCollisionBranchEyyyy
	movq	16(%r13), %r11
	cmpq	8(%r13), %r12
	jnb	.L392
	leaq	(%r11,%rbx), %rax
	movq	(%rax), %rdx
	movq	8(%rax), %rax
	cmpq	%rdx, %r15
	jnb	.L441
	movq	32(%rsp), %rcx
	movq	%r11, 40(%rsp)
	movq	(%rax,%rcx), %rcx
	cmpq	%rdx, %r14
	jnb	.L433
	movq	8(%rsp), %rdx
	movq	%r13, %rdi
	addq	$1, %r15
	movq	(%rax,%rdx), %rsi
	xorl	%edx, %edx
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	movq	40(%rsp), %r11
	jmp	.L407
.L392:
	movq	%r12, %rsi
.L437:
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L433:
	movq	%r14, %rbx
.L404:
	movq	%rbx, %rsi
	jmp	.L437
.L409:
	xorl	%edx, %edx
	jmp	.L393
.L398:
	cmpq	%rdx, %rbp
	je	.L397
	cmpq	%rdx, %rbx
	jne	.L404
.L397:
	addq	$1, %rdx
.L393:
	cmpq	%rdx, %r10
	jne	.L398
	xorl	%eax, %eax
	movq	%rax, 16(%rsp)
	jmp	.L396
.L441:
	movq	%r15, %rsi
	jmp	.L437
	.cfi_endproc
.LFE2238:
	.size	_ZN3wze6engine9collision18NewCollisionBranchEyyyy, .-_ZN3wze6engine9collision18NewCollisionBranchEyyyy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision21ResolveCollisionLayerEy
	.type	_ZN3wze6engine9collision21ResolveCollisionLayerEy, @function
_ZN3wze6engine9collision21ResolveCollisionLayerEy:
.LFB2237:
	.cfi_startproc
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
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	8(%rdi), %r12
	movq	16(%rdi), %r11
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	cmpq	%r12, %rsi
	jnb	.L444
	movq	%rsi, %rax
	xorl	%ebp, %ebp
	salq	$4, %rax
	leaq	(%r11,%rax), %rbx
	movq	%rax, 40(%rsp)
	movq	(%rbx), %r9
	cmpq	%r9, %rbp
	jnb	.L473
	.p2align 4,,10
	.p2align 3
.L459:
	leaq	0(,%rbp,8), %r14
	xorl	%r15d, %r15d
	xorl	%r13d, %r13d
	jmp	.L446
	.p2align 4,,10
	.p2align 3
.L445:
	addq	$1, %r15
	cmpq	%r15, %r9
	je	.L474
.L446:
	cmpq	%r15, %rbp
	je	.L445
	movq	8(%rbx), %rax
	movq	16(%rsp), %rdi
	movq	(%rax,%r15,8), %r10
	movq	(%rax,%r14), %rsi
	movq	%r10, %rdx
	call	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	testl	%eax, %eax
	je	.L445
	addq	$1, %r15
	addq	144(%r10), %r13
	cmpq	%r15, %r9
	jne	.L446
	.p2align 4,,10
	.p2align 3
.L474:
	cmpq	%r12, 8(%rsp)
	jnb	.L444
	xorl	%r15d, %r15d
	.p2align 4,,10
	.p2align 3
.L448:
	movq	(%rbx), %rax
	cmpq	%rax, %r15
	jnb	.L475
.L457:
	cmpq	%r15, %rbp
	je	.L449
	movq	8(%rbx), %rdx
	cmpq	%rax, %rbp
	jnb	.L471
	movq	(%rdx,%r14), %rsi
	leaq	0(,%r15,8), %rax
	movq	(%rdx,%r15,8), %rcx
	movq	%rax, 32(%rsp)
	movq	136(%rsi), %r10
	cmpq	%r10, %r13
	jnb	.L451
	subq	%r13, %r10
	movq	16(%rsp), %rdi
	movq	%r10, %rdx
	addq	144(%rcx), %rdx
	movq	%r10, 24(%rsp)
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	movq	24(%rsp), %r10
	testb	%al, %al
	jne	.L476
.L449:
	addq	$1, %r15
	cmpq	%r12, 8(%rsp)
	jb	.L448
.L444:
	movq	8(%rsp), %rsi
.L470:
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L451:
	movq	16(%rsp), %rdi
	xorl	%edx, %edx
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	jmp	.L449
	.p2align 4,,10
	.p2align 3
.L476:
	movq	16(%rsp), %rbx
	movq	8(%rsp), %rsi
	movq	%r15, %r8
	movq	%r10, %rcx
	movq	%rbp, %rdx
	movq	%rbx, %rdi
	call	_ZN3wze6engine9collision18NewCollisionBranchEyyyy
	movq	8(%rbx), %r12
	movq	16(%rbx), %r11
	cmpq	%r12, 8(%rsp)
	jnb	.L444
	movq	40(%rsp), %rax
	leaq	(%r11,%rax), %rbx
	movq	(%rbx), %rdx
	movq	8(%rbx), %rax
	cmpq	%rdx, %r15
	jnb	.L477
	movq	32(%rsp), %rdi
	movq	(%rax,%rdi), %rcx
	cmpq	%rdx, %rbp
	jnb	.L471
	movq	(%rax,%r14), %rsi
	movq	16(%rsp), %rdi
	xorl	%edx, %edx
	addq	$1, %r15
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	movq	(%rbx), %rax
	cmpq	%rax, %r15
	jb	.L457
	.p2align 4,,10
	.p2align 3
.L475:
	addq	$1, %rbp
	cmpq	%r12, 8(%rsp)
	jnb	.L444
	movq	(%rbx), %r9
	cmpq	%r9, %rbp
	jb	.L459
.L473:
	testq	%r9, %r9
	je	.L468
	movq	8(%rbx), %rdx
	leaq	(%rdx,%r9,8), %rsi
	.p2align 4,,10
	.p2align 3
.L461:
	movq	(%rdx), %rax
	addq	$8, %rdx
	movupd	168(%rax), %xmm0
	movl	234(%rax), %ecx
	movups	%xmm0, 184(%rax)
	movl	%ecx, 238(%rax)
	cmpq	%rsi, %rdx
	jne	.L461
.L468:
	addq	$56, %rsp
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
.L471:
	.cfi_restore_state
	movq	%rbp, %rsi
	jmp	.L470
.L477:
	movq	%r15, %rsi
	jmp	.L470
	.cfi_endproc
.LFE2237:
	.size	_ZN3wze6engine9collision21ResolveCollisionLayerEy, .-_ZN3wze6engine9collision21ResolveCollisionLayerEy
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	-350469331
	.long	1058682594
	.align 8
.LC2:
	.long	0
	.long	1072693248
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
