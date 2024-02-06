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
.LFB8337:
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
.LFE8337:
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
	movq	$256, 8(%rdi)
	movl	$4096, %edi
	call	malloc@PLT
	movq	%rax, 16(%rbx)
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
	.globl	_ZN3wze6engine9collision14CheckCollisionEdddddddd
	.type	_ZN3wze6engine9collision14CheckCollisionEdddddddd, @function
_ZN3wze6engine9collision14CheckCollisionEdddddddd:
.LFB8147:
	.cfi_startproc
	xorl	%eax, %eax
	comisd	%xmm2, %xmm4
	ja	.L35
	comisd	%xmm6, %xmm0
	ja	.L35
	comisd	%xmm1, %xmm7
	ja	.L35
	comisd	%xmm5, %xmm3
	ja	.L35
	comisd	%xmm0, %xmm6
	jb	.L37
	comisd	%xmm6, %xmm2
	jnb	.L39
	comisd	%xmm4, %xmm0
	jnb	.L40
	comisd	%xmm0, %xmm4
	jnb	.L41
	comisd	%xmm4, %xmm2
	jnb	.L42
	.p2align 4,,10
	.p2align 3
.L43:
	comisd	%xmm0, %xmm6
	jnb	.L56
.L76:
	comisd	%xmm4, %xmm0
	jnb	.L61
.L91:
	comisd	%xmm0, %xmm4
	jnb	.L62
.L69:
	comisd	%xmm4, %xmm2
	jb	.L152
.L71:
	comisd	%xmm2, %xmm6
	jnb	.L79
.L152:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L54:
	comisd	%xmm1, %xmm5
	movl	$1, %eax
	jb	.L37
.L35:
	ret
	.p2align 4,,10
	.p2align 3
.L37:
	comisd	%xmm0, %xmm4
	jnb	.L41
.L52:
	comisd	%xmm4, %xmm2
	jb	.L43
.L55:
	comisd	%xmm2, %xmm6
	jnb	.L42
	comisd	%xmm0, %xmm6
	jb	.L76
	jmp	.L60
	.p2align 4,,10
	.p2align 3
.L41:
	comisd	%xmm4, %xmm2
	jnb	.L49
	comisd	%xmm0, %xmm6
	jnb	.L56
.L156:
	comisd	%xmm4, %xmm0
	jb	.L62
.L61:
	comisd	%xmm0, %xmm6
	jb	.L91
	.p2align 4,,10
	.p2align 3
.L78:
	comisd	%xmm7, %xmm3
	jb	.L91
.L104:
	comisd	%xmm3, %xmm5
	jb	.L91
.L131:
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L39:
	comisd	%xmm3, %xmm7
	jb	.L141
	comisd	%xmm7, %xmm1
	movl	$1, %eax
	jnb	.L35
	comisd	%xmm4, %xmm0
	jnb	.L46
	comisd	%xmm0, %xmm4
	jnb	.L47
.L48:
	comisd	%xmm4, %xmm2
	jnb	.L162
	comisd	%xmm3, %xmm5
	jnb	.L85
	comisd	%xmm4, %xmm0
	jnb	.L78
	xorl	%eax, %eax
	comisd	%xmm0, %xmm4
	jb	.L69
	ret
	.p2align 4,,10
	.p2align 3
.L141:
	comisd	%xmm4, %xmm0
	jnb	.L46
	comisd	%xmm0, %xmm4
	jb	.L48
	.p2align 4,,10
	.p2align 3
.L49:
	comisd	%xmm3, %xmm7
	jnb	.L47
	comisd	%xmm2, %xmm6
	jnb	.L42
	comisd	%xmm0, %xmm6
	jb	.L156
.L60:
	comisd	%xmm3, %xmm5
	jb	.L74
.L85:
	comisd	%xmm5, %xmm1
	movl	$1, %eax
	jnb	.L35
	comisd	%xmm4, %xmm0
	jb	.L163
.L82:
	comisd	%xmm7, %xmm3
	movl	$1, %eax
	jb	.L91
	ret
	.p2align 4,,10
	.p2align 3
.L42:
	comisd	%xmm7, %xmm1
	jb	.L146
.L107:
	comisd	%xmm1, %xmm5
	movl	$1, %eax
	jnb	.L35
	comisd	%xmm0, %xmm6
	jnb	.L68
	comisd	%xmm0, %xmm4
	jb	.L69
	comisd	%xmm3, %xmm5
	jb	.L71
	ret
.L148:
	comisd	%xmm4, %xmm0
	jnb	.L78
	.p2align 4,,10
	.p2align 3
.L62:
	comisd	%xmm4, %xmm2
	jb	.L152
.L88:
	comisd	%xmm3, %xmm5
	jb	.L71
.L83:
	comisd	%xmm5, %xmm1
	movl	$1, %eax
	jb	.L71
	ret
	.p2align 4,,10
	.p2align 3
.L40:
	comisd	%xmm7, %xmm1
	jnb	.L54
	comisd	%xmm0, %xmm4
	jnb	.L41
	comisd	%xmm4, %xmm2
	jnb	.L55
	.p2align 4,,10
	.p2align 3
.L56:
	comisd	%xmm6, %xmm2
	jnb	.L60
.L72:
	comisd	%xmm4, %xmm0
	jnb	.L78
	comisd	%xmm0, %xmm4
	jnb	.L62
	comisd	%xmm4, %xmm2
	jb	.L152
	.p2align 4,,10
	.p2align 3
.L79:
	comisd	%xmm7, %xmm3
	jb	.L152
	comisd	%xmm3, %xmm5
	setnb	%al
	ret
	.p2align 4,,10
	.p2align 3
.L47:
	comisd	%xmm7, %xmm1
	movl	$1, %eax
	jb	.L55
	ret
	.p2align 4,,10
	.p2align 3
.L146:
	comisd	%xmm0, %xmm6
	jnb	.L56
	comisd	%xmm0, %xmm4
	jnb	.L88
	jmp	.L69
	.p2align 4,,10
	.p2align 3
.L46:
	comisd	%xmm7, %xmm1
	jb	.L142
	comisd	%xmm1, %xmm5
	movl	$1, %eax
	jnb	.L35
	comisd	%xmm0, %xmm4
	jnb	.L49
	jmp	.L52
.L68:
	ucomisd	%xmm6, %xmm2
	jp	.L72
	jne	.L72
	comisd	%xmm3, %xmm5
	jnb	.L35
	.p2align 4,,10
	.p2align 3
.L74:
	comisd	%xmm4, %xmm0
	jb	.L91
	jmp	.L78
.L142:
	comisd	%xmm0, %xmm4
	jnb	.L49
	ucomisd	%xmm6, %xmm2
	jp	.L140
	je	.L101
.L140:
	comisd	%xmm3, %xmm5
	jnb	.L103
	comisd	%xmm7, %xmm3
	jnb	.L104
	jmp	.L69
	.p2align 4,,10
	.p2align 3
.L163:
	comisd	%xmm0, %xmm4
	jb	.L69
	jmp	.L83
.L162:
	comisd	%xmm2, %xmm6
	jnb	.L42
	comisd	%xmm3, %xmm5
	jb	.L148
	comisd	%xmm5, %xmm1
	jnb	.L131
	comisd	%xmm4, %xmm0
	jnb	.L82
	jmp	.L83
.L101:
	comisd	%xmm7, %xmm1
	jnb	.L107
	comisd	%xmm3, %xmm5
	jb	.L78
.L103:
	comisd	%xmm5, %xmm1
	jb	.L82
	jmp	.L131
	.cfi_endproc
.LFE8147:
	.size	_ZN3wze6engine9collision14CheckCollisionEdddddddd, .-_ZN3wze6engine9collision14CheckCollisionEdddddddd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	.type	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_, @function
_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_:
.LFB8148:
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
	ja	.L165
	comisd	%xmm6, %xmm8
	ja	.L165
	comisd	%xmm10, %xmm7
	ja	.L165
	comisd	%xmm5, %xmm11
	ja	.L165
	comisd	%xmm8, %xmm6
	jb	.L335
	comisd	%xmm6, %xmm9
	jb	.L374
	xorl	%edx, %edx
	comisd	%xmm11, %xmm7
	jnb	.L164
	comisd	%xmm4, %xmm8
	jb	.L365
	comisd	%xmm7, %xmm10
	jb	.L337
	comisd	%xmm10, %xmm5
	jnb	.L164
	comisd	%xmm8, %xmm4
	jnb	.L178
	.p2align 4,,10
	.p2align 3
.L179:
	comisd	%xmm9, %xmm6
	jnb	.L173
	comisd	%xmm8, %xmm6
	jnb	.L175
	comisd	%xmm4, %xmm8
	jnb	.L189
.L200:
	comisd	%xmm11, %xmm5
	jb	.L165
	xorl	%edx, %edx
	comisd	%xmm5, %xmm10
	jb	.L212
.L164:
	movl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L335:
	comisd	%xmm8, %xmm4
	jnb	.L184
	comisd	%xmm4, %xmm9
	jnb	.L375
	comisd	%xmm8, %xmm6
	jb	.L343
.L185:
	comisd	%xmm6, %xmm9
	jnb	.L175
	comisd	%xmm4, %xmm8
	jnb	.L205
.L190:
	comisd	%xmm4, %xmm9
	jnb	.L200
	.p2align 4,,10
	.p2align 3
.L165:
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
	je	.L164
	comisd	%xmm4, %xmm8
	jb	.L345
	comisd	%xmm9, %xmm6
	jnb	.L224
	ucomisd	%xmm4, %xmm8
	jp	.L327
	je	.L225
.L327:
	comisd	%xmm7, %xmm11
	jb	.L376
	.p2align 4,,10
	.p2align 3
.L227:
	comisd	%xmm10, %xmm5
	jnb	.L236
	comisd	%xmm11, %xmm7
	jnb	.L236
	comisd	%xmm4, %xmm8
	ja	.L258
	comisd	%xmm9, %xmm6
	ja	.L271
	comisd	%xmm4, %xmm8
	ja	.L258
	.p2align 4,,10
	.p2align 3
.L259:
	comisd	%xmm9, %xmm6
	ja	.L255
.L353:
	xorl	%edx, %edx
	jmp	.L164
	.p2align 4,,10
	.p2align 3
.L345:
	comisd	%xmm8, %xmm4
	jb	.L230
.L225:
	comisd	%xmm6, %xmm9
	jnb	.L224
	comisd	%xmm7, %xmm11
	jnb	.L227
	comisd	%xmm11, %xmm7
	jnb	.L232
	comisd	%xmm9, %xmm6
	jbe	.L243
.L253:
	comisd	%xmm10, %xmm5
	jbe	.L245
.L251:
	comisd	%xmm4, %xmm9
	jnb	.L301
	comisd	%xmm7, %xmm10
	movl	$8, %edx
	jnb	.L164
	subsd	%xmm4, %xmm2
	subsd	%xmm7, %xmm1
	movl	$1, %edx
	comisd	%xmm1, %xmm2
	ja	.L164
	comisd	%xmm2, %xmm1
	movl	$8, %edx
	movl	$32, %eax
	cmovbe	%eax, %edx
	jmp	.L164
	.p2align 4,,10
	.p2align 3
.L224:
	comisd	%xmm10, %xmm7
	movl	$1, %edx
	ja	.L164
	comisd	%xmm5, %xmm11
	movl	$2, %edx
	ja	.L164
.L230:
	comisd	%xmm7, %xmm11
	jnb	.L227
	comisd	%xmm11, %xmm7
	jnb	.L232
	comisd	%xmm4, %xmm8
	jbe	.L352
	comisd	%xmm10, %xmm5
	ja	.L248
	comisd	%xmm9, %xmm6
	jbe	.L249
	comisd	%xmm10, %xmm5
	ja	.L251
	jmp	.L373
	.p2align 4,,10
	.p2align 3
.L376:
	comisd	%xmm11, %xmm7
	jb	.L377
	comisd	%xmm5, %xmm10
	jb	.L248
	.p2align 4,,10
	.p2align 3
.L236:
	comisd	%xmm6, %xmm8
	movl	$4, %edx
	ja	.L164
	comisd	%xmm9, %xmm4
	movl	$8, %edx
	ja	.L164
	comisd	%xmm4, %xmm8
	jbe	.L378
	comisd	%xmm10, %xmm5
	ja	.L248
	comisd	%xmm9, %xmm6
	jbe	.L249
.L245:
	comisd	%xmm4, %xmm8
	jbe	.L255
.L373:
	comisd	%xmm7, %xmm11
	jbe	.L353
	.p2align 4,,10
	.p2align 3
.L258:
	comisd	%xmm8, %xmm6
	movl	$2, %edx
	jnb	.L164
	comisd	%xmm11, %xmm5
	movl	$4, %edx
	jnb	.L164
	subsd	%xmm0, %xmm6
	subsd	%xmm3, %xmm5
	movl	$2, %edx
	comisd	%xmm5, %xmm6
	ja	.L164
	comisd	%xmm6, %xmm5
	movl	$4, %edx
	movl	$64, %eax
	cmovbe	%eax, %edx
	jmp	.L164
	.p2align 4,,10
	.p2align 3
.L232:
	comisd	%xmm5, %xmm10
	jnb	.L236
	comisd	%xmm4, %xmm8
	ja	.L248
	comisd	%xmm9, %xmm6
	ja	.L251
	comisd	%xmm4, %xmm8
	jbe	.L259
	jmp	.L373
	.p2align 4,,10
	.p2align 3
.L248:
	comisd	%xmm8, %xmm6
	movl	$1, %edx
	jnb	.L164
	comisd	%xmm7, %xmm10
	movl	$4, %edx
	jnb	.L164
	subsd	%xmm0, %xmm6
	subsd	%xmm7, %xmm1
	movl	$1, %edx
	comisd	%xmm1, %xmm6
	ja	.L164
	comisd	%xmm6, %xmm1
	movl	$4, %edx
	movl	$16, %eax
	cmovbe	%eax, %edx
	jmp	.L164
	.p2align 4,,10
	.p2align 3
.L374:
	comisd	%xmm4, %xmm8
	jnb	.L169
	comisd	%xmm4, %xmm9
	jnb	.L379
.L336:
	comisd	%xmm8, %xmm6
	jnb	.L185
	comisd	%xmm4, %xmm8
	jb	.L190
.L189:
	comisd	%xmm8, %xmm6
	jnb	.L205
.L214:
	comisd	%xmm8, %xmm4
	jnb	.L190
	comisd	%xmm4, %xmm9
	jb	.L165
.L212:
	comisd	%xmm9, %xmm6
	jb	.L165
.L203:
	xorl	%edx, %edx
	comisd	%xmm7, %xmm11
	jnb	.L164
	jmp	.L165
	.p2align 4,,10
	.p2align 3
.L378:
	comisd	%xmm9, %xmm6
	jbe	.L243
	comisd	%xmm10, %xmm5
	movl	$1, %edx
	ja	.L164
	jmp	.L245
	.p2align 4,,10
	.p2align 3
.L343:
	comisd	%xmm4, %xmm8
	jb	.L214
	jmp	.L189
	.p2align 4,,10
	.p2align 3
.L375:
	comisd	%xmm9, %xmm6
	jnb	.L173
	comisd	%xmm8, %xmm6
	jb	.L214
	.p2align 4,,10
	.p2align 3
.L175:
	comisd	%xmm11, %xmm5
	jb	.L344
.L275:
	xorl	%edx, %edx
	comisd	%xmm5, %xmm10
	jnb	.L164
	comisd	%xmm4, %xmm8
	jb	.L212
.L205:
	xorl	%edx, %edx
.L371:
	comisd	%xmm7, %xmm11
	jnb	.L164
	jmp	.L214
	.p2align 4,,10
	.p2align 3
.L352:
	comisd	%xmm9, %xmm6
	jbe	.L243
	comisd	%xmm10, %xmm5
	ja	.L251
.L255:
	comisd	%xmm7, %xmm11
	jbe	.L353
.L271:
	comisd	%xmm4, %xmm9
	movl	$2, %edx
	jnb	.L164
	comisd	%xmm11, %xmm5
	movl	$8, %edx
	jnb	.L164
	subsd	%xmm4, %xmm2
	subsd	%xmm3, %xmm5
	movl	$2, %edx
	comisd	%xmm5, %xmm2
	ja	.L164
	comisd	%xmm2, %xmm5
	movl	$8, %edx
	movl	$128, %eax
	cmovbe	%eax, %edx
	jmp	.L164
	.p2align 4,,10
	.p2align 3
.L184:
	comisd	%xmm4, %xmm9
	jb	.L336
.L178:
	xorl	%edx, %edx
	comisd	%xmm11, %xmm7
	jnb	.L164
	jmp	.L179
	.p2align 4,,10
	.p2align 3
.L243:
	comisd	%xmm4, %xmm8
	jbe	.L259
.L249:
	comisd	%xmm7, %xmm11
	jbe	.L259
	jmp	.L258
	.p2align 4,,10
	.p2align 3
.L379:
	xorl	%edx, %edx
	comisd	%xmm11, %xmm7
	jnb	.L164
	.p2align 4,,10
	.p2align 3
.L173:
	comisd	%xmm7, %xmm10
	jb	.L185
.L276:
	xorl	%edx, %edx
	comisd	%xmm10, %xmm5
	jnb	.L164
	ucomisd	%xmm6, %xmm9
	jp	.L322
	je	.L197
.L322:
	xorl	%edx, %edx
	comisd	%xmm4, %xmm8
	jnb	.L371
	comisd	%xmm11, %xmm5
	jb	.L165
	jmp	.L164
	.p2align 4,,10
	.p2align 3
.L169:
	comisd	%xmm7, %xmm10
	jb	.L338
	xorl	%edx, %edx
	comisd	%xmm10, %xmm5
	jnb	.L164
.L338:
	comisd	%xmm8, %xmm4
	jnb	.L184
	comisd	%xmm4, %xmm9
	jb	.L185
	jmp	.L179
	.p2align 4,,10
	.p2align 3
.L344:
	comisd	%xmm4, %xmm8
	jb	.L200
	ucomisd	%xmm4, %xmm8
	jp	.L212
	jne	.L212
	jmp	.L200
.L380:
	xorl	%edx, %edx
.L365:
	comisd	%xmm11, %xmm7
	jnb	.L164
	comisd	%xmm9, %xmm6
	jnb	.L173
	jmp	.L175
	.p2align 4,,10
	.p2align 3
.L377:
	comisd	%xmm10, %xmm5
	ja	.L248
	comisd	%xmm9, %xmm6
	ja	.L253
	jmp	.L249
.L337:
	ucomisd	%xmm4, %xmm8
	jp	.L180
	je	.L380
.L180:
	ucomisd	%xmm6, %xmm9
	jp	.L270
	jne	.L270
	comisd	%xmm7, %xmm10
	jnb	.L276
	jmp	.L175
.L197:
	comisd	%xmm11, %xmm5
	jnb	.L164
	comisd	%xmm4, %xmm8
	jb	.L200
	ucomisd	%xmm4, %xmm8
	jp	.L203
	jne	.L203
	jmp	.L200
.L301:
	movl	$1, %edx
	jmp	.L164
.L270:
	comisd	%xmm11, %xmm5
	jnb	.L275
	jmp	.L165
	.cfi_endproc
.LFE8148:
	.size	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_, .-_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	.type	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_, @function
_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_:
.LFB8149:
	.cfi_startproc
	movq	%rdx, %r11
	movq	%rcx, %rdx
	movq	%rsi, %r10
	movq	%rcx, %r9
	call	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L381
	movzwl	234(%r10), %ecx
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	movsd	168(%r10), %xmm1
	pxor	%xmm5, %xmm5
	pxor	%xmm4, %xmm4
	pxor	%xmm3, %xmm3
	movsd	176(%r10), %xmm9
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
	addsd	%xmm9, %xmm2
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
	jb	.L383
	cmpl	$32, %eax
	ja	.L384
	leaq	.L386(%rip), %rdx
	movl	%eax, %eax
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L386:
	.long	.L411-.L386
	.long	.L391-.L386
	.long	.L390-.L386
	.long	.L411-.L386
	.long	.L389-.L386
	.long	.L411-.L386
	.long	.L411-.L386
	.long	.L411-.L386
	.long	.L388-.L386
	.long	.L411-.L386
	.long	.L411-.L386
	.long	.L411-.L386
	.long	.L411-.L386
	.long	.L411-.L386
	.long	.L411-.L386
	.long	.L411-.L386
	.long	.L387-.L386
	.long	.L411-.L386
	.long	.L411-.L386
	.long	.L411-.L386
	.long	.L411-.L386
	.long	.L411-.L386
	.long	.L411-.L386
	.long	.L411-.L386
	.long	.L411-.L386
	.long	.L411-.L386
	.long	.L411-.L386
	.long	.L411-.L386
	.long	.L411-.L386
	.long	.L411-.L386
	.long	.L411-.L386
	.long	.L411-.L386
	.long	.L385-.L386
	.text
	.p2align 4,,10
	.p2align 3
.L399:
	cmpl	$64, %eax
	je	.L407
	cmpl	$128, %eax
	je	.L408
	.p2align 4,,10
	.p2align 3
.L411:
	xorl	%edi, %edi
.L381:
	movl	%edi, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L383:
	testq	%r11, %r11
	js	.L395
	pxor	%xmm8, %xmm8
	cvtsi2sdq	%r11, %xmm8
	addq	%r11, %rdx
	js	.L397
.L416:
	pxor	%xmm3, %xmm3
	cvtsi2sdq	%rdx, %xmm3
.L398:
	divsd	%xmm3, %xmm8
	movsd	.LC4(%rip), %xmm6
	subsd	%xmm8, %xmm6
	cmpl	$32, %eax
	ja	.L399
	leaq	.L401(%rip), %rdx
	movl	%eax, %eax
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L401:
	.long	.L411-.L401
	.long	.L406-.L401
	.long	.L405-.L401
	.long	.L411-.L401
	.long	.L404-.L401
	.long	.L411-.L401
	.long	.L411-.L401
	.long	.L411-.L401
	.long	.L403-.L401
	.long	.L411-.L401
	.long	.L411-.L401
	.long	.L411-.L401
	.long	.L411-.L401
	.long	.L411-.L401
	.long	.L411-.L401
	.long	.L411-.L401
	.long	.L402-.L401
	.long	.L411-.L401
	.long	.L411-.L401
	.long	.L411-.L401
	.long	.L411-.L401
	.long	.L411-.L401
	.long	.L411-.L401
	.long	.L411-.L401
	.long	.L411-.L401
	.long	.L411-.L401
	.long	.L411-.L401
	.long	.L411-.L401
	.long	.L411-.L401
	.long	.L411-.L401
	.long	.L411-.L401
	.long	.L411-.L401
	.long	.L400-.L401
	.text
	.p2align 4,,10
	.p2align 3
.L395:
	movq	%r11, %rcx
	movq	%r11, %rsi
	pxor	%xmm8, %xmm8
	shrq	%rcx
	andl	$1, %esi
	orq	%rsi, %rcx
	cvtsi2sdq	%rcx, %xmm8
	addsd	%xmm8, %xmm8
	addq	%r11, %rdx
	jns	.L416
.L397:
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm3, %xmm3
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm3
	addsd	%xmm3, %xmm3
	jmp	.L398
	.p2align 4,,10
	.p2align 3
.L384:
	cmpl	$64, %eax
	je	.L392
	cmpl	$128, %eax
	jne	.L381
	subsd	%xmm11, %xmm0
	subsd	%xmm7, %xmm5
	movsd	.LC3(%rip), %xmm2
	addsd	%xmm2, %xmm0
	addsd	%xmm2, %xmm5
	addsd	%xmm9, %xmm0
	subsd	%xmm5, %xmm1
	movsd	%xmm0, 176(%r10)
	movsd	%xmm1, 168(%r10)
	jmp	.L394
	.p2align 4,,10
	.p2align 3
.L408:
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
	movsd	%xmm2, 176(%r10)
	movsd	176(%r9), %xmm2
	subsd	%xmm0, %xmm2
	movsd	%xmm2, 176(%r9)
	movsd	%xmm1, 168(%r10)
	addsd	168(%r9), %xmm8
	movsd	%xmm8, 168(%r9)
	.p2align 4,,10
	.p2align 3
.L394:
	movl	$1, %edi
	jmp	.L381
.L388:
	subsd	%xmm7, %xmm5
	addsd	.LC3(%rip), %xmm5
	subsd	%xmm5, %xmm1
	movsd	%xmm1, 168(%r10)
	jmp	.L394
.L387:
	subsd	%xmm10, %xmm4
	subsd	%xmm12, %xmm2
	movsd	.LC3(%rip), %xmm0
	movapd	%xmm4, %xmm3
	addsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm3
	subsd	%xmm2, %xmm9
	addsd	%xmm1, %xmm3
	movsd	%xmm9, 176(%r10)
	movsd	%xmm3, 168(%r10)
	jmp	.L394
.L391:
	subsd	%xmm12, %xmm2
	addsd	.LC3(%rip), %xmm2
	subsd	%xmm2, %xmm9
	movsd	%xmm9, 176(%r10)
	jmp	.L394
.L390:
	subsd	%xmm11, %xmm0
	addsd	.LC3(%rip), %xmm0
	addsd	%xmm9, %xmm0
	movsd	%xmm0, 176(%r10)
	jmp	.L394
.L389:
	subsd	%xmm10, %xmm4
	movsd	.LC3(%rip), %xmm3
	addsd	%xmm4, %xmm3
	addsd	%xmm1, %xmm3
	movsd	%xmm3, 168(%r10)
	jmp	.L394
.L385:
	subsd	%xmm12, %xmm2
	subsd	%xmm7, %xmm5
	movsd	.LC3(%rip), %xmm0
	addsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm5
	subsd	%xmm2, %xmm9
	subsd	%xmm5, %xmm1
	movsd	%xmm9, 176(%r10)
	movsd	%xmm1, 168(%r10)
	jmp	.L394
.L400:
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
	movsd	%xmm9, 176(%r10)
	addsd	176(%r9), %xmm2
	movsd	%xmm2, 176(%r9)
.L414:
	subsd	%xmm6, %xmm1
	mulsd	%xmm8, %xmm5
	movsd	%xmm1, 168(%r10)
	addsd	168(%r9), %xmm5
	movsd	%xmm5, 168(%r9)
	jmp	.L394
.L402:
	subsd	%xmm12, %xmm2
	movapd	%xmm6, %xmm0
	movsd	.LC3(%rip), %xmm5
	mulsd	%xmm2, %xmm0
	mulsd	%xmm8, %xmm2
	addsd	%xmm5, %xmm0
	subsd	%xmm0, %xmm9
	movsd	%xmm9, 176(%r10)
	addsd	176(%r9), %xmm2
.L413:
	movsd	%xmm2, 176(%r9)
	subsd	%xmm10, %xmm4
	mulsd	%xmm4, %xmm6
	movapd	%xmm4, %xmm3
	addsd	%xmm5, %xmm6
.L415:
	mulsd	%xmm8, %xmm3
	addsd	%xmm1, %xmm6
	movsd	%xmm6, 168(%r10)
	movsd	168(%r9), %xmm0
	subsd	%xmm3, %xmm0
	movsd	%xmm0, 168(%r9)
	jmp	.L394
.L403:
	subsd	%xmm7, %xmm5
	mulsd	%xmm5, %xmm6
	addsd	.LC3(%rip), %xmm6
	jmp	.L414
.L404:
	subsd	%xmm10, %xmm4
	mulsd	%xmm4, %xmm6
	movapd	%xmm4, %xmm3
	addsd	.LC3(%rip), %xmm6
	jmp	.L415
.L405:
	subsd	%xmm11, %xmm0
	mulsd	%xmm0, %xmm6
	addsd	.LC3(%rip), %xmm6
	mulsd	%xmm8, %xmm0
	addsd	%xmm9, %xmm6
	movsd	%xmm6, 176(%r10)
	movsd	176(%r9), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 176(%r9)
	jmp	.L394
.L406:
	subsd	%xmm12, %xmm2
	mulsd	%xmm2, %xmm6
	addsd	.LC3(%rip), %xmm6
	mulsd	%xmm8, %xmm2
	subsd	%xmm6, %xmm9
	movsd	%xmm9, 176(%r10)
	addsd	176(%r9), %xmm2
	movsd	%xmm2, 176(%r9)
	jmp	.L394
	.p2align 4,,10
	.p2align 3
.L407:
	subsd	%xmm11, %xmm0
	movapd	%xmm6, %xmm2
	movsd	.LC3(%rip), %xmm5
	mulsd	%xmm0, %xmm2
	mulsd	%xmm8, %xmm0
	addsd	%xmm5, %xmm2
	addsd	%xmm9, %xmm2
	movsd	%xmm2, 176(%r10)
	movsd	176(%r9), %xmm2
	subsd	%xmm0, %xmm2
	jmp	.L413
	.p2align 4,,10
	.p2align 3
.L392:
	subsd	%xmm10, %xmm4
	subsd	%xmm11, %xmm0
	movsd	.LC3(%rip), %xmm2
	movapd	%xmm4, %xmm3
	addsd	%xmm2, %xmm0
	addsd	%xmm2, %xmm3
	addsd	%xmm9, %xmm0
	addsd	%xmm1, %xmm3
	movsd	%xmm0, 176(%r10)
	movsd	%xmm3, 168(%r10)
	jmp	.L394
	.cfi_endproc
.LFE8149:
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
.LFB8151:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8151
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rsi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdx, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdi, %r13
	movl	$80, %edi
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
	movq	%rsi, 8(%rsp)
	movq	%rcx, 16(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	movq	$10, 32(%rsp)
	call	malloc@PLT
	movq	%rax, 40(%rsp)
	testq	%rax, %rax
	je	.L418
	movq	(%r15), %r9
	movq	%rax, %rbx
	testq	%r9, %r9
	je	.L420
	movq	8(%rsp), %rax
	movq	$0, (%rsp)
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	movq	8(%rax), %r10
	jmp	.L426
	.p2align 4,,10
	.p2align 3
.L421:
	addq	$1, %rbx
	cmpq	%r9, %rbx
	jnb	.L459
.L426:
	movq	(%r10,%rbx,8), %rdx
	leaq	0(,%rbx,8), %r15
	cmpq	%r14, %rdx
	je	.L421
	cmpq	%rbp, %rdx
	je	.L421
	movq	%rbp, %rsi
	movq	%r13, %rdi
	call	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	testl	%eax, %eax
	je	.L421
	cmpq	%r12, 32(%rsp)
	je	.L460
.L422:
	cmpq	%r9, %rbx
	jnb	.L461
	movq	(%r10,%r15), %rax
	movq	40(%rsp), %rcx
	leaq	1(%r12), %rdx
	cmpq	32(%rsp), %r12
	jnb	.L462
	addq	$1, %rbx
	movq	%rax, (%rcx,%r12,8)
	movq	144(%rax), %rax
	movq	%rdx, %r12
	addq	%rax, (%rsp)
	cmpq	%r9, %rbx
	jb	.L426
	.p2align 4,,10
	.p2align 3
.L459:
	movq	40(%rsp), %rbx
	movq	16(%rsp), %rdi
	cmpq	%rdi, (%rsp)
	jnb	.L427
	testq	%r12, %r12
	je	.L420
	movq	32(%rsp), %rax
	movq	(%rsp), %rsi
	xorl	%r15d, %r15d
	movq	%rax, 24(%rsp)
	movq	16(%rsp), %rax
	subq	%rsi, %rax
	movq	%rax, 16(%rsp)
.L434:
	cmpq	%r15, 24(%rsp)
	je	.L463
	movq	(%rbx,%r15,8), %r8
	movq	16(%rsp), %rdx
	movq	%rbp, %rsi
	movq	%r13, %rdi
	addq	144(%r8), %rdx
	movq	%r8, %rcx
	movq	%r8, (%rsp)
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	movq	(%rsp), %r8
	testb	%al, %al
	jne	.L464
.L433:
	addq	$1, %r15
	cmpq	%r15, %r12
	jne	.L434
.L420:
	movq	%rbx, %rdi
	call	free@PLT
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L465
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
.L427:
	.cfi_restore_state
	testq	%r12, %r12
	je	.L420
	movq	32(%rsp), %r15
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L431:
	cmpq	%r14, %r15
	je	.L466
	movq	(%rbx,%r14,8), %rcx
	xorl	%edx, %edx
	movq	%rbp, %rsi
	movq	%r13, %rdi
	addq	$1, %r14
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	cmpq	%r14, %r12
	jne	.L431
	jmp	.L420
	.p2align 4,,10
	.p2align 3
.L464:
	movq	16(%rsp), %rcx
	movq	8(%rsp), %rsi
	movq	%r14, %rdx
	movq	%r13, %rdi
.LEHB0:
	call	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_
	movq	(%rbx,%r15,8), %rcx
	xorl	%edx, %edx
	movq	%rbp, %rsi
	movq	%r13, %rdi
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	jmp	.L433
	.p2align 4,,10
	.p2align 3
.L460:
	leaq	32(%rsp), %rdi
	movl	$11, %edx
	movq	%r12, %rsi
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6InsertEyy.isra.0
	movq	8(%rsp), %rax
	movq	(%rax), %r9
	movq	8(%rax), %r10
	jmp	.L422
.L466:
	movq	%r15, %rsi
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.L425:
	movl	$1, %edi
	call	exit@PLT
.L462:
	movq	%r12, %rsi
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L425
.L461:
	movq	%rbx, %rsi
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L425
.L463:
	movq	24(%rsp), %rsi
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE0:
	jmp	.L425
.L418:
	leaq	.LC2(%rip), %rdi
	movl	$10, %esi
	xorl	%eax, %eax
.LEHB1:
	call	printf@PLT
.LEHE1:
	movl	$1, %edi
	call	exit@PLT
.L465:
	call	__stack_chk_fail@PLT
.L438:
	movq	%rax, %rbx
	jmp	.L435
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8151:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8151-.LLSDACSB8151
.LLSDACSB8151:
	.uleb128 .LEHB0-.LFB8151
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L438-.LFB8151
	.uleb128 0
	.uleb128 .LEHB1-.LFB8151
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE8151:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8151
	.type	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_.cold, @function
_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_.cold:
.LFSB8151:
.L435:
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
	jne	.L467
	movq	%rbx, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L467:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8151:
	.section	.gcc_except_table
.LLSDAC8151:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8151-.LLSDACSBC8151
.LLSDACSBC8151:
	.uleb128 .LEHB2-.LCOLDB6
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSEC8151:
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
	.globl	_ZN3wze6engine9collision21ResolveCollisionLayerEy
	.type	_ZN3wze6engine9collision21ResolveCollisionLayerEy, @function
_ZN3wze6engine9collision21ResolveCollisionLayerEy:
.LFB8150:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8150
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
	movq	%rsi, %rbx
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	movq	%rdi, 8(%rsp)
	movl	$80, %edi
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	movq	$10, 64(%rsp)
	call	malloc@PLT
	movq	%rax, 72(%rsp)
	testq	%rax, %rax
	je	.L530
	movq	%rax, %rdi
	movq	8(%rsp), %rax
	movq	16(%rax), %r13
	cmpq	8(%rax), %rbx
	jnb	.L525
	salq	$4, %rbx
	leaq	0(%r13,%rbx), %rax
	movq	(%rax), %r13
	movq	%rax, 40(%rsp)
	testq	%r13, %r13
	je	.L471
	movq	8(%rax), %r10
	xorl	%ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L491:
	movq	$0, 32(%rsp)
	leaq	0(,%rbp,8), %r14
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	.p2align 4,,10
	.p2align 3
.L478:
	cmpq	%rbx, %rbp
	je	.L472
	movq	(%r10,%rbx,8), %rdx
	leaq	0(,%rbx,8), %r15
	cmpq	%r13, %rbp
	jnb	.L523
	movq	(%r10,%r14), %rsi
	movq	8(%rsp), %rdi
	call	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	testl	%eax, %eax
	je	.L472
	cmpq	%r12, 64(%rsp)
	je	.L531
.L475:
	cmpq	%r13, %rbx
	jnb	.L525
	movq	(%r10,%r15), %rax
	movq	72(%rsp), %rcx
	leaq	1(%r12), %rdx
	cmpq	64(%rsp), %r12
	jnb	.L532
	movq	%rax, (%rcx,%r12,8)
	movq	144(%rax), %rax
	movq	%rdx, %r12
	addq	%rax, 32(%rsp)
.L472:
	addq	$1, %rbx
	cmpq	%r13, %rbx
	jb	.L478
	cmpq	%r13, %rbp
	jnb	.L523
	movq	(%r10,%r14), %r15
	movq	32(%rsp), %rax
	cmpq	136(%r15), %rax
	jnb	.L480
	testq	%r12, %r12
	je	.L485
	movq	64(%rsp), %rax
	xorl	%ebx, %ebx
	movq	%rax, 56(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 48(%rsp)
	jmp	.L490
	.p2align 4,,10
	.p2align 3
.L488:
	addq	$1, %rbx
	cmpq	%rbx, %r12
	je	.L533
.L490:
	cmpq	%rbx, 56(%rsp)
	je	.L534
	movq	48(%rsp), %rax
	movq	(%rax,%rbx,8), %r8
	movq	40(%rsp), %rax
	movq	144(%r8), %rdx
	movq	8(%rax), %rax
	cmpq	%r13, %rbp
	jnb	.L523
	movq	(%rax,%r14), %r15
	movq	32(%rsp), %rax
	movq	%r8, %rcx
	movq	%r8, 16(%rsp)
	movq	8(%rsp), %rdi
	movq	136(%r15), %r10
	movq	%r15, %rsi
	subq	%rax, %r10
	addq	%r10, %rdx
	movq	%r10, 24(%rsp)
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	movq	16(%rsp), %r8
	movq	24(%rsp), %r10
	testb	%al, %al
	je	.L488
	movq	%r15, %rdx
	movq	40(%rsp), %r15
	movq	8(%rsp), %rdi
	movq	%r10, %rcx
	movq	%r15, %rsi
.LEHB3:
	call	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_
	movq	48(%rsp), %rax
	movq	(%r15), %r13
	movq	(%rax,%rbx,8), %rcx
	movq	8(%r15), %rax
	cmpq	%r13, %rbp
	jnb	.L523
	movq	(%rax,%r14), %rsi
	movq	8(%rsp), %rdi
	xorl	%edx, %edx
	addq	$1, %rbx
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	cmpq	%rbx, %r12
	jne	.L490
.L533:
	movq	40(%rsp), %rax
	movq	8(%rax), %r10
.L485:
	addq	$1, %rbp
	cmpq	%r13, %rbp
	jb	.L491
.L536:
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L497:
	movq	(%r10,%rbx,8), %rdi
	leaq	0(,%rbx,8), %rbp
	movsd	168(%rdi), %xmm0
	ucomisd	184(%rdi), %xmm0
	jp	.L492
	jne	.L492
	movsd	176(%rdi), %xmm0
	ucomisd	192(%rdi), %xmm0
	jp	.L492
	je	.L494
.L492:
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv@PLT
	movq	40(%rsp), %rax
	movq	(%rax), %r13
	movq	8(%rax), %r10
	cmpq	%r13, %rbx
	jnb	.L525
	movq	(%r10,%rbp), %rax
	movupd	168(%rax), %xmm1
	movups	%xmm1, 184(%rax)
.L494:
	addq	$1, %rbx
	cmpq	%r13, %rbx
	jb	.L497
	movq	72(%rsp), %rdi
.L471:
	call	free@PLT
	movq	88(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L535
	addq	$104, %rsp
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
.L531:
	.cfi_restore_state
	leaq	64(%rsp), %rdi
	movl	$11, %edx
	movq	%r12, %rsi
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6InsertEyy.isra.0
	movq	40(%rsp), %rax
	movq	(%rax), %r13
	movq	8(%rax), %r10
	jmp	.L475
	.p2align 4,,10
	.p2align 3
.L480:
	testq	%r12, %r12
	je	.L485
	movq	72(%rsp), %r14
	movq	64(%rsp), %rsi
	xorl	%ebx, %ebx
	movq	%rbp, 16(%rsp)
	movq	%r13, 24(%rsp)
	movq	%rbx, %r13
	movq	%r14, %rbp
	movq	8(%rsp), %r14
	movq	%rsi, %rbx
	.p2align 4,,10
	.p2align 3
.L484:
	cmpq	%r13, %rbx
	je	.L525
	movq	0(%rbp,%r13,8), %rcx
	xorl	%edx, %edx
	movq	%r15, %rsi
	movq	%r14, %rdi
	addq	$1, %r13
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	cmpq	%r13, %r12
	jne	.L484
	movq	16(%rsp), %rbp
	movq	40(%rsp), %rax
	movq	24(%rsp), %r13
	addq	$1, %rbp
	movq	8(%rax), %r10
	cmpq	%r13, %rbp
	jb	.L491
	jmp	.L536
.L523:
	movq	%rbp, %rsi
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.L474:
	movl	$1, %edi
	call	exit@PLT
.L525:
	movq	%rbx, %rsi
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L474
.L534:
	movq	56(%rsp), %rsi
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L474
.L532:
	movq	%r12, %rsi
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE3:
	jmp	.L474
.L530:
	leaq	.LC2(%rip), %rdi
	movl	$10, %esi
	xorl	%eax, %eax
.LEHB4:
	call	printf@PLT
.LEHE4:
	movl	$1, %edi
	call	exit@PLT
.L535:
	call	__stack_chk_fail@PLT
.L501:
	movq	%rax, %rbx
	jmp	.L498
	.section	.gcc_except_table
.LLSDA8150:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8150-.LLSDACSB8150
.LLSDACSB8150:
	.uleb128 .LEHB3-.LFB8150
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L501-.LFB8150
	.uleb128 0
	.uleb128 .LEHB4-.LFB8150
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE8150:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8150
	.type	_ZN3wze6engine9collision21ResolveCollisionLayerEy.cold, @function
_ZN3wze6engine9collision21ResolveCollisionLayerEy.cold:
.LFSB8150:
.L498:
	.cfi_def_cfa_offset 160
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	72(%rsp), %rdi
	call	free@PLT
	movq	88(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L537
	movq	%rbx, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
.L537:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8150:
	.section	.gcc_except_table
.LLSDAC8150:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8150-.LLSDACSBC8150
.LLSDACSBC8150:
	.uleb128 .LEHB5-.LCOLDB7
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC8150:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine9collision21ResolveCollisionLayerEy, .-_ZN3wze6engine9collision21ResolveCollisionLayerEy
	.section	.text.unlikely
	.size	_ZN3wze6engine9collision21ResolveCollisionLayerEy.cold, .-_ZN3wze6engine9collision21ResolveCollisionLayerEy.cold
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
