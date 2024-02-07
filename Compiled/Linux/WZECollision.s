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
.LFB8343:
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
.LFE8343:
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
.LFB8147:
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
.LFE8147:
	.size	_ZN3wze6engine9collisionC2EPS0_, .-_ZN3wze6engine9collisionC2EPS0_
	.globl	_ZN3wze6engine9collisionC1EPS0_
	.set	_ZN3wze6engine9collisionC1EPS0_,_ZN3wze6engine9collisionC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision14GetBufferSizeBEv
	.type	_ZN3wze6engine9collision14GetBufferSizeBEv, @function
_ZN3wze6engine9collision14GetBufferSizeBEv:
.LFB8149:
	.cfi_startproc
	movzwl	8(%rdi), %eax
	sall	$3, %eax
	ret
	.cfi_endproc
.LFE8149:
	.size	_ZN3wze6engine9collision14GetBufferSizeBEv, .-_ZN3wze6engine9collision14GetBufferSizeBEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision14SetBufferSizeBEh
	.type	_ZN3wze6engine9collision14SetBufferSizeBEh, @function
_ZN3wze6engine9collision14SetBufferSizeBEh:
.LFB8150:
	.cfi_startproc
	movzbl	%sil, %esi
	shrw	$3, %si
	movw	%si, 8(%rdi)
	leal	0(,%rsi,8), %eax
	ret
	.cfi_endproc
.LFE8150:
	.size	_ZN3wze6engine9collision14SetBufferSizeBEh, .-_ZN3wze6engine9collision14SetBufferSizeBEh
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision12CheckOverlapEPNS0_6actors5actor12overlapboxes10overlapboxES6_
	.type	_ZN3wze6engine9collision12CheckOverlapEPNS0_6actors5actor12overlapboxes10overlapboxES6_, @function
_ZN3wze6engine9collision12CheckOverlapEPNS0_6actors5actor12overlapboxes10overlapboxES6_:
.LFB8151:
	.cfi_startproc
	movq	%rdx, %rax
	movzwl	80(%rsi), %edx
	movq	%rsi, %rcx
	pxor	%xmm1, %xmm1
	pxor	%xmm2, %xmm2
	movsd	32(%rcx), %xmm0
	pxor	%xmm3, %xmm3
	xorl	%edi, %edi
	movl	%edx, %esi
	cvtsi2sdl	%edx, %xmm2
	shrw	%si
	movzwl	%si, %esi
	cvtsi2sdl	%esi, %xmm1
	movzwl	80(%rax), %esi
	movl	%esi, %edx
	shrw	%dx
	movzwl	%dx, %edx
	subsd	%xmm1, %xmm0
	movsd	32(%rax), %xmm1
	cvtsi2sdl	%edx, %xmm3
	addsd	%xmm0, %xmm2
	subsd	%xmm3, %xmm1
	comisd	%xmm2, %xmm1
	ja	.L37
	pxor	%xmm3, %xmm3
	cvtsi2sdl	%esi, %xmm3
	addsd	%xmm1, %xmm3
	comisd	%xmm3, %xmm0
	ja	.L37
	movzwl	82(%rcx), %esi
	pxor	%xmm4, %xmm4
	pxor	%xmm5, %xmm5
	pxor	%xmm7, %xmm7
	movl	%esi, %edx
	shrw	%dx
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm4
	movzwl	82(%rax), %edx
	addsd	40(%rcx), %xmm4
	movl	%edx, %ecx
	cvtsi2sdl	%edx, %xmm7
	shrw	%cx
	movzwl	%cx, %ecx
	cvtsi2sdl	%ecx, %xmm5
	addsd	40(%rax), %xmm5
	movapd	%xmm5, %xmm6
	subsd	%xmm7, %xmm6
	comisd	%xmm4, %xmm6
	ja	.L37
	pxor	%xmm8, %xmm8
	movapd	%xmm4, %xmm7
	cvtsi2sdl	%esi, %xmm8
	subsd	%xmm8, %xmm7
	comisd	%xmm5, %xmm7
	ja	.L37
	comisd	%xmm0, %xmm3
	jb	.L126
	comisd	%xmm3, %xmm2
	jb	.L150
	comisd	%xmm7, %xmm6
	movl	$1, %edi
	jnb	.L37
	comisd	%xmm1, %xmm0
	jb	.L145
	comisd	%xmm6, %xmm4
	jb	.L128
	comisd	%xmm4, %xmm5
	jnb	.L37
	comisd	%xmm0, %xmm1
	jnb	.L50
	.p2align 4,,10
	.p2align 3
.L51:
	comisd	%xmm2, %xmm3
	jnb	.L45
	comisd	%xmm0, %xmm3
	jnb	.L47
	comisd	%xmm1, %xmm0
	jnb	.L61
.L75:
	comisd	%xmm7, %xmm5
	jb	.L72
.L73:
	comisd	%xmm5, %xmm4
	movl	$1, %edi
	jb	.L72
.L37:
	movl	%edi, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L126:
	comisd	%xmm0, %xmm1
	jnb	.L56
	comisd	%xmm1, %xmm2
	jnb	.L151
	comisd	%xmm0, %xmm3
	jnb	.L57
	comisd	%xmm1, %xmm0
	jnb	.L61
.L85:
	comisd	%xmm0, %xmm1
	jnb	.L62
	comisd	%xmm1, %xmm2
	jnb	.L72
.L138:
	xorl	%edi, %edi
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L150:
	comisd	%xmm1, %xmm0
	jnb	.L42
	comisd	%xmm1, %xmm2
	jb	.L127
	comisd	%xmm7, %xmm6
	movl	$1, %edi
	jnb	.L37
.L45:
	comisd	%xmm6, %xmm4
	jb	.L57
.L96:
	comisd	%xmm4, %xmm5
	movl	$1, %edi
	jnb	.L37
	ucomisd	%xmm3, %xmm2
	jp	.L122
	je	.L69
.L122:
	comisd	%xmm1, %xmm0
	jnb	.L71
	comisd	%xmm7, %xmm5
	movl	$1, %edi
	jnb	.L37
	.p2align 4,,10
	.p2align 3
.L72:
	comisd	%xmm2, %xmm3
	jb	.L138
.L74:
	comisd	%xmm6, %xmm7
	setnb	%dil
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L151:
	comisd	%xmm2, %xmm3
	jnb	.L45
	comisd	%xmm0, %xmm3
	jb	.L85
	.p2align 4,,10
	.p2align 3
.L47:
	comisd	%xmm7, %xmm5
	jb	.L136
.L95:
	comisd	%xmm5, %xmm4
	movl	$1, %edi
	jnb	.L37
	comisd	%xmm1, %xmm0
	jb	.L72
	.p2align 4,,10
	.p2align 3
.L71:
	comisd	%xmm6, %xmm7
	movl	$1, %edi
	jb	.L85
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L42:
	comisd	%xmm6, %xmm4
	jb	.L129
	comisd	%xmm4, %xmm5
	movl	$1, %edi
	jnb	.L37
.L129:
	comisd	%xmm0, %xmm1
	jnb	.L56
	comisd	%xmm1, %xmm2
	jnb	.L51
	.p2align 4,,10
	.p2align 3
.L57:
	comisd	%xmm3, %xmm2
	jnb	.L47
	comisd	%xmm1, %xmm0
	jnb	.L71
	comisd	%xmm1, %xmm2
	jb	.L138
.L144:
	comisd	%xmm7, %xmm5
	jb	.L74
	jmp	.L73
	.p2align 4,,10
	.p2align 3
.L56:
	comisd	%xmm1, %xmm2
	jb	.L127
.L50:
	comisd	%xmm7, %xmm6
	movl	$1, %edi
	jb	.L51
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L127:
	comisd	%xmm0, %xmm3
	jnb	.L57
	comisd	%xmm1, %xmm0
	jnb	.L61
.L62:
	comisd	%xmm1, %xmm2
	jnb	.L75
	xorl	%edi, %edi
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L61:
	comisd	%xmm0, %xmm3
	jb	.L85
	jmp	.L71
.L152:
	movl	$1, %edi
	.p2align 4,,10
	.p2align 3
.L145:
	comisd	%xmm7, %xmm6
	jnb	.L37
	comisd	%xmm2, %xmm3
	jb	.L47
	jmp	.L45
	.p2align 4,,10
	.p2align 3
.L136:
	comisd	%xmm1, %xmm0
	jb	.L75
	jmp	.L71
.L128:
	ucomisd	%xmm1, %xmm0
	jp	.L52
	je	.L152
.L52:
	ucomisd	%xmm3, %xmm2
	jp	.L125
	je	.L93
.L125:
	comisd	%xmm7, %xmm5
	jnb	.L95
	jmp	.L71
.L69:
	comisd	%xmm7, %xmm5
	jnb	.L37
	comisd	%xmm1, %xmm0
	jb	.L144
	jmp	.L71
.L93:
	comisd	%xmm6, %xmm4
	jnb	.L96
	jmp	.L47
	.cfi_endproc
.LFE8151:
	.size	_ZN3wze6engine9collision12CheckOverlapEPNS0_6actors5actor12overlapboxes10overlapboxES6_, .-_ZN3wze6engine9collision12CheckOverlapEPNS0_6actors5actor12overlapboxes10overlapboxES6_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE
	.type	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE, @function
_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE:
.LFB8152:
	.cfi_startproc
	movzwl	80(%rsi), %edx
	pxor	%xmm5, %xmm5
	movapd	%xmm0, %xmm4
	movsd	32(%rsi), %xmm0
	movl	%edx, %eax
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm5
	xorl	%eax, %eax
	subsd	%xmm5, %xmm0
	comisd	%xmm2, %xmm0
	ja	.L153
	pxor	%xmm5, %xmm5
	cvtsi2sdl	%edx, %xmm5
	addsd	%xmm0, %xmm5
	comisd	%xmm5, %xmm4
	ja	.L153
	movzwl	82(%rsi), %edx
	pxor	%xmm6, %xmm6
	pxor	%xmm8, %xmm8
	movl	%edx, %ecx
	cvtsi2sdl	%edx, %xmm8
	shrw	%cx
	movzwl	%cx, %ecx
	cvtsi2sdl	%ecx, %xmm6
	addsd	40(%rsi), %xmm6
	movapd	%xmm6, %xmm7
	subsd	%xmm8, %xmm7
	comisd	%xmm1, %xmm7
	ja	.L153
	comisd	%xmm6, %xmm3
	ja	.L153
	comisd	%xmm4, %xmm5
	jb	.L245
	comisd	%xmm5, %xmm2
	jb	.L266
	comisd	%xmm3, %xmm7
	jb	.L247
	comisd	%xmm7, %xmm1
	movl	$1, %eax
	jnb	.L153
	comisd	%xmm0, %xmm4
	jnb	.L165
	comisd	%xmm7, %xmm1
	jnb	.L153
.L261:
	comisd	%xmm2, %xmm5
	jnb	.L162
	.p2align 4,,10
	.p2align 3
.L166:
	comisd	%xmm3, %xmm6
	jb	.L254
.L215:
	comisd	%xmm6, %xmm1
	movl	$1, %eax
	jnb	.L153
	comisd	%xmm0, %xmm4
	jnb	.L194
.L195:
	comisd	%xmm6, %xmm1
	movl	$1, %eax
	jnb	.L267
.L190:
	comisd	%xmm2, %xmm5
	jb	.L256
.L188:
	comisd	%xmm7, %xmm3
	setnb	%al
	ret
	.p2align 4,,10
	.p2align 3
.L254:
	comisd	%xmm0, %xmm4
	jb	.L181
.L194:
	comisd	%xmm7, %xmm3
	movl	$1, %eax
	jb	.L202
.L153:
	ret
	.p2align 4,,10
	.p2align 3
.L245:
	comisd	%xmm4, %xmm0
	jnb	.L174
.L170:
	comisd	%xmm0, %xmm2
	jnb	.L175
	comisd	%xmm4, %xmm5
	jnb	.L176
.L196:
	comisd	%xmm0, %xmm4
	jb	.L202
	jmp	.L180
	.p2align 4,,10
	.p2align 3
.L158:
	comisd	%xmm7, %xmm1
	jb	.L250
	comisd	%xmm1, %xmm6
	movl	$1, %eax
	jnb	.L153
.L250:
	comisd	%xmm4, %xmm0
	jnb	.L174
	comisd	%xmm0, %xmm2
	jb	.L176
	.p2align 4,,10
	.p2align 3
.L175:
	comisd	%xmm2, %xmm5
	jnb	.L162
	comisd	%xmm4, %xmm5
	jb	.L196
	jmp	.L166
	.p2align 4,,10
	.p2align 3
.L266:
	comisd	%xmm0, %xmm4
	jnb	.L158
	comisd	%xmm0, %xmm2
	jnb	.L268
.L246:
	comisd	%xmm4, %xmm5
	jnb	.L176
	comisd	%xmm0, %xmm4
	jb	.L181
.L180:
	comisd	%xmm4, %xmm5
	jnb	.L194
.L202:
	comisd	%xmm4, %xmm0
	jnb	.L181
.L205:
	comisd	%xmm0, %xmm2
	jnb	.L190
.L256:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L268:
	comisd	%xmm3, %xmm7
	jnb	.L161
	.p2align 4,,10
	.p2align 3
.L162:
	comisd	%xmm7, %xmm1
	jnb	.L186
	comisd	%xmm4, %xmm5
	jnb	.L176
	comisd	%xmm4, %xmm0
	jb	.L188
.L187:
	comisd	%xmm3, %xmm6
	jb	.L190
	jmp	.L195
	.p2align 4,,10
	.p2align 3
.L176:
	comisd	%xmm5, %xmm2
	jnb	.L166
	comisd	%xmm0, %xmm4
	jnb	.L194
	comisd	%xmm0, %xmm2
	jb	.L256
.L263:
	comisd	%xmm3, %xmm6
	jb	.L188
	jmp	.L195
	.p2align 4,,10
	.p2align 3
.L174:
	comisd	%xmm0, %xmm2
	jb	.L246
.L169:
	comisd	%xmm3, %xmm7
	jb	.L175
.L161:
	comisd	%xmm7, %xmm1
	movl	$1, %eax
	jb	.L175
	ret
	.p2align 4,,10
	.p2align 3
.L181:
	comisd	%xmm0, %xmm2
	jb	.L256
	jmp	.L187
	.p2align 4,,10
	.p2align 3
.L247:
	comisd	%xmm0, %xmm4
	jnb	.L165
	comisd	%xmm3, %xmm7
	jb	.L261
	jmp	.L161
	.p2align 4,,10
	.p2align 3
.L186:
	comisd	%xmm1, %xmm6
	movl	$1, %eax
	jnb	.L153
	comisd	%xmm4, %xmm5
	jnb	.L189
	comisd	%xmm4, %xmm0
	jb	.L190
	comisd	%xmm3, %xmm6
	jb	.L190
	ret
	.p2align 4,,10
	.p2align 3
.L165:
	comisd	%xmm7, %xmm1
	jb	.L248
	comisd	%xmm1, %xmm6
	movl	$1, %eax
	jnb	.L153
	comisd	%xmm4, %xmm0
	jb	.L170
	jmp	.L169
.L248:
	comisd	%xmm4, %xmm0
	jnb	.L169
	ucomisd	%xmm2, %xmm5
	jp	.L243
	je	.L211
.L243:
	comisd	%xmm3, %xmm6
	jb	.L257
	comisd	%xmm6, %xmm1
	jb	.L194
.L234:
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L189:
	ucomisd	%xmm2, %xmm5
	jp	.L192
	jne	.L192
	comisd	%xmm3, %xmm6
	jnb	.L153
	comisd	%xmm0, %xmm4
	jnb	.L194
	jmp	.L263
.L267:
	ret
.L192:
	comisd	%xmm0, %xmm4
	jnb	.L194
	jmp	.L187
.L211:
	comisd	%xmm7, %xmm1
	jnb	.L186
	comisd	%xmm3, %xmm6
	jnb	.L215
	jmp	.L194
.L257:
	comisd	%xmm7, %xmm3
	jb	.L205
	jmp	.L234
	.cfi_endproc
.LFE8152:
	.size	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE, .-_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision14CheckCollisionEdddddddd
	.type	_ZN3wze6engine9collision14CheckCollisionEdddddddd, @function
_ZN3wze6engine9collision14CheckCollisionEdddddddd:
.LFB8153:
	.cfi_startproc
	xorl	%eax, %eax
	comisd	%xmm2, %xmm4
	ja	.L269
	comisd	%xmm6, %xmm0
	ja	.L269
	comisd	%xmm1, %xmm7
	ja	.L269
	comisd	%xmm5, %xmm3
	ja	.L269
	comisd	%xmm0, %xmm6
	jb	.L271
	comisd	%xmm6, %xmm2
	jnb	.L273
	comisd	%xmm4, %xmm0
	jnb	.L274
	comisd	%xmm0, %xmm4
	jnb	.L275
	comisd	%xmm4, %xmm2
	jnb	.L276
	.p2align 4,,10
	.p2align 3
.L277:
	comisd	%xmm0, %xmm6
	jnb	.L290
.L310:
	comisd	%xmm4, %xmm0
	jnb	.L295
.L325:
	comisd	%xmm0, %xmm4
	jnb	.L296
.L303:
	comisd	%xmm4, %xmm2
	jb	.L386
.L305:
	comisd	%xmm2, %xmm6
	jnb	.L313
.L386:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L288:
	comisd	%xmm1, %xmm5
	movl	$1, %eax
	jb	.L271
.L269:
	ret
	.p2align 4,,10
	.p2align 3
.L271:
	comisd	%xmm0, %xmm4
	jnb	.L275
.L286:
	comisd	%xmm4, %xmm2
	jb	.L277
.L289:
	comisd	%xmm2, %xmm6
	jnb	.L276
	comisd	%xmm0, %xmm6
	jb	.L310
	jmp	.L294
	.p2align 4,,10
	.p2align 3
.L275:
	comisd	%xmm4, %xmm2
	jnb	.L283
	comisd	%xmm0, %xmm6
	jnb	.L290
.L390:
	comisd	%xmm4, %xmm0
	jb	.L296
.L295:
	comisd	%xmm0, %xmm6
	jb	.L325
	.p2align 4,,10
	.p2align 3
.L312:
	comisd	%xmm7, %xmm3
	jb	.L325
.L338:
	comisd	%xmm3, %xmm5
	jb	.L325
.L365:
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L273:
	comisd	%xmm3, %xmm7
	jb	.L375
	comisd	%xmm7, %xmm1
	movl	$1, %eax
	jnb	.L269
	comisd	%xmm4, %xmm0
	jnb	.L280
	comisd	%xmm0, %xmm4
	jnb	.L281
.L282:
	comisd	%xmm4, %xmm2
	jnb	.L396
	comisd	%xmm3, %xmm5
	jnb	.L319
	comisd	%xmm4, %xmm0
	jnb	.L312
	xorl	%eax, %eax
	comisd	%xmm0, %xmm4
	jb	.L303
	ret
	.p2align 4,,10
	.p2align 3
.L375:
	comisd	%xmm4, %xmm0
	jnb	.L280
	comisd	%xmm0, %xmm4
	jb	.L282
	.p2align 4,,10
	.p2align 3
.L283:
	comisd	%xmm3, %xmm7
	jnb	.L281
	comisd	%xmm2, %xmm6
	jnb	.L276
	comisd	%xmm0, %xmm6
	jb	.L390
.L294:
	comisd	%xmm3, %xmm5
	jb	.L308
.L319:
	comisd	%xmm5, %xmm1
	movl	$1, %eax
	jnb	.L269
	comisd	%xmm4, %xmm0
	jb	.L397
.L316:
	comisd	%xmm7, %xmm3
	movl	$1, %eax
	jb	.L325
	ret
	.p2align 4,,10
	.p2align 3
.L276:
	comisd	%xmm7, %xmm1
	jb	.L380
.L341:
	comisd	%xmm1, %xmm5
	movl	$1, %eax
	jnb	.L269
	comisd	%xmm0, %xmm6
	jnb	.L302
	comisd	%xmm0, %xmm4
	jb	.L303
	comisd	%xmm3, %xmm5
	jb	.L305
	ret
.L382:
	comisd	%xmm4, %xmm0
	jnb	.L312
	.p2align 4,,10
	.p2align 3
.L296:
	comisd	%xmm4, %xmm2
	jb	.L386
.L322:
	comisd	%xmm3, %xmm5
	jb	.L305
.L317:
	comisd	%xmm5, %xmm1
	movl	$1, %eax
	jb	.L305
	ret
	.p2align 4,,10
	.p2align 3
.L274:
	comisd	%xmm7, %xmm1
	jnb	.L288
	comisd	%xmm0, %xmm4
	jnb	.L275
	comisd	%xmm4, %xmm2
	jnb	.L289
	.p2align 4,,10
	.p2align 3
.L290:
	comisd	%xmm6, %xmm2
	jnb	.L294
.L306:
	comisd	%xmm4, %xmm0
	jnb	.L312
	comisd	%xmm0, %xmm4
	jnb	.L296
	comisd	%xmm4, %xmm2
	jb	.L386
	.p2align 4,,10
	.p2align 3
.L313:
	comisd	%xmm7, %xmm3
	jb	.L386
	comisd	%xmm3, %xmm5
	setnb	%al
	ret
	.p2align 4,,10
	.p2align 3
.L281:
	comisd	%xmm7, %xmm1
	movl	$1, %eax
	jb	.L289
	ret
	.p2align 4,,10
	.p2align 3
.L380:
	comisd	%xmm0, %xmm6
	jnb	.L290
	comisd	%xmm0, %xmm4
	jnb	.L322
	jmp	.L303
	.p2align 4,,10
	.p2align 3
.L280:
	comisd	%xmm7, %xmm1
	jb	.L376
	comisd	%xmm1, %xmm5
	movl	$1, %eax
	jnb	.L269
	comisd	%xmm0, %xmm4
	jnb	.L283
	jmp	.L286
.L302:
	ucomisd	%xmm6, %xmm2
	jp	.L306
	jne	.L306
	comisd	%xmm3, %xmm5
	jnb	.L269
	.p2align 4,,10
	.p2align 3
.L308:
	comisd	%xmm4, %xmm0
	jb	.L325
	jmp	.L312
.L376:
	comisd	%xmm0, %xmm4
	jnb	.L283
	ucomisd	%xmm6, %xmm2
	jp	.L374
	je	.L335
.L374:
	comisd	%xmm3, %xmm5
	jnb	.L337
	comisd	%xmm7, %xmm3
	jnb	.L338
	jmp	.L303
	.p2align 4,,10
	.p2align 3
.L397:
	comisd	%xmm0, %xmm4
	jb	.L303
	jmp	.L317
.L396:
	comisd	%xmm2, %xmm6
	jnb	.L276
	comisd	%xmm3, %xmm5
	jb	.L382
	comisd	%xmm5, %xmm1
	jnb	.L365
	comisd	%xmm4, %xmm0
	jnb	.L316
	jmp	.L317
.L335:
	comisd	%xmm7, %xmm1
	jnb	.L341
	comisd	%xmm3, %xmm5
	jb	.L312
.L337:
	comisd	%xmm5, %xmm1
	jb	.L316
	jmp	.L365
	.cfi_endproc
.LFE8153:
	.size	_ZN3wze6engine9collision14CheckCollisionEdddddddd, .-_ZN3wze6engine9collision14CheckCollisionEdddddddd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	.type	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_, @function
_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_:
.LFB8154:
	.cfi_startproc
	movq	%rsi, %rax
	pxor	%xmm0, %xmm0
	pxor	%xmm10, %xmm10
	movq	%rdi, %r8
	movzwl	286(%rsi), %esi
	pxor	%xmm5, %xmm5
	pxor	%xmm6, %xmm6
	movsd	232(%rax), %xmm8
	pxor	%xmm9, %xmm9
	movsd	216(%rdx), %xmm4
	movl	%esi, %ecx
	cvtsi2sdl	%esi, %xmm9
	movzwl	282(%rdx), %esi
	shrw	%cx
	movzwl	%cx, %ecx
	cvtsi2sdl	%esi, %xmm6
	cvtsi2sdl	%ecx, %xmm0
	movzwl	288(%rax), %ecx
	movl	%ecx, %edi
	shrw	%di
	subsd	%xmm0, %xmm8
	movzwl	%di, %edi
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	movl	%esi, %ecx
	cvtsi2sdl	%edi, %xmm10
	shrw	%cx
	addsd	240(%rax), %xmm10
	movzwl	%cx, %ecx
	addsd	%xmm8, %xmm9
	movapd	%xmm10, %xmm11
	subsd	%xmm0, %xmm11
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	movzwl	284(%rdx), %ecx
	movl	%ecx, %edi
	shrw	%di
	subsd	%xmm0, %xmm4
	movzwl	%di, %edi
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edi, %xmm5
	addsd	224(%rdx), %xmm5
	cvtsi2sdl	%ecx, %xmm0
	comisd	%xmm9, %xmm4
	addsd	%xmm4, %xmm6
	movapd	%xmm5, %xmm7
	subsd	%xmm0, %xmm7
	ja	.L399
	comisd	%xmm6, %xmm8
	ja	.L399
	comisd	%xmm10, %xmm7
	ja	.L399
	comisd	%xmm5, %xmm11
	ja	.L399
	comisd	%xmm8, %xmm6
	jb	.L569
	comisd	%xmm6, %xmm9
	jb	.L608
	xorl	%edx, %edx
	comisd	%xmm11, %xmm7
	jnb	.L398
	comisd	%xmm4, %xmm8
	jb	.L599
	comisd	%xmm7, %xmm10
	jb	.L571
	comisd	%xmm10, %xmm5
	jnb	.L398
	comisd	%xmm8, %xmm4
	jnb	.L412
	.p2align 4,,10
	.p2align 3
.L413:
	comisd	%xmm9, %xmm6
	jnb	.L407
	comisd	%xmm8, %xmm6
	jnb	.L409
	comisd	%xmm4, %xmm8
	jnb	.L423
.L434:
	comisd	%xmm11, %xmm5
	jb	.L399
	xorl	%edx, %edx
	comisd	%xmm5, %xmm10
	jb	.L446
.L398:
	movl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L569:
	comisd	%xmm8, %xmm4
	jnb	.L418
	comisd	%xmm4, %xmm9
	jnb	.L609
	comisd	%xmm8, %xmm6
	jb	.L577
.L419:
	comisd	%xmm6, %xmm9
	jnb	.L409
	comisd	%xmm4, %xmm8
	jnb	.L439
.L424:
	comisd	%xmm4, %xmm9
	jnb	.L434
	.p2align 4,,10
	.p2align 3
.L399:
	pxor	%xmm1, %xmm1
	pxor	%xmm2, %xmm2
	pxor	%xmm12, %xmm12
	movq	%r8, %rdi
	movzwl	282(%rax), %ecx
	movsd	216(%rax), %xmm0
	movl	%ecx, %edx
	cvtsi2sdl	%ecx, %xmm2
	shrw	%dx
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm1
	movzwl	284(%rax), %edx
	movl	%edx, %esi
	cvtsi2sdl	%edx, %xmm12
	xorl	%edx, %edx
	shrw	%si
	subsd	%xmm1, %xmm0
	movzwl	%si, %esi
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%esi, %xmm1
	addsd	224(%rax), %xmm1
	addsd	%xmm0, %xmm2
	movapd	%xmm1, %xmm3
	subsd	%xmm12, %xmm3
	call	_ZN3wze6engine9collision14CheckCollisionEdddddddd
	testb	%al, %al
	je	.L398
	comisd	%xmm4, %xmm8
	jb	.L579
	comisd	%xmm9, %xmm6
	jnb	.L458
	ucomisd	%xmm4, %xmm8
	jp	.L561
	je	.L459
.L561:
	comisd	%xmm7, %xmm11
	jb	.L610
	.p2align 4,,10
	.p2align 3
.L461:
	comisd	%xmm10, %xmm5
	jnb	.L470
	comisd	%xmm11, %xmm7
	jnb	.L470
	comisd	%xmm4, %xmm8
	ja	.L492
	comisd	%xmm9, %xmm6
	ja	.L505
	comisd	%xmm4, %xmm8
	ja	.L492
	.p2align 4,,10
	.p2align 3
.L493:
	comisd	%xmm9, %xmm6
	ja	.L489
.L587:
	xorl	%edx, %edx
	jmp	.L398
	.p2align 4,,10
	.p2align 3
.L579:
	comisd	%xmm8, %xmm4
	jb	.L464
.L459:
	comisd	%xmm6, %xmm9
	jnb	.L458
	comisd	%xmm7, %xmm11
	jnb	.L461
	comisd	%xmm11, %xmm7
	jnb	.L466
	comisd	%xmm9, %xmm6
	jbe	.L477
.L487:
	comisd	%xmm10, %xmm5
	jbe	.L479
.L485:
	comisd	%xmm4, %xmm9
	jnb	.L535
	comisd	%xmm7, %xmm10
	movl	$8, %edx
	jnb	.L398
	subsd	%xmm4, %xmm2
	subsd	%xmm7, %xmm1
	movl	$1, %edx
	comisd	%xmm1, %xmm2
	ja	.L398
	comisd	%xmm2, %xmm1
	movl	$8, %edx
	movl	$32, %eax
	cmovbe	%eax, %edx
	jmp	.L398
	.p2align 4,,10
	.p2align 3
.L458:
	comisd	%xmm10, %xmm7
	movl	$1, %edx
	ja	.L398
	comisd	%xmm5, %xmm11
	movl	$2, %edx
	ja	.L398
.L464:
	comisd	%xmm7, %xmm11
	jnb	.L461
	comisd	%xmm11, %xmm7
	jnb	.L466
	comisd	%xmm4, %xmm8
	jbe	.L586
	comisd	%xmm10, %xmm5
	ja	.L482
	comisd	%xmm9, %xmm6
	jbe	.L483
	comisd	%xmm10, %xmm5
	ja	.L485
	jmp	.L607
	.p2align 4,,10
	.p2align 3
.L610:
	comisd	%xmm11, %xmm7
	jb	.L611
	comisd	%xmm5, %xmm10
	jb	.L482
	.p2align 4,,10
	.p2align 3
.L470:
	comisd	%xmm6, %xmm8
	movl	$4, %edx
	ja	.L398
	comisd	%xmm9, %xmm4
	movl	$8, %edx
	ja	.L398
	comisd	%xmm4, %xmm8
	jbe	.L612
	comisd	%xmm10, %xmm5
	ja	.L482
	comisd	%xmm9, %xmm6
	jbe	.L483
.L479:
	comisd	%xmm4, %xmm8
	jbe	.L489
.L607:
	comisd	%xmm7, %xmm11
	jbe	.L587
	.p2align 4,,10
	.p2align 3
.L492:
	comisd	%xmm8, %xmm6
	movl	$2, %edx
	jnb	.L398
	comisd	%xmm11, %xmm5
	movl	$4, %edx
	jnb	.L398
	subsd	%xmm0, %xmm6
	subsd	%xmm3, %xmm5
	movl	$2, %edx
	comisd	%xmm5, %xmm6
	ja	.L398
	comisd	%xmm6, %xmm5
	movl	$4, %edx
	movl	$64, %eax
	cmovbe	%eax, %edx
	jmp	.L398
	.p2align 4,,10
	.p2align 3
.L466:
	comisd	%xmm5, %xmm10
	jnb	.L470
	comisd	%xmm4, %xmm8
	ja	.L482
	comisd	%xmm9, %xmm6
	ja	.L485
	comisd	%xmm4, %xmm8
	jbe	.L493
	jmp	.L607
	.p2align 4,,10
	.p2align 3
.L482:
	comisd	%xmm8, %xmm6
	movl	$1, %edx
	jnb	.L398
	comisd	%xmm7, %xmm10
	movl	$4, %edx
	jnb	.L398
	subsd	%xmm0, %xmm6
	subsd	%xmm7, %xmm1
	movl	$1, %edx
	comisd	%xmm1, %xmm6
	ja	.L398
	comisd	%xmm6, %xmm1
	movl	$4, %edx
	movl	$16, %eax
	cmovbe	%eax, %edx
	jmp	.L398
	.p2align 4,,10
	.p2align 3
.L608:
	comisd	%xmm4, %xmm8
	jnb	.L403
	comisd	%xmm4, %xmm9
	jnb	.L613
.L570:
	comisd	%xmm8, %xmm6
	jnb	.L419
	comisd	%xmm4, %xmm8
	jb	.L424
.L423:
	comisd	%xmm8, %xmm6
	jnb	.L439
.L448:
	comisd	%xmm8, %xmm4
	jnb	.L424
	comisd	%xmm4, %xmm9
	jb	.L399
.L446:
	comisd	%xmm9, %xmm6
	jb	.L399
.L437:
	xorl	%edx, %edx
	comisd	%xmm7, %xmm11
	jnb	.L398
	jmp	.L399
	.p2align 4,,10
	.p2align 3
.L612:
	comisd	%xmm9, %xmm6
	jbe	.L477
	comisd	%xmm10, %xmm5
	movl	$1, %edx
	ja	.L398
	jmp	.L479
	.p2align 4,,10
	.p2align 3
.L577:
	comisd	%xmm4, %xmm8
	jb	.L448
	jmp	.L423
	.p2align 4,,10
	.p2align 3
.L609:
	comisd	%xmm9, %xmm6
	jnb	.L407
	comisd	%xmm8, %xmm6
	jb	.L448
	.p2align 4,,10
	.p2align 3
.L409:
	comisd	%xmm11, %xmm5
	jb	.L578
.L509:
	xorl	%edx, %edx
	comisd	%xmm5, %xmm10
	jnb	.L398
	comisd	%xmm4, %xmm8
	jb	.L446
.L439:
	xorl	%edx, %edx
.L605:
	comisd	%xmm7, %xmm11
	jnb	.L398
	jmp	.L448
	.p2align 4,,10
	.p2align 3
.L586:
	comisd	%xmm9, %xmm6
	jbe	.L477
	comisd	%xmm10, %xmm5
	ja	.L485
.L489:
	comisd	%xmm7, %xmm11
	jbe	.L587
.L505:
	comisd	%xmm4, %xmm9
	movl	$2, %edx
	jnb	.L398
	comisd	%xmm11, %xmm5
	movl	$8, %edx
	jnb	.L398
	subsd	%xmm4, %xmm2
	subsd	%xmm3, %xmm5
	movl	$2, %edx
	comisd	%xmm5, %xmm2
	ja	.L398
	comisd	%xmm2, %xmm5
	movl	$8, %edx
	movl	$128, %eax
	cmovbe	%eax, %edx
	jmp	.L398
	.p2align 4,,10
	.p2align 3
.L418:
	comisd	%xmm4, %xmm9
	jb	.L570
.L412:
	xorl	%edx, %edx
	comisd	%xmm11, %xmm7
	jnb	.L398
	jmp	.L413
	.p2align 4,,10
	.p2align 3
.L477:
	comisd	%xmm4, %xmm8
	jbe	.L493
.L483:
	comisd	%xmm7, %xmm11
	jbe	.L493
	jmp	.L492
	.p2align 4,,10
	.p2align 3
.L613:
	xorl	%edx, %edx
	comisd	%xmm11, %xmm7
	jnb	.L398
	.p2align 4,,10
	.p2align 3
.L407:
	comisd	%xmm7, %xmm10
	jb	.L419
.L510:
	xorl	%edx, %edx
	comisd	%xmm10, %xmm5
	jnb	.L398
	ucomisd	%xmm6, %xmm9
	jp	.L556
	je	.L431
.L556:
	xorl	%edx, %edx
	comisd	%xmm4, %xmm8
	jnb	.L605
	comisd	%xmm11, %xmm5
	jb	.L399
	jmp	.L398
	.p2align 4,,10
	.p2align 3
.L403:
	comisd	%xmm7, %xmm10
	jb	.L572
	xorl	%edx, %edx
	comisd	%xmm10, %xmm5
	jnb	.L398
.L572:
	comisd	%xmm8, %xmm4
	jnb	.L418
	comisd	%xmm4, %xmm9
	jb	.L419
	jmp	.L413
	.p2align 4,,10
	.p2align 3
.L578:
	comisd	%xmm4, %xmm8
	jb	.L434
	ucomisd	%xmm4, %xmm8
	jp	.L446
	jne	.L446
	jmp	.L434
.L614:
	xorl	%edx, %edx
.L599:
	comisd	%xmm11, %xmm7
	jnb	.L398
	comisd	%xmm9, %xmm6
	jnb	.L407
	jmp	.L409
	.p2align 4,,10
	.p2align 3
.L611:
	comisd	%xmm10, %xmm5
	ja	.L482
	comisd	%xmm9, %xmm6
	ja	.L487
	jmp	.L483
.L571:
	ucomisd	%xmm4, %xmm8
	jp	.L414
	je	.L614
.L414:
	ucomisd	%xmm6, %xmm9
	jp	.L504
	jne	.L504
	comisd	%xmm7, %xmm10
	jnb	.L510
	jmp	.L409
.L431:
	comisd	%xmm11, %xmm5
	jnb	.L398
	comisd	%xmm4, %xmm8
	jb	.L434
	ucomisd	%xmm4, %xmm8
	jp	.L437
	jne	.L437
	jmp	.L434
.L535:
	movl	$1, %edx
	jmp	.L398
.L504:
	comisd	%xmm11, %xmm5
	jnb	.L509
	jmp	.L399
	.cfi_endproc
.LFE8154:
	.size	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_, .-_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	.type	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_, @function
_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_:
.LFB8155:
	.cfi_startproc
	movq	%rdx, %r11
	movq	%rcx, %rdx
	movq	%rsi, %r10
	movq	%rcx, %r9
	call	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L615
	movzwl	282(%r10), %ecx
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	movsd	216(%r10), %xmm1
	pxor	%xmm5, %xmm5
	pxor	%xmm4, %xmm4
	pxor	%xmm3, %xmm3
	movsd	224(%r10), %xmm9
	movl	%ecx, %edx
	movapd	%xmm1, %xmm10
	movsd	216(%r9), %xmm7
	shrw	%dx
	cvtsi2sdl	%ecx, %xmm5
	movzwl	282(%r9), %ecx
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm0
	movzwl	284(%r10), %edx
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
	movzwl	284(%r9), %edx
	movl	%edx, %esi
	cvtsi2sdl	%edx, %xmm3
	movq	184(%r9), %rdx
	shrw	%si
	subsd	%xmm0, %xmm7
	movzwl	%si, %esi
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm0
	addsd	224(%r9), %xmm0
	addsd	%xmm7, %xmm4
	movapd	%xmm0, %xmm12
	subsd	%xmm3, %xmm12
	cmpq	%r11, %rdx
	jb	.L617
	cmpl	$32, %eax
	ja	.L618
	leaq	.L620(%rip), %rdx
	movl	%eax, %eax
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L620:
	.long	.L645-.L620
	.long	.L625-.L620
	.long	.L624-.L620
	.long	.L645-.L620
	.long	.L623-.L620
	.long	.L645-.L620
	.long	.L645-.L620
	.long	.L645-.L620
	.long	.L622-.L620
	.long	.L645-.L620
	.long	.L645-.L620
	.long	.L645-.L620
	.long	.L645-.L620
	.long	.L645-.L620
	.long	.L645-.L620
	.long	.L645-.L620
	.long	.L621-.L620
	.long	.L645-.L620
	.long	.L645-.L620
	.long	.L645-.L620
	.long	.L645-.L620
	.long	.L645-.L620
	.long	.L645-.L620
	.long	.L645-.L620
	.long	.L645-.L620
	.long	.L645-.L620
	.long	.L645-.L620
	.long	.L645-.L620
	.long	.L645-.L620
	.long	.L645-.L620
	.long	.L645-.L620
	.long	.L645-.L620
	.long	.L619-.L620
	.text
	.p2align 4,,10
	.p2align 3
.L633:
	cmpl	$64, %eax
	je	.L641
	cmpl	$128, %eax
	je	.L642
	.p2align 4,,10
	.p2align 3
.L645:
	xorl	%edi, %edi
.L615:
	movl	%edi, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L617:
	testq	%r11, %r11
	js	.L629
	pxor	%xmm8, %xmm8
	cvtsi2sdq	%r11, %xmm8
	addq	%r11, %rdx
	js	.L631
.L650:
	pxor	%xmm3, %xmm3
	cvtsi2sdq	%rdx, %xmm3
.L632:
	divsd	%xmm3, %xmm8
	movsd	.LC4(%rip), %xmm6
	subsd	%xmm8, %xmm6
	cmpl	$32, %eax
	ja	.L633
	leaq	.L635(%rip), %rdx
	movl	%eax, %eax
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L635:
	.long	.L645-.L635
	.long	.L640-.L635
	.long	.L639-.L635
	.long	.L645-.L635
	.long	.L638-.L635
	.long	.L645-.L635
	.long	.L645-.L635
	.long	.L645-.L635
	.long	.L637-.L635
	.long	.L645-.L635
	.long	.L645-.L635
	.long	.L645-.L635
	.long	.L645-.L635
	.long	.L645-.L635
	.long	.L645-.L635
	.long	.L645-.L635
	.long	.L636-.L635
	.long	.L645-.L635
	.long	.L645-.L635
	.long	.L645-.L635
	.long	.L645-.L635
	.long	.L645-.L635
	.long	.L645-.L635
	.long	.L645-.L635
	.long	.L645-.L635
	.long	.L645-.L635
	.long	.L645-.L635
	.long	.L645-.L635
	.long	.L645-.L635
	.long	.L645-.L635
	.long	.L645-.L635
	.long	.L645-.L635
	.long	.L634-.L635
	.text
	.p2align 4,,10
	.p2align 3
.L629:
	movq	%r11, %rcx
	movq	%r11, %rsi
	pxor	%xmm8, %xmm8
	shrq	%rcx
	andl	$1, %esi
	orq	%rsi, %rcx
	cvtsi2sdq	%rcx, %xmm8
	addsd	%xmm8, %xmm8
	addq	%r11, %rdx
	jns	.L650
.L631:
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm3, %xmm3
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm3
	addsd	%xmm3, %xmm3
	jmp	.L632
	.p2align 4,,10
	.p2align 3
.L618:
	cmpl	$64, %eax
	je	.L626
	cmpl	$128, %eax
	jne	.L615
	subsd	%xmm11, %xmm0
	subsd	%xmm7, %xmm5
	movsd	.LC3(%rip), %xmm2
	addsd	%xmm2, %xmm0
	addsd	%xmm2, %xmm5
	addsd	%xmm9, %xmm0
	subsd	%xmm5, %xmm1
	movsd	%xmm0, 224(%r10)
	movsd	%xmm1, 216(%r10)
	jmp	.L628
	.p2align 4,,10
	.p2align 3
.L642:
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
	movsd	%xmm2, 224(%r10)
	movsd	224(%r9), %xmm2
	subsd	%xmm0, %xmm2
	movsd	%xmm2, 224(%r9)
	movsd	%xmm1, 216(%r10)
	addsd	216(%r9), %xmm8
	movsd	%xmm8, 216(%r9)
	.p2align 4,,10
	.p2align 3
.L628:
	movl	$1, %edi
	jmp	.L615
.L622:
	subsd	%xmm7, %xmm5
	addsd	.LC3(%rip), %xmm5
	subsd	%xmm5, %xmm1
	movsd	%xmm1, 216(%r10)
	jmp	.L628
.L621:
	subsd	%xmm10, %xmm4
	subsd	%xmm12, %xmm2
	movsd	.LC3(%rip), %xmm0
	movapd	%xmm4, %xmm3
	addsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm3
	subsd	%xmm2, %xmm9
	addsd	%xmm1, %xmm3
	movsd	%xmm9, 224(%r10)
	movsd	%xmm3, 216(%r10)
	jmp	.L628
.L625:
	subsd	%xmm12, %xmm2
	addsd	.LC3(%rip), %xmm2
	subsd	%xmm2, %xmm9
	movsd	%xmm9, 224(%r10)
	jmp	.L628
.L624:
	subsd	%xmm11, %xmm0
	addsd	.LC3(%rip), %xmm0
	addsd	%xmm9, %xmm0
	movsd	%xmm0, 224(%r10)
	jmp	.L628
.L623:
	subsd	%xmm10, %xmm4
	movsd	.LC3(%rip), %xmm3
	addsd	%xmm4, %xmm3
	addsd	%xmm1, %xmm3
	movsd	%xmm3, 216(%r10)
	jmp	.L628
.L619:
	subsd	%xmm12, %xmm2
	subsd	%xmm7, %xmm5
	movsd	.LC3(%rip), %xmm0
	addsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm5
	subsd	%xmm2, %xmm9
	subsd	%xmm5, %xmm1
	movsd	%xmm9, 224(%r10)
	movsd	%xmm1, 216(%r10)
	jmp	.L628
.L634:
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
	movsd	%xmm9, 224(%r10)
	addsd	224(%r9), %xmm2
	movsd	%xmm2, 224(%r9)
.L648:
	subsd	%xmm6, %xmm1
	mulsd	%xmm8, %xmm5
	movsd	%xmm1, 216(%r10)
	addsd	216(%r9), %xmm5
	movsd	%xmm5, 216(%r9)
	jmp	.L628
.L636:
	subsd	%xmm12, %xmm2
	movapd	%xmm6, %xmm0
	movsd	.LC3(%rip), %xmm5
	mulsd	%xmm2, %xmm0
	mulsd	%xmm8, %xmm2
	addsd	%xmm5, %xmm0
	subsd	%xmm0, %xmm9
	movsd	%xmm9, 224(%r10)
	addsd	224(%r9), %xmm2
.L647:
	movsd	%xmm2, 224(%r9)
	subsd	%xmm10, %xmm4
	mulsd	%xmm4, %xmm6
	movapd	%xmm4, %xmm3
	addsd	%xmm5, %xmm6
.L649:
	mulsd	%xmm8, %xmm3
	addsd	%xmm1, %xmm6
	movsd	%xmm6, 216(%r10)
	movsd	216(%r9), %xmm0
	subsd	%xmm3, %xmm0
	movsd	%xmm0, 216(%r9)
	jmp	.L628
.L637:
	subsd	%xmm7, %xmm5
	mulsd	%xmm5, %xmm6
	addsd	.LC3(%rip), %xmm6
	jmp	.L648
.L638:
	subsd	%xmm10, %xmm4
	mulsd	%xmm4, %xmm6
	movapd	%xmm4, %xmm3
	addsd	.LC3(%rip), %xmm6
	jmp	.L649
.L639:
	subsd	%xmm11, %xmm0
	mulsd	%xmm0, %xmm6
	addsd	.LC3(%rip), %xmm6
	mulsd	%xmm8, %xmm0
	addsd	%xmm9, %xmm6
	movsd	%xmm6, 224(%r10)
	movsd	224(%r9), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 224(%r9)
	jmp	.L628
.L640:
	subsd	%xmm12, %xmm2
	mulsd	%xmm2, %xmm6
	addsd	.LC3(%rip), %xmm6
	mulsd	%xmm8, %xmm2
	subsd	%xmm6, %xmm9
	movsd	%xmm9, 224(%r10)
	addsd	224(%r9), %xmm2
	movsd	%xmm2, 224(%r9)
	jmp	.L628
	.p2align 4,,10
	.p2align 3
.L641:
	subsd	%xmm11, %xmm0
	movapd	%xmm6, %xmm2
	movsd	.LC3(%rip), %xmm5
	mulsd	%xmm0, %xmm2
	mulsd	%xmm8, %xmm0
	addsd	%xmm5, %xmm2
	addsd	%xmm9, %xmm2
	movsd	%xmm2, 224(%r10)
	movsd	224(%r9), %xmm2
	subsd	%xmm0, %xmm2
	jmp	.L647
	.p2align 4,,10
	.p2align 3
.L626:
	subsd	%xmm10, %xmm4
	subsd	%xmm11, %xmm0
	movsd	.LC3(%rip), %xmm2
	movapd	%xmm4, %xmm3
	addsd	%xmm2, %xmm0
	addsd	%xmm2, %xmm3
	addsd	%xmm9, %xmm0
	addsd	%xmm1, %xmm3
	movsd	%xmm0, 224(%r10)
	movsd	%xmm3, 216(%r10)
	jmp	.L628
	.cfi_endproc
.LFE8155:
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
.LFB8157:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8157
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
	jne	.L652
	movq	$0, 40(%rsp)
	xorl	%ebx, %ebx
.L655:
	movq	(%rsp), %rax
	movq	(%rax), %r9
	testq	%r9, %r9
	je	.L654
	movq	$0, 8(%rsp)
	movq	8(%rax), %r10
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	jmp	.L661
	.p2align 4,,10
	.p2align 3
.L656:
	addq	$1, %rbx
	cmpq	%r9, %rbx
	jnb	.L694
.L661:
	movq	(%r10,%rbx,8), %rdx
	leaq	0(,%rbx,8), %r15
	cmpq	%r14, %rdx
	je	.L656
	cmpq	%rbp, %rdx
	je	.L656
	movq	%rbp, %rsi
	movq	%r13, %rdi
	call	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	testl	%eax, %eax
	je	.L656
	cmpq	%r12, 32(%rsp)
	je	.L695
.L657:
	cmpq	%r9, %rbx
	jnb	.L696
	movq	(%r10,%r15), %rax
	movq	40(%rsp), %rcx
	leaq	1(%r12), %rdx
	cmpq	32(%rsp), %r12
	jnb	.L697
	addq	$1, %rbx
	movq	%rax, (%rcx,%r12,8)
	movq	184(%rax), %rax
	movq	%rdx, %r12
	addq	%rax, 8(%rsp)
	cmpq	%r9, %rbx
	jb	.L661
	.p2align 4,,10
	.p2align 3
.L694:
	movq	40(%rsp), %rbx
	movq	16(%rsp), %rdi
	cmpq	%rdi, 8(%rsp)
	jnb	.L662
	testq	%r12, %r12
	je	.L654
	movq	32(%rsp), %rax
	movq	8(%rsp), %rsi
	xorl	%r15d, %r15d
	movq	%rax, 24(%rsp)
	movq	16(%rsp), %rax
	subq	%rsi, %rax
	movq	%rax, 16(%rsp)
.L669:
	cmpq	%r15, 24(%rsp)
	je	.L698
	movq	(%rbx,%r15,8), %r8
	movq	16(%rsp), %rdx
	movq	%rbp, %rsi
	movq	%r13, %rdi
	addq	184(%r8), %rdx
	movq	%r8, %rcx
	movq	%r8, 8(%rsp)
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	movq	8(%rsp), %r8
	testb	%al, %al
	jne	.L699
.L668:
	addq	$1, %r15
	cmpq	%r15, %r12
	jne	.L669
.L654:
	movq	%rbx, %rdi
	call	free@PLT
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L700
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
.L662:
	.cfi_restore_state
	testq	%r12, %r12
	je	.L654
	movq	32(%rsp), %r15
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L666:
	cmpq	%r14, %r15
	je	.L701
	movq	(%rbx,%r14,8), %rcx
	xorl	%edx, %edx
	movq	%rbp, %rsi
	movq	%r13, %rdi
	addq	$1, %r14
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	cmpq	%r14, %r12
	jne	.L666
	jmp	.L654
	.p2align 4,,10
	.p2align 3
.L699:
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
	jmp	.L668
	.p2align 4,,10
	.p2align 3
.L695:
	movzwl	8(%r13), %eax
	leaq	32(%rsp), %rdi
	movq	%r12, %rsi
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6InsertEyy.isra.0
.LEHE0:
	movq	(%rsp), %rax
	movq	(%rax), %r9
	movq	8(%rax), %r10
	jmp	.L657
	.p2align 4,,10
	.p2align 3
.L652:
	leaq	0(,%r12,8), %rdi
	call	malloc@PLT
	movq	%rax, 40(%rsp)
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.L655
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
.L701:
	movq	%r15, %rsi
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
.LEHB2:
	call	printf@PLT
.L660:
	movl	$1, %edi
	call	exit@PLT
.L697:
	movq	%r12, %rsi
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L660
.L696:
	movq	%rbx, %rsi
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L660
.L698:
	movq	24(%rsp), %rsi
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE2:
	jmp	.L660
.L700:
	call	__stack_chk_fail@PLT
.L673:
	movq	%rax, %rbx
	jmp	.L670
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8157:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8157-.LLSDACSB8157
.LLSDACSB8157:
	.uleb128 .LEHB0-.LFB8157
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L673-.LFB8157
	.uleb128 0
	.uleb128 .LEHB1-.LFB8157
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB8157
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L673-.LFB8157
	.uleb128 0
.LLSDACSE8157:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8157
	.type	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_.cold, @function
_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_.cold:
.LFSB8157:
.L670:
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
	jne	.L702
	movq	%rbx, %rdi
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
.L702:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8157:
	.section	.gcc_except_table
.LLSDAC8157:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8157-.LLSDACSBC8157
.LLSDACSBC8157:
	.uleb128 .LEHB3-.LCOLDB6
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSEC8157:
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
.LFB8156:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8156
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
	jne	.L704
	movq	$0, 88(%rsp)
	xorl	%ebx, %ebx
.L705:
	movq	(%rsp), %rax
	movq	24(%rax), %r13
	cmpq	16(%rax), %rbp
	jnb	.L761
	salq	$4, %rbp
	leaq	0(%r13,%rbp), %rax
	movq	(%rax), %r13
	movq	%rax, 24(%rsp)
	testq	%r13, %r13
	je	.L707
	xorl	%ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L727:
	movq	24(%rsp), %rax
	leaq	0(,%rbp,8), %r14
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	movq	$0, 48(%rsp)
	movq	8(%rax), %r10
	.p2align 4,,10
	.p2align 3
.L714:
	cmpq	%rbx, %rbp
	je	.L708
	movq	(%r10,%rbx,8), %rdx
	leaq	0(,%rbx,8), %r15
	cmpq	%r13, %rbp
	jnb	.L761
	movq	(%r10,%r14), %rsi
	movq	(%rsp), %rdi
	call	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	testl	%eax, %eax
	je	.L708
	cmpq	%r12, 80(%rsp)
	je	.L767
.L711:
	cmpq	%r13, %rbx
	jnb	.L764
	movq	(%r10,%r15), %rax
	movq	88(%rsp), %rcx
	leaq	1(%r12), %rdx
	cmpq	80(%rsp), %r12
	jnb	.L768
	movq	%rax, (%rcx,%r12,8)
	movq	184(%rax), %rax
	movq	%rdx, %r12
	addq	%rax, 48(%rsp)
.L708:
	addq	$1, %rbx
	cmpq	%r13, %rbx
	jb	.L714
	cmpq	%r13, %rbp
	jnb	.L761
	movq	(%r10,%r14), %r15
	movq	48(%rsp), %rax
	cmpq	176(%r15), %rax
	jnb	.L716
	testq	%r12, %r12
	je	.L721
	movq	80(%rsp), %rax
	xorl	%ebx, %ebx
	movq	%rax, 64(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 56(%rsp)
	jmp	.L726
	.p2align 4,,10
	.p2align 3
.L724:
	addq	$1, %rbx
	cmpq	%rbx, %r12
	je	.L721
.L726:
	cmpq	%rbx, 64(%rsp)
	je	.L769
	movq	56(%rsp), %rax
	movq	(%rax,%rbx,8), %r8
	movq	24(%rsp), %rax
	movq	184(%r8), %rdx
	movq	8(%rax), %rax
	cmpq	%r13, %rbp
	jnb	.L761
	movq	(%rax,%r14), %r15
	movq	(%rsp), %rdi
	movq	%r8, %rcx
	movq	%r8, 32(%rsp)
	movq	48(%rsp), %rax
	movq	176(%r15), %r10
	movq	%r15, %rsi
	subq	%rax, %r10
	addq	%r10, %rdx
	movq	%r10, 40(%rsp)
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testb	%al, %al
	je	.L724
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
	jnb	.L761
	movq	(%rax,%r14), %rsi
	movq	(%rsp), %rdi
	xorl	%edx, %edx
	addq	$1, %rbx
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	cmpq	%rbx, %r12
	jne	.L726
.L721:
	addq	$1, %rbp
	cmpq	%r13, %rbp
	jb	.L727
.L771:
	movq	88(%rsp), %rbx
.L707:
	movq	72(%rsp), %rcx
	movl	282(%rcx), %eax
	movupd	216(%rcx), %xmm3
	movq	%rcx, %rdi
	movl	%eax, 286(%rcx)
	movups	%xmm3, 232(%rcx)
	movaps	%xmm3, (%rsp)
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv@PLT
	movq	24(%rsp), %rax
	xorl	%ebp, %ebp
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L733
	.p2align 4,,10
	.p2align 3
.L728:
	movq	24(%rsp), %rax
	movq	8(%rax), %rax
	movq	(%rax,%rbp,8), %rdi
	movq	72(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L729
	movupd	216(%rdi), %xmm0
	ucomisd	232(%rdi), %xmm0
	jp	.L730
	jne	.L730
	movapd	%xmm0, %xmm2
	unpckhpd	%xmm2, %xmm2
	ucomisd	240(%rdi), %xmm2
	jp	.L730
	je	.L729
.L730:
	movups	%xmm0, 232(%rdi)
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv@PLT
	movq	24(%rsp), %rax
	movq	(%rax), %rdx
.L729:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jb	.L728
.L733:
	movq	%rbx, %rdi
	call	free@PLT
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L770
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
.L767:
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
	jmp	.L711
	.p2align 4,,10
	.p2align 3
.L716:
	testq	%r12, %r12
	je	.L721
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
.L720:
	cmpq	%rbp, %rbx
	je	.L764
	movq	0(%r13,%rbp,8), %rcx
	xorl	%edx, %edx
	movq	%r15, %rsi
	movq	%r14, %rdi
	addq	$1, %rbp
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	cmpq	%rbp, %r12
	jne	.L720
	movq	32(%rsp), %rbp
	movq	40(%rsp), %r13
	addq	$1, %rbp
	cmpq	%r13, %rbp
	jb	.L727
	jmp	.L771
.L761:
	movq	%rbp, %rsi
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE4:
.L710:
	movl	$1, %edi
	call	exit@PLT
.L704:
	leaq	0(,%r12,8), %rdi
	call	malloc@PLT
	movq	%rax, 88(%rsp)
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.L705
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
.L764:
	movq	%rbx, %rsi
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
.LEHB6:
	call	printf@PLT
	jmp	.L710
.L769:
	movq	64(%rsp), %rsi
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L710
.L768:
	movq	%r12, %rsi
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE6:
	jmp	.L710
.L770:
	call	__stack_chk_fail@PLT
.L738:
	movq	%rax, %rbx
	jmp	.L734
	.section	.gcc_except_table
.LLSDA8156:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8156-.LLSDACSB8156
.LLSDACSB8156:
	.uleb128 .LEHB4-.LFB8156
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L738-.LFB8156
	.uleb128 0
	.uleb128 .LEHB5-.LFB8156
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB8156
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L738-.LFB8156
	.uleb128 0
.LLSDACSE8156:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8156
	.type	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE.cold, @function
_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE.cold:
.LFSB8156:
.L734:
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
	jne	.L772
	movq	%rbx, %rdi
.LEHB7:
	call	_Unwind_Resume@PLT
.LEHE7:
.L772:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8156:
	.section	.gcc_except_table
.LLSDAC8156:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8156-.LLSDACSBC8156
.LLSDACSBC8156:
	.uleb128 .LEHB7-.LCOLDB7
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSEC8156:
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
