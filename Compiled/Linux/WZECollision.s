	.file	"WZECollision.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collisionC2EPS0_
	.type	_ZN3wze6engine9collisionC2EPS0_, @function
_ZN3wze6engine9collisionC2EPS0_:
.LFB2232:
	.cfi_startproc
	movq	%rsi, (%rdi)
	ret
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
	ja	.L3
	comisd	%xmm6, %xmm0
	ja	.L3
	comisd	%xmm1, %xmm7
	ja	.L3
	comisd	%xmm5, %xmm3
	ja	.L3
	comisd	%xmm0, %xmm6
	jb	.L5
	comisd	%xmm6, %xmm2
	jnb	.L7
	comisd	%xmm4, %xmm0
	jnb	.L8
	comisd	%xmm0, %xmm4
	jnb	.L9
	comisd	%xmm4, %xmm2
	jnb	.L10
	.p2align 4,,10
	.p2align 3
.L11:
	comisd	%xmm0, %xmm6
	jnb	.L24
.L44:
	comisd	%xmm4, %xmm0
	jnb	.L29
.L59:
	comisd	%xmm0, %xmm4
	jnb	.L30
.L37:
	comisd	%xmm4, %xmm2
	jb	.L120
.L39:
	comisd	%xmm2, %xmm6
	jnb	.L47
.L120:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L22:
	comisd	%xmm1, %xmm5
	movl	$1, %eax
	jb	.L5
.L3:
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	comisd	%xmm0, %xmm4
	jnb	.L9
.L20:
	comisd	%xmm4, %xmm2
	jb	.L11
.L23:
	comisd	%xmm2, %xmm6
	jnb	.L10
	comisd	%xmm0, %xmm6
	jb	.L44
	jmp	.L28
	.p2align 4,,10
	.p2align 3
.L9:
	comisd	%xmm4, %xmm2
	jnb	.L17
	comisd	%xmm0, %xmm6
	jnb	.L24
.L124:
	comisd	%xmm4, %xmm0
	jb	.L30
.L29:
	comisd	%xmm0, %xmm6
	jb	.L59
	.p2align 4,,10
	.p2align 3
.L46:
	comisd	%xmm7, %xmm3
	jb	.L59
.L72:
	comisd	%xmm3, %xmm5
	jb	.L59
.L99:
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	comisd	%xmm3, %xmm7
	jb	.L109
	comisd	%xmm7, %xmm1
	movl	$1, %eax
	jnb	.L3
	comisd	%xmm4, %xmm0
	jnb	.L14
	comisd	%xmm0, %xmm4
	jnb	.L15
.L16:
	comisd	%xmm4, %xmm2
	jnb	.L130
	comisd	%xmm3, %xmm5
	jnb	.L53
	comisd	%xmm4, %xmm0
	jnb	.L46
	xorl	%eax, %eax
	comisd	%xmm0, %xmm4
	jb	.L37
	ret
	.p2align 4,,10
	.p2align 3
.L109:
	comisd	%xmm4, %xmm0
	jnb	.L14
	comisd	%xmm0, %xmm4
	jb	.L16
	.p2align 4,,10
	.p2align 3
.L17:
	comisd	%xmm3, %xmm7
	jnb	.L15
	comisd	%xmm2, %xmm6
	jnb	.L10
	comisd	%xmm0, %xmm6
	jb	.L124
.L28:
	comisd	%xmm3, %xmm5
	jb	.L42
.L53:
	comisd	%xmm5, %xmm1
	movl	$1, %eax
	jnb	.L3
	comisd	%xmm4, %xmm0
	jb	.L131
.L50:
	comisd	%xmm7, %xmm3
	movl	$1, %eax
	jb	.L59
	ret
	.p2align 4,,10
	.p2align 3
.L10:
	comisd	%xmm7, %xmm1
	jb	.L114
.L75:
	comisd	%xmm1, %xmm5
	movl	$1, %eax
	jnb	.L3
	comisd	%xmm0, %xmm6
	jnb	.L36
	comisd	%xmm0, %xmm4
	jb	.L37
	comisd	%xmm3, %xmm5
	jb	.L39
	ret
.L116:
	comisd	%xmm4, %xmm0
	jnb	.L46
	.p2align 4,,10
	.p2align 3
.L30:
	comisd	%xmm4, %xmm2
	jb	.L120
.L56:
	comisd	%xmm3, %xmm5
	jb	.L39
.L51:
	comisd	%xmm5, %xmm1
	movl	$1, %eax
	jb	.L39
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	comisd	%xmm7, %xmm1
	jnb	.L22
	comisd	%xmm0, %xmm4
	jnb	.L9
	comisd	%xmm4, %xmm2
	jnb	.L23
	.p2align 4,,10
	.p2align 3
.L24:
	comisd	%xmm6, %xmm2
	jnb	.L28
.L40:
	comisd	%xmm4, %xmm0
	jnb	.L46
	comisd	%xmm0, %xmm4
	jnb	.L30
	comisd	%xmm4, %xmm2
	jb	.L120
	.p2align 4,,10
	.p2align 3
.L47:
	comisd	%xmm7, %xmm3
	jb	.L120
	comisd	%xmm3, %xmm5
	setnb	%al
	ret
	.p2align 4,,10
	.p2align 3
.L15:
	comisd	%xmm7, %xmm1
	movl	$1, %eax
	jb	.L23
	ret
	.p2align 4,,10
	.p2align 3
.L114:
	comisd	%xmm0, %xmm6
	jnb	.L24
	comisd	%xmm0, %xmm4
	jnb	.L56
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L14:
	comisd	%xmm7, %xmm1
	jb	.L110
	comisd	%xmm1, %xmm5
	movl	$1, %eax
	jnb	.L3
	comisd	%xmm0, %xmm4
	jnb	.L17
	jmp	.L20
.L36:
	ucomisd	%xmm6, %xmm2
	jp	.L40
	jne	.L40
	comisd	%xmm3, %xmm5
	jnb	.L3
	.p2align 4,,10
	.p2align 3
.L42:
	comisd	%xmm4, %xmm0
	jb	.L59
	jmp	.L46
.L110:
	comisd	%xmm0, %xmm4
	jnb	.L17
	ucomisd	%xmm6, %xmm2
	jp	.L108
	je	.L69
.L108:
	comisd	%xmm3, %xmm5
	jnb	.L71
	comisd	%xmm7, %xmm3
	jnb	.L72
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L131:
	comisd	%xmm0, %xmm4
	jb	.L37
	jmp	.L51
.L130:
	comisd	%xmm2, %xmm6
	jnb	.L10
	comisd	%xmm3, %xmm5
	jb	.L116
	comisd	%xmm5, %xmm1
	jnb	.L99
	comisd	%xmm4, %xmm0
	jnb	.L50
	jmp	.L51
.L69:
	comisd	%xmm7, %xmm1
	jnb	.L75
	comisd	%xmm3, %xmm5
	jb	.L46
.L71:
	comisd	%xmm5, %xmm1
	jb	.L50
	jmp	.L99
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
	ja	.L133
	comisd	%xmm9, %xmm0
	ja	.L133
	comisd	%xmm1, %xmm10
	ja	.L133
	comisd	%xmm11, %xmm3
	ja	.L133
	comisd	%xmm0, %xmm9
	jb	.L134
	comisd	%xmm9, %xmm2
	jnb	.L136
	comisd	%xmm8, %xmm0
	jnb	.L137
	comisd	%xmm0, %xmm8
	jnb	.L138
	comisd	%xmm8, %xmm2
	jnb	.L139
	.p2align 4,,10
	.p2align 3
.L140:
	comisd	%xmm0, %xmm9
	jnb	.L154
.L171:
	comisd	%xmm8, %xmm0
	jnb	.L159
.L187:
	comisd	%xmm0, %xmm8
	jnb	.L160
.L181:
	comisd	%xmm8, %xmm2
	jb	.L133
.L193:
	comisd	%xmm2, %xmm9
	jb	.L133
.L174:
	comisd	%xmm10, %xmm3
	jb	.L133
	xorl	%eax, %eax
	comisd	%xmm3, %xmm11
	jnb	.L132
	.p2align 4,,10
	.p2align 3
.L133:
	xorl	%eax, %eax
	comisd	%xmm6, %xmm8
	ja	.L132
	comisd	%xmm9, %xmm4
	ja	.L132
	comisd	%xmm5, %xmm10
	ja	.L132
	comisd	%xmm11, %xmm7
	ja	.L132
	comisd	%xmm4, %xmm9
	jb	.L403
	comisd	%xmm9, %xmm6
	jnb	.L201
	comisd	%xmm8, %xmm4
	jnb	.L202
	comisd	%xmm4, %xmm8
	jnb	.L203
	comisd	%xmm8, %xmm6
	jb	.L205
	comisd	%xmm10, %xmm5
	jnb	.L311
	comisd	%xmm10, %xmm7
	jb	.L249
	.p2align 4,,10
	.p2align 3
.L215:
	comisd	%xmm7, %xmm11
	jnb	.L208
	.p2align 4,,10
	.p2align 3
.L252:
	comisd	%xmm4, %xmm8
	jnb	.L224
.L216:
	comisd	%xmm8, %xmm6
	jb	.L365
.L258:
	comisd	%xmm6, %xmm9
	jb	.L365
.L240:
	comisd	%xmm10, %xmm7
	jb	.L365
	comisd	%xmm7, %xmm11
	jb	.L365
	.p2align 4,,10
	.p2align 3
.L208:
	comisd	%xmm8, %xmm0
	jb	.L417
	comisd	%xmm2, %xmm9
	jnb	.L267
	ucomisd	%xmm8, %xmm0
	jp	.L386
	je	.L268
.L386:
	comisd	%xmm10, %xmm3
	jnb	.L270
	comisd	%xmm3, %xmm10
	jb	.L272
	comisd	%xmm11, %xmm1
	jnb	.L277
	comisd	%xmm1, %xmm11
	ja	.L286
.L430:
	comisd	%xmm2, %xmm9
	jbe	.L365
	.p2align 4,,10
	.p2align 3
.L278:
	comisd	%xmm1, %xmm11
	ja	.L289
	comisd	%xmm8, %xmm0
	ja	.L290
.L293:
	comisd	%xmm10, %xmm3
	jbe	.L365
	comisd	%xmm8, %xmm2
	movl	$2, %eax
	jnb	.L132
	comisd	%xmm3, %xmm11
	movl	$8, %eax
	jnb	.L132
	subsd	%xmm8, %xmm6
	subsd	%xmm7, %xmm11
	movl	$2, %eax
	comisd	%xmm11, %xmm6
	ja	.L132
	comisd	%xmm6, %xmm11
	movl	$128, %edx
	movl	$8, %eax
	cmovbe	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L267:
	comisd	%xmm1, %xmm10
	movl	$1, %eax
	ja	.L132
	comisd	%xmm11, %xmm3
	movl	$2, %eax
	jbe	.L273
.L132:
	ret
	.p2align 4,,10
	.p2align 3
.L152:
	xorl	%eax, %eax
	comisd	%xmm1, %xmm11
	jnb	.L132
	.p2align 4,,10
	.p2align 3
.L134:
	comisd	%xmm0, %xmm8
	jnb	.L138
.L150:
	comisd	%xmm8, %xmm2
	jb	.L140
.L153:
	comisd	%xmm2, %xmm9
	jnb	.L139
	comisd	%xmm0, %xmm9
	jb	.L171
	jmp	.L158
	.p2align 4,,10
	.p2align 3
.L138:
	comisd	%xmm8, %xmm2
	jnb	.L147
	comisd	%xmm0, %xmm9
	jnb	.L154
.L427:
	comisd	%xmm8, %xmm0
	jb	.L160
.L159:
	comisd	%xmm0, %xmm9
	jb	.L187
	.p2align 4,,10
	.p2align 3
.L173:
	comisd	%xmm10, %xmm3
	jb	.L187
.L307:
	comisd	%xmm3, %xmm11
	jb	.L187
.L365:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L403:
	comisd	%xmm4, %xmm8
	jnb	.L203
	comisd	%xmm8, %xmm6
	jnb	.L217
	comisd	%xmm4, %xmm9
	jnb	.L205
.L237:
	comisd	%xmm8, %xmm4
	jb	.L252
.L223:
	comisd	%xmm4, %xmm9
	jb	.L252
	.p2align 4,,10
	.p2align 3
.L239:
	comisd	%xmm10, %xmm7
	jb	.L252
	jmp	.L215
	.p2align 4,,10
	.p2align 3
.L203:
	comisd	%xmm8, %xmm6
	jnb	.L211
	comisd	%xmm4, %xmm9
	jnb	.L205
	comisd	%xmm8, %xmm4
	jnb	.L223
	.p2align 4,,10
	.p2align 3
.L224:
	comisd	%xmm8, %xmm6
	jb	.L365
.L249:
	comisd	%xmm7, %xmm11
	jb	.L258
	comisd	%xmm11, %xmm5
	jnb	.L208
	comisd	%xmm6, %xmm9
	jb	.L365
	comisd	%xmm10, %xmm7
	jnb	.L208
	jmp	.L365
	.p2align 4,,10
	.p2align 3
.L136:
	comisd	%xmm3, %xmm10
	jb	.L395
	xorl	%eax, %eax
	comisd	%xmm10, %xmm1
	jnb	.L132
	comisd	%xmm8, %xmm0
	jnb	.L144
	comisd	%xmm0, %xmm8
	jnb	.L145
.L146:
	comisd	%xmm8, %xmm2
	jnb	.L439
	comisd	%xmm3, %xmm11
	jnb	.L180
	comisd	%xmm8, %xmm0
	jnb	.L173
	comisd	%xmm0, %xmm8
	jnb	.L133
	jmp	.L181
	.p2align 4,,10
	.p2align 3
.L395:
	comisd	%xmm8, %xmm0
	jnb	.L144
	comisd	%xmm0, %xmm8
	jb	.L146
	.p2align 4,,10
	.p2align 3
.L147:
	comisd	%xmm3, %xmm10
	jnb	.L145
	comisd	%xmm2, %xmm9
	jnb	.L139
	comisd	%xmm0, %xmm9
	jb	.L427
.L158:
	comisd	%xmm3, %xmm11
	jb	.L170
.L180:
	xorl	%eax, %eax
	comisd	%xmm11, %xmm1
	jnb	.L132
	comisd	%xmm8, %xmm0
	jb	.L440
.L177:
	xorl	%eax, %eax
	comisd	%xmm10, %xmm3
	jb	.L187
	ret
	.p2align 4,,10
	.p2align 3
.L201:
	comisd	%xmm7, %xmm10
	jb	.L404
	comisd	%xmm10, %xmm5
	jnb	.L208
	comisd	%xmm8, %xmm4
	jnb	.L202
	comisd	%xmm4, %xmm8
	jnb	.L209
.L210:
	comisd	%xmm8, %xmm6
	jnb	.L441
	comisd	%xmm7, %xmm11
	jnb	.L246
	comisd	%xmm8, %xmm4
	jnb	.L239
	xorl	%eax, %eax
	comisd	%xmm4, %xmm8
	jb	.L216
	ret
	.p2align 4,,10
	.p2align 3
.L404:
	comisd	%xmm8, %xmm4
	jnb	.L202
	comisd	%xmm4, %xmm8
	jb	.L210
	.p2align 4,,10
	.p2align 3
.L211:
	comisd	%xmm7, %xmm10
	jnb	.L209
.L217:
	comisd	%xmm6, %xmm9
	jnb	.L313
	comisd	%xmm4, %xmm9
	jb	.L237
.L236:
	comisd	%xmm7, %xmm11
	jnb	.L246
.L235:
	comisd	%xmm8, %xmm4
	jb	.L252
	jmp	.L239
	.p2align 4,,10
	.p2align 3
.L139:
	comisd	%xmm10, %xmm1
	jb	.L400
.L315:
	xorl	%eax, %eax
	comisd	%xmm1, %xmm11
	jnb	.L132
	comisd	%xmm0, %xmm9
	jb	.L166
	ucomisd	%xmm9, %xmm2
	jp	.L168
	jne	.L168
	comisd	%xmm3, %xmm11
	jnb	.L132
	.p2align 4,,10
	.p2align 3
.L170:
	comisd	%xmm8, %xmm0
	jb	.L187
	jmp	.L173
	.p2align 4,,10
	.p2align 3
.L417:
	comisd	%xmm0, %xmm8
	jb	.L273
.L268:
	comisd	%xmm9, %xmm2
	jnb	.L267
	comisd	%xmm10, %xmm3
	jnb	.L270
	comisd	%xmm3, %xmm10
	jb	.L275
	comisd	%xmm11, %xmm1
	jnb	.L277
	comisd	%xmm8, %xmm0
	jbe	.L430
.L272:
	comisd	%xmm1, %xmm11
	ja	.L286
	comisd	%xmm2, %xmm9
	ja	.L278
	.p2align 4,,10
	.p2align 3
.L287:
	comisd	%xmm10, %xmm3
	jbe	.L279
.L295:
	comisd	%xmm0, %xmm9
	movl	$2, %eax
	jnb	.L132
	comisd	%xmm3, %xmm11
	movl	$4, %eax
	jnb	.L132
	subsd	%xmm4, %xmm9
	subsd	%xmm7, %xmm11
	movl	$2, %eax
	comisd	%xmm11, %xmm9
	ja	.L132
	comisd	%xmm9, %xmm11
	movl	$64, %edx
	movl	$4, %eax
	cmovbe	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L273:
	comisd	%xmm10, %xmm3
	jb	.L280
.L270:
	comisd	%xmm1, %xmm11
	jb	.L280
.L277:
	comisd	%xmm9, %xmm0
	movl	$4, %eax
	ja	.L132
	comisd	%xmm2, %xmm8
	movl	$8, %eax
	ja	.L132
.L282:
	comisd	%xmm8, %xmm0
	jbe	.L275
	comisd	%xmm1, %xmm11
	ja	.L286
	comisd	%xmm2, %xmm9
	jbe	.L287
	comisd	%xmm1, %xmm11
	ja	.L289
.L290:
	comisd	%xmm10, %xmm3
	ja	.L295
	jmp	.L365
	.p2align 4,,10
	.p2align 3
.L280:
	comisd	%xmm3, %xmm10
	jb	.L282
	comisd	%xmm11, %xmm1
	jb	.L282
	jmp	.L277
	.p2align 4,,10
	.p2align 3
.L275:
	comisd	%xmm2, %xmm9
	ja	.L278
	comisd	%xmm8, %xmm0
	ja	.L287
.L279:
	comisd	%xmm2, %xmm9
	jbe	.L365
	jmp	.L293
	.p2align 4,,10
	.p2align 3
.L286:
	comisd	%xmm0, %xmm9
	movl	$1, %eax
	jnb	.L132
	comisd	%xmm10, %xmm1
	movl	$4, %eax
	jnb	.L132
	subsd	%xmm4, %xmm9
	subsd	%xmm10, %xmm5
	movl	$1, %eax
	comisd	%xmm5, %xmm9
	ja	.L132
	comisd	%xmm9, %xmm5
	movl	$16, %edx
	movl	$4, %eax
	cmovbe	%edx, %eax
	ret
.L401:
	comisd	%xmm8, %xmm0
	jnb	.L173
	.p2align 4,,10
	.p2align 3
.L160:
	comisd	%xmm8, %xmm2
	jb	.L133
.L184:
	comisd	%xmm3, %xmm11
	jb	.L193
	xorl	%eax, %eax
	comisd	%xmm11, %xmm1
	jnb	.L132
	comisd	%xmm2, %xmm9
	jb	.L133
	comisd	%xmm10, %xmm3
	jb	.L133
	ret
	.p2align 4,,10
	.p2align 3
.L289:
	comisd	%xmm8, %xmm2
	movl	$1, %eax
	jnb	.L132
	comisd	%xmm10, %xmm1
	movl	$8, %eax
	jnb	.L132
	subsd	%xmm8, %xmm6
	subsd	%xmm10, %xmm5
	movl	$1, %eax
	comisd	%xmm5, %xmm6
	ja	.L132
	comisd	%xmm6, %xmm5
	movl	$32, %edx
	movl	$8, %eax
	cmovbe	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L137:
	comisd	%xmm10, %xmm1
	jnb	.L152
	comisd	%xmm0, %xmm8
	jnb	.L138
	comisd	%xmm8, %xmm2
	jnb	.L153
	.p2align 4,,10
	.p2align 3
.L154:
	comisd	%xmm9, %xmm2
	jnb	.L158
.L168:
	comisd	%xmm8, %xmm0
	jnb	.L173
	comisd	%xmm0, %xmm8
	jnb	.L160
	comisd	%xmm8, %xmm2
	jnb	.L174
	jmp	.L133
	.p2align 4,,10
	.p2align 3
.L202:
	comisd	%xmm10, %xmm5
	jnb	.L212
	comisd	%xmm4, %xmm8
	jnb	.L203
	comisd	%xmm8, %xmm6
	jnb	.L213
	comisd	%xmm9, %xmm6
	jnb	.L421
	comisd	%xmm10, %xmm7
	jnb	.L215
	jmp	.L216
	.p2align 4,,10
	.p2align 3
.L212:
	comisd	%xmm5, %xmm11
	jnb	.L208
	comisd	%xmm4, %xmm8
	jnb	.L203
	comisd	%xmm8, %xmm6
	jnb	.L217
	.p2align 4,,10
	.p2align 3
.L205:
	comisd	%xmm9, %xmm6
	jnb	.L236
.L233:
	comisd	%xmm8, %xmm4
	jnb	.L239
	comisd	%xmm4, %xmm8
	jnb	.L224
	comisd	%xmm8, %xmm6
	jnb	.L240
	jmp	.L365
	.p2align 4,,10
	.p2align 3
.L313:
	comisd	%xmm10, %xmm5
	jnb	.L311
	comisd	%xmm4, %xmm9
	jnb	.L205
.L231:
	comisd	%xmm4, %xmm8
	jb	.L216
	jmp	.L249
	.p2align 4,,10
	.p2align 3
.L145:
	xorl	%eax, %eax
	comisd	%xmm10, %xmm1
	jb	.L153
	ret
	.p2align 4,,10
	.p2align 3
.L400:
	comisd	%xmm0, %xmm9
	jnb	.L154
.L166:
	comisd	%xmm0, %xmm8
	jnb	.L184
	jmp	.L181
	.p2align 4,,10
	.p2align 3
.L144:
	comisd	%xmm10, %xmm1
	jb	.L396
	xorl	%eax, %eax
	comisd	%xmm1, %xmm11
	jnb	.L132
	comisd	%xmm0, %xmm8
	jnb	.L147
	jmp	.L150
	.p2align 4,,10
	.p2align 3
.L209:
	comisd	%xmm10, %xmm5
	jb	.L217
	jmp	.L208
	.p2align 4,,10
	.p2align 3
.L311:
	comisd	%xmm5, %xmm11
	jnb	.L208
	comisd	%xmm4, %xmm9
	jb	.L231
	comisd	%xmm9, %xmm6
	jb	.L233
	comisd	%xmm7, %xmm11
	jnb	.L208
	jmp	.L235
.L442:
	comisd	%xmm10, %xmm5
	jnb	.L311
	comisd	%xmm9, %xmm6
	jb	.L239
	comisd	%xmm7, %xmm11
	jb	.L239
	.p2align 4,,10
	.p2align 3
.L246:
	comisd	%xmm11, %xmm5
	jnb	.L208
	comisd	%xmm8, %xmm4
	jnb	.L243
	comisd	%xmm4, %xmm8
	jb	.L216
.L244:
	comisd	%xmm11, %xmm5
	jb	.L258
	jmp	.L208
	.p2align 4,,10
	.p2align 3
.L396:
	comisd	%xmm0, %xmm8
	jnb	.L147
	ucomisd	%xmm9, %xmm2
	jp	.L392
	je	.L304
.L392:
	comisd	%xmm3, %xmm11
	jnb	.L306
	comisd	%xmm10, %xmm3
	jnb	.L307
	jmp	.L181
	.p2align 4,,10
	.p2align 3
.L440:
	comisd	%xmm0, %xmm8
	jb	.L181
.L178:
	xorl	%eax, %eax
	comisd	%xmm11, %xmm1
	jb	.L193
	ret
.L213:
	comisd	%xmm6, %xmm9
	jnb	.L442
.L421:
	comisd	%xmm7, %xmm11
	jb	.L239
	comisd	%xmm11, %xmm5
	jnb	.L208
.L243:
	comisd	%xmm10, %xmm7
	jnb	.L208
	jmp	.L252
.L439:
	comisd	%xmm2, %xmm9
	jnb	.L139
	comisd	%xmm3, %xmm11
	jb	.L401
	comisd	%xmm11, %xmm1
	jnb	.L365
	comisd	%xmm8, %xmm0
	jnb	.L177
	jmp	.L178
.L441:
	comisd	%xmm6, %xmm9
	jnb	.L313
	comisd	%xmm7, %xmm11
	jb	.L410
	comisd	%xmm11, %xmm5
	jnb	.L208
	comisd	%xmm8, %xmm4
	jnb	.L243
	jmp	.L244
.L304:
	comisd	%xmm10, %xmm1
	jnb	.L315
	comisd	%xmm3, %xmm11
	jb	.L173
.L306:
	comisd	%xmm11, %xmm1
	jb	.L177
	jmp	.L365
.L410:
	comisd	%xmm8, %xmm4
	jb	.L224
	jmp	.L239
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
	movsd	200(%rsi), %xmm8
	movq	%rcx, %rdx
	pxor	%xmm6, %xmm6
	movzwl	248(%rcx), %ecx
	movsd	184(%rdx), %xmm4
	movsd	208(%rsi), %xmm9
	movl	%ecx, %eax
	cvtsi2sdl	%ecx, %xmm6
	movapd	%xmm8, %xmm10
	shrw	%ax
	movapd	%xmm9, %xmm11
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	movzwl	250(%rdx), %eax
	movl	%eax, %r9d
	shrw	%r9w
	subsd	%xmm0, %xmm4
	pxor	%xmm0, %xmm0
	movzwl	%r9w, %r9d
	cvtsi2sdl	%eax, %xmm0
	movzwl	254(%rsi), %eax
	cvtsi2sdl	%r9d, %xmm5
	addsd	192(%rdx), %xmm5
	shrw	%ax
	addsd	%xmm4, %xmm6
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm1
	movzwl	252(%rsi), %eax
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
	ja	.L444
	comisd	%xmm6, %xmm8
	ja	.L444
	comisd	%xmm9, %xmm7
	ja	.L444
	comisd	%xmm5, %xmm11
	ja	.L444
	comisd	%xmm8, %xmm6
	jb	.L756
	comisd	%xmm6, %xmm10
	jb	.L869
	comisd	%xmm11, %xmm7
	jb	.L758
	xorl	%eax, %eax
	comisd	%xmm7, %xmm9
	jnb	.L802
	comisd	%xmm4, %xmm8
	jnb	.L456
	comisd	%xmm7, %xmm9
	jnb	.L802
.L807:
	comisd	%xmm10, %xmm6
	jnb	.L452
	.p2align 4,,10
	.p2align 3
.L457:
	comisd	%xmm11, %xmm5
	jb	.L764
.L708:
	xorl	%eax, %eax
	comisd	%xmm5, %xmm9
	jnb	.L802
	comisd	%xmm4, %xmm8
	jnb	.L489
.L492:
	xorl	%eax, %eax
	comisd	%xmm5, %xmm9
	jb	.L481
	ret
	.p2align 4,,10
	.p2align 3
.L764:
	comisd	%xmm4, %xmm8
	jb	.L478
.L493:
	ucomisd	%xmm4, %xmm8
	jp	.L481
	jne	.L481
	.p2align 4,,10
	.p2align 3
.L472:
	comisd	%xmm4, %xmm10
	jnb	.L478
	.p2align 4,,10
	.p2align 3
.L444:
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movzwl	248(%rsi), %ecx
	pxor	%xmm1, %xmm1
	movsd	184(%rsi), %xmm12
	movupd	184(%rsi), %xmm13
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
	movzwl	250(%rsi), %eax
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
	je	.L443
	comisd	%xmm4, %xmm8
	jb	.L766
	comisd	%xmm10, %xmm6
	jnb	.L505
	ucomisd	%xmm4, %xmm8
	jp	.L734
	je	.L506
.L734:
	comisd	%xmm7, %xmm11
	jb	.L870
	.p2align 4,,10
	.p2align 3
.L508:
	comisd	%xmm9, %xmm5
	jb	.L522
.L515:
	comisd	%xmm6, %xmm8
	ja	.L527
	comisd	%xmm10, %xmm4
	ja	.L871
	comisd	%xmm4, %xmm8
	jbe	.L872
	comisd	%xmm9, %xmm5
	ja	.L539
	comisd	%xmm10, %xmm6
	jbe	.L540
.L535:
	comisd	%xmm4, %xmm8
	ja	.L543
.L554:
	comisd	%xmm7, %xmm11
	jbe	.L775
	comisd	%xmm4, %xmm10
	movq	160(%rsi), %rcx
	jnb	.L570
	comisd	%xmm11, %xmm5
	subsd	%xmm4, %xmm2
	jnb	.L587
	subsd	%xmm3, %xmm5
	movapd	%xmm2, %xmm0
	comisd	%xmm5, %xmm2
	unpcklpd	%xmm5, %xmm0
	ja	.L574
	comisd	%xmm2, %xmm5
	ja	.L587
	cmpq	%r8, %rcx
	jb	.L873
	movsd	.LC0(%rip), %xmm1
	unpcklpd	%xmm1, %xmm1
	addpd	%xmm1, %xmm0
	movapd	%xmm13, %xmm1
	subpd	%xmm0, %xmm1
	addpd	%xmm13, %xmm0
	movsd	%xmm1, %xmm0
	movups	%xmm0, 184(%rsi)
.L443:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L766:
	.cfi_restore_state
	comisd	%xmm8, %xmm4
	jb	.L511
.L506:
	comisd	%xmm6, %xmm10
	jnb	.L505
	comisd	%xmm7, %xmm11
	jnb	.L508
	comisd	%xmm11, %xmm7
	jb	.L513
	comisd	%xmm5, %xmm9
	jnb	.L515
	comisd	%xmm4, %xmm8
	ja	.L510
.L809:
	comisd	%xmm10, %xmm6
	jbe	.L775
	.p2align 4,,10
	.p2align 3
.L516:
	comisd	%xmm9, %xmm5
	jbe	.L535
.L542:
	comisd	%xmm4, %xmm10
	movq	160(%rsi), %rcx
	jnb	.L544
	comisd	%xmm7, %xmm9
	subsd	%xmm4, %xmm2
	jnb	.L587
	subsd	%xmm7, %xmm1
	movapd	%xmm2, %xmm0
	comisd	%xmm1, %xmm2
	unpcklpd	%xmm1, %xmm0
	ja	.L549
	comisd	%xmm2, %xmm1
	ja	.L587
	cmpq	%r8, %rcx
	jb	.L874
	movsd	.LC0(%rip), %xmm1
	unpcklpd	%xmm1, %xmm1
	addpd	%xmm1, %xmm0
	movapd	%xmm13, %xmm1
	subpd	%xmm0, %xmm1
	movups	%xmm1, 184(%rsi)
	jmp	.L443
	.p2align 4,,10
	.p2align 3
.L505:
	comisd	%xmm9, %xmm7
	ja	.L518
	comisd	%xmm5, %xmm11
	ja	.L875
.L511:
	comisd	%xmm7, %xmm11
	jnb	.L508
.L522:
	comisd	%xmm11, %xmm7
	jb	.L524
	comisd	%xmm5, %xmm9
	jnb	.L515
.L524:
	comisd	%xmm4, %xmm8
	jbe	.L513
	comisd	%xmm9, %xmm5
	ja	.L539
	comisd	%xmm10, %xmm6
	jbe	.L540
	comisd	%xmm9, %xmm5
	ja	.L542
.L543:
	comisd	%xmm7, %xmm11
	jbe	.L775
.L556:
	comisd	%xmm8, %xmm6
	movq	160(%rsi), %rcx
	jnb	.L570
	comisd	%xmm11, %xmm5
	subsd	%xmm0, %xmm6
	jnb	.L860
	subsd	%xmm3, %xmm5
	movapd	%xmm6, %xmm0
	comisd	%xmm5, %xmm6
	unpcklpd	%xmm5, %xmm0
	ja	.L574
	comisd	%xmm6, %xmm5
	ja	.L860
	cmpq	%r8, %rcx
	jb	.L876
	movsd	.LC0(%rip), %xmm1
	unpcklpd	%xmm1, %xmm1
	addpd	%xmm1, %xmm0
	addpd	%xmm13, %xmm0
	movups	%xmm0, 184(%rsi)
	jmp	.L443
	.p2align 4,,10
	.p2align 3
.L870:
	comisd	%xmm11, %xmm7
	jb	.L510
	comisd	%xmm5, %xmm9
	jnb	.L515
	comisd	%xmm9, %xmm5
	jbe	.L809
	.p2align 4,,10
	.p2align 3
.L539:
	comisd	%xmm8, %xmm6
	movq	160(%rsi), %rcx
	jnb	.L544
	comisd	%xmm7, %xmm9
	subsd	%xmm0, %xmm6
	jnb	.L860
	subsd	%xmm7, %xmm1
	movapd	%xmm6, %xmm0
	comisd	%xmm1, %xmm6
	unpcklpd	%xmm1, %xmm0
	ja	.L549
	comisd	%xmm6, %xmm1
	ja	.L860
	cmpq	%r8, %rcx
	jb	.L877
	movsd	.LC0(%rip), %xmm1
	unpcklpd	%xmm1, %xmm1
	addpd	%xmm1, %xmm0
	movapd	%xmm13, %xmm1
	movapd	%xmm0, %xmm2
	subpd	%xmm0, %xmm1
	addpd	%xmm13, %xmm2
	movsd	%xmm2, %xmm1
	movups	%xmm1, 184(%rsi)
	jmp	.L443
	.p2align 4,,10
	.p2align 3
.L756:
	.cfi_def_cfa_offset 8
	comisd	%xmm8, %xmm4
	jnb	.L465
.L461:
	comisd	%xmm4, %xmm10
	jnb	.L466
	comisd	%xmm8, %xmm6
	jnb	.L467
.L487:
	comisd	%xmm4, %xmm8
	jb	.L494
	jmp	.L471
	.p2align 4,,10
	.p2align 3
.L448:
	comisd	%xmm7, %xmm9
	jb	.L761
	xorl	%eax, %eax
	comisd	%xmm9, %xmm5
	jnb	.L802
.L761:
	comisd	%xmm8, %xmm4
	jnb	.L465
	comisd	%xmm4, %xmm10
	jb	.L467
	.p2align 4,,10
	.p2align 3
.L466:
	comisd	%xmm10, %xmm6
	jnb	.L452
	comisd	%xmm8, %xmm6
	jb	.L487
	jmp	.L457
	.p2align 4,,10
	.p2align 3
.L513:
	.cfi_def_cfa_offset 16
	comisd	%xmm10, %xmm6
	ja	.L516
.L533:
	comisd	%xmm4, %xmm8
	ja	.L540
.L517:
	comisd	%xmm10, %xmm6
	ja	.L554
.L775:
	xorl	%eax, %eax
	jmp	.L443
	.p2align 4,,10
	.p2align 3
.L510:
	comisd	%xmm9, %xmm5
	ja	.L539
	comisd	%xmm10, %xmm6
	ja	.L516
	.p2align 4,,10
	.p2align 3
.L540:
	comisd	%xmm7, %xmm11
	ja	.L556
	jmp	.L517
	.p2align 4,,10
	.p2align 3
.L869:
	.cfi_def_cfa_offset 8
	comisd	%xmm4, %xmm8
	jnb	.L448
	comisd	%xmm4, %xmm10
	jnb	.L878
.L757:
	comisd	%xmm8, %xmm6
	jnb	.L467
	comisd	%xmm4, %xmm8
	jb	.L472
.L471:
	comisd	%xmm8, %xmm6
	jnb	.L489
.L494:
	comisd	%xmm8, %xmm4
	jnb	.L472
	comisd	%xmm4, %xmm10
	jb	.L444
.L481:
	comisd	%xmm10, %xmm6
	jb	.L444
.L479:
	xorl	%eax, %eax
	comisd	%xmm7, %xmm11
	jb	.L444
.L802:
	ret
	.p2align 4,,10
	.p2align 3
.L872:
	.cfi_def_cfa_offset 16
	comisd	%xmm10, %xmm6
	jbe	.L533
	comisd	%xmm9, %xmm5
	jbe	.L535
	movq	160(%rsi), %rcx
.L544:
	subsd	%xmm7, %xmm1
.L549:
	cmpq	%r8, %rcx
	jb	.L777
.L559:
	addsd	.LC0(%rip), %xmm1
	subsd	%xmm1, %xmm14
	movsd	%xmm14, 192(%rsi)
	jmp	.L443
	.p2align 4,,10
	.p2align 3
.L878:
	.cfi_def_cfa_offset 8
	comisd	%xmm11, %xmm7
	jnb	.L451
	.p2align 4,,10
	.p2align 3
.L452:
	comisd	%xmm7, %xmm9
	jnb	.L477
	comisd	%xmm8, %xmm6
	jnb	.L467
	comisd	%xmm8, %xmm4
	jb	.L479
	.p2align 4,,10
	.p2align 3
.L478:
	comisd	%xmm11, %xmm5
	jb	.L444
	jmp	.L492
	.p2align 4,,10
	.p2align 3
.L875:
	.cfi_def_cfa_offset 16
	subsd	%xmm3, %xmm5
	cmpq	%r8, 160(%rsi)
	jnb	.L520
.L768:
	testq	%r8, %r8
	js	.L701
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L702:
	addq	160(%rdx), %r8
	js	.L703
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%r8, %xmm0
.L704:
	divsd	%xmm0, %xmm1
	movsd	.LC2(%rip), %xmm0
	subsd	%xmm1, %xmm0
	mulsd	%xmm5, %xmm0
	addsd	.LC0(%rip), %xmm0
	mulsd	%xmm1, %xmm5
	addsd	%xmm14, %xmm0
	movsd	%xmm0, 192(%rsi)
	movsd	192(%rdx), %xmm0
	subsd	%xmm5, %xmm0
	movsd	%xmm0, 192(%rdx)
	jmp	.L443
	.p2align 4,,10
	.p2align 3
.L467:
	.cfi_def_cfa_offset 8
	comisd	%xmm6, %xmm10
	jnb	.L457
	comisd	%xmm4, %xmm8
	jb	.L472
.L489:
	xorl	%eax, %eax
	comisd	%xmm7, %xmm11
	jb	.L494
	ret
	.p2align 4,,10
	.p2align 3
.L518:
	.cfi_def_cfa_offset 16
	subsd	%xmm7, %xmm1
	cmpq	%r8, 160(%rsi)
	jnb	.L559
.L777:
	testq	%r8, %r8
	js	.L685
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%r8, %xmm2
.L686:
	addq	160(%rdx), %r8
	js	.L687
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%r8, %xmm0
.L688:
	divsd	%xmm0, %xmm2
	movsd	.LC2(%rip), %xmm0
	subsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	addsd	.LC0(%rip), %xmm0
	mulsd	%xmm2, %xmm1
	subsd	%xmm0, %xmm14
	movsd	%xmm14, 192(%rsi)
	addsd	192(%rdx), %xmm1
	movsd	%xmm1, 192(%rdx)
	jmp	.L443
	.p2align 4,,10
	.p2align 3
.L465:
	.cfi_def_cfa_offset 8
	comisd	%xmm4, %xmm10
	jb	.L757
.L460:
	comisd	%xmm11, %xmm7
	jb	.L466
.L451:
	xorl	%eax, %eax
	comisd	%xmm7, %xmm9
	jb	.L466
	ret
.L877:
	.cfi_def_cfa_offset 16
	testq	%r8, %r8
	js	.L640
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%r8, %xmm2
.L641:
	addq	160(%rdx), %r8
	js	.L642
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%r8, %xmm0
.L643:
	divsd	%xmm0, %xmm2
	movsd	.LC2(%rip), %xmm0
	movapd	%xmm1, %xmm3
	movsd	.LC0(%rip), %xmm4
	subsd	%xmm2, %xmm0
	mulsd	%xmm2, %xmm1
	mulsd	%xmm6, %xmm2
	mulsd	%xmm0, %xmm3
	mulsd	%xmm6, %xmm0
	addsd	%xmm4, %xmm3
	addsd	%xmm4, %xmm0
	subsd	%xmm3, %xmm14
	addsd	%xmm12, %xmm0
	movsd	%xmm14, 192(%rsi)
	addsd	192(%rdx), %xmm1
	movsd	%xmm1, 192(%rdx)
	movsd	%xmm0, 184(%rsi)
	movsd	184(%rdx), %xmm0
	subsd	%xmm2, %xmm0
	movsd	%xmm0, 184(%rdx)
	jmp	.L443
.L873:
	testq	%r8, %r8
	js	.L657
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%r8, %xmm0
.L658:
	addq	160(%rdx), %r8
	js	.L659
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L660:
	divsd	%xmm1, %xmm0
	movsd	.LC2(%rip), %xmm1
	movapd	%xmm5, %xmm3
	movsd	.LC0(%rip), %xmm4
	subsd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm5
	mulsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm3
	mulsd	%xmm2, %xmm1
	addsd	%xmm4, %xmm3
	addsd	%xmm4, %xmm1
	addsd	%xmm14, %xmm3
	subsd	%xmm1, %xmm12
	movsd	%xmm3, 192(%rsi)
	movsd	192(%rdx), %xmm3
	subsd	%xmm5, %xmm3
	movsd	%xmm3, 192(%rdx)
	movsd	%xmm12, 184(%rsi)
	addsd	184(%rdx), %xmm0
	movsd	%xmm0, 184(%rdx)
	jmp	.L443
.L876:
	testq	%r8, %r8
	js	.L619
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%r8, %xmm2
.L620:
	addq	160(%rdx), %r8
	js	.L621
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L622:
	divsd	%xmm1, %xmm2
	movsd	.LC2(%rip), %xmm0
	movapd	%xmm5, %xmm1
	movsd	.LC0(%rip), %xmm3
	subsd	%xmm2, %xmm0
	mulsd	%xmm2, %xmm5
	mulsd	%xmm6, %xmm2
	mulsd	%xmm0, %xmm1
	mulsd	%xmm6, %xmm0
	addsd	%xmm3, %xmm1
	addsd	%xmm3, %xmm0
	addsd	%xmm14, %xmm1
	addsd	%xmm12, %xmm0
	movsd	%xmm1, 192(%rsi)
	movsd	192(%rdx), %xmm1
	subsd	%xmm5, %xmm1
	movsd	%xmm1, 192(%rdx)
	movsd	%xmm0, 184(%rsi)
	movsd	184(%rdx), %xmm1
	subsd	%xmm2, %xmm1
	movsd	%xmm1, 184(%rdx)
	jmp	.L443
.L874:
	testq	%r8, %r8
	js	.L677
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%r8, %xmm0
.L678:
	addq	160(%rdx), %r8
	js	.L679
	pxor	%xmm3, %xmm3
	cvtsi2sdq	%r8, %xmm3
.L680:
	divsd	%xmm3, %xmm0
	movsd	.LC2(%rip), %xmm3
	movapd	%xmm1, %xmm4
	movsd	.LC0(%rip), %xmm5
	subsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm1
	mulsd	%xmm2, %xmm0
	mulsd	%xmm3, %xmm4
	mulsd	%xmm2, %xmm3
	addsd	%xmm5, %xmm4
	addsd	%xmm5, %xmm3
	subsd	%xmm4, %xmm14
	subsd	%xmm3, %xmm12
	movsd	%xmm14, 192(%rsi)
	addsd	192(%rdx), %xmm1
	movsd	%xmm1, 192(%rdx)
	movsd	%xmm12, 184(%rsi)
	addsd	184(%rdx), %xmm0
	movsd	%xmm0, 184(%rdx)
	jmp	.L443
	.p2align 4,,10
	.p2align 3
.L570:
	subsd	%xmm3, %xmm5
.L574:
	cmpq	%r8, %rcx
	jb	.L768
.L520:
	addsd	.LC0(%rip), %xmm5
	addsd	%xmm14, %xmm5
	movsd	%xmm5, 192(%rsi)
	jmp	.L443
	.p2align 4,,10
	.p2align 3
.L860:
	cmpq	%r8, %rcx
	jnb	.L547
.L772:
	testq	%r8, %r8
	js	.L693
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L694:
	addq	160(%rdx), %r8
	js	.L695
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%r8, %xmm0
.L696:
	divsd	%xmm0, %xmm1
	movsd	.LC2(%rip), %xmm0
	subsd	%xmm1, %xmm0
	mulsd	%xmm6, %xmm0
	addsd	.LC0(%rip), %xmm0
	mulsd	%xmm1, %xmm6
	addsd	%xmm12, %xmm0
	movsd	%xmm0, 184(%rsi)
	movsd	184(%rdx), %xmm0
	subsd	%xmm6, %xmm0
	movsd	%xmm0, 184(%rdx)
	jmp	.L443
	.p2align 4,,10
	.p2align 3
.L527:
	subsd	%xmm0, %xmm6
	cmpq	%r8, 160(%rsi)
	jb	.L772
.L547:
	addsd	.LC0(%rip), %xmm6
	addsd	%xmm12, %xmm6
	movsd	%xmm6, 184(%rsi)
	jmp	.L443
	.p2align 4,,10
	.p2align 3
.L758:
	.cfi_def_cfa_offset 8
	comisd	%xmm4, %xmm8
	jnb	.L456
	comisd	%xmm11, %xmm7
	jb	.L807
	jmp	.L451
	.p2align 4,,10
	.p2align 3
.L477:
	xorl	%eax, %eax
	comisd	%xmm9, %xmm5
	jnb	.L802
	comisd	%xmm8, %xmm6
	jnb	.L480
	comisd	%xmm8, %xmm4
	jb	.L481
	comisd	%xmm11, %xmm5
	jb	.L444
	ret
	.p2align 4,,10
	.p2align 3
.L587:
	.cfi_def_cfa_offset 16
	cmpq	%r8, %rcx
	jnb	.L530
.L770:
	testq	%r8, %r8
	js	.L697
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L698:
	addq	160(%rdx), %r8
	js	.L699
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%r8, %xmm0
.L700:
	divsd	%xmm0, %xmm1
	movsd	.LC2(%rip), %xmm0
	subsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	addsd	.LC0(%rip), %xmm0
	mulsd	%xmm1, %xmm2
	subsd	%xmm0, %xmm12
	movsd	%xmm12, 184(%rsi)
	addsd	184(%rdx), %xmm2
	movsd	%xmm2, 184(%rdx)
	jmp	.L443
	.p2align 4,,10
	.p2align 3
.L871:
	subsd	%xmm4, %xmm2
	cmpq	%r8, 160(%rsi)
	jb	.L770
.L530:
	addsd	.LC0(%rip), %xmm2
	subsd	%xmm2, %xmm12
	movsd	%xmm12, 184(%rsi)
	jmp	.L443
	.p2align 4,,10
	.p2align 3
.L687:
	movq	%r8, %rcx
	andl	$1, %r8d
	pxor	%xmm0, %xmm0
	shrq	%rcx
	orq	%r8, %rcx
	cvtsi2sdq	%rcx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L688
	.p2align 4,,10
	.p2align 3
.L685:
	movq	%r8, %rcx
	movq	%r8, %rdi
	pxor	%xmm2, %xmm2
	shrq	%rcx
	andl	$1, %edi
	orq	%rdi, %rcx
	cvtsi2sdq	%rcx, %xmm2
	addsd	%xmm2, %xmm2
	jmp	.L686
	.p2align 4,,10
	.p2align 3
.L456:
	.cfi_def_cfa_offset 8
	comisd	%xmm7, %xmm9
	jb	.L759
	xorl	%eax, %eax
	comisd	%xmm9, %xmm5
	jnb	.L802
	comisd	%xmm8, %xmm4
	jb	.L461
	jmp	.L460
	.p2align 4,,10
	.p2align 3
.L621:
	.cfi_def_cfa_offset 16
	movq	%r8, %rcx
	andl	$1, %r8d
	pxor	%xmm1, %xmm1
	shrq	%rcx
	orq	%r8, %rcx
	cvtsi2sdq	%rcx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L622
	.p2align 4,,10
	.p2align 3
.L659:
	movq	%r8, %rcx
	andl	$1, %r8d
	pxor	%xmm1, %xmm1
	shrq	%rcx
	orq	%r8, %rcx
	cvtsi2sdq	%rcx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L660
	.p2align 4,,10
	.p2align 3
.L657:
	movq	%r8, %rcx
	movq	%r8, %rdi
	pxor	%xmm0, %xmm0
	shrq	%rcx
	andl	$1, %edi
	orq	%rdi, %rcx
	cvtsi2sdq	%rcx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L658
	.p2align 4,,10
	.p2align 3
.L679:
	movq	%r8, %rcx
	andl	$1, %r8d
	pxor	%xmm3, %xmm3
	shrq	%rcx
	orq	%r8, %rcx
	cvtsi2sdq	%rcx, %xmm3
	addsd	%xmm3, %xmm3
	jmp	.L680
	.p2align 4,,10
	.p2align 3
.L677:
	movq	%r8, %rcx
	movq	%r8, %rdi
	pxor	%xmm0, %xmm0
	shrq	%rcx
	andl	$1, %edi
	orq	%rdi, %rcx
	cvtsi2sdq	%rcx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L678
	.p2align 4,,10
	.p2align 3
.L642:
	movq	%r8, %rcx
	andl	$1, %r8d
	pxor	%xmm0, %xmm0
	shrq	%rcx
	orq	%r8, %rcx
	cvtsi2sdq	%rcx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L643
	.p2align 4,,10
	.p2align 3
.L640:
	movq	%r8, %rcx
	movq	%r8, %rdi
	pxor	%xmm2, %xmm2
	shrq	%rcx
	andl	$1, %edi
	orq	%rdi, %rcx
	cvtsi2sdq	%rcx, %xmm2
	addsd	%xmm2, %xmm2
	jmp	.L641
	.p2align 4,,10
	.p2align 3
.L619:
	movq	%r8, %rcx
	movq	%r8, %rdi
	pxor	%xmm0, %xmm0
	shrq	%rcx
	andl	$1, %edi
	orq	%rdi, %rcx
	cvtsi2sdq	%rcx, %xmm0
	movapd	%xmm0, %xmm2
	addsd	%xmm0, %xmm2
	jmp	.L620
.L695:
	movq	%r8, %rcx
	andl	$1, %r8d
	pxor	%xmm0, %xmm0
	shrq	%rcx
	orq	%r8, %rcx
	cvtsi2sdq	%rcx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L696
.L693:
	movq	%r8, %rcx
	movq	%r8, %rdi
	pxor	%xmm1, %xmm1
	shrq	%rcx
	andl	$1, %edi
	orq	%rdi, %rcx
	cvtsi2sdq	%rcx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L694
.L699:
	movq	%r8, %rcx
	andl	$1, %r8d
	pxor	%xmm0, %xmm0
	shrq	%rcx
	orq	%r8, %rcx
	cvtsi2sdq	%rcx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L700
.L697:
	movq	%r8, %rcx
	movq	%r8, %rdi
	pxor	%xmm1, %xmm1
	shrq	%rcx
	andl	$1, %edi
	orq	%rdi, %rcx
	cvtsi2sdq	%rcx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L698
.L759:
	.cfi_def_cfa_offset 8
	comisd	%xmm8, %xmm4
	jnb	.L460
	ucomisd	%xmm6, %xmm10
	jp	.L706
	jne	.L706
	comisd	%xmm7, %xmm9
	jnb	.L477
	comisd	%xmm11, %xmm5
	jnb	.L708
	jmp	.L493
	.p2align 4,,10
	.p2align 3
.L703:
	.cfi_def_cfa_offset 16
	movq	%r8, %rcx
	andl	$1, %r8d
	pxor	%xmm0, %xmm0
	shrq	%rcx
	orq	%r8, %rcx
	cvtsi2sdq	%rcx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L704
.L701:
	movq	%r8, %rcx
	movq	%r8, %rdi
	pxor	%xmm1, %xmm1
	shrq	%rcx
	andl	$1, %edi
	orq	%rdi, %rcx
	cvtsi2sdq	%rcx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L702
.L480:
	.cfi_def_cfa_offset 8
	ucomisd	%xmm6, %xmm10
	jp	.L483
	jne	.L483
	comisd	%xmm11, %xmm5
	jnb	.L802
	comisd	%xmm4, %xmm8
	jb	.L478
	ucomisd	%xmm4, %xmm8
	jp	.L479
	je	.L472
	jmp	.L479
.L483:
	comisd	%xmm4, %xmm8
	jnb	.L489
	jmp	.L478
.L706:
	comisd	%xmm11, %xmm5
	jb	.L444
	comisd	%xmm5, %xmm9
	jb	.L489
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE2236:
	.size	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_, .-_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	-350469331
	.long	1058682594
	.align 8
.LC2:
	.long	0
	.long	1072693248
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
