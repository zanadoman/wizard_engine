	.file	"WZECollision.cpp"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"neo::array.Insert(): Index out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC1:
	.string	"neo::array.Insert(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.text
	.align 2
	.p2align 4
	.type	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6InsertEyy.isra.0, @function
_ZN3neo5arrayIPN3wze6engine6actors5actorEE6InsertEyy.isra.0:
.LFB8339:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	movq	(%rdi), %rsi
	cmpq	%rbx, %rsi
	jb	.L26
	testq	%rdx, %rdx
	jne	.L27
.L1:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L27:
	.cfi_restore_state
	addq	%rdx, %rsi
	movq	%rdi, %rbp
	movq	%rsi, (%rdi)
	movq	8(%rdi), %rdi
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 8(%rbp)
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L28
	movq	0(%rbp), %rdx
	leaq	(%rbx,%r12), %rsi
	leaq	-1(%rdx), %rax
	cmpq	%rsi, %rax
	jb	.L1
	movq	%rdx, %r8
	subq	%rsi, %r8
	leaq	-1(%r8), %rcx
	cmpq	$2, %rcx
	jbe	.L5
	leaq	8(,%r12,8), %rcx
	testq	%rcx, %rcx
	je	.L5
	testq	%rsi, %rsi
	je	.L5
	movq	%rdx, %rcx
	leaq	-16(%rdi,%rdx,8), %rsi
	movq	%r8, %rdx
	shrq	%rdx
	subq	%r12, %rcx
	negq	%rdx
	leaq	-16(%rdi,%rcx,8), %r9
	xorl	%ecx, %ecx
	salq	$4, %rdx
	.p2align 4,,10
	.p2align 3
.L6:
	movdqu	(%r9,%rcx), %xmm0
	movups	%xmm0, (%rsi,%rcx)
	subq	$16, %rcx
	cmpq	%rdx, %rcx
	jne	.L6
	movq	%r8, %rdx
	andq	$-2, %rdx
	subq	%rdx, %rax
	andl	$1, %r8d
	je	.L1
	movq	%rax, %rdx
	subq	%r12, %rdx
	movq	(%rdi,%rdx,8), %rdx
	movq	%rdx, (%rdi,%rax,8)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	.cfi_restore_state
	movq	%r12, %rdx
	negq	%rdx
	leaq	(%rdi,%rdx,8), %rcx
	.p2align 4,,10
	.p2align 3
.L8:
	movq	(%rcx,%rax,8), %rdx
	movq	%rdx, (%rdi,%rax,8)
	subq	$1, %rax
	cmpq	%rsi, %rax
	jnb	.L8
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L26:
	.cfi_restore_state
	leaq	.LC0(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L28:
	leaq	.LC1(%rip), %rdi
	movq	%r12, %rdx
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8339:
	.size	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6InsertEyy.isra.0, .-_ZN3neo5arrayIPN3wze6engine6actors5actorEE6InsertEyy.isra.0
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"neo::array(): Memory allocation failed\nParams: Length: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collisionC2EPS0_
	.type	_ZN3wze6engine9collisionC2EPS0_, @function
_ZN3wze6engine9collisionC2EPS0_:
.LFB8145:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	%rsi, (%rdi)
	movq	$256, 16(%rdi)
	movl	$4096, %edi
	call	malloc@PLT
	movq	%rax, 24(%rbx)
	testq	%rax, %rax
	je	.L34
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
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L34:
	.cfi_restore_state
	leaq	.LC2(%rip), %rdi
	movl	$256, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8145:
	.size	_ZN3wze6engine9collisionC2EPS0_, .-_ZN3wze6engine9collisionC2EPS0_
	.globl	_ZN3wze6engine9collisionC1EPS0_
	.set	_ZN3wze6engine9collisionC1EPS0_,_ZN3wze6engine9collisionC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision14GetBufferSizeBEv
	.type	_ZN3wze6engine9collision14GetBufferSizeBEv, @function
_ZN3wze6engine9collision14GetBufferSizeBEv:
.LFB8147:
	.cfi_startproc
	movzwl	8(%rdi), %eax
	sall	$3, %eax
	ret
	.cfi_endproc
.LFE8147:
	.size	_ZN3wze6engine9collision14GetBufferSizeBEv, .-_ZN3wze6engine9collision14GetBufferSizeBEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision14SetBufferSizeBEh
	.type	_ZN3wze6engine9collision14SetBufferSizeBEh, @function
_ZN3wze6engine9collision14SetBufferSizeBEh:
.LFB8148:
	.cfi_startproc
	movzbl	%sil, %esi
	shrw	$3, %si
	movw	%si, 8(%rdi)
	leal	0(,%rsi,8), %eax
	ret
	.cfi_endproc
.LFE8148:
	.size	_ZN3wze6engine9collision14SetBufferSizeBEh, .-_ZN3wze6engine9collision14SetBufferSizeBEh
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision14CheckCollisionEdddddddd
	.type	_ZN3wze6engine9collision14CheckCollisionEdddddddd, @function
_ZN3wze6engine9collision14CheckCollisionEdddddddd:
.LFB8149:
	.cfi_startproc
	xorl	%eax, %eax
	comisd	%xmm2, %xmm4
	ja	.L37
	comisd	%xmm6, %xmm0
	ja	.L37
	comisd	%xmm1, %xmm7
	ja	.L37
	comisd	%xmm5, %xmm3
	ja	.L37
	comisd	%xmm0, %xmm6
	jb	.L39
	comisd	%xmm6, %xmm2
	jnb	.L41
	comisd	%xmm4, %xmm0
	jnb	.L42
	comisd	%xmm0, %xmm4
	jnb	.L43
	comisd	%xmm4, %xmm2
	jnb	.L44
	.p2align 4,,10
	.p2align 3
.L45:
	comisd	%xmm0, %xmm6
	jnb	.L58
.L78:
	comisd	%xmm4, %xmm0
	jnb	.L63
.L93:
	comisd	%xmm0, %xmm4
	jnb	.L64
.L71:
	comisd	%xmm4, %xmm2
	jb	.L154
.L73:
	comisd	%xmm2, %xmm6
	jnb	.L81
.L154:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L56:
	comisd	%xmm1, %xmm5
	movl	$1, %eax
	jb	.L39
.L37:
	ret
	.p2align 4,,10
	.p2align 3
.L39:
	comisd	%xmm0, %xmm4
	jnb	.L43
.L54:
	comisd	%xmm4, %xmm2
	jb	.L45
.L57:
	comisd	%xmm2, %xmm6
	jnb	.L44
	comisd	%xmm0, %xmm6
	jb	.L78
	jmp	.L62
	.p2align 4,,10
	.p2align 3
.L43:
	comisd	%xmm4, %xmm2
	jnb	.L51
	comisd	%xmm0, %xmm6
	jnb	.L58
.L158:
	comisd	%xmm4, %xmm0
	jb	.L64
.L63:
	comisd	%xmm0, %xmm6
	jb	.L93
	.p2align 4,,10
	.p2align 3
.L80:
	comisd	%xmm7, %xmm3
	jb	.L93
.L106:
	comisd	%xmm3, %xmm5
	jb	.L93
.L133:
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L41:
	comisd	%xmm3, %xmm7
	jb	.L143
	comisd	%xmm7, %xmm1
	movl	$1, %eax
	jnb	.L37
	comisd	%xmm4, %xmm0
	jnb	.L48
	comisd	%xmm0, %xmm4
	jnb	.L49
.L50:
	comisd	%xmm4, %xmm2
	jnb	.L164
	comisd	%xmm3, %xmm5
	jnb	.L87
	comisd	%xmm4, %xmm0
	jnb	.L80
	xorl	%eax, %eax
	comisd	%xmm0, %xmm4
	jb	.L71
	ret
	.p2align 4,,10
	.p2align 3
.L143:
	comisd	%xmm4, %xmm0
	jnb	.L48
	comisd	%xmm0, %xmm4
	jb	.L50
	.p2align 4,,10
	.p2align 3
.L51:
	comisd	%xmm3, %xmm7
	jnb	.L49
	comisd	%xmm2, %xmm6
	jnb	.L44
	comisd	%xmm0, %xmm6
	jb	.L158
.L62:
	comisd	%xmm3, %xmm5
	jb	.L76
.L87:
	comisd	%xmm5, %xmm1
	movl	$1, %eax
	jnb	.L37
	comisd	%xmm4, %xmm0
	jb	.L165
.L84:
	comisd	%xmm7, %xmm3
	movl	$1, %eax
	jb	.L93
	ret
	.p2align 4,,10
	.p2align 3
.L44:
	comisd	%xmm7, %xmm1
	jb	.L148
.L109:
	comisd	%xmm1, %xmm5
	movl	$1, %eax
	jnb	.L37
	comisd	%xmm0, %xmm6
	jnb	.L70
	comisd	%xmm0, %xmm4
	jb	.L71
	comisd	%xmm3, %xmm5
	jb	.L73
	ret
.L150:
	comisd	%xmm4, %xmm0
	jnb	.L80
	.p2align 4,,10
	.p2align 3
.L64:
	comisd	%xmm4, %xmm2
	jb	.L154
.L90:
	comisd	%xmm3, %xmm5
	jb	.L73
.L85:
	comisd	%xmm5, %xmm1
	movl	$1, %eax
	jb	.L73
	ret
	.p2align 4,,10
	.p2align 3
.L42:
	comisd	%xmm7, %xmm1
	jnb	.L56
	comisd	%xmm0, %xmm4
	jnb	.L43
	comisd	%xmm4, %xmm2
	jnb	.L57
	.p2align 4,,10
	.p2align 3
.L58:
	comisd	%xmm6, %xmm2
	jnb	.L62
.L74:
	comisd	%xmm4, %xmm0
	jnb	.L80
	comisd	%xmm0, %xmm4
	jnb	.L64
	comisd	%xmm4, %xmm2
	jb	.L154
	.p2align 4,,10
	.p2align 3
.L81:
	comisd	%xmm7, %xmm3
	jb	.L154
	comisd	%xmm3, %xmm5
	setnb	%al
	ret
	.p2align 4,,10
	.p2align 3
.L49:
	comisd	%xmm7, %xmm1
	movl	$1, %eax
	jb	.L57
	ret
	.p2align 4,,10
	.p2align 3
.L148:
	comisd	%xmm0, %xmm6
	jnb	.L58
	comisd	%xmm0, %xmm4
	jnb	.L90
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L48:
	comisd	%xmm7, %xmm1
	jb	.L144
	comisd	%xmm1, %xmm5
	movl	$1, %eax
	jnb	.L37
	comisd	%xmm0, %xmm4
	jnb	.L51
	jmp	.L54
.L70:
	ucomisd	%xmm6, %xmm2
	jp	.L74
	jne	.L74
	comisd	%xmm3, %xmm5
	jnb	.L37
	.p2align 4,,10
	.p2align 3
.L76:
	comisd	%xmm4, %xmm0
	jb	.L93
	jmp	.L80
.L144:
	comisd	%xmm0, %xmm4
	jnb	.L51
	ucomisd	%xmm6, %xmm2
	jp	.L142
	je	.L103
.L142:
	comisd	%xmm3, %xmm5
	jnb	.L105
	comisd	%xmm7, %xmm3
	jnb	.L106
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L165:
	comisd	%xmm0, %xmm4
	jb	.L71
	jmp	.L85
.L164:
	comisd	%xmm2, %xmm6
	jnb	.L44
	comisd	%xmm3, %xmm5
	jb	.L150
	comisd	%xmm5, %xmm1
	jnb	.L133
	comisd	%xmm4, %xmm0
	jnb	.L84
	jmp	.L85
.L103:
	comisd	%xmm7, %xmm1
	jnb	.L109
	comisd	%xmm3, %xmm5
	jb	.L80
.L105:
	comisd	%xmm5, %xmm1
	jb	.L84
	jmp	.L133
	.cfi_endproc
.LFE8149:
	.size	_ZN3wze6engine9collision14CheckCollisionEdddddddd, .-_ZN3wze6engine9collision14CheckCollisionEdddddddd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	.type	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_, @function
_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_:
.LFB8150:
	.cfi_startproc
	movq	%rsi, %rax
	pxor	%xmm0, %xmm0
	pxor	%xmm10, %xmm10
	movq	%rdi, %r8
	movzwl	270(%rsi), %esi
	pxor	%xmm5, %xmm5
	pxor	%xmm6, %xmm6
	movsd	216(%rax), %xmm8
	pxor	%xmm9, %xmm9
	movsd	200(%rdx), %xmm4
	movl	%esi, %ecx
	cvtsi2sdl	%esi, %xmm9
	movzwl	266(%rdx), %esi
	shrw	%cx
	movzwl	%cx, %ecx
	cvtsi2sdl	%esi, %xmm6
	cvtsi2sdl	%ecx, %xmm0
	movzwl	272(%rax), %ecx
	movl	%ecx, %edi
	shrw	%di
	subsd	%xmm0, %xmm8
	movzwl	%di, %edi
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	movl	%esi, %ecx
	cvtsi2sdl	%edi, %xmm10
	shrw	%cx
	addsd	224(%rax), %xmm10
	movzwl	%cx, %ecx
	addsd	%xmm8, %xmm9
	movapd	%xmm10, %xmm11
	subsd	%xmm0, %xmm11
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	movzwl	268(%rdx), %ecx
	movl	%ecx, %edi
	shrw	%di
	subsd	%xmm0, %xmm4
	movzwl	%di, %edi
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edi, %xmm5
	addsd	208(%rdx), %xmm5
	cvtsi2sdl	%ecx, %xmm0
	comisd	%xmm9, %xmm4
	addsd	%xmm4, %xmm6
	movapd	%xmm5, %xmm7
	subsd	%xmm0, %xmm7
	ja	.L167
	comisd	%xmm6, %xmm8
	ja	.L167
	comisd	%xmm10, %xmm7
	ja	.L167
	comisd	%xmm5, %xmm11
	ja	.L167
	comisd	%xmm8, %xmm6
	jb	.L337
	comisd	%xmm6, %xmm9
	jb	.L376
	xorl	%edx, %edx
	comisd	%xmm11, %xmm7
	jnb	.L166
	comisd	%xmm4, %xmm8
	jb	.L367
	comisd	%xmm7, %xmm10
	jb	.L339
	comisd	%xmm10, %xmm5
	jnb	.L166
	comisd	%xmm8, %xmm4
	jnb	.L180
	.p2align 4,,10
	.p2align 3
.L181:
	comisd	%xmm9, %xmm6
	jnb	.L175
	comisd	%xmm8, %xmm6
	jnb	.L177
	comisd	%xmm4, %xmm8
	jnb	.L191
.L202:
	comisd	%xmm11, %xmm5
	jb	.L167
	xorl	%edx, %edx
	comisd	%xmm5, %xmm10
	jb	.L214
.L166:
	movl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L337:
	comisd	%xmm8, %xmm4
	jnb	.L186
	comisd	%xmm4, %xmm9
	jnb	.L377
	comisd	%xmm8, %xmm6
	jb	.L345
.L187:
	comisd	%xmm6, %xmm9
	jnb	.L177
	comisd	%xmm4, %xmm8
	jnb	.L207
.L192:
	comisd	%xmm4, %xmm9
	jnb	.L202
	.p2align 4,,10
	.p2align 3
.L167:
	pxor	%xmm1, %xmm1
	pxor	%xmm2, %xmm2
	pxor	%xmm12, %xmm12
	movq	%r8, %rdi
	movzwl	266(%rax), %ecx
	movsd	200(%rax), %xmm0
	movl	%ecx, %edx
	cvtsi2sdl	%ecx, %xmm2
	shrw	%dx
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm1
	movzwl	268(%rax), %edx
	movl	%edx, %esi
	cvtsi2sdl	%edx, %xmm12
	xorl	%edx, %edx
	shrw	%si
	subsd	%xmm1, %xmm0
	movzwl	%si, %esi
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%esi, %xmm1
	addsd	208(%rax), %xmm1
	addsd	%xmm0, %xmm2
	movapd	%xmm1, %xmm3
	subsd	%xmm12, %xmm3
	call	_ZN3wze6engine9collision14CheckCollisionEdddddddd
	testb	%al, %al
	je	.L166
	comisd	%xmm4, %xmm8
	jb	.L347
	comisd	%xmm9, %xmm6
	jnb	.L226
	ucomisd	%xmm4, %xmm8
	jp	.L329
	je	.L227
.L329:
	comisd	%xmm7, %xmm11
	jb	.L378
	.p2align 4,,10
	.p2align 3
.L229:
	comisd	%xmm10, %xmm5
	jnb	.L238
	comisd	%xmm11, %xmm7
	jnb	.L238
	comisd	%xmm4, %xmm8
	ja	.L260
	comisd	%xmm9, %xmm6
	ja	.L273
	comisd	%xmm4, %xmm8
	ja	.L260
	.p2align 4,,10
	.p2align 3
.L261:
	comisd	%xmm9, %xmm6
	ja	.L257
.L355:
	xorl	%edx, %edx
	jmp	.L166
	.p2align 4,,10
	.p2align 3
.L347:
	comisd	%xmm8, %xmm4
	jb	.L232
.L227:
	comisd	%xmm6, %xmm9
	jnb	.L226
	comisd	%xmm7, %xmm11
	jnb	.L229
	comisd	%xmm11, %xmm7
	jnb	.L234
	comisd	%xmm9, %xmm6
	jbe	.L245
.L255:
	comisd	%xmm10, %xmm5
	jbe	.L247
.L253:
	comisd	%xmm4, %xmm9
	jnb	.L303
	comisd	%xmm7, %xmm10
	movl	$8, %edx
	jnb	.L166
	subsd	%xmm4, %xmm2
	subsd	%xmm7, %xmm1
	movl	$1, %edx
	comisd	%xmm1, %xmm2
	ja	.L166
	comisd	%xmm2, %xmm1
	movl	$8, %edx
	movl	$32, %eax
	cmovbe	%eax, %edx
	jmp	.L166
	.p2align 4,,10
	.p2align 3
.L226:
	comisd	%xmm10, %xmm7
	movl	$1, %edx
	ja	.L166
	comisd	%xmm5, %xmm11
	movl	$2, %edx
	ja	.L166
.L232:
	comisd	%xmm7, %xmm11
	jnb	.L229
	comisd	%xmm11, %xmm7
	jnb	.L234
	comisd	%xmm4, %xmm8
	jbe	.L354
	comisd	%xmm10, %xmm5
	ja	.L250
	comisd	%xmm9, %xmm6
	jbe	.L251
	comisd	%xmm10, %xmm5
	ja	.L253
	jmp	.L375
	.p2align 4,,10
	.p2align 3
.L378:
	comisd	%xmm11, %xmm7
	jb	.L379
	comisd	%xmm5, %xmm10
	jb	.L250
	.p2align 4,,10
	.p2align 3
.L238:
	comisd	%xmm6, %xmm8
	movl	$4, %edx
	ja	.L166
	comisd	%xmm9, %xmm4
	movl	$8, %edx
	ja	.L166
	comisd	%xmm4, %xmm8
	jbe	.L380
	comisd	%xmm10, %xmm5
	ja	.L250
	comisd	%xmm9, %xmm6
	jbe	.L251
.L247:
	comisd	%xmm4, %xmm8
	jbe	.L257
.L375:
	comisd	%xmm7, %xmm11
	jbe	.L355
	.p2align 4,,10
	.p2align 3
.L260:
	comisd	%xmm8, %xmm6
	movl	$2, %edx
	jnb	.L166
	comisd	%xmm11, %xmm5
	movl	$4, %edx
	jnb	.L166
	subsd	%xmm0, %xmm6
	subsd	%xmm3, %xmm5
	movl	$2, %edx
	comisd	%xmm5, %xmm6
	ja	.L166
	comisd	%xmm6, %xmm5
	movl	$4, %edx
	movl	$64, %eax
	cmovbe	%eax, %edx
	jmp	.L166
	.p2align 4,,10
	.p2align 3
.L234:
	comisd	%xmm5, %xmm10
	jnb	.L238
	comisd	%xmm4, %xmm8
	ja	.L250
	comisd	%xmm9, %xmm6
	ja	.L253
	comisd	%xmm4, %xmm8
	jbe	.L261
	jmp	.L375
	.p2align 4,,10
	.p2align 3
.L250:
	comisd	%xmm8, %xmm6
	movl	$1, %edx
	jnb	.L166
	comisd	%xmm7, %xmm10
	movl	$4, %edx
	jnb	.L166
	subsd	%xmm0, %xmm6
	subsd	%xmm7, %xmm1
	movl	$1, %edx
	comisd	%xmm1, %xmm6
	ja	.L166
	comisd	%xmm6, %xmm1
	movl	$4, %edx
	movl	$16, %eax
	cmovbe	%eax, %edx
	jmp	.L166
	.p2align 4,,10
	.p2align 3
.L376:
	comisd	%xmm4, %xmm8
	jnb	.L171
	comisd	%xmm4, %xmm9
	jnb	.L381
.L338:
	comisd	%xmm8, %xmm6
	jnb	.L187
	comisd	%xmm4, %xmm8
	jb	.L192
.L191:
	comisd	%xmm8, %xmm6
	jnb	.L207
.L216:
	comisd	%xmm8, %xmm4
	jnb	.L192
	comisd	%xmm4, %xmm9
	jb	.L167
.L214:
	comisd	%xmm9, %xmm6
	jb	.L167
.L205:
	xorl	%edx, %edx
	comisd	%xmm7, %xmm11
	jnb	.L166
	jmp	.L167
	.p2align 4,,10
	.p2align 3
.L380:
	comisd	%xmm9, %xmm6
	jbe	.L245
	comisd	%xmm10, %xmm5
	movl	$1, %edx
	ja	.L166
	jmp	.L247
	.p2align 4,,10
	.p2align 3
.L345:
	comisd	%xmm4, %xmm8
	jb	.L216
	jmp	.L191
	.p2align 4,,10
	.p2align 3
.L377:
	comisd	%xmm9, %xmm6
	jnb	.L175
	comisd	%xmm8, %xmm6
	jb	.L216
	.p2align 4,,10
	.p2align 3
.L177:
	comisd	%xmm11, %xmm5
	jb	.L346
.L277:
	xorl	%edx, %edx
	comisd	%xmm5, %xmm10
	jnb	.L166
	comisd	%xmm4, %xmm8
	jb	.L214
.L207:
	xorl	%edx, %edx
.L373:
	comisd	%xmm7, %xmm11
	jnb	.L166
	jmp	.L216
	.p2align 4,,10
	.p2align 3
.L354:
	comisd	%xmm9, %xmm6
	jbe	.L245
	comisd	%xmm10, %xmm5
	ja	.L253
.L257:
	comisd	%xmm7, %xmm11
	jbe	.L355
.L273:
	comisd	%xmm4, %xmm9
	movl	$2, %edx
	jnb	.L166
	comisd	%xmm11, %xmm5
	movl	$8, %edx
	jnb	.L166
	subsd	%xmm4, %xmm2
	subsd	%xmm3, %xmm5
	movl	$2, %edx
	comisd	%xmm5, %xmm2
	ja	.L166
	comisd	%xmm2, %xmm5
	movl	$8, %edx
	movl	$128, %eax
	cmovbe	%eax, %edx
	jmp	.L166
	.p2align 4,,10
	.p2align 3
.L186:
	comisd	%xmm4, %xmm9
	jb	.L338
.L180:
	xorl	%edx, %edx
	comisd	%xmm11, %xmm7
	jnb	.L166
	jmp	.L181
	.p2align 4,,10
	.p2align 3
.L245:
	comisd	%xmm4, %xmm8
	jbe	.L261
.L251:
	comisd	%xmm7, %xmm11
	jbe	.L261
	jmp	.L260
	.p2align 4,,10
	.p2align 3
.L381:
	xorl	%edx, %edx
	comisd	%xmm11, %xmm7
	jnb	.L166
	.p2align 4,,10
	.p2align 3
.L175:
	comisd	%xmm7, %xmm10
	jb	.L187
.L278:
	xorl	%edx, %edx
	comisd	%xmm10, %xmm5
	jnb	.L166
	ucomisd	%xmm6, %xmm9
	jp	.L324
	je	.L199
.L324:
	xorl	%edx, %edx
	comisd	%xmm4, %xmm8
	jnb	.L373
	comisd	%xmm11, %xmm5
	jb	.L167
	jmp	.L166
	.p2align 4,,10
	.p2align 3
.L171:
	comisd	%xmm7, %xmm10
	jb	.L340
	xorl	%edx, %edx
	comisd	%xmm10, %xmm5
	jnb	.L166
.L340:
	comisd	%xmm8, %xmm4
	jnb	.L186
	comisd	%xmm4, %xmm9
	jb	.L187
	jmp	.L181
	.p2align 4,,10
	.p2align 3
.L346:
	comisd	%xmm4, %xmm8
	jb	.L202
	ucomisd	%xmm4, %xmm8
	jp	.L214
	jne	.L214
	jmp	.L202
.L382:
	xorl	%edx, %edx
.L367:
	comisd	%xmm11, %xmm7
	jnb	.L166
	comisd	%xmm9, %xmm6
	jnb	.L175
	jmp	.L177
	.p2align 4,,10
	.p2align 3
.L379:
	comisd	%xmm10, %xmm5
	ja	.L250
	comisd	%xmm9, %xmm6
	ja	.L255
	jmp	.L251
.L339:
	ucomisd	%xmm4, %xmm8
	jp	.L182
	je	.L382
.L182:
	ucomisd	%xmm6, %xmm9
	jp	.L272
	jne	.L272
	comisd	%xmm7, %xmm10
	jnb	.L278
	jmp	.L177
.L199:
	comisd	%xmm11, %xmm5
	jnb	.L166
	comisd	%xmm4, %xmm8
	jb	.L202
	ucomisd	%xmm4, %xmm8
	jp	.L205
	jne	.L205
	jmp	.L202
.L303:
	movl	$1, %edx
	jmp	.L166
.L272:
	comisd	%xmm11, %xmm5
	jnb	.L277
	jmp	.L167
	.cfi_endproc
.LFE8150:
	.size	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_, .-_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	.type	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_, @function
_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_:
.LFB8151:
	.cfi_startproc
	movq	%rdx, %r11
	movq	%rcx, %rdx
	movq	%rsi, %r10
	movq	%rcx, %r9
	call	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L383
	movzwl	266(%r10), %ecx
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	movsd	200(%r10), %xmm1
	pxor	%xmm5, %xmm5
	pxor	%xmm4, %xmm4
	pxor	%xmm3, %xmm3
	movsd	208(%r10), %xmm9
	movl	%ecx, %edx
	movapd	%xmm1, %xmm10
	movsd	200(%r9), %xmm7
	shrw	%dx
	cvtsi2sdl	%ecx, %xmm5
	movzwl	266(%r9), %ecx
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm0
	movzwl	268(%r10), %edx
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
	addsd	%xmm9, %xmm2
	movapd	%xmm2, %xmm11
	subsd	%xmm0, %xmm11
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	movzwl	268(%r9), %edx
	movl	%edx, %esi
	cvtsi2sdl	%edx, %xmm3
	movq	176(%r9), %rdx
	shrw	%si
	subsd	%xmm0, %xmm7
	movzwl	%si, %esi
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm0
	addsd	208(%r9), %xmm0
	addsd	%xmm7, %xmm4
	movapd	%xmm0, %xmm12
	subsd	%xmm3, %xmm12
	cmpq	%r11, %rdx
	jb	.L385
	cmpl	$32, %eax
	ja	.L386
	leaq	.L388(%rip), %rdx
	movl	%eax, %eax
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L388:
	.long	.L413-.L388
	.long	.L393-.L388
	.long	.L392-.L388
	.long	.L413-.L388
	.long	.L391-.L388
	.long	.L413-.L388
	.long	.L413-.L388
	.long	.L413-.L388
	.long	.L390-.L388
	.long	.L413-.L388
	.long	.L413-.L388
	.long	.L413-.L388
	.long	.L413-.L388
	.long	.L413-.L388
	.long	.L413-.L388
	.long	.L413-.L388
	.long	.L389-.L388
	.long	.L413-.L388
	.long	.L413-.L388
	.long	.L413-.L388
	.long	.L413-.L388
	.long	.L413-.L388
	.long	.L413-.L388
	.long	.L413-.L388
	.long	.L413-.L388
	.long	.L413-.L388
	.long	.L413-.L388
	.long	.L413-.L388
	.long	.L413-.L388
	.long	.L413-.L388
	.long	.L413-.L388
	.long	.L413-.L388
	.long	.L387-.L388
	.text
	.p2align 4,,10
	.p2align 3
.L401:
	cmpl	$64, %eax
	je	.L409
	cmpl	$128, %eax
	je	.L410
	.p2align 4,,10
	.p2align 3
.L413:
	xorl	%edi, %edi
.L383:
	movl	%edi, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L385:
	testq	%r11, %r11
	js	.L397
	pxor	%xmm8, %xmm8
	cvtsi2sdq	%r11, %xmm8
	addq	%r11, %rdx
	js	.L399
.L418:
	pxor	%xmm3, %xmm3
	cvtsi2sdq	%rdx, %xmm3
.L400:
	divsd	%xmm3, %xmm8
	movsd	.LC4(%rip), %xmm6
	subsd	%xmm8, %xmm6
	cmpl	$32, %eax
	ja	.L401
	leaq	.L403(%rip), %rdx
	movl	%eax, %eax
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L403:
	.long	.L413-.L403
	.long	.L408-.L403
	.long	.L407-.L403
	.long	.L413-.L403
	.long	.L406-.L403
	.long	.L413-.L403
	.long	.L413-.L403
	.long	.L413-.L403
	.long	.L405-.L403
	.long	.L413-.L403
	.long	.L413-.L403
	.long	.L413-.L403
	.long	.L413-.L403
	.long	.L413-.L403
	.long	.L413-.L403
	.long	.L413-.L403
	.long	.L404-.L403
	.long	.L413-.L403
	.long	.L413-.L403
	.long	.L413-.L403
	.long	.L413-.L403
	.long	.L413-.L403
	.long	.L413-.L403
	.long	.L413-.L403
	.long	.L413-.L403
	.long	.L413-.L403
	.long	.L413-.L403
	.long	.L413-.L403
	.long	.L413-.L403
	.long	.L413-.L403
	.long	.L413-.L403
	.long	.L413-.L403
	.long	.L402-.L403
	.text
	.p2align 4,,10
	.p2align 3
.L397:
	movq	%r11, %rcx
	movq	%r11, %rsi
	pxor	%xmm8, %xmm8
	shrq	%rcx
	andl	$1, %esi
	orq	%rsi, %rcx
	cvtsi2sdq	%rcx, %xmm8
	addsd	%xmm8, %xmm8
	addq	%r11, %rdx
	jns	.L418
.L399:
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm3, %xmm3
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm3
	addsd	%xmm3, %xmm3
	jmp	.L400
	.p2align 4,,10
	.p2align 3
.L386:
	cmpl	$64, %eax
	je	.L394
	cmpl	$128, %eax
	jne	.L383
	subsd	%xmm11, %xmm0
	subsd	%xmm7, %xmm5
	movsd	.LC3(%rip), %xmm2
	addsd	%xmm2, %xmm0
	addsd	%xmm2, %xmm5
	addsd	%xmm9, %xmm0
	subsd	%xmm5, %xmm1
	movsd	%xmm0, 208(%r10)
	movsd	%xmm1, 200(%r10)
	jmp	.L396
	.p2align 4,,10
	.p2align 3
.L410:
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
	movsd	%xmm2, 208(%r10)
	movsd	208(%r9), %xmm2
	subsd	%xmm0, %xmm2
	movsd	%xmm2, 208(%r9)
	movsd	%xmm1, 200(%r10)
	addsd	200(%r9), %xmm8
	movsd	%xmm8, 200(%r9)
	.p2align 4,,10
	.p2align 3
.L396:
	movl	$1, %edi
	jmp	.L383
.L390:
	subsd	%xmm7, %xmm5
	addsd	.LC3(%rip), %xmm5
	subsd	%xmm5, %xmm1
	movsd	%xmm1, 200(%r10)
	jmp	.L396
.L389:
	subsd	%xmm10, %xmm4
	subsd	%xmm12, %xmm2
	movsd	.LC3(%rip), %xmm0
	movapd	%xmm4, %xmm3
	addsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm3
	subsd	%xmm2, %xmm9
	addsd	%xmm1, %xmm3
	movsd	%xmm9, 208(%r10)
	movsd	%xmm3, 200(%r10)
	jmp	.L396
.L393:
	subsd	%xmm12, %xmm2
	addsd	.LC3(%rip), %xmm2
	subsd	%xmm2, %xmm9
	movsd	%xmm9, 208(%r10)
	jmp	.L396
.L392:
	subsd	%xmm11, %xmm0
	addsd	.LC3(%rip), %xmm0
	addsd	%xmm9, %xmm0
	movsd	%xmm0, 208(%r10)
	jmp	.L396
.L391:
	subsd	%xmm10, %xmm4
	movsd	.LC3(%rip), %xmm3
	addsd	%xmm4, %xmm3
	addsd	%xmm1, %xmm3
	movsd	%xmm3, 200(%r10)
	jmp	.L396
.L387:
	subsd	%xmm12, %xmm2
	subsd	%xmm7, %xmm5
	movsd	.LC3(%rip), %xmm0
	addsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm5
	subsd	%xmm2, %xmm9
	subsd	%xmm5, %xmm1
	movsd	%xmm9, 208(%r10)
	movsd	%xmm1, 200(%r10)
	jmp	.L396
.L402:
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
	movsd	%xmm9, 208(%r10)
	addsd	208(%r9), %xmm2
	movsd	%xmm2, 208(%r9)
.L416:
	subsd	%xmm6, %xmm1
	mulsd	%xmm8, %xmm5
	movsd	%xmm1, 200(%r10)
	addsd	200(%r9), %xmm5
	movsd	%xmm5, 200(%r9)
	jmp	.L396
.L404:
	subsd	%xmm12, %xmm2
	movapd	%xmm6, %xmm0
	movsd	.LC3(%rip), %xmm5
	mulsd	%xmm2, %xmm0
	mulsd	%xmm8, %xmm2
	addsd	%xmm5, %xmm0
	subsd	%xmm0, %xmm9
	movsd	%xmm9, 208(%r10)
	addsd	208(%r9), %xmm2
.L415:
	movsd	%xmm2, 208(%r9)
	subsd	%xmm10, %xmm4
	mulsd	%xmm4, %xmm6
	movapd	%xmm4, %xmm3
	addsd	%xmm5, %xmm6
.L417:
	mulsd	%xmm8, %xmm3
	addsd	%xmm1, %xmm6
	movsd	%xmm6, 200(%r10)
	movsd	200(%r9), %xmm0
	subsd	%xmm3, %xmm0
	movsd	%xmm0, 200(%r9)
	jmp	.L396
.L405:
	subsd	%xmm7, %xmm5
	mulsd	%xmm5, %xmm6
	addsd	.LC3(%rip), %xmm6
	jmp	.L416
.L406:
	subsd	%xmm10, %xmm4
	mulsd	%xmm4, %xmm6
	movapd	%xmm4, %xmm3
	addsd	.LC3(%rip), %xmm6
	jmp	.L417
.L407:
	subsd	%xmm11, %xmm0
	mulsd	%xmm0, %xmm6
	addsd	.LC3(%rip), %xmm6
	mulsd	%xmm8, %xmm0
	addsd	%xmm9, %xmm6
	movsd	%xmm6, 208(%r10)
	movsd	208(%r9), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 208(%r9)
	jmp	.L396
.L408:
	subsd	%xmm12, %xmm2
	mulsd	%xmm2, %xmm6
	addsd	.LC3(%rip), %xmm6
	mulsd	%xmm8, %xmm2
	subsd	%xmm6, %xmm9
	movsd	%xmm9, 208(%r10)
	addsd	208(%r9), %xmm2
	movsd	%xmm2, 208(%r9)
	jmp	.L396
	.p2align 4,,10
	.p2align 3
.L409:
	subsd	%xmm11, %xmm0
	movapd	%xmm6, %xmm2
	movsd	.LC3(%rip), %xmm5
	mulsd	%xmm0, %xmm2
	mulsd	%xmm8, %xmm0
	addsd	%xmm5, %xmm2
	addsd	%xmm9, %xmm2
	movsd	%xmm2, 208(%r10)
	movsd	208(%r9), %xmm2
	subsd	%xmm0, %xmm2
	jmp	.L415
	.p2align 4,,10
	.p2align 3
.L394:
	subsd	%xmm10, %xmm4
	subsd	%xmm11, %xmm0
	movsd	.LC3(%rip), %xmm2
	movapd	%xmm4, %xmm3
	addsd	%xmm2, %xmm0
	addsd	%xmm2, %xmm3
	addsd	%xmm9, %xmm0
	addsd	%xmm1, %xmm3
	movsd	%xmm0, 208(%r10)
	movsd	%xmm3, 200(%r10)
	jmp	.L396
	.cfi_endproc
.LFE8151:
	.size	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_, .-_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB6:
	.text
.LHOTB6:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_
	.type	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_, @function
_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_:
.LFB8153:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8153
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdx, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%r8, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movzwl	8(%rdi), %r12d
	movq	%rsi, (%rsp)
	movq	%rcx, 16(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	movq	%r12, 32(%rsp)
	testq	%r12, %r12
	jne	.L420
	movq	$0, 40(%rsp)
	xorl	%ebx, %ebx
.L423:
	movq	(%rsp), %rax
	movq	(%rax), %r9
	testq	%r9, %r9
	je	.L422
	movq	$0, 8(%rsp)
	movq	8(%rax), %r10
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	jmp	.L429
	.p2align 4,,10
	.p2align 3
.L424:
	addq	$1, %rbx
	cmpq	%r9, %rbx
	jnb	.L462
.L429:
	movq	(%r10,%rbx,8), %rdx
	leaq	0(,%rbx,8), %r15
	cmpq	%r14, %rdx
	je	.L424
	cmpq	%rbp, %rdx
	je	.L424
	movq	%rbp, %rsi
	movq	%r13, %rdi
	call	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	testl	%eax, %eax
	je	.L424
	cmpq	%r12, 32(%rsp)
	je	.L463
.L425:
	cmpq	%r9, %rbx
	jnb	.L464
	movq	(%r10,%r15), %rax
	movq	40(%rsp), %rcx
	leaq	1(%r12), %rdx
	cmpq	32(%rsp), %r12
	jnb	.L465
	addq	$1, %rbx
	movq	%rax, (%rcx,%r12,8)
	movq	176(%rax), %rax
	movq	%rdx, %r12
	addq	%rax, 8(%rsp)
	cmpq	%r9, %rbx
	jb	.L429
	.p2align 4,,10
	.p2align 3
.L462:
	movq	40(%rsp), %rbx
	movq	16(%rsp), %rdi
	cmpq	%rdi, 8(%rsp)
	jnb	.L430
	testq	%r12, %r12
	je	.L422
	movq	32(%rsp), %rax
	movq	8(%rsp), %rsi
	xorl	%r15d, %r15d
	movq	%rax, 24(%rsp)
	movq	16(%rsp), %rax
	subq	%rsi, %rax
	movq	%rax, 16(%rsp)
.L437:
	cmpq	%r15, 24(%rsp)
	je	.L466
	movq	(%rbx,%r15,8), %r8
	movq	16(%rsp), %rdx
	movq	%rbp, %rsi
	movq	%r13, %rdi
	addq	176(%r8), %rdx
	movq	%r8, %rcx
	movq	%r8, 8(%rsp)
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	movq	8(%rsp), %r8
	testb	%al, %al
	jne	.L467
.L436:
	addq	$1, %r15
	cmpq	%r15, %r12
	jne	.L437
.L422:
	movq	%rbx, %rdi
	call	free@PLT
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L468
	addq	$72, %rsp
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
.L430:
	.cfi_restore_state
	testq	%r12, %r12
	je	.L422
	movq	32(%rsp), %r15
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L434:
	cmpq	%r14, %r15
	je	.L469
	movq	(%rbx,%r14,8), %rcx
	xorl	%edx, %edx
	movq	%rbp, %rsi
	movq	%r13, %rdi
	addq	$1, %r14
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	cmpq	%r14, %r12
	jne	.L434
	jmp	.L422
	.p2align 4,,10
	.p2align 3
.L467:
	movq	16(%rsp), %rcx
	movq	(%rsp), %rsi
	movq	%r14, %rdx
	movq	%r13, %rdi
.LEHB0:
	call	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_
	movq	(%rbx,%r15,8), %rcx
	xorl	%edx, %edx
	movq	%rbp, %rsi
	movq	%r13, %rdi
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	jmp	.L436
	.p2align 4,,10
	.p2align 3
.L463:
	movzwl	8(%r13), %eax
	leaq	32(%rsp), %rdi
	movq	%r12, %rsi
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6InsertEyy.isra.0
.LEHE0:
	movq	(%rsp), %rax
	movq	(%rax), %r9
	movq	8(%rax), %r10
	jmp	.L425
	.p2align 4,,10
	.p2align 3
.L420:
	leaq	0(,%r12,8), %rdi
	call	malloc@PLT
	movq	%rax, 40(%rsp)
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.L423
	leaq	.LC2(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
.LEHB1:
	call	printf@PLT
.LEHE1:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L469:
	movq	%r15, %rsi
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
.LEHB2:
	call	printf@PLT
.L428:
	movl	$1, %edi
	call	exit@PLT
.L465:
	movq	%r12, %rsi
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L428
.L464:
	movq	%rbx, %rsi
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L428
.L466:
	movq	24(%rsp), %rsi
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE2:
	jmp	.L428
.L468:
	call	__stack_chk_fail@PLT
.L441:
	movq	%rax, %rbx
	jmp	.L438
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8153:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8153-.LLSDACSB8153
.LLSDACSB8153:
	.uleb128 .LEHB0-.LFB8153
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L441-.LFB8153
	.uleb128 0
	.uleb128 .LEHB1-.LFB8153
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB8153
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L441-.LFB8153
	.uleb128 0
.LLSDACSE8153:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8153
	.type	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_.cold, @function
_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_.cold:
.LFSB8153:
.L438:
	.cfi_def_cfa_offset 128
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	40(%rsp), %rdi
	call	free@PLT
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L470
	movq	%rbx, %rdi
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
.L470:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8153:
	.section	.gcc_except_table
.LLSDAC8153:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8153-.LLSDACSBC8153
.LLSDACSBC8153:
	.uleb128 .LEHB3-.LCOLDB6
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSEC8153:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_, .-_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_
	.section	.text.unlikely
	.size	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_.cold, .-_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_.cold
.LCOLDE6:
	.text
.LHOTE6:
	.section	.text.unlikely
	.align 2
.LCOLDB7:
	.text
.LHOTB7:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE
	.type	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE, @function
_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE:
.LFB8152:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8152
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
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	movzwl	8(%rdi), %r12d
	movq	%rdi, (%rsp)
	movq	%rdx, 72(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	xorl	%eax, %eax
	movq	%r12, 80(%rsp)
	testq	%r12, %r12
	jne	.L472
	movq	$0, 88(%rsp)
	xorl	%ebx, %ebx
.L473:
	movq	(%rsp), %rax
	movq	24(%rax), %r13
	cmpq	16(%rax), %rbp
	jnb	.L529
	salq	$4, %rbp
	leaq	0(%r13,%rbp), %rax
	movq	(%rax), %r13
	movq	%rax, 24(%rsp)
	testq	%r13, %r13
	je	.L475
	xorl	%ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L495:
	movq	24(%rsp), %rax
	leaq	0(,%rbp,8), %r14
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	movq	$0, 48(%rsp)
	movq	8(%rax), %r10
	.p2align 4,,10
	.p2align 3
.L482:
	cmpq	%rbx, %rbp
	je	.L476
	movq	(%r10,%rbx,8), %rdx
	leaq	0(,%rbx,8), %r15
	cmpq	%r13, %rbp
	jnb	.L529
	movq	(%r10,%r14), %rsi
	movq	(%rsp), %rdi
	call	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	testl	%eax, %eax
	je	.L476
	cmpq	%r12, 80(%rsp)
	je	.L535
.L479:
	cmpq	%r13, %rbx
	jnb	.L532
	movq	(%r10,%r15), %rax
	movq	88(%rsp), %rcx
	leaq	1(%r12), %rdx
	cmpq	80(%rsp), %r12
	jnb	.L536
	movq	%rax, (%rcx,%r12,8)
	movq	176(%rax), %rax
	movq	%rdx, %r12
	addq	%rax, 48(%rsp)
.L476:
	addq	$1, %rbx
	cmpq	%r13, %rbx
	jb	.L482
	cmpq	%r13, %rbp
	jnb	.L529
	movq	(%r10,%r14), %r15
	movq	48(%rsp), %rax
	cmpq	168(%r15), %rax
	jnb	.L484
	testq	%r12, %r12
	je	.L489
	movq	80(%rsp), %rax
	xorl	%ebx, %ebx
	movq	%rax, 64(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 56(%rsp)
	jmp	.L494
	.p2align 4,,10
	.p2align 3
.L492:
	addq	$1, %rbx
	cmpq	%rbx, %r12
	je	.L489
.L494:
	cmpq	%rbx, 64(%rsp)
	je	.L537
	movq	56(%rsp), %rax
	movq	(%rax,%rbx,8), %r8
	movq	24(%rsp), %rax
	movq	176(%r8), %rdx
	movq	8(%rax), %rax
	cmpq	%r13, %rbp
	jnb	.L529
	movq	(%rax,%r14), %r15
	movq	(%rsp), %rdi
	movq	%r8, %rcx
	movq	%r8, 32(%rsp)
	movq	48(%rsp), %rax
	movq	168(%r15), %r10
	movq	%r15, %rsi
	subq	%rax, %r10
	addq	%r10, %rdx
	movq	%r10, 40(%rsp)
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testb	%al, %al
	je	.L492
	movq	%r15, %rdx
	movq	24(%rsp), %r15
	movq	(%rsp), %rdi
	movq	%r10, %rcx
	movq	%r15, %rsi
.LEHB4:
	call	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_
	movq	56(%rsp), %rax
	movq	(%r15), %r13
	movq	(%rax,%rbx,8), %rcx
	movq	8(%r15), %rax
	cmpq	%r13, %rbp
	jnb	.L529
	movq	(%rax,%r14), %rsi
	movq	(%rsp), %rdi
	xorl	%edx, %edx
	addq	$1, %rbx
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	cmpq	%rbx, %r12
	jne	.L494
.L489:
	addq	$1, %rbp
	cmpq	%r13, %rbp
	jb	.L495
.L539:
	movq	88(%rsp), %rbx
.L475:
	movq	72(%rsp), %rcx
	movl	266(%rcx), %eax
	movupd	200(%rcx), %xmm3
	movq	%rcx, %rdi
	movl	%eax, 270(%rcx)
	movups	%xmm3, 216(%rcx)
	movaps	%xmm3, (%rsp)
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv@PLT
	movq	24(%rsp), %rax
	xorl	%ebp, %ebp
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L501
	.p2align 4,,10
	.p2align 3
.L496:
	movq	24(%rsp), %rax
	movq	8(%rax), %rax
	movq	(%rax,%rbp,8), %rdi
	movq	72(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L497
	movupd	200(%rdi), %xmm0
	ucomisd	216(%rdi), %xmm0
	jp	.L498
	jne	.L498
	movapd	%xmm0, %xmm2
	unpckhpd	%xmm2, %xmm2
	ucomisd	224(%rdi), %xmm2
	jp	.L498
	je	.L497
.L498:
	movups	%xmm0, 216(%rdi)
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv@PLT
	movq	24(%rsp), %rax
	movq	(%rax), %rdx
.L497:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jb	.L496
.L501:
	movq	%rbx, %rdi
	call	free@PLT
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L538
	addq	$120, %rsp
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
.L535:
	.cfi_restore_state
	movq	(%rsp), %rax
	leaq	80(%rsp), %rdi
	movq	%r12, %rsi
	movzwl	8(%rax), %eax
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6InsertEyy.isra.0
	movq	24(%rsp), %rax
	movq	(%rax), %r13
	movq	8(%rax), %r10
	jmp	.L479
	.p2align 4,,10
	.p2align 3
.L484:
	testq	%r12, %r12
	je	.L489
	movq	88(%rsp), %r14
	movq	80(%rsp), %rsi
	xorl	%ebx, %ebx
	movq	%r13, 40(%rsp)
	movq	%rbp, 32(%rsp)
	movq	%rbx, %rbp
	movq	%r14, %r13
	movq	(%rsp), %r14
	movq	%rsi, %rbx
	.p2align 4,,10
	.p2align 3
.L488:
	cmpq	%rbp, %rbx
	je	.L532
	movq	0(%r13,%rbp,8), %rcx
	xorl	%edx, %edx
	movq	%r15, %rsi
	movq	%r14, %rdi
	addq	$1, %rbp
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	cmpq	%rbp, %r12
	jne	.L488
	movq	32(%rsp), %rbp
	movq	40(%rsp), %r13
	addq	$1, %rbp
	cmpq	%r13, %rbp
	jb	.L495
	jmp	.L539
.L529:
	movq	%rbp, %rsi
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE4:
.L478:
	movl	$1, %edi
	call	exit@PLT
.L472:
	leaq	0(,%r12,8), %rdi
	call	malloc@PLT
	movq	%rax, 88(%rsp)
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.L473
	leaq	.LC2(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
.LEHB5:
	call	printf@PLT
.LEHE5:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L532:
	movq	%rbx, %rsi
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
.LEHB6:
	call	printf@PLT
	jmp	.L478
.L537:
	movq	64(%rsp), %rsi
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L478
.L536:
	movq	%r12, %rsi
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE6:
	jmp	.L478
.L538:
	call	__stack_chk_fail@PLT
.L506:
	movq	%rax, %rbx
	jmp	.L502
	.section	.gcc_except_table
.LLSDA8152:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8152-.LLSDACSB8152
.LLSDACSB8152:
	.uleb128 .LEHB4-.LFB8152
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L506-.LFB8152
	.uleb128 0
	.uleb128 .LEHB5-.LFB8152
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB8152
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L506-.LFB8152
	.uleb128 0
.LLSDACSE8152:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8152
	.type	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE.cold, @function
_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE.cold:
.LFSB8152:
.L502:
	.cfi_def_cfa_offset 176
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	88(%rsp), %rdi
	call	free@PLT
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L540
	movq	%rbx, %rdi
.LEHB7:
	call	_Unwind_Resume@PLT
.LEHE7:
.L540:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8152:
	.section	.gcc_except_table
.LLSDAC8152:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8152-.LLSDACSBC8152
.LLSDACSBC8152:
	.uleb128 .LEHB7-.LCOLDB7
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSEC8152:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE, .-_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE
	.section	.text.unlikely
	.size	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE.cold, .-_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE.cold
.LCOLDE7:
	.text
.LHOTE7:
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC3:
	.long	-350469331
	.long	1058682594
	.align 8
.LC4:
	.long	0
	.long	1072693248
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
