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
	.globl	_ZN3wze6engine9collision21GetCollisionDirectionEdddddddddddd
	.type	_ZN3wze6engine9collision21GetCollisionDirectionEdddddddddddd, @function
_ZN3wze6engine9collision21GetCollisionDirectionEdddddddddddd:
.LFB2235:
	.cfi_startproc
	movsd	8(%rsp), %xmm8
	movsd	16(%rsp), %xmm11
	movsd	24(%rsp), %xmm9
	movsd	32(%rsp), %xmm10
	comisd	%xmm2, %xmm8
	ja	.L138
	comisd	%xmm9, %xmm0
	ja	.L138
	comisd	%xmm1, %xmm10
	ja	.L138
	comisd	%xmm11, %xmm3
	ja	.L138
	comisd	%xmm0, %xmm9
	jb	.L139
	comisd	%xmm9, %xmm2
	jnb	.L141
	comisd	%xmm8, %xmm0
	jnb	.L142
	comisd	%xmm0, %xmm8
	jnb	.L143
	comisd	%xmm8, %xmm2
	jnb	.L144
	.p2align 4,,10
	.p2align 3
.L145:
	comisd	%xmm0, %xmm9
	jnb	.L159
.L176:
	comisd	%xmm8, %xmm0
	jnb	.L164
.L192:
	comisd	%xmm0, %xmm8
	jnb	.L165
.L186:
	comisd	%xmm8, %xmm2
	jb	.L138
.L198:
	comisd	%xmm2, %xmm9
	jb	.L138
.L179:
	comisd	%xmm10, %xmm3
	jb	.L138
	xorl	%eax, %eax
	comisd	%xmm3, %xmm11
	jnb	.L137
	.p2align 4,,10
	.p2align 3
.L138:
	xorl	%eax, %eax
	comisd	%xmm6, %xmm8
	ja	.L137
	comisd	%xmm9, %xmm4
	ja	.L137
	comisd	%xmm5, %xmm10
	ja	.L137
	comisd	%xmm11, %xmm7
	ja	.L137
	comisd	%xmm4, %xmm9
	jb	.L408
	comisd	%xmm9, %xmm6
	jnb	.L206
	comisd	%xmm8, %xmm4
	jnb	.L207
	comisd	%xmm4, %xmm8
	jnb	.L208
	comisd	%xmm8, %xmm6
	jb	.L210
	comisd	%xmm10, %xmm5
	jnb	.L316
	comisd	%xmm10, %xmm7
	jb	.L254
	.p2align 4,,10
	.p2align 3
.L220:
	comisd	%xmm7, %xmm11
	jnb	.L213
	.p2align 4,,10
	.p2align 3
.L257:
	comisd	%xmm4, %xmm8
	jnb	.L229
.L221:
	comisd	%xmm8, %xmm6
	jb	.L370
.L263:
	comisd	%xmm6, %xmm9
	jb	.L370
.L245:
	comisd	%xmm10, %xmm7
	jb	.L370
	comisd	%xmm7, %xmm11
	jb	.L370
	.p2align 4,,10
	.p2align 3
.L213:
	comisd	%xmm8, %xmm0
	jb	.L422
	comisd	%xmm2, %xmm9
	jnb	.L272
	ucomisd	%xmm8, %xmm0
	jp	.L391
	je	.L273
.L391:
	comisd	%xmm10, %xmm3
	jnb	.L275
	comisd	%xmm3, %xmm10
	jb	.L277
	comisd	%xmm11, %xmm1
	jnb	.L282
	comisd	%xmm1, %xmm11
	ja	.L291
.L435:
	comisd	%xmm2, %xmm9
	jbe	.L370
	.p2align 4,,10
	.p2align 3
.L283:
	comisd	%xmm1, %xmm11
	ja	.L294
	comisd	%xmm8, %xmm0
	ja	.L295
.L298:
	comisd	%xmm10, %xmm3
	jbe	.L370
	comisd	%xmm8, %xmm2
	movl	$2, %eax
	jnb	.L137
	comisd	%xmm3, %xmm11
	movl	$8, %eax
	jnb	.L137
	subsd	%xmm8, %xmm6
	subsd	%xmm7, %xmm11
	movl	$2, %eax
	comisd	%xmm11, %xmm6
	ja	.L137
	comisd	%xmm6, %xmm11
	movl	$128, %edx
	movl	$8, %eax
	cmovbe	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L272:
	comisd	%xmm1, %xmm10
	movl	$1, %eax
	ja	.L137
	comisd	%xmm11, %xmm3
	movl	$2, %eax
	jbe	.L278
.L137:
	ret
	.p2align 4,,10
	.p2align 3
.L157:
	xorl	%eax, %eax
	comisd	%xmm1, %xmm11
	jnb	.L137
	.p2align 4,,10
	.p2align 3
.L139:
	comisd	%xmm0, %xmm8
	jnb	.L143
.L155:
	comisd	%xmm8, %xmm2
	jb	.L145
.L158:
	comisd	%xmm2, %xmm9
	jnb	.L144
	comisd	%xmm0, %xmm9
	jb	.L176
	jmp	.L163
	.p2align 4,,10
	.p2align 3
.L143:
	comisd	%xmm8, %xmm2
	jnb	.L152
	comisd	%xmm0, %xmm9
	jnb	.L159
.L432:
	comisd	%xmm8, %xmm0
	jb	.L165
.L164:
	comisd	%xmm0, %xmm9
	jb	.L192
	.p2align 4,,10
	.p2align 3
.L178:
	comisd	%xmm10, %xmm3
	jb	.L192
.L312:
	comisd	%xmm3, %xmm11
	jb	.L192
.L370:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L408:
	comisd	%xmm4, %xmm8
	jnb	.L208
	comisd	%xmm8, %xmm6
	jnb	.L222
	comisd	%xmm4, %xmm9
	jnb	.L210
.L242:
	comisd	%xmm8, %xmm4
	jb	.L257
.L228:
	comisd	%xmm4, %xmm9
	jb	.L257
	.p2align 4,,10
	.p2align 3
.L244:
	comisd	%xmm10, %xmm7
	jb	.L257
	jmp	.L220
	.p2align 4,,10
	.p2align 3
.L208:
	comisd	%xmm8, %xmm6
	jnb	.L216
	comisd	%xmm4, %xmm9
	jnb	.L210
	comisd	%xmm8, %xmm4
	jnb	.L228
	.p2align 4,,10
	.p2align 3
.L229:
	comisd	%xmm8, %xmm6
	jb	.L370
.L254:
	comisd	%xmm7, %xmm11
	jb	.L263
	comisd	%xmm11, %xmm5
	jnb	.L213
	comisd	%xmm6, %xmm9
	jb	.L370
	comisd	%xmm10, %xmm7
	jnb	.L213
	jmp	.L370
	.p2align 4,,10
	.p2align 3
.L141:
	comisd	%xmm3, %xmm10
	jb	.L400
	xorl	%eax, %eax
	comisd	%xmm10, %xmm1
	jnb	.L137
	comisd	%xmm8, %xmm0
	jnb	.L149
	comisd	%xmm0, %xmm8
	jnb	.L150
.L151:
	comisd	%xmm8, %xmm2
	jnb	.L444
	comisd	%xmm3, %xmm11
	jnb	.L185
	comisd	%xmm8, %xmm0
	jnb	.L178
	comisd	%xmm0, %xmm8
	jnb	.L138
	jmp	.L186
	.p2align 4,,10
	.p2align 3
.L400:
	comisd	%xmm8, %xmm0
	jnb	.L149
	comisd	%xmm0, %xmm8
	jb	.L151
	.p2align 4,,10
	.p2align 3
.L152:
	comisd	%xmm3, %xmm10
	jnb	.L150
	comisd	%xmm2, %xmm9
	jnb	.L144
	comisd	%xmm0, %xmm9
	jb	.L432
.L163:
	comisd	%xmm3, %xmm11
	jb	.L175
.L185:
	xorl	%eax, %eax
	comisd	%xmm11, %xmm1
	jnb	.L137
	comisd	%xmm8, %xmm0
	jb	.L445
.L182:
	xorl	%eax, %eax
	comisd	%xmm10, %xmm3
	jb	.L192
	ret
	.p2align 4,,10
	.p2align 3
.L206:
	comisd	%xmm7, %xmm10
	jb	.L409
	comisd	%xmm10, %xmm5
	jnb	.L213
	comisd	%xmm8, %xmm4
	jnb	.L207
	comisd	%xmm4, %xmm8
	jnb	.L214
.L215:
	comisd	%xmm8, %xmm6
	jnb	.L446
	comisd	%xmm7, %xmm11
	jnb	.L251
	comisd	%xmm8, %xmm4
	jnb	.L244
	xorl	%eax, %eax
	comisd	%xmm4, %xmm8
	jb	.L221
	ret
	.p2align 4,,10
	.p2align 3
.L409:
	comisd	%xmm8, %xmm4
	jnb	.L207
	comisd	%xmm4, %xmm8
	jb	.L215
	.p2align 4,,10
	.p2align 3
.L216:
	comisd	%xmm7, %xmm10
	jnb	.L214
.L222:
	comisd	%xmm6, %xmm9
	jnb	.L318
	comisd	%xmm4, %xmm9
	jb	.L242
.L241:
	comisd	%xmm7, %xmm11
	jnb	.L251
.L240:
	comisd	%xmm8, %xmm4
	jb	.L257
	jmp	.L244
	.p2align 4,,10
	.p2align 3
.L144:
	comisd	%xmm10, %xmm1
	jb	.L405
.L320:
	xorl	%eax, %eax
	comisd	%xmm1, %xmm11
	jnb	.L137
	comisd	%xmm0, %xmm9
	jb	.L171
	ucomisd	%xmm9, %xmm2
	jp	.L173
	jne	.L173
	comisd	%xmm3, %xmm11
	jnb	.L137
	.p2align 4,,10
	.p2align 3
.L175:
	comisd	%xmm8, %xmm0
	jb	.L192
	jmp	.L178
	.p2align 4,,10
	.p2align 3
.L422:
	comisd	%xmm0, %xmm8
	jb	.L278
.L273:
	comisd	%xmm9, %xmm2
	jnb	.L272
	comisd	%xmm10, %xmm3
	jnb	.L275
	comisd	%xmm3, %xmm10
	jb	.L280
	comisd	%xmm11, %xmm1
	jnb	.L282
	comisd	%xmm8, %xmm0
	jbe	.L435
.L277:
	comisd	%xmm1, %xmm11
	ja	.L291
	comisd	%xmm2, %xmm9
	ja	.L283
	.p2align 4,,10
	.p2align 3
.L292:
	comisd	%xmm10, %xmm3
	jbe	.L284
.L300:
	comisd	%xmm0, %xmm9
	movl	$2, %eax
	jnb	.L137
	comisd	%xmm3, %xmm11
	movl	$4, %eax
	jnb	.L137
	subsd	%xmm4, %xmm9
	subsd	%xmm7, %xmm11
	movl	$2, %eax
	comisd	%xmm11, %xmm9
	ja	.L137
	comisd	%xmm9, %xmm11
	movl	$64, %edx
	movl	$4, %eax
	cmovbe	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L278:
	comisd	%xmm10, %xmm3
	jb	.L285
.L275:
	comisd	%xmm1, %xmm11
	jb	.L285
.L282:
	comisd	%xmm9, %xmm0
	movl	$4, %eax
	ja	.L137
	comisd	%xmm2, %xmm8
	movl	$8, %eax
	ja	.L137
.L287:
	comisd	%xmm8, %xmm0
	jbe	.L280
	comisd	%xmm1, %xmm11
	ja	.L291
	comisd	%xmm2, %xmm9
	jbe	.L292
	comisd	%xmm1, %xmm11
	ja	.L294
.L295:
	comisd	%xmm10, %xmm3
	ja	.L300
	jmp	.L370
	.p2align 4,,10
	.p2align 3
.L285:
	comisd	%xmm3, %xmm10
	jb	.L287
	comisd	%xmm11, %xmm1
	jb	.L287
	jmp	.L282
	.p2align 4,,10
	.p2align 3
.L280:
	comisd	%xmm2, %xmm9
	ja	.L283
	comisd	%xmm8, %xmm0
	ja	.L292
.L284:
	comisd	%xmm2, %xmm9
	jbe	.L370
	jmp	.L298
	.p2align 4,,10
	.p2align 3
.L291:
	comisd	%xmm0, %xmm9
	movl	$1, %eax
	jnb	.L137
	comisd	%xmm10, %xmm1
	movl	$4, %eax
	jnb	.L137
	subsd	%xmm4, %xmm9
	subsd	%xmm10, %xmm5
	movl	$1, %eax
	comisd	%xmm5, %xmm9
	ja	.L137
	comisd	%xmm9, %xmm5
	movl	$16, %edx
	movl	$4, %eax
	cmovbe	%edx, %eax
	ret
.L406:
	comisd	%xmm8, %xmm0
	jnb	.L178
	.p2align 4,,10
	.p2align 3
.L165:
	comisd	%xmm8, %xmm2
	jb	.L138
.L189:
	comisd	%xmm3, %xmm11
	jb	.L198
	xorl	%eax, %eax
	comisd	%xmm11, %xmm1
	jnb	.L137
	comisd	%xmm2, %xmm9
	jb	.L138
	comisd	%xmm10, %xmm3
	jb	.L138
	ret
	.p2align 4,,10
	.p2align 3
.L294:
	comisd	%xmm8, %xmm2
	movl	$1, %eax
	jnb	.L137
	comisd	%xmm10, %xmm1
	movl	$8, %eax
	jnb	.L137
	subsd	%xmm8, %xmm6
	subsd	%xmm10, %xmm5
	movl	$1, %eax
	comisd	%xmm5, %xmm6
	ja	.L137
	comisd	%xmm6, %xmm5
	movl	$32, %edx
	movl	$8, %eax
	cmovbe	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L142:
	comisd	%xmm10, %xmm1
	jnb	.L157
	comisd	%xmm0, %xmm8
	jnb	.L143
	comisd	%xmm8, %xmm2
	jnb	.L158
	.p2align 4,,10
	.p2align 3
.L159:
	comisd	%xmm9, %xmm2
	jnb	.L163
.L173:
	comisd	%xmm8, %xmm0
	jnb	.L178
	comisd	%xmm0, %xmm8
	jnb	.L165
	comisd	%xmm8, %xmm2
	jnb	.L179
	jmp	.L138
	.p2align 4,,10
	.p2align 3
.L207:
	comisd	%xmm10, %xmm5
	jnb	.L217
	comisd	%xmm4, %xmm8
	jnb	.L208
	comisd	%xmm8, %xmm6
	jnb	.L218
	comisd	%xmm9, %xmm6
	jnb	.L426
	comisd	%xmm10, %xmm7
	jnb	.L220
	jmp	.L221
	.p2align 4,,10
	.p2align 3
.L217:
	comisd	%xmm5, %xmm11
	jnb	.L213
	comisd	%xmm4, %xmm8
	jnb	.L208
	comisd	%xmm8, %xmm6
	jnb	.L222
	.p2align 4,,10
	.p2align 3
.L210:
	comisd	%xmm9, %xmm6
	jnb	.L241
.L238:
	comisd	%xmm8, %xmm4
	jnb	.L244
	comisd	%xmm4, %xmm8
	jnb	.L229
	comisd	%xmm8, %xmm6
	jnb	.L245
	jmp	.L370
	.p2align 4,,10
	.p2align 3
.L318:
	comisd	%xmm10, %xmm5
	jnb	.L316
	comisd	%xmm4, %xmm9
	jnb	.L210
.L236:
	comisd	%xmm4, %xmm8
	jb	.L221
	jmp	.L254
	.p2align 4,,10
	.p2align 3
.L150:
	xorl	%eax, %eax
	comisd	%xmm10, %xmm1
	jb	.L158
	ret
	.p2align 4,,10
	.p2align 3
.L405:
	comisd	%xmm0, %xmm9
	jnb	.L159
.L171:
	comisd	%xmm0, %xmm8
	jnb	.L189
	jmp	.L186
	.p2align 4,,10
	.p2align 3
.L149:
	comisd	%xmm10, %xmm1
	jb	.L401
	xorl	%eax, %eax
	comisd	%xmm1, %xmm11
	jnb	.L137
	comisd	%xmm0, %xmm8
	jnb	.L152
	jmp	.L155
	.p2align 4,,10
	.p2align 3
.L214:
	comisd	%xmm10, %xmm5
	jb	.L222
	jmp	.L213
	.p2align 4,,10
	.p2align 3
.L316:
	comisd	%xmm5, %xmm11
	jnb	.L213
	comisd	%xmm4, %xmm9
	jb	.L236
	comisd	%xmm9, %xmm6
	jb	.L238
	comisd	%xmm7, %xmm11
	jnb	.L213
	jmp	.L240
.L447:
	comisd	%xmm10, %xmm5
	jnb	.L316
	comisd	%xmm9, %xmm6
	jb	.L244
	comisd	%xmm7, %xmm11
	jb	.L244
	.p2align 4,,10
	.p2align 3
.L251:
	comisd	%xmm11, %xmm5
	jnb	.L213
	comisd	%xmm8, %xmm4
	jnb	.L248
	comisd	%xmm4, %xmm8
	jb	.L221
.L249:
	comisd	%xmm11, %xmm5
	jb	.L263
	jmp	.L213
	.p2align 4,,10
	.p2align 3
.L401:
	comisd	%xmm0, %xmm8
	jnb	.L152
	ucomisd	%xmm9, %xmm2
	jp	.L397
	je	.L309
.L397:
	comisd	%xmm3, %xmm11
	jnb	.L311
	comisd	%xmm10, %xmm3
	jnb	.L312
	jmp	.L186
	.p2align 4,,10
	.p2align 3
.L445:
	comisd	%xmm0, %xmm8
	jb	.L186
.L183:
	xorl	%eax, %eax
	comisd	%xmm11, %xmm1
	jb	.L198
	ret
.L218:
	comisd	%xmm6, %xmm9
	jnb	.L447
.L426:
	comisd	%xmm7, %xmm11
	jb	.L244
	comisd	%xmm11, %xmm5
	jnb	.L213
.L248:
	comisd	%xmm10, %xmm7
	jnb	.L213
	jmp	.L257
.L444:
	comisd	%xmm2, %xmm9
	jnb	.L144
	comisd	%xmm3, %xmm11
	jb	.L406
	comisd	%xmm11, %xmm1
	jnb	.L370
	comisd	%xmm8, %xmm0
	jnb	.L182
	jmp	.L183
.L446:
	comisd	%xmm6, %xmm9
	jnb	.L318
	comisd	%xmm7, %xmm11
	jb	.L415
	comisd	%xmm11, %xmm5
	jnb	.L213
	comisd	%xmm8, %xmm4
	jnb	.L248
	jmp	.L249
.L309:
	comisd	%xmm10, %xmm1
	jnb	.L320
	comisd	%xmm3, %xmm11
	jb	.L178
.L311:
	comisd	%xmm11, %xmm1
	jb	.L182
	jmp	.L370
.L415:
	comisd	%xmm8, %xmm4
	jb	.L229
	jmp	.L244
	.cfi_endproc
.LFE2235:
	.size	_ZN3wze6engine9collision21GetCollisionDirectionEdddddddddddd, .-_ZN3wze6engine9collision21GetCollisionDirectionEdddddddddddd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	.type	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_, @function
_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_:
.LFB2236:
	.cfi_startproc
	pxor	%xmm0, %xmm0
	pxor	%xmm5, %xmm5
	pxor	%xmm1, %xmm1
	movq	%rdx, %r8
	movsd	184(%rsi), %xmm8
	movq	%rcx, %rdx
	pxor	%xmm6, %xmm6
	movzwl	234(%rcx), %ecx
	movsd	168(%rdx), %xmm4
	movsd	192(%rsi), %xmm9
	movl	%ecx, %eax
	cvtsi2sdl	%ecx, %xmm6
	movapd	%xmm8, %xmm10
	shrw	%ax
	movapd	%xmm9, %xmm11
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	movzwl	236(%rdx), %eax
	movl	%eax, %r9d
	shrw	%r9w
	subsd	%xmm0, %xmm4
	pxor	%xmm0, %xmm0
	movzwl	%r9w, %r9d
	cvtsi2sdl	%eax, %xmm0
	movzwl	240(%rsi), %eax
	cvtsi2sdl	%r9d, %xmm5
	addsd	176(%rdx), %xmm5
	shrw	%ax
	addsd	%xmm4, %xmm6
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm1
	movzwl	238(%rsi), %eax
	movapd	%xmm5, %xmm7
	subsd	%xmm0, %xmm7
	pxor	%xmm0, %xmm0
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	%xmm1, %xmm11
	addsd	%xmm1, %xmm9
	addsd	%xmm0, %xmm10
	subsd	%xmm0, %xmm8
	comisd	%xmm10, %xmm4
	ja	.L449
	comisd	%xmm6, %xmm8
	ja	.L449
	comisd	%xmm9, %xmm7
	ja	.L449
	comisd	%xmm5, %xmm11
	ja	.L449
	comisd	%xmm8, %xmm6
	jb	.L761
	comisd	%xmm6, %xmm10
	jb	.L874
	comisd	%xmm11, %xmm7
	jb	.L763
	xorl	%eax, %eax
	comisd	%xmm7, %xmm9
	jnb	.L807
	comisd	%xmm4, %xmm8
	jnb	.L461
	comisd	%xmm7, %xmm9
	jnb	.L807
.L812:
	comisd	%xmm10, %xmm6
	jnb	.L457
	.p2align 4,,10
	.p2align 3
.L462:
	comisd	%xmm11, %xmm5
	jb	.L769
.L713:
	xorl	%eax, %eax
	comisd	%xmm5, %xmm9
	jnb	.L807
	comisd	%xmm4, %xmm8
	jnb	.L494
.L497:
	xorl	%eax, %eax
	comisd	%xmm5, %xmm9
	jb	.L486
	ret
	.p2align 4,,10
	.p2align 3
.L769:
	comisd	%xmm4, %xmm8
	jb	.L483
.L498:
	ucomisd	%xmm4, %xmm8
	jp	.L486
	jne	.L486
	.p2align 4,,10
	.p2align 3
.L477:
	comisd	%xmm4, %xmm10
	jnb	.L483
	.p2align 4,,10
	.p2align 3
.L449:
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movzwl	234(%rsi), %ecx
	pxor	%xmm1, %xmm1
	movsd	168(%rsi), %xmm12
	movupd	168(%rsi), %xmm13
	pxor	%xmm2, %xmm2
	pxor	%xmm15, %xmm15
	movl	%ecx, %eax
	cvtsi2sdl	%ecx, %xmm2
	movapd	%xmm12, %xmm0
	shrw	%ax
	movapd	%xmm13, %xmm3
	movzwl	%ax, %eax
	unpckhpd	%xmm3, %xmm3
	cvtsi2sdl	%eax, %xmm1
	movzwl	236(%rsi), %eax
	movapd	%xmm3, %xmm14
	movl	%eax, %r9d
	cvtsi2sdl	%eax, %xmm15
	shrw	%r9w
	subsd	%xmm1, %xmm0
	movzwl	%r9w, %r9d
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%r9d, %xmm1
	addsd	%xmm0, %xmm2
	addsd	%xmm3, %xmm1
	movapd	%xmm1, %xmm3
	subsd	%xmm15, %xmm3
	call	_ZN3wze6engine9collision14CheckCollisionEdddddddd
	testb	%al, %al
	je	.L448
	comisd	%xmm4, %xmm8
	jb	.L771
	comisd	%xmm10, %xmm6
	jnb	.L510
	ucomisd	%xmm4, %xmm8
	jp	.L739
	je	.L511
.L739:
	comisd	%xmm7, %xmm11
	jb	.L875
	.p2align 4,,10
	.p2align 3
.L513:
	comisd	%xmm9, %xmm5
	jb	.L527
.L520:
	comisd	%xmm6, %xmm8
	ja	.L532
	comisd	%xmm10, %xmm4
	ja	.L876
	comisd	%xmm4, %xmm8
	jbe	.L877
	comisd	%xmm9, %xmm5
	ja	.L544
	comisd	%xmm10, %xmm6
	jbe	.L545
.L540:
	comisd	%xmm4, %xmm8
	ja	.L548
.L559:
	comisd	%xmm7, %xmm11
	jbe	.L780
	comisd	%xmm4, %xmm10
	movq	144(%rsi), %rcx
	jnb	.L575
	comisd	%xmm11, %xmm5
	subsd	%xmm4, %xmm2
	jnb	.L592
	subsd	%xmm3, %xmm5
	movapd	%xmm2, %xmm0
	comisd	%xmm5, %xmm2
	unpcklpd	%xmm5, %xmm0
	ja	.L579
	comisd	%xmm2, %xmm5
	ja	.L592
	cmpq	%r8, %rcx
	jb	.L878
	movsd	.LC1(%rip), %xmm1
	unpcklpd	%xmm1, %xmm1
	addpd	%xmm1, %xmm0
	movapd	%xmm13, %xmm1
	subpd	%xmm0, %xmm1
	addpd	%xmm13, %xmm0
	movsd	%xmm1, %xmm0
	movups	%xmm0, 168(%rsi)
.L448:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L771:
	.cfi_restore_state
	comisd	%xmm8, %xmm4
	jb	.L516
.L511:
	comisd	%xmm6, %xmm10
	jnb	.L510
	comisd	%xmm7, %xmm11
	jnb	.L513
	comisd	%xmm11, %xmm7
	jb	.L518
	comisd	%xmm5, %xmm9
	jnb	.L520
	comisd	%xmm4, %xmm8
	ja	.L515
.L814:
	comisd	%xmm10, %xmm6
	jbe	.L780
	.p2align 4,,10
	.p2align 3
.L521:
	comisd	%xmm9, %xmm5
	jbe	.L540
.L547:
	comisd	%xmm4, %xmm10
	movq	144(%rsi), %rcx
	jnb	.L549
	comisd	%xmm7, %xmm9
	subsd	%xmm4, %xmm2
	jnb	.L592
	subsd	%xmm7, %xmm1
	movapd	%xmm2, %xmm0
	comisd	%xmm1, %xmm2
	unpcklpd	%xmm1, %xmm0
	ja	.L554
	comisd	%xmm2, %xmm1
	ja	.L592
	cmpq	%r8, %rcx
	jb	.L879
	movsd	.LC1(%rip), %xmm1
	unpcklpd	%xmm1, %xmm1
	addpd	%xmm1, %xmm0
	movapd	%xmm13, %xmm1
	subpd	%xmm0, %xmm1
	movups	%xmm1, 168(%rsi)
	jmp	.L448
	.p2align 4,,10
	.p2align 3
.L510:
	comisd	%xmm9, %xmm7
	ja	.L523
	comisd	%xmm5, %xmm11
	ja	.L880
.L516:
	comisd	%xmm7, %xmm11
	jnb	.L513
.L527:
	comisd	%xmm11, %xmm7
	jb	.L529
	comisd	%xmm5, %xmm9
	jnb	.L520
.L529:
	comisd	%xmm4, %xmm8
	jbe	.L518
	comisd	%xmm9, %xmm5
	ja	.L544
	comisd	%xmm10, %xmm6
	jbe	.L545
	comisd	%xmm9, %xmm5
	ja	.L547
.L548:
	comisd	%xmm7, %xmm11
	jbe	.L780
.L561:
	comisd	%xmm8, %xmm6
	movq	144(%rsi), %rcx
	jnb	.L575
	comisd	%xmm11, %xmm5
	subsd	%xmm0, %xmm6
	jnb	.L865
	subsd	%xmm3, %xmm5
	movapd	%xmm6, %xmm0
	comisd	%xmm5, %xmm6
	unpcklpd	%xmm5, %xmm0
	ja	.L579
	comisd	%xmm6, %xmm5
	ja	.L865
	cmpq	%r8, %rcx
	jb	.L881
	movsd	.LC1(%rip), %xmm1
	unpcklpd	%xmm1, %xmm1
	addpd	%xmm1, %xmm0
	addpd	%xmm13, %xmm0
	movups	%xmm0, 168(%rsi)
	jmp	.L448
	.p2align 4,,10
	.p2align 3
.L875:
	comisd	%xmm11, %xmm7
	jb	.L515
	comisd	%xmm5, %xmm9
	jnb	.L520
	comisd	%xmm9, %xmm5
	jbe	.L814
	.p2align 4,,10
	.p2align 3
.L544:
	comisd	%xmm8, %xmm6
	movq	144(%rsi), %rcx
	jnb	.L549
	comisd	%xmm7, %xmm9
	subsd	%xmm0, %xmm6
	jnb	.L865
	subsd	%xmm7, %xmm1
	movapd	%xmm6, %xmm0
	comisd	%xmm1, %xmm6
	unpcklpd	%xmm1, %xmm0
	ja	.L554
	comisd	%xmm6, %xmm1
	ja	.L865
	cmpq	%r8, %rcx
	jb	.L882
	movsd	.LC1(%rip), %xmm1
	unpcklpd	%xmm1, %xmm1
	addpd	%xmm1, %xmm0
	movapd	%xmm13, %xmm1
	movapd	%xmm0, %xmm2
	subpd	%xmm0, %xmm1
	addpd	%xmm13, %xmm2
	movsd	%xmm2, %xmm1
	movups	%xmm1, 168(%rsi)
	jmp	.L448
	.p2align 4,,10
	.p2align 3
.L761:
	.cfi_def_cfa_offset 8
	comisd	%xmm8, %xmm4
	jnb	.L470
.L466:
	comisd	%xmm4, %xmm10
	jnb	.L471
	comisd	%xmm8, %xmm6
	jnb	.L472
.L492:
	comisd	%xmm4, %xmm8
	jb	.L499
	jmp	.L476
	.p2align 4,,10
	.p2align 3
.L453:
	comisd	%xmm7, %xmm9
	jb	.L766
	xorl	%eax, %eax
	comisd	%xmm9, %xmm5
	jnb	.L807
.L766:
	comisd	%xmm8, %xmm4
	jnb	.L470
	comisd	%xmm4, %xmm10
	jb	.L472
	.p2align 4,,10
	.p2align 3
.L471:
	comisd	%xmm10, %xmm6
	jnb	.L457
	comisd	%xmm8, %xmm6
	jb	.L492
	jmp	.L462
	.p2align 4,,10
	.p2align 3
.L518:
	.cfi_def_cfa_offset 16
	comisd	%xmm10, %xmm6
	ja	.L521
.L538:
	comisd	%xmm4, %xmm8
	ja	.L545
.L522:
	comisd	%xmm10, %xmm6
	ja	.L559
.L780:
	xorl	%eax, %eax
	jmp	.L448
	.p2align 4,,10
	.p2align 3
.L515:
	comisd	%xmm9, %xmm5
	ja	.L544
	comisd	%xmm10, %xmm6
	ja	.L521
	.p2align 4,,10
	.p2align 3
.L545:
	comisd	%xmm7, %xmm11
	ja	.L561
	jmp	.L522
	.p2align 4,,10
	.p2align 3
.L874:
	.cfi_def_cfa_offset 8
	comisd	%xmm4, %xmm8
	jnb	.L453
	comisd	%xmm4, %xmm10
	jnb	.L883
.L762:
	comisd	%xmm8, %xmm6
	jnb	.L472
	comisd	%xmm4, %xmm8
	jb	.L477
.L476:
	comisd	%xmm8, %xmm6
	jnb	.L494
.L499:
	comisd	%xmm8, %xmm4
	jnb	.L477
	comisd	%xmm4, %xmm10
	jb	.L449
.L486:
	comisd	%xmm10, %xmm6
	jb	.L449
.L484:
	xorl	%eax, %eax
	comisd	%xmm7, %xmm11
	jb	.L449
.L807:
	ret
	.p2align 4,,10
	.p2align 3
.L877:
	.cfi_def_cfa_offset 16
	comisd	%xmm10, %xmm6
	jbe	.L538
	comisd	%xmm9, %xmm5
	jbe	.L540
	movq	144(%rsi), %rcx
.L549:
	subsd	%xmm7, %xmm1
.L554:
	cmpq	%r8, %rcx
	jb	.L782
.L564:
	addsd	.LC1(%rip), %xmm1
	subsd	%xmm1, %xmm14
	movsd	%xmm14, 176(%rsi)
	jmp	.L448
	.p2align 4,,10
	.p2align 3
.L883:
	.cfi_def_cfa_offset 8
	comisd	%xmm11, %xmm7
	jnb	.L456
	.p2align 4,,10
	.p2align 3
.L457:
	comisd	%xmm7, %xmm9
	jnb	.L482
	comisd	%xmm8, %xmm6
	jnb	.L472
	comisd	%xmm8, %xmm4
	jb	.L484
	.p2align 4,,10
	.p2align 3
.L483:
	comisd	%xmm11, %xmm5
	jb	.L449
	jmp	.L497
	.p2align 4,,10
	.p2align 3
.L880:
	.cfi_def_cfa_offset 16
	subsd	%xmm3, %xmm5
	cmpq	%r8, 144(%rsi)
	jnb	.L525
.L773:
	testq	%r8, %r8
	js	.L706
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L707:
	addq	144(%rdx), %r8
	js	.L708
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%r8, %xmm0
.L709:
	divsd	%xmm0, %xmm1
	movsd	.LC3(%rip), %xmm0
	subsd	%xmm1, %xmm0
	mulsd	%xmm5, %xmm0
	addsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm5
	addsd	%xmm14, %xmm0
	movsd	%xmm0, 176(%rsi)
	movsd	176(%rdx), %xmm0
	subsd	%xmm5, %xmm0
	movsd	%xmm0, 176(%rdx)
	jmp	.L448
	.p2align 4,,10
	.p2align 3
.L472:
	.cfi_def_cfa_offset 8
	comisd	%xmm6, %xmm10
	jnb	.L462
	comisd	%xmm4, %xmm8
	jb	.L477
.L494:
	xorl	%eax, %eax
	comisd	%xmm7, %xmm11
	jb	.L499
	ret
	.p2align 4,,10
	.p2align 3
.L523:
	.cfi_def_cfa_offset 16
	subsd	%xmm7, %xmm1
	cmpq	%r8, 144(%rsi)
	jnb	.L564
.L782:
	testq	%r8, %r8
	js	.L690
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%r8, %xmm2
.L691:
	addq	144(%rdx), %r8
	js	.L692
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%r8, %xmm0
.L693:
	divsd	%xmm0, %xmm2
	movsd	.LC3(%rip), %xmm0
	subsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	addsd	.LC1(%rip), %xmm0
	mulsd	%xmm2, %xmm1
	subsd	%xmm0, %xmm14
	movsd	%xmm14, 176(%rsi)
	addsd	176(%rdx), %xmm1
	movsd	%xmm1, 176(%rdx)
	jmp	.L448
	.p2align 4,,10
	.p2align 3
.L470:
	.cfi_def_cfa_offset 8
	comisd	%xmm4, %xmm10
	jb	.L762
.L465:
	comisd	%xmm11, %xmm7
	jb	.L471
.L456:
	xorl	%eax, %eax
	comisd	%xmm7, %xmm9
	jb	.L471
	ret
.L882:
	.cfi_def_cfa_offset 16
	testq	%r8, %r8
	js	.L645
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%r8, %xmm2
.L646:
	addq	144(%rdx), %r8
	js	.L647
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%r8, %xmm0
.L648:
	divsd	%xmm0, %xmm2
	movsd	.LC3(%rip), %xmm0
	movapd	%xmm1, %xmm3
	movsd	.LC1(%rip), %xmm4
	subsd	%xmm2, %xmm0
	mulsd	%xmm2, %xmm1
	mulsd	%xmm6, %xmm2
	mulsd	%xmm0, %xmm3
	mulsd	%xmm6, %xmm0
	addsd	%xmm4, %xmm3
	addsd	%xmm4, %xmm0
	subsd	%xmm3, %xmm14
	addsd	%xmm12, %xmm0
	movsd	%xmm14, 176(%rsi)
	addsd	176(%rdx), %xmm1
	movsd	%xmm1, 176(%rdx)
	movsd	%xmm0, 168(%rsi)
	movsd	168(%rdx), %xmm0
	subsd	%xmm2, %xmm0
	movsd	%xmm0, 168(%rdx)
	jmp	.L448
.L878:
	testq	%r8, %r8
	js	.L662
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%r8, %xmm0
.L663:
	addq	144(%rdx), %r8
	js	.L664
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L665:
	divsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	movapd	%xmm5, %xmm3
	movsd	.LC1(%rip), %xmm4
	subsd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm5
	mulsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm3
	mulsd	%xmm2, %xmm1
	addsd	%xmm4, %xmm3
	addsd	%xmm4, %xmm1
	addsd	%xmm14, %xmm3
	subsd	%xmm1, %xmm12
	movsd	%xmm3, 176(%rsi)
	movsd	176(%rdx), %xmm3
	subsd	%xmm5, %xmm3
	movsd	%xmm3, 176(%rdx)
	movsd	%xmm12, 168(%rsi)
	addsd	168(%rdx), %xmm0
	movsd	%xmm0, 168(%rdx)
	jmp	.L448
.L881:
	testq	%r8, %r8
	js	.L624
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%r8, %xmm2
.L625:
	addq	144(%rdx), %r8
	js	.L626
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L627:
	divsd	%xmm1, %xmm2
	movsd	.LC3(%rip), %xmm0
	movapd	%xmm5, %xmm1
	movsd	.LC1(%rip), %xmm3
	subsd	%xmm2, %xmm0
	mulsd	%xmm2, %xmm5
	mulsd	%xmm6, %xmm2
	mulsd	%xmm0, %xmm1
	mulsd	%xmm6, %xmm0
	addsd	%xmm3, %xmm1
	addsd	%xmm3, %xmm0
	addsd	%xmm14, %xmm1
	addsd	%xmm12, %xmm0
	movsd	%xmm1, 176(%rsi)
	movsd	176(%rdx), %xmm1
	subsd	%xmm5, %xmm1
	movsd	%xmm1, 176(%rdx)
	movsd	%xmm0, 168(%rsi)
	movsd	168(%rdx), %xmm1
	subsd	%xmm2, %xmm1
	movsd	%xmm1, 168(%rdx)
	jmp	.L448
.L879:
	testq	%r8, %r8
	js	.L682
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%r8, %xmm0
.L683:
	addq	144(%rdx), %r8
	js	.L684
	pxor	%xmm3, %xmm3
	cvtsi2sdq	%r8, %xmm3
.L685:
	divsd	%xmm3, %xmm0
	movsd	.LC3(%rip), %xmm3
	movapd	%xmm1, %xmm4
	movsd	.LC1(%rip), %xmm5
	subsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm1
	mulsd	%xmm2, %xmm0
	mulsd	%xmm3, %xmm4
	mulsd	%xmm2, %xmm3
	addsd	%xmm5, %xmm4
	addsd	%xmm5, %xmm3
	subsd	%xmm4, %xmm14
	subsd	%xmm3, %xmm12
	movsd	%xmm14, 176(%rsi)
	addsd	176(%rdx), %xmm1
	movsd	%xmm1, 176(%rdx)
	movsd	%xmm12, 168(%rsi)
	addsd	168(%rdx), %xmm0
	movsd	%xmm0, 168(%rdx)
	jmp	.L448
	.p2align 4,,10
	.p2align 3
.L575:
	subsd	%xmm3, %xmm5
.L579:
	cmpq	%r8, %rcx
	jb	.L773
.L525:
	addsd	.LC1(%rip), %xmm5
	addsd	%xmm14, %xmm5
	movsd	%xmm5, 176(%rsi)
	jmp	.L448
	.p2align 4,,10
	.p2align 3
.L865:
	cmpq	%r8, %rcx
	jnb	.L552
.L777:
	testq	%r8, %r8
	js	.L698
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L699:
	addq	144(%rdx), %r8
	js	.L700
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%r8, %xmm0
.L701:
	divsd	%xmm0, %xmm1
	movsd	.LC3(%rip), %xmm0
	subsd	%xmm1, %xmm0
	mulsd	%xmm6, %xmm0
	addsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm6
	addsd	%xmm12, %xmm0
	movsd	%xmm0, 168(%rsi)
	movsd	168(%rdx), %xmm0
	subsd	%xmm6, %xmm0
	movsd	%xmm0, 168(%rdx)
	jmp	.L448
	.p2align 4,,10
	.p2align 3
.L532:
	subsd	%xmm0, %xmm6
	cmpq	%r8, 144(%rsi)
	jb	.L777
.L552:
	addsd	.LC1(%rip), %xmm6
	addsd	%xmm12, %xmm6
	movsd	%xmm6, 168(%rsi)
	jmp	.L448
	.p2align 4,,10
	.p2align 3
.L763:
	.cfi_def_cfa_offset 8
	comisd	%xmm4, %xmm8
	jnb	.L461
	comisd	%xmm11, %xmm7
	jb	.L812
	jmp	.L456
	.p2align 4,,10
	.p2align 3
.L482:
	xorl	%eax, %eax
	comisd	%xmm9, %xmm5
	jnb	.L807
	comisd	%xmm8, %xmm6
	jnb	.L485
	comisd	%xmm8, %xmm4
	jb	.L486
	comisd	%xmm11, %xmm5
	jb	.L449
	ret
	.p2align 4,,10
	.p2align 3
.L592:
	.cfi_def_cfa_offset 16
	cmpq	%r8, %rcx
	jnb	.L535
.L775:
	testq	%r8, %r8
	js	.L702
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L703:
	addq	144(%rdx), %r8
	js	.L704
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%r8, %xmm0
.L705:
	divsd	%xmm0, %xmm1
	movsd	.LC3(%rip), %xmm0
	subsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	addsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm2
	subsd	%xmm0, %xmm12
	movsd	%xmm12, 168(%rsi)
	addsd	168(%rdx), %xmm2
	movsd	%xmm2, 168(%rdx)
	jmp	.L448
	.p2align 4,,10
	.p2align 3
.L876:
	subsd	%xmm4, %xmm2
	cmpq	%r8, 144(%rsi)
	jb	.L775
.L535:
	addsd	.LC1(%rip), %xmm2
	subsd	%xmm2, %xmm12
	movsd	%xmm12, 168(%rsi)
	jmp	.L448
	.p2align 4,,10
	.p2align 3
.L692:
	movq	%r8, %rcx
	andl	$1, %r8d
	pxor	%xmm0, %xmm0
	shrq	%rcx
	orq	%r8, %rcx
	cvtsi2sdq	%rcx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L693
	.p2align 4,,10
	.p2align 3
.L690:
	movq	%r8, %rcx
	movq	%r8, %rdi
	pxor	%xmm2, %xmm2
	shrq	%rcx
	andl	$1, %edi
	orq	%rdi, %rcx
	cvtsi2sdq	%rcx, %xmm2
	addsd	%xmm2, %xmm2
	jmp	.L691
	.p2align 4,,10
	.p2align 3
.L461:
	.cfi_def_cfa_offset 8
	comisd	%xmm7, %xmm9
	jb	.L764
	xorl	%eax, %eax
	comisd	%xmm9, %xmm5
	jnb	.L807
	comisd	%xmm8, %xmm4
	jb	.L466
	jmp	.L465
	.p2align 4,,10
	.p2align 3
.L626:
	.cfi_def_cfa_offset 16
	movq	%r8, %rcx
	andl	$1, %r8d
	pxor	%xmm1, %xmm1
	shrq	%rcx
	orq	%r8, %rcx
	cvtsi2sdq	%rcx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L627
	.p2align 4,,10
	.p2align 3
.L664:
	movq	%r8, %rcx
	andl	$1, %r8d
	pxor	%xmm1, %xmm1
	shrq	%rcx
	orq	%r8, %rcx
	cvtsi2sdq	%rcx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L665
	.p2align 4,,10
	.p2align 3
.L662:
	movq	%r8, %rcx
	movq	%r8, %rdi
	pxor	%xmm0, %xmm0
	shrq	%rcx
	andl	$1, %edi
	orq	%rdi, %rcx
	cvtsi2sdq	%rcx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L663
	.p2align 4,,10
	.p2align 3
.L684:
	movq	%r8, %rcx
	andl	$1, %r8d
	pxor	%xmm3, %xmm3
	shrq	%rcx
	orq	%r8, %rcx
	cvtsi2sdq	%rcx, %xmm3
	addsd	%xmm3, %xmm3
	jmp	.L685
	.p2align 4,,10
	.p2align 3
.L682:
	movq	%r8, %rcx
	movq	%r8, %rdi
	pxor	%xmm0, %xmm0
	shrq	%rcx
	andl	$1, %edi
	orq	%rdi, %rcx
	cvtsi2sdq	%rcx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L683
	.p2align 4,,10
	.p2align 3
.L647:
	movq	%r8, %rcx
	andl	$1, %r8d
	pxor	%xmm0, %xmm0
	shrq	%rcx
	orq	%r8, %rcx
	cvtsi2sdq	%rcx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L648
	.p2align 4,,10
	.p2align 3
.L645:
	movq	%r8, %rcx
	movq	%r8, %rdi
	pxor	%xmm2, %xmm2
	shrq	%rcx
	andl	$1, %edi
	orq	%rdi, %rcx
	cvtsi2sdq	%rcx, %xmm2
	addsd	%xmm2, %xmm2
	jmp	.L646
	.p2align 4,,10
	.p2align 3
.L624:
	movq	%r8, %rcx
	movq	%r8, %rdi
	pxor	%xmm0, %xmm0
	shrq	%rcx
	andl	$1, %edi
	orq	%rdi, %rcx
	cvtsi2sdq	%rcx, %xmm0
	movapd	%xmm0, %xmm2
	addsd	%xmm0, %xmm2
	jmp	.L625
.L700:
	movq	%r8, %rcx
	andl	$1, %r8d
	pxor	%xmm0, %xmm0
	shrq	%rcx
	orq	%r8, %rcx
	cvtsi2sdq	%rcx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L701
.L698:
	movq	%r8, %rcx
	movq	%r8, %rdi
	pxor	%xmm1, %xmm1
	shrq	%rcx
	andl	$1, %edi
	orq	%rdi, %rcx
	cvtsi2sdq	%rcx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L699
.L704:
	movq	%r8, %rcx
	andl	$1, %r8d
	pxor	%xmm0, %xmm0
	shrq	%rcx
	orq	%r8, %rcx
	cvtsi2sdq	%rcx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L705
.L702:
	movq	%r8, %rcx
	movq	%r8, %rdi
	pxor	%xmm1, %xmm1
	shrq	%rcx
	andl	$1, %edi
	orq	%rdi, %rcx
	cvtsi2sdq	%rcx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L703
.L764:
	.cfi_def_cfa_offset 8
	comisd	%xmm8, %xmm4
	jnb	.L465
	ucomisd	%xmm6, %xmm10
	jp	.L711
	jne	.L711
	comisd	%xmm7, %xmm9
	jnb	.L482
	comisd	%xmm11, %xmm5
	jnb	.L713
	jmp	.L498
	.p2align 4,,10
	.p2align 3
.L708:
	.cfi_def_cfa_offset 16
	movq	%r8, %rcx
	andl	$1, %r8d
	pxor	%xmm0, %xmm0
	shrq	%rcx
	orq	%r8, %rcx
	cvtsi2sdq	%rcx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L709
.L706:
	movq	%r8, %rcx
	movq	%r8, %rdi
	pxor	%xmm1, %xmm1
	shrq	%rcx
	andl	$1, %edi
	orq	%rdi, %rcx
	cvtsi2sdq	%rcx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L707
.L485:
	.cfi_def_cfa_offset 8
	ucomisd	%xmm6, %xmm10
	jp	.L488
	jne	.L488
	comisd	%xmm11, %xmm5
	jnb	.L807
	comisd	%xmm4, %xmm8
	jb	.L483
	ucomisd	%xmm4, %xmm8
	jp	.L484
	je	.L477
	jmp	.L484
.L488:
	comisd	%xmm4, %xmm8
	jnb	.L494
	jmp	.L483
.L711:
	comisd	%xmm11, %xmm5
	jb	.L449
	comisd	%xmm5, %xmm9
	jb	.L494
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE2236:
	.size	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_, .-_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	-350469331
	.long	1058682594
	.align 8
.LC3:
	.long	0
	.long	1072693248
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
