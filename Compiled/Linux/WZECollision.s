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
	.globl	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	.type	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_, @function
_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_:
.LFB2235:
	.cfi_startproc
	movq	%rsi, %rax
	pxor	%xmm0, %xmm0
	pxor	%xmm9, %xmm9
	movq	%rdi, %r8
	movzwl	220(%rsi), %esi
	pxor	%xmm5, %xmm5
	pxor	%xmm6, %xmm6
	movsd	168(%rax), %xmm8
	pxor	%xmm10, %xmm10
	movsd	152(%rdx), %xmm4
	movl	%esi, %ecx
	cvtsi2sdl	%esi, %xmm10
	movzwl	216(%rdx), %esi
	shrw	%cx
	movzwl	%cx, %ecx
	cvtsi2sdl	%esi, %xmm6
	cvtsi2sdl	%ecx, %xmm0
	movzwl	222(%rax), %ecx
	movl	%ecx, %edi
	shrw	%di
	subsd	%xmm0, %xmm8
	movzwl	%di, %edi
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	movl	%esi, %ecx
	cvtsi2sdl	%edi, %xmm9
	shrw	%cx
	addsd	176(%rax), %xmm9
	movzwl	%cx, %ecx
	addsd	%xmm8, %xmm10
	movapd	%xmm9, %xmm11
	subsd	%xmm0, %xmm11
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	movzwl	218(%rdx), %ecx
	movl	%ecx, %edi
	shrw	%di
	subsd	%xmm0, %xmm4
	movzwl	%di, %edi
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edi, %xmm5
	addsd	160(%rdx), %xmm5
	cvtsi2sdl	%ecx, %xmm0
	comisd	%xmm10, %xmm4
	addsd	%xmm4, %xmm6
	movapd	%xmm5, %xmm7
	subsd	%xmm0, %xmm7
	ja	.L133
	comisd	%xmm6, %xmm8
	ja	.L133
	comisd	%xmm9, %xmm7
	ja	.L133
	comisd	%xmm5, %xmm11
	ja	.L133
	comisd	%xmm8, %xmm6
	jb	.L299
	comisd	%xmm6, %xmm10
	jb	.L329
	xorl	%edx, %edx
	comisd	%xmm11, %xmm7
	jnb	.L132
	comisd	%xmm4, %xmm8
	jb	.L322
	comisd	%xmm7, %xmm9
	jb	.L301
	comisd	%xmm9, %xmm5
	jnb	.L132
	comisd	%xmm8, %xmm4
	jnb	.L146
	.p2align 4,,10
	.p2align 3
.L147:
	comisd	%xmm10, %xmm6
	jnb	.L141
	comisd	%xmm8, %xmm6
	jnb	.L143
	comisd	%xmm4, %xmm8
	jnb	.L157
.L168:
	comisd	%xmm11, %xmm5
	jb	.L133
	xorl	%edx, %edx
	comisd	%xmm5, %xmm9
	jb	.L180
.L132:
	movl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L299:
	comisd	%xmm8, %xmm4
	jnb	.L152
	comisd	%xmm4, %xmm10
	jnb	.L330
	comisd	%xmm8, %xmm6
	jb	.L307
.L153:
	comisd	%xmm6, %xmm10
	jnb	.L143
	comisd	%xmm4, %xmm8
	jnb	.L173
.L158:
	comisd	%xmm4, %xmm10
	jnb	.L168
	.p2align 4,,10
	.p2align 3
.L133:
	pxor	%xmm1, %xmm1
	pxor	%xmm2, %xmm2
	pxor	%xmm12, %xmm12
	movq	%r8, %rdi
	movzwl	216(%rax), %ecx
	movsd	152(%rax), %xmm0
	movl	%ecx, %edx
	cvtsi2sdl	%ecx, %xmm2
	shrw	%dx
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm1
	movzwl	218(%rax), %edx
	movl	%edx, %esi
	cvtsi2sdl	%edx, %xmm12
	xorl	%edx, %edx
	shrw	%si
	subsd	%xmm1, %xmm0
	movzwl	%si, %esi
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%esi, %xmm1
	addsd	160(%rax), %xmm1
	addsd	%xmm0, %xmm2
	movapd	%xmm1, %xmm3
	subsd	%xmm12, %xmm3
	call	_ZN3wze6engine9collision14CheckCollisionEdddddddd
	testb	%al, %al
	je	.L132
	comisd	%xmm4, %xmm8
	jb	.L309
	comisd	%xmm10, %xmm6
	jnb	.L192
	ucomisd	%xmm4, %xmm8
	jp	.L289
	je	.L193
.L289:
	comisd	%xmm5, %xmm9
	jb	.L331
	.p2align 4,,10
	.p2align 3
.L195:
	comisd	%xmm11, %xmm7
	jb	.L206
.L202:
	comisd	%xmm6, %xmm8
	movl	$4, %edx
	ja	.L132
	comisd	%xmm10, %xmm4
	movl	$8, %edx
	ja	.L132
	comisd	%xmm4, %xmm8
	jbe	.L332
	comisd	%xmm5, %xmm9
	ja	.L216
	comisd	%xmm10, %xmm6
	jbe	.L217
.L204:
	comisd	%xmm4, %xmm8
	jbe	.L223
.L220:
	comisd	%xmm11, %xmm7
	jbe	.L314
.L226:
	comisd	%xmm8, %xmm6
	movl	$2, %edx
	jnb	.L132
	comisd	%xmm5, %xmm11
	movl	$4, %edx
	jnb	.L132
	subsd	%xmm0, %xmm6
	subsd	%xmm5, %xmm3
	movl	$2, %edx
	comisd	%xmm3, %xmm6
	ja	.L132
	comisd	%xmm6, %xmm3
	movl	$4, %edx
	movl	$64, %eax
	cmovbe	%eax, %edx
	jmp	.L132
	.p2align 4,,10
	.p2align 3
.L309:
	comisd	%xmm8, %xmm4
	jb	.L198
.L193:
	comisd	%xmm6, %xmm10
	jnb	.L192
	comisd	%xmm5, %xmm9
	jnb	.L195
	comisd	%xmm9, %xmm5
	jb	.L311
	comisd	%xmm7, %xmm11
	jnb	.L202
	comisd	%xmm4, %xmm8
	ja	.L203
	comisd	%xmm10, %xmm6
	ja	.L204
	.p2align 4,,10
	.p2align 3
.L314:
	xorl	%edx, %edx
	jmp	.L132
	.p2align 4,,10
	.p2align 3
.L192:
	comisd	%xmm7, %xmm9
	movl	$1, %edx
	ja	.L132
	comisd	%xmm11, %xmm5
	movl	$2, %edx
	ja	.L132
.L198:
	comisd	%xmm5, %xmm9
	jnb	.L195
.L206:
	comisd	%xmm9, %xmm5
	jb	.L208
	comisd	%xmm7, %xmm11
	jnb	.L202
.L208:
	comisd	%xmm4, %xmm8
	jbe	.L313
	comisd	%xmm5, %xmm9
	jbe	.L333
.L216:
	comisd	%xmm8, %xmm6
	movl	$1, %edx
	jnb	.L132
	comisd	%xmm9, %xmm7
	movl	$4, %edx
	jnb	.L132
	subsd	%xmm0, %xmm6
	subsd	%xmm1, %xmm7
	movl	$1, %edx
	comisd	%xmm7, %xmm6
	ja	.L132
	comisd	%xmm6, %xmm7
	movl	$4, %edx
	movl	$16, %eax
	cmovbe	%eax, %edx
	jmp	.L132
	.p2align 4,,10
	.p2align 3
.L313:
	comisd	%xmm10, %xmm6
	jbe	.L212
	comisd	%xmm5, %xmm9
	jbe	.L223
.L219:
	comisd	%xmm4, %xmm10
	jnb	.L263
	comisd	%xmm9, %xmm7
	movl	$8, %edx
	jnb	.L132
	subsd	%xmm4, %xmm2
	subsd	%xmm1, %xmm7
	movl	$1, %edx
	comisd	%xmm7, %xmm2
	ja	.L132
	comisd	%xmm2, %xmm7
	movl	$8, %edx
	movl	$32, %eax
	cmovbe	%eax, %edx
	jmp	.L132
	.p2align 4,,10
	.p2align 3
.L212:
	comisd	%xmm4, %xmm8
	ja	.L217
.L205:
	comisd	%xmm10, %xmm6
	jbe	.L314
.L223:
	comisd	%xmm11, %xmm7
	jbe	.L314
	comisd	%xmm4, %xmm10
	movl	$2, %edx
	jnb	.L132
	comisd	%xmm5, %xmm11
	movl	$8, %edx
	jnb	.L132
	subsd	%xmm4, %xmm2
	subsd	%xmm5, %xmm3
	movl	$2, %edx
	comisd	%xmm3, %xmm2
	ja	.L132
	comisd	%xmm2, %xmm3
	movl	$8, %edx
	movl	$128, %eax
	cmovbe	%eax, %edx
	jmp	.L132
	.p2align 4,,10
	.p2align 3
.L335:
	comisd	%xmm5, %xmm9
	ja	.L216
.L203:
	comisd	%xmm10, %xmm6
	ja	.L221
	.p2align 4,,10
	.p2align 3
.L217:
	comisd	%xmm11, %xmm7
	jbe	.L205
	jmp	.L226
	.p2align 4,,10
	.p2align 3
.L329:
	comisd	%xmm4, %xmm8
	jnb	.L137
	comisd	%xmm4, %xmm10
	jnb	.L334
.L300:
	comisd	%xmm8, %xmm6
	jnb	.L153
	comisd	%xmm4, %xmm8
	jb	.L158
.L157:
	comisd	%xmm8, %xmm6
	jnb	.L173
.L182:
	comisd	%xmm8, %xmm4
	jnb	.L158
	comisd	%xmm4, %xmm10
	jb	.L133
.L180:
	comisd	%xmm10, %xmm6
	jb	.L133
.L171:
	xorl	%edx, %edx
	comisd	%xmm7, %xmm11
	jnb	.L132
	jmp	.L133
	.p2align 4,,10
	.p2align 3
.L332:
	comisd	%xmm10, %xmm6
	jbe	.L212
	comisd	%xmm5, %xmm9
	movl	$1, %edx
	ja	.L132
	jmp	.L204
	.p2align 4,,10
	.p2align 3
.L333:
	comisd	%xmm10, %xmm6
	jbe	.L217
	comisd	%xmm5, %xmm9
	ja	.L219
	jmp	.L220
	.p2align 4,,10
	.p2align 3
.L331:
	comisd	%xmm9, %xmm5
	jb	.L335
	comisd	%xmm7, %xmm11
	jnb	.L202
	comisd	%xmm10, %xmm6
	ja	.L220
	jmp	.L217
	.p2align 4,,10
	.p2align 3
.L307:
	comisd	%xmm4, %xmm8
	jb	.L182
	jmp	.L157
	.p2align 4,,10
	.p2align 3
.L330:
	comisd	%xmm10, %xmm6
	jnb	.L141
	comisd	%xmm8, %xmm6
	jb	.L182
	.p2align 4,,10
	.p2align 3
.L143:
	comisd	%xmm11, %xmm5
	jb	.L308
.L237:
	xorl	%edx, %edx
	comisd	%xmm5, %xmm9
	jnb	.L132
	comisd	%xmm4, %xmm8
	jb	.L180
.L173:
	xorl	%edx, %edx
.L328:
	comisd	%xmm7, %xmm11
	jnb	.L132
	jmp	.L182
	.p2align 4,,10
	.p2align 3
.L152:
	comisd	%xmm4, %xmm10
	jb	.L300
.L146:
	xorl	%edx, %edx
	comisd	%xmm11, %xmm7
	jnb	.L132
	jmp	.L147
	.p2align 4,,10
	.p2align 3
.L334:
	xorl	%edx, %edx
	comisd	%xmm11, %xmm7
	jnb	.L132
	.p2align 4,,10
	.p2align 3
.L141:
	comisd	%xmm7, %xmm9
	jb	.L153
.L238:
	xorl	%edx, %edx
	comisd	%xmm9, %xmm5
	jnb	.L132
	ucomisd	%xmm6, %xmm10
	jp	.L284
	je	.L165
.L284:
	xorl	%edx, %edx
	comisd	%xmm4, %xmm8
	jnb	.L328
	comisd	%xmm11, %xmm5
	jb	.L133
	jmp	.L132
	.p2align 4,,10
	.p2align 3
.L137:
	comisd	%xmm7, %xmm9
	jb	.L302
	xorl	%edx, %edx
	comisd	%xmm9, %xmm5
	jnb	.L132
.L302:
	comisd	%xmm8, %xmm4
	jnb	.L152
	comisd	%xmm4, %xmm10
	jb	.L153
	jmp	.L147
	.p2align 4,,10
	.p2align 3
.L311:
	comisd	%xmm10, %xmm6
	jbe	.L212
.L221:
	comisd	%xmm5, %xmm9
	ja	.L219
	jmp	.L204
	.p2align 4,,10
	.p2align 3
.L308:
	comisd	%xmm4, %xmm8
	jb	.L168
	ucomisd	%xmm4, %xmm8
	jp	.L180
	jne	.L180
	jmp	.L168
.L336:
	xorl	%edx, %edx
.L322:
	comisd	%xmm11, %xmm7
	jnb	.L132
	comisd	%xmm10, %xmm6
	jnb	.L141
	jmp	.L143
.L301:
	ucomisd	%xmm4, %xmm8
	jp	.L148
	je	.L336
.L148:
	ucomisd	%xmm6, %xmm10
	jp	.L235
	jne	.L235
	comisd	%xmm7, %xmm9
	jnb	.L238
	jmp	.L143
.L165:
	comisd	%xmm11, %xmm5
	jnb	.L132
	comisd	%xmm4, %xmm8
	jb	.L168
	ucomisd	%xmm4, %xmm8
	jp	.L171
	jne	.L171
	jmp	.L168
.L263:
	movl	$1, %edx
	jmp	.L132
.L235:
	comisd	%xmm11, %xmm5
	jnb	.L237
	jmp	.L133
	.cfi_endproc
.LFE2235:
	.size	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_, .-_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
