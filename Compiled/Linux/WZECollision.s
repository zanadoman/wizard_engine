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
.LFB8352:
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
.LFE8352:
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
.LFB8157:
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
.LFE8157:
	.size	_ZN3wze6engine9collisionC2EPS0_, .-_ZN3wze6engine9collisionC2EPS0_
	.globl	_ZN3wze6engine9collisionC1EPS0_
	.set	_ZN3wze6engine9collisionC1EPS0_,_ZN3wze6engine9collisionC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision14GetBufferSizeBEv
	.type	_ZN3wze6engine9collision14GetBufferSizeBEv, @function
_ZN3wze6engine9collision14GetBufferSizeBEv:
.LFB8159:
	.cfi_startproc
	movzwl	8(%rdi), %eax
	sall	$3, %eax
	ret
	.cfi_endproc
.LFE8159:
	.size	_ZN3wze6engine9collision14GetBufferSizeBEv, .-_ZN3wze6engine9collision14GetBufferSizeBEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision14SetBufferSizeBEh
	.type	_ZN3wze6engine9collision14SetBufferSizeBEh, @function
_ZN3wze6engine9collision14SetBufferSizeBEh:
.LFB8160:
	.cfi_startproc
	movzbl	%sil, %esi
	shrw	$3, %si
	movw	%si, 8(%rdi)
	leal	0(,%rsi,8), %eax
	ret
	.cfi_endproc
.LFE8160:
	.size	_ZN3wze6engine9collision14SetBufferSizeBEh, .-_ZN3wze6engine9collision14SetBufferSizeBEh
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE
	.type	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE, @function
_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE:
.LFB8161:
	.cfi_startproc
	movzwl	88(%rsi), %edx
	pxor	%xmm5, %xmm5
	movapd	%xmm0, %xmm4
	movsd	40(%rsi), %xmm0
	movl	%edx, %eax
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm5
	xorl	%eax, %eax
	subsd	%xmm5, %xmm0
	comisd	%xmm2, %xmm0
	ja	.L37
	pxor	%xmm5, %xmm5
	cvtsi2sdl	%edx, %xmm5
	addsd	%xmm0, %xmm5
	comisd	%xmm5, %xmm4
	ja	.L37
	movzwl	90(%rsi), %edx
	pxor	%xmm6, %xmm6
	pxor	%xmm8, %xmm8
	movl	%edx, %ecx
	cvtsi2sdl	%edx, %xmm8
	shrw	%cx
	movzwl	%cx, %ecx
	cvtsi2sdl	%ecx, %xmm6
	addsd	48(%rsi), %xmm6
	movapd	%xmm6, %xmm7
	subsd	%xmm8, %xmm7
	comisd	%xmm1, %xmm7
	ja	.L37
	comisd	%xmm6, %xmm3
	ja	.L37
	comisd	%xmm4, %xmm5
	jb	.L129
	comisd	%xmm5, %xmm2
	jb	.L150
	comisd	%xmm3, %xmm7
	jb	.L131
	comisd	%xmm7, %xmm1
	movl	$1, %eax
	jnb	.L37
	comisd	%xmm0, %xmm4
	jnb	.L49
	comisd	%xmm7, %xmm1
	jnb	.L37
.L145:
	comisd	%xmm2, %xmm5
	jnb	.L46
	.p2align 4,,10
	.p2align 3
.L50:
	comisd	%xmm3, %xmm6
	jb	.L138
.L99:
	comisd	%xmm6, %xmm1
	movl	$1, %eax
	jnb	.L37
	comisd	%xmm0, %xmm4
	jnb	.L78
.L79:
	comisd	%xmm6, %xmm1
	movl	$1, %eax
	jnb	.L151
.L74:
	comisd	%xmm2, %xmm5
	jb	.L140
.L72:
	comisd	%xmm7, %xmm3
	setnb	%al
	ret
	.p2align 4,,10
	.p2align 3
.L138:
	comisd	%xmm0, %xmm4
	jb	.L65
.L78:
	comisd	%xmm7, %xmm3
	movl	$1, %eax
	jb	.L86
.L37:
	ret
	.p2align 4,,10
	.p2align 3
.L129:
	comisd	%xmm4, %xmm0
	jnb	.L58
.L54:
	comisd	%xmm0, %xmm2
	jnb	.L59
	comisd	%xmm4, %xmm5
	jnb	.L60
.L80:
	comisd	%xmm0, %xmm4
	jb	.L86
	jmp	.L64
	.p2align 4,,10
	.p2align 3
.L42:
	comisd	%xmm7, %xmm1
	jb	.L134
	comisd	%xmm1, %xmm6
	movl	$1, %eax
	jnb	.L37
.L134:
	comisd	%xmm4, %xmm0
	jnb	.L58
	comisd	%xmm0, %xmm2
	jb	.L60
	.p2align 4,,10
	.p2align 3
.L59:
	comisd	%xmm2, %xmm5
	jnb	.L46
	comisd	%xmm4, %xmm5
	jb	.L80
	jmp	.L50
	.p2align 4,,10
	.p2align 3
.L150:
	comisd	%xmm0, %xmm4
	jnb	.L42
	comisd	%xmm0, %xmm2
	jnb	.L152
.L130:
	comisd	%xmm4, %xmm5
	jnb	.L60
	comisd	%xmm0, %xmm4
	jb	.L65
.L64:
	comisd	%xmm4, %xmm5
	jnb	.L78
.L86:
	comisd	%xmm4, %xmm0
	jnb	.L65
.L89:
	comisd	%xmm0, %xmm2
	jnb	.L74
.L140:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L152:
	comisd	%xmm3, %xmm7
	jnb	.L45
	.p2align 4,,10
	.p2align 3
.L46:
	comisd	%xmm7, %xmm1
	jnb	.L70
	comisd	%xmm4, %xmm5
	jnb	.L60
	comisd	%xmm4, %xmm0
	jb	.L72
.L71:
	comisd	%xmm3, %xmm6
	jb	.L74
	jmp	.L79
	.p2align 4,,10
	.p2align 3
.L60:
	comisd	%xmm5, %xmm2
	jnb	.L50
	comisd	%xmm0, %xmm4
	jnb	.L78
	comisd	%xmm0, %xmm2
	jb	.L140
.L147:
	comisd	%xmm3, %xmm6
	jb	.L72
	jmp	.L79
	.p2align 4,,10
	.p2align 3
.L58:
	comisd	%xmm0, %xmm2
	jb	.L130
.L53:
	comisd	%xmm3, %xmm7
	jb	.L59
.L45:
	comisd	%xmm7, %xmm1
	movl	$1, %eax
	jb	.L59
	ret
	.p2align 4,,10
	.p2align 3
.L65:
	comisd	%xmm0, %xmm2
	jb	.L140
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L131:
	comisd	%xmm0, %xmm4
	jnb	.L49
	comisd	%xmm3, %xmm7
	jb	.L145
	jmp	.L45
	.p2align 4,,10
	.p2align 3
.L70:
	comisd	%xmm1, %xmm6
	movl	$1, %eax
	jnb	.L37
	comisd	%xmm4, %xmm5
	jnb	.L73
	comisd	%xmm4, %xmm0
	jb	.L74
	comisd	%xmm3, %xmm6
	jb	.L74
	ret
	.p2align 4,,10
	.p2align 3
.L49:
	comisd	%xmm7, %xmm1
	jb	.L132
	comisd	%xmm1, %xmm6
	movl	$1, %eax
	jnb	.L37
	comisd	%xmm4, %xmm0
	jb	.L54
	jmp	.L53
.L132:
	comisd	%xmm4, %xmm0
	jnb	.L53
	ucomisd	%xmm2, %xmm5
	jp	.L127
	je	.L95
.L127:
	comisd	%xmm3, %xmm6
	jb	.L141
	comisd	%xmm6, %xmm1
	jb	.L78
.L118:
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L73:
	ucomisd	%xmm2, %xmm5
	jp	.L76
	jne	.L76
	comisd	%xmm3, %xmm6
	jnb	.L37
	comisd	%xmm0, %xmm4
	jnb	.L78
	jmp	.L147
.L151:
	ret
.L76:
	comisd	%xmm0, %xmm4
	jnb	.L78
	jmp	.L71
.L95:
	comisd	%xmm7, %xmm1
	jnb	.L70
	comisd	%xmm3, %xmm6
	jnb	.L99
	jmp	.L78
.L141:
	comisd	%xmm7, %xmm3
	jb	.L89
	jmp	.L118
	.cfi_endproc
.LFE8161:
	.size	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE, .-_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision14CheckCollisionEdddddddd
	.type	_ZN3wze6engine9collision14CheckCollisionEdddddddd, @function
_ZN3wze6engine9collision14CheckCollisionEdddddddd:
.LFB8162:
	.cfi_startproc
	xorl	%eax, %eax
	comisd	%xmm2, %xmm4
	ja	.L153
	comisd	%xmm6, %xmm0
	ja	.L153
	comisd	%xmm1, %xmm7
	ja	.L153
	comisd	%xmm5, %xmm3
	ja	.L153
	comisd	%xmm0, %xmm6
	jb	.L155
	comisd	%xmm6, %xmm2
	jnb	.L157
	comisd	%xmm4, %xmm0
	jnb	.L158
	comisd	%xmm0, %xmm4
	jnb	.L159
	comisd	%xmm4, %xmm2
	jnb	.L160
	.p2align 4,,10
	.p2align 3
.L161:
	comisd	%xmm0, %xmm6
	jnb	.L174
.L194:
	comisd	%xmm4, %xmm0
	jnb	.L179
.L209:
	comisd	%xmm0, %xmm4
	jnb	.L180
.L187:
	comisd	%xmm4, %xmm2
	jb	.L270
.L189:
	comisd	%xmm2, %xmm6
	jnb	.L197
.L270:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L172:
	comisd	%xmm1, %xmm5
	movl	$1, %eax
	jb	.L155
.L153:
	ret
	.p2align 4,,10
	.p2align 3
.L155:
	comisd	%xmm0, %xmm4
	jnb	.L159
.L170:
	comisd	%xmm4, %xmm2
	jb	.L161
.L173:
	comisd	%xmm2, %xmm6
	jnb	.L160
	comisd	%xmm0, %xmm6
	jb	.L194
	jmp	.L178
	.p2align 4,,10
	.p2align 3
.L159:
	comisd	%xmm4, %xmm2
	jnb	.L167
	comisd	%xmm0, %xmm6
	jnb	.L174
.L274:
	comisd	%xmm4, %xmm0
	jb	.L180
.L179:
	comisd	%xmm0, %xmm6
	jb	.L209
	.p2align 4,,10
	.p2align 3
.L196:
	comisd	%xmm7, %xmm3
	jb	.L209
.L222:
	comisd	%xmm3, %xmm5
	jb	.L209
.L249:
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L157:
	comisd	%xmm3, %xmm7
	jb	.L259
	comisd	%xmm7, %xmm1
	movl	$1, %eax
	jnb	.L153
	comisd	%xmm4, %xmm0
	jnb	.L164
	comisd	%xmm0, %xmm4
	jnb	.L165
.L166:
	comisd	%xmm4, %xmm2
	jnb	.L280
	comisd	%xmm3, %xmm5
	jnb	.L203
	comisd	%xmm4, %xmm0
	jnb	.L196
	xorl	%eax, %eax
	comisd	%xmm0, %xmm4
	jb	.L187
	ret
	.p2align 4,,10
	.p2align 3
.L259:
	comisd	%xmm4, %xmm0
	jnb	.L164
	comisd	%xmm0, %xmm4
	jb	.L166
	.p2align 4,,10
	.p2align 3
.L167:
	comisd	%xmm3, %xmm7
	jnb	.L165
	comisd	%xmm2, %xmm6
	jnb	.L160
	comisd	%xmm0, %xmm6
	jb	.L274
.L178:
	comisd	%xmm3, %xmm5
	jb	.L192
.L203:
	comisd	%xmm5, %xmm1
	movl	$1, %eax
	jnb	.L153
	comisd	%xmm4, %xmm0
	jb	.L281
.L200:
	comisd	%xmm7, %xmm3
	movl	$1, %eax
	jb	.L209
	ret
	.p2align 4,,10
	.p2align 3
.L160:
	comisd	%xmm7, %xmm1
	jb	.L264
.L225:
	comisd	%xmm1, %xmm5
	movl	$1, %eax
	jnb	.L153
	comisd	%xmm0, %xmm6
	jnb	.L186
	comisd	%xmm0, %xmm4
	jb	.L187
	comisd	%xmm3, %xmm5
	jb	.L189
	ret
.L266:
	comisd	%xmm4, %xmm0
	jnb	.L196
	.p2align 4,,10
	.p2align 3
.L180:
	comisd	%xmm4, %xmm2
	jb	.L270
.L206:
	comisd	%xmm3, %xmm5
	jb	.L189
.L201:
	comisd	%xmm5, %xmm1
	movl	$1, %eax
	jb	.L189
	ret
	.p2align 4,,10
	.p2align 3
.L158:
	comisd	%xmm7, %xmm1
	jnb	.L172
	comisd	%xmm0, %xmm4
	jnb	.L159
	comisd	%xmm4, %xmm2
	jnb	.L173
	.p2align 4,,10
	.p2align 3
.L174:
	comisd	%xmm6, %xmm2
	jnb	.L178
.L190:
	comisd	%xmm4, %xmm0
	jnb	.L196
	comisd	%xmm0, %xmm4
	jnb	.L180
	comisd	%xmm4, %xmm2
	jb	.L270
	.p2align 4,,10
	.p2align 3
.L197:
	comisd	%xmm7, %xmm3
	jb	.L270
	comisd	%xmm3, %xmm5
	setnb	%al
	ret
	.p2align 4,,10
	.p2align 3
.L165:
	comisd	%xmm7, %xmm1
	movl	$1, %eax
	jb	.L173
	ret
	.p2align 4,,10
	.p2align 3
.L264:
	comisd	%xmm0, %xmm6
	jnb	.L174
	comisd	%xmm0, %xmm4
	jnb	.L206
	jmp	.L187
	.p2align 4,,10
	.p2align 3
.L164:
	comisd	%xmm7, %xmm1
	jb	.L260
	comisd	%xmm1, %xmm5
	movl	$1, %eax
	jnb	.L153
	comisd	%xmm0, %xmm4
	jnb	.L167
	jmp	.L170
.L186:
	ucomisd	%xmm6, %xmm2
	jp	.L190
	jne	.L190
	comisd	%xmm3, %xmm5
	jnb	.L153
	.p2align 4,,10
	.p2align 3
.L192:
	comisd	%xmm4, %xmm0
	jb	.L209
	jmp	.L196
.L260:
	comisd	%xmm0, %xmm4
	jnb	.L167
	ucomisd	%xmm6, %xmm2
	jp	.L258
	je	.L219
.L258:
	comisd	%xmm3, %xmm5
	jnb	.L221
	comisd	%xmm7, %xmm3
	jnb	.L222
	jmp	.L187
	.p2align 4,,10
	.p2align 3
.L281:
	comisd	%xmm0, %xmm4
	jb	.L187
	jmp	.L201
.L280:
	comisd	%xmm2, %xmm6
	jnb	.L160
	comisd	%xmm3, %xmm5
	jb	.L266
	comisd	%xmm5, %xmm1
	jnb	.L249
	comisd	%xmm4, %xmm0
	jnb	.L200
	jmp	.L201
.L219:
	comisd	%xmm7, %xmm1
	jnb	.L225
	comisd	%xmm3, %xmm5
	jb	.L196
.L221:
	comisd	%xmm5, %xmm1
	jb	.L200
	jmp	.L249
	.cfi_endproc
.LFE8162:
	.size	_ZN3wze6engine9collision14CheckCollisionEdddddddd, .-_ZN3wze6engine9collision14CheckCollisionEdddddddd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	.type	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_, @function
_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_:
.LFB8163:
	.cfi_startproc
	movq	%rsi, %rax
	pxor	%xmm0, %xmm0
	pxor	%xmm10, %xmm10
	movq	%rdi, %r8
	movzwl	294(%rsi), %esi
	pxor	%xmm5, %xmm5
	pxor	%xmm6, %xmm6
	movsd	240(%rax), %xmm8
	pxor	%xmm9, %xmm9
	movsd	224(%rdx), %xmm4
	movl	%esi, %ecx
	cvtsi2sdl	%esi, %xmm9
	movzwl	290(%rdx), %esi
	shrw	%cx
	movzwl	%cx, %ecx
	cvtsi2sdl	%esi, %xmm6
	cvtsi2sdl	%ecx, %xmm0
	movzwl	296(%rax), %ecx
	movl	%ecx, %edi
	shrw	%di
	subsd	%xmm0, %xmm8
	movzwl	%di, %edi
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	movl	%esi, %ecx
	cvtsi2sdl	%edi, %xmm10
	shrw	%cx
	addsd	248(%rax), %xmm10
	movzwl	%cx, %ecx
	addsd	%xmm8, %xmm9
	movapd	%xmm10, %xmm11
	subsd	%xmm0, %xmm11
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	movzwl	292(%rdx), %ecx
	movl	%ecx, %edi
	shrw	%di
	subsd	%xmm0, %xmm4
	movzwl	%di, %edi
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edi, %xmm5
	addsd	232(%rdx), %xmm5
	cvtsi2sdl	%ecx, %xmm0
	comisd	%xmm9, %xmm4
	addsd	%xmm4, %xmm6
	movapd	%xmm5, %xmm7
	subsd	%xmm0, %xmm7
	ja	.L283
	comisd	%xmm6, %xmm8
	ja	.L283
	comisd	%xmm10, %xmm7
	ja	.L283
	comisd	%xmm5, %xmm11
	ja	.L283
	comisd	%xmm8, %xmm6
	jb	.L453
	comisd	%xmm6, %xmm9
	jb	.L492
	xorl	%edx, %edx
	comisd	%xmm11, %xmm7
	jnb	.L282
	comisd	%xmm4, %xmm8
	jb	.L483
	comisd	%xmm7, %xmm10
	jb	.L455
	comisd	%xmm10, %xmm5
	jnb	.L282
	comisd	%xmm8, %xmm4
	jnb	.L296
	.p2align 4,,10
	.p2align 3
.L297:
	comisd	%xmm9, %xmm6
	jnb	.L291
	comisd	%xmm8, %xmm6
	jnb	.L293
	comisd	%xmm4, %xmm8
	jnb	.L307
.L318:
	comisd	%xmm11, %xmm5
	jb	.L283
	xorl	%edx, %edx
	comisd	%xmm5, %xmm10
	jb	.L330
.L282:
	movl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L453:
	comisd	%xmm8, %xmm4
	jnb	.L302
	comisd	%xmm4, %xmm9
	jnb	.L493
	comisd	%xmm8, %xmm6
	jb	.L461
.L303:
	comisd	%xmm6, %xmm9
	jnb	.L293
	comisd	%xmm4, %xmm8
	jnb	.L323
.L308:
	comisd	%xmm4, %xmm9
	jnb	.L318
	.p2align 4,,10
	.p2align 3
.L283:
	pxor	%xmm1, %xmm1
	pxor	%xmm2, %xmm2
	pxor	%xmm12, %xmm12
	movq	%r8, %rdi
	movzwl	290(%rax), %ecx
	movsd	224(%rax), %xmm0
	movl	%ecx, %edx
	cvtsi2sdl	%ecx, %xmm2
	shrw	%dx
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm1
	movzwl	292(%rax), %edx
	movl	%edx, %esi
	cvtsi2sdl	%edx, %xmm12
	xorl	%edx, %edx
	shrw	%si
	subsd	%xmm1, %xmm0
	movzwl	%si, %esi
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%esi, %xmm1
	addsd	232(%rax), %xmm1
	addsd	%xmm0, %xmm2
	movapd	%xmm1, %xmm3
	subsd	%xmm12, %xmm3
	call	_ZN3wze6engine9collision14CheckCollisionEdddddddd
	testb	%al, %al
	je	.L282
	comisd	%xmm4, %xmm8
	jb	.L463
	comisd	%xmm9, %xmm6
	jnb	.L342
	ucomisd	%xmm4, %xmm8
	jp	.L445
	je	.L343
.L445:
	comisd	%xmm7, %xmm11
	jb	.L494
	.p2align 4,,10
	.p2align 3
.L345:
	comisd	%xmm10, %xmm5
	jnb	.L354
	comisd	%xmm11, %xmm7
	jnb	.L354
	comisd	%xmm4, %xmm8
	ja	.L376
	comisd	%xmm9, %xmm6
	ja	.L389
	comisd	%xmm4, %xmm8
	ja	.L376
	.p2align 4,,10
	.p2align 3
.L377:
	comisd	%xmm9, %xmm6
	ja	.L373
.L471:
	xorl	%edx, %edx
	jmp	.L282
	.p2align 4,,10
	.p2align 3
.L463:
	comisd	%xmm8, %xmm4
	jb	.L348
.L343:
	comisd	%xmm6, %xmm9
	jnb	.L342
	comisd	%xmm7, %xmm11
	jnb	.L345
	comisd	%xmm11, %xmm7
	jnb	.L350
	comisd	%xmm9, %xmm6
	jbe	.L361
.L371:
	comisd	%xmm10, %xmm5
	jbe	.L363
.L369:
	comisd	%xmm4, %xmm9
	jnb	.L419
	comisd	%xmm7, %xmm10
	movl	$8, %edx
	jnb	.L282
	subsd	%xmm4, %xmm2
	subsd	%xmm7, %xmm1
	movl	$1, %edx
	comisd	%xmm1, %xmm2
	ja	.L282
	comisd	%xmm2, %xmm1
	movl	$8, %edx
	movl	$32, %eax
	cmovbe	%eax, %edx
	jmp	.L282
	.p2align 4,,10
	.p2align 3
.L342:
	comisd	%xmm10, %xmm7
	movl	$1, %edx
	ja	.L282
	comisd	%xmm5, %xmm11
	movl	$2, %edx
	ja	.L282
.L348:
	comisd	%xmm7, %xmm11
	jnb	.L345
	comisd	%xmm11, %xmm7
	jnb	.L350
	comisd	%xmm4, %xmm8
	jbe	.L470
	comisd	%xmm10, %xmm5
	ja	.L366
	comisd	%xmm9, %xmm6
	jbe	.L367
	comisd	%xmm10, %xmm5
	ja	.L369
	jmp	.L491
	.p2align 4,,10
	.p2align 3
.L494:
	comisd	%xmm11, %xmm7
	jb	.L495
	comisd	%xmm5, %xmm10
	jb	.L366
	.p2align 4,,10
	.p2align 3
.L354:
	comisd	%xmm6, %xmm8
	movl	$4, %edx
	ja	.L282
	comisd	%xmm9, %xmm4
	movl	$8, %edx
	ja	.L282
	comisd	%xmm4, %xmm8
	jbe	.L496
	comisd	%xmm10, %xmm5
	ja	.L366
	comisd	%xmm9, %xmm6
	jbe	.L367
.L363:
	comisd	%xmm4, %xmm8
	jbe	.L373
.L491:
	comisd	%xmm7, %xmm11
	jbe	.L471
	.p2align 4,,10
	.p2align 3
.L376:
	comisd	%xmm8, %xmm6
	movl	$2, %edx
	jnb	.L282
	comisd	%xmm11, %xmm5
	movl	$4, %edx
	jnb	.L282
	subsd	%xmm0, %xmm6
	subsd	%xmm3, %xmm5
	movl	$2, %edx
	comisd	%xmm5, %xmm6
	ja	.L282
	comisd	%xmm6, %xmm5
	movl	$4, %edx
	movl	$64, %eax
	cmovbe	%eax, %edx
	jmp	.L282
	.p2align 4,,10
	.p2align 3
.L350:
	comisd	%xmm5, %xmm10
	jnb	.L354
	comisd	%xmm4, %xmm8
	ja	.L366
	comisd	%xmm9, %xmm6
	ja	.L369
	comisd	%xmm4, %xmm8
	jbe	.L377
	jmp	.L491
	.p2align 4,,10
	.p2align 3
.L366:
	comisd	%xmm8, %xmm6
	movl	$1, %edx
	jnb	.L282
	comisd	%xmm7, %xmm10
	movl	$4, %edx
	jnb	.L282
	subsd	%xmm0, %xmm6
	subsd	%xmm7, %xmm1
	movl	$1, %edx
	comisd	%xmm1, %xmm6
	ja	.L282
	comisd	%xmm6, %xmm1
	movl	$4, %edx
	movl	$16, %eax
	cmovbe	%eax, %edx
	jmp	.L282
	.p2align 4,,10
	.p2align 3
.L492:
	comisd	%xmm4, %xmm8
	jnb	.L287
	comisd	%xmm4, %xmm9
	jnb	.L497
.L454:
	comisd	%xmm8, %xmm6
	jnb	.L303
	comisd	%xmm4, %xmm8
	jb	.L308
.L307:
	comisd	%xmm8, %xmm6
	jnb	.L323
.L332:
	comisd	%xmm8, %xmm4
	jnb	.L308
	comisd	%xmm4, %xmm9
	jb	.L283
.L330:
	comisd	%xmm9, %xmm6
	jb	.L283
.L321:
	xorl	%edx, %edx
	comisd	%xmm7, %xmm11
	jnb	.L282
	jmp	.L283
	.p2align 4,,10
	.p2align 3
.L496:
	comisd	%xmm9, %xmm6
	jbe	.L361
	comisd	%xmm10, %xmm5
	movl	$1, %edx
	ja	.L282
	jmp	.L363
	.p2align 4,,10
	.p2align 3
.L461:
	comisd	%xmm4, %xmm8
	jb	.L332
	jmp	.L307
	.p2align 4,,10
	.p2align 3
.L493:
	comisd	%xmm9, %xmm6
	jnb	.L291
	comisd	%xmm8, %xmm6
	jb	.L332
	.p2align 4,,10
	.p2align 3
.L293:
	comisd	%xmm11, %xmm5
	jb	.L462
.L393:
	xorl	%edx, %edx
	comisd	%xmm5, %xmm10
	jnb	.L282
	comisd	%xmm4, %xmm8
	jb	.L330
.L323:
	xorl	%edx, %edx
.L489:
	comisd	%xmm7, %xmm11
	jnb	.L282
	jmp	.L332
	.p2align 4,,10
	.p2align 3
.L470:
	comisd	%xmm9, %xmm6
	jbe	.L361
	comisd	%xmm10, %xmm5
	ja	.L369
.L373:
	comisd	%xmm7, %xmm11
	jbe	.L471
.L389:
	comisd	%xmm4, %xmm9
	movl	$2, %edx
	jnb	.L282
	comisd	%xmm11, %xmm5
	movl	$8, %edx
	jnb	.L282
	subsd	%xmm4, %xmm2
	subsd	%xmm3, %xmm5
	movl	$2, %edx
	comisd	%xmm5, %xmm2
	ja	.L282
	comisd	%xmm2, %xmm5
	movl	$8, %edx
	movl	$128, %eax
	cmovbe	%eax, %edx
	jmp	.L282
	.p2align 4,,10
	.p2align 3
.L302:
	comisd	%xmm4, %xmm9
	jb	.L454
.L296:
	xorl	%edx, %edx
	comisd	%xmm11, %xmm7
	jnb	.L282
	jmp	.L297
	.p2align 4,,10
	.p2align 3
.L361:
	comisd	%xmm4, %xmm8
	jbe	.L377
.L367:
	comisd	%xmm7, %xmm11
	jbe	.L377
	jmp	.L376
	.p2align 4,,10
	.p2align 3
.L497:
	xorl	%edx, %edx
	comisd	%xmm11, %xmm7
	jnb	.L282
	.p2align 4,,10
	.p2align 3
.L291:
	comisd	%xmm7, %xmm10
	jb	.L303
.L394:
	xorl	%edx, %edx
	comisd	%xmm10, %xmm5
	jnb	.L282
	ucomisd	%xmm6, %xmm9
	jp	.L440
	je	.L315
.L440:
	xorl	%edx, %edx
	comisd	%xmm4, %xmm8
	jnb	.L489
	comisd	%xmm11, %xmm5
	jb	.L283
	jmp	.L282
	.p2align 4,,10
	.p2align 3
.L287:
	comisd	%xmm7, %xmm10
	jb	.L456
	xorl	%edx, %edx
	comisd	%xmm10, %xmm5
	jnb	.L282
.L456:
	comisd	%xmm8, %xmm4
	jnb	.L302
	comisd	%xmm4, %xmm9
	jb	.L303
	jmp	.L297
	.p2align 4,,10
	.p2align 3
.L462:
	comisd	%xmm4, %xmm8
	jb	.L318
	ucomisd	%xmm4, %xmm8
	jp	.L330
	jne	.L330
	jmp	.L318
.L498:
	xorl	%edx, %edx
.L483:
	comisd	%xmm11, %xmm7
	jnb	.L282
	comisd	%xmm9, %xmm6
	jnb	.L291
	jmp	.L293
	.p2align 4,,10
	.p2align 3
.L495:
	comisd	%xmm10, %xmm5
	ja	.L366
	comisd	%xmm9, %xmm6
	ja	.L371
	jmp	.L367
.L455:
	ucomisd	%xmm4, %xmm8
	jp	.L298
	je	.L498
.L298:
	ucomisd	%xmm6, %xmm9
	jp	.L388
	jne	.L388
	comisd	%xmm7, %xmm10
	jnb	.L394
	jmp	.L293
.L315:
	comisd	%xmm11, %xmm5
	jnb	.L282
	comisd	%xmm4, %xmm8
	jb	.L318
	ucomisd	%xmm4, %xmm8
	jp	.L321
	jne	.L321
	jmp	.L318
.L419:
	movl	$1, %edx
	jmp	.L282
.L388:
	comisd	%xmm11, %xmm5
	jnb	.L393
	jmp	.L283
	.cfi_endproc
.LFE8163:
	.size	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_, .-_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	.type	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_, @function
_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_:
.LFB8164:
	.cfi_startproc
	movq	%rdx, %r11
	movq	%rcx, %rdx
	movq	%rsi, %r10
	movq	%rcx, %r9
	call	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L499
	movzwl	290(%r10), %ecx
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	movsd	224(%r10), %xmm1
	pxor	%xmm5, %xmm5
	pxor	%xmm4, %xmm4
	pxor	%xmm3, %xmm3
	movsd	232(%r10), %xmm9
	movl	%ecx, %edx
	movapd	%xmm1, %xmm10
	movsd	224(%r9), %xmm7
	shrw	%dx
	cvtsi2sdl	%ecx, %xmm5
	movzwl	290(%r9), %ecx
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm0
	movzwl	292(%r10), %edx
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
	movzwl	292(%r9), %edx
	movl	%edx, %esi
	cvtsi2sdl	%edx, %xmm3
	movq	184(%r9), %rdx
	shrw	%si
	subsd	%xmm0, %xmm7
	movzwl	%si, %esi
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm0
	addsd	232(%r9), %xmm0
	addsd	%xmm7, %xmm4
	movapd	%xmm0, %xmm12
	subsd	%xmm3, %xmm12
	cmpq	%r11, %rdx
	jb	.L501
	cmpl	$32, %eax
	ja	.L502
	leaq	.L504(%rip), %rdx
	movl	%eax, %eax
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L504:
	.long	.L529-.L504
	.long	.L509-.L504
	.long	.L508-.L504
	.long	.L529-.L504
	.long	.L507-.L504
	.long	.L529-.L504
	.long	.L529-.L504
	.long	.L529-.L504
	.long	.L506-.L504
	.long	.L529-.L504
	.long	.L529-.L504
	.long	.L529-.L504
	.long	.L529-.L504
	.long	.L529-.L504
	.long	.L529-.L504
	.long	.L529-.L504
	.long	.L505-.L504
	.long	.L529-.L504
	.long	.L529-.L504
	.long	.L529-.L504
	.long	.L529-.L504
	.long	.L529-.L504
	.long	.L529-.L504
	.long	.L529-.L504
	.long	.L529-.L504
	.long	.L529-.L504
	.long	.L529-.L504
	.long	.L529-.L504
	.long	.L529-.L504
	.long	.L529-.L504
	.long	.L529-.L504
	.long	.L529-.L504
	.long	.L503-.L504
	.text
	.p2align 4,,10
	.p2align 3
.L517:
	cmpl	$64, %eax
	je	.L525
	cmpl	$128, %eax
	je	.L526
	.p2align 4,,10
	.p2align 3
.L529:
	xorl	%edi, %edi
.L499:
	movl	%edi, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L501:
	testq	%r11, %r11
	js	.L513
	pxor	%xmm8, %xmm8
	cvtsi2sdq	%r11, %xmm8
	addq	%r11, %rdx
	js	.L515
.L534:
	pxor	%xmm3, %xmm3
	cvtsi2sdq	%rdx, %xmm3
.L516:
	divsd	%xmm3, %xmm8
	movsd	.LC4(%rip), %xmm6
	subsd	%xmm8, %xmm6
	cmpl	$32, %eax
	ja	.L517
	leaq	.L519(%rip), %rdx
	movl	%eax, %eax
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L519:
	.long	.L529-.L519
	.long	.L524-.L519
	.long	.L523-.L519
	.long	.L529-.L519
	.long	.L522-.L519
	.long	.L529-.L519
	.long	.L529-.L519
	.long	.L529-.L519
	.long	.L521-.L519
	.long	.L529-.L519
	.long	.L529-.L519
	.long	.L529-.L519
	.long	.L529-.L519
	.long	.L529-.L519
	.long	.L529-.L519
	.long	.L529-.L519
	.long	.L520-.L519
	.long	.L529-.L519
	.long	.L529-.L519
	.long	.L529-.L519
	.long	.L529-.L519
	.long	.L529-.L519
	.long	.L529-.L519
	.long	.L529-.L519
	.long	.L529-.L519
	.long	.L529-.L519
	.long	.L529-.L519
	.long	.L529-.L519
	.long	.L529-.L519
	.long	.L529-.L519
	.long	.L529-.L519
	.long	.L529-.L519
	.long	.L518-.L519
	.text
	.p2align 4,,10
	.p2align 3
.L513:
	movq	%r11, %rcx
	movq	%r11, %rsi
	pxor	%xmm8, %xmm8
	shrq	%rcx
	andl	$1, %esi
	orq	%rsi, %rcx
	cvtsi2sdq	%rcx, %xmm8
	addsd	%xmm8, %xmm8
	addq	%r11, %rdx
	jns	.L534
.L515:
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm3, %xmm3
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm3
	addsd	%xmm3, %xmm3
	jmp	.L516
	.p2align 4,,10
	.p2align 3
.L502:
	cmpl	$64, %eax
	je	.L510
	cmpl	$128, %eax
	jne	.L499
	subsd	%xmm11, %xmm0
	subsd	%xmm7, %xmm5
	movsd	.LC3(%rip), %xmm2
	addsd	%xmm2, %xmm0
	addsd	%xmm2, %xmm5
	addsd	%xmm9, %xmm0
	subsd	%xmm5, %xmm1
	movsd	%xmm0, 232(%r10)
	movsd	%xmm1, 224(%r10)
	jmp	.L512
	.p2align 4,,10
	.p2align 3
.L526:
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
	movsd	%xmm2, 232(%r10)
	movsd	232(%r9), %xmm2
	subsd	%xmm0, %xmm2
	movsd	%xmm2, 232(%r9)
	movsd	%xmm1, 224(%r10)
	addsd	224(%r9), %xmm8
	movsd	%xmm8, 224(%r9)
	.p2align 4,,10
	.p2align 3
.L512:
	movl	$1, %edi
	jmp	.L499
.L506:
	subsd	%xmm7, %xmm5
	addsd	.LC3(%rip), %xmm5
	subsd	%xmm5, %xmm1
	movsd	%xmm1, 224(%r10)
	jmp	.L512
.L505:
	subsd	%xmm10, %xmm4
	subsd	%xmm12, %xmm2
	movsd	.LC3(%rip), %xmm0
	movapd	%xmm4, %xmm3
	addsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm3
	subsd	%xmm2, %xmm9
	addsd	%xmm1, %xmm3
	movsd	%xmm9, 232(%r10)
	movsd	%xmm3, 224(%r10)
	jmp	.L512
.L509:
	subsd	%xmm12, %xmm2
	addsd	.LC3(%rip), %xmm2
	subsd	%xmm2, %xmm9
	movsd	%xmm9, 232(%r10)
	jmp	.L512
.L508:
	subsd	%xmm11, %xmm0
	addsd	.LC3(%rip), %xmm0
	addsd	%xmm9, %xmm0
	movsd	%xmm0, 232(%r10)
	jmp	.L512
.L507:
	subsd	%xmm10, %xmm4
	movsd	.LC3(%rip), %xmm3
	addsd	%xmm4, %xmm3
	addsd	%xmm1, %xmm3
	movsd	%xmm3, 224(%r10)
	jmp	.L512
.L503:
	subsd	%xmm12, %xmm2
	subsd	%xmm7, %xmm5
	movsd	.LC3(%rip), %xmm0
	addsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm5
	subsd	%xmm2, %xmm9
	subsd	%xmm5, %xmm1
	movsd	%xmm9, 232(%r10)
	movsd	%xmm1, 224(%r10)
	jmp	.L512
.L518:
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
	movsd	%xmm9, 232(%r10)
	addsd	232(%r9), %xmm2
	movsd	%xmm2, 232(%r9)
.L532:
	subsd	%xmm6, %xmm1
	mulsd	%xmm8, %xmm5
	movsd	%xmm1, 224(%r10)
	addsd	224(%r9), %xmm5
	movsd	%xmm5, 224(%r9)
	jmp	.L512
.L520:
	subsd	%xmm12, %xmm2
	movapd	%xmm6, %xmm0
	movsd	.LC3(%rip), %xmm5
	mulsd	%xmm2, %xmm0
	mulsd	%xmm8, %xmm2
	addsd	%xmm5, %xmm0
	subsd	%xmm0, %xmm9
	movsd	%xmm9, 232(%r10)
	addsd	232(%r9), %xmm2
.L531:
	movsd	%xmm2, 232(%r9)
	subsd	%xmm10, %xmm4
	mulsd	%xmm4, %xmm6
	movapd	%xmm4, %xmm3
	addsd	%xmm5, %xmm6
.L533:
	mulsd	%xmm8, %xmm3
	addsd	%xmm1, %xmm6
	movsd	%xmm6, 224(%r10)
	movsd	224(%r9), %xmm0
	subsd	%xmm3, %xmm0
	movsd	%xmm0, 224(%r9)
	jmp	.L512
.L521:
	subsd	%xmm7, %xmm5
	mulsd	%xmm5, %xmm6
	addsd	.LC3(%rip), %xmm6
	jmp	.L532
.L522:
	subsd	%xmm10, %xmm4
	mulsd	%xmm4, %xmm6
	movapd	%xmm4, %xmm3
	addsd	.LC3(%rip), %xmm6
	jmp	.L533
.L523:
	subsd	%xmm11, %xmm0
	mulsd	%xmm0, %xmm6
	addsd	.LC3(%rip), %xmm6
	mulsd	%xmm8, %xmm0
	addsd	%xmm9, %xmm6
	movsd	%xmm6, 232(%r10)
	movsd	232(%r9), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 232(%r9)
	jmp	.L512
.L524:
	subsd	%xmm12, %xmm2
	mulsd	%xmm2, %xmm6
	addsd	.LC3(%rip), %xmm6
	mulsd	%xmm8, %xmm2
	subsd	%xmm6, %xmm9
	movsd	%xmm9, 232(%r10)
	addsd	232(%r9), %xmm2
	movsd	%xmm2, 232(%r9)
	jmp	.L512
	.p2align 4,,10
	.p2align 3
.L525:
	subsd	%xmm11, %xmm0
	movapd	%xmm6, %xmm2
	movsd	.LC3(%rip), %xmm5
	mulsd	%xmm0, %xmm2
	mulsd	%xmm8, %xmm0
	addsd	%xmm5, %xmm2
	addsd	%xmm9, %xmm2
	movsd	%xmm2, 232(%r10)
	movsd	232(%r9), %xmm2
	subsd	%xmm0, %xmm2
	jmp	.L531
	.p2align 4,,10
	.p2align 3
.L510:
	subsd	%xmm10, %xmm4
	subsd	%xmm11, %xmm0
	movsd	.LC3(%rip), %xmm2
	movapd	%xmm4, %xmm3
	addsd	%xmm2, %xmm0
	addsd	%xmm2, %xmm3
	addsd	%xmm9, %xmm0
	addsd	%xmm1, %xmm3
	movsd	%xmm0, 232(%r10)
	movsd	%xmm3, 224(%r10)
	jmp	.L512
	.cfi_endproc
.LFE8164:
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
.LFB8166:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8166
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
	jne	.L536
	movq	$0, 40(%rsp)
	xorl	%ebx, %ebx
.L539:
	movq	(%rsp), %rax
	movq	(%rax), %r9
	testq	%r9, %r9
	je	.L538
	movq	$0, 8(%rsp)
	movq	8(%rax), %r10
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	jmp	.L545
	.p2align 4,,10
	.p2align 3
.L540:
	addq	$1, %rbx
	cmpq	%r9, %rbx
	jnb	.L578
.L545:
	movq	(%r10,%rbx,8), %rdx
	leaq	0(,%rbx,8), %r15
	cmpq	%r14, %rdx
	je	.L540
	cmpq	%rbp, %rdx
	je	.L540
	movq	%rbp, %rsi
	movq	%r13, %rdi
	call	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	testl	%eax, %eax
	je	.L540
	cmpq	%r12, 32(%rsp)
	je	.L579
.L541:
	cmpq	%r9, %rbx
	jnb	.L580
	movq	(%r10,%r15), %rax
	movq	40(%rsp), %rcx
	leaq	1(%r12), %rdx
	cmpq	32(%rsp), %r12
	jnb	.L581
	addq	$1, %rbx
	movq	%rax, (%rcx,%r12,8)
	movq	184(%rax), %rax
	movq	%rdx, %r12
	addq	%rax, 8(%rsp)
	cmpq	%r9, %rbx
	jb	.L545
	.p2align 4,,10
	.p2align 3
.L578:
	movq	40(%rsp), %rbx
	movq	16(%rsp), %rdi
	cmpq	%rdi, 8(%rsp)
	jnb	.L546
	testq	%r12, %r12
	je	.L538
	movq	32(%rsp), %rax
	movq	8(%rsp), %rsi
	xorl	%r15d, %r15d
	movq	%rax, 24(%rsp)
	movq	16(%rsp), %rax
	subq	%rsi, %rax
	movq	%rax, 16(%rsp)
.L553:
	cmpq	%r15, 24(%rsp)
	je	.L582
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
	jne	.L583
.L552:
	addq	$1, %r15
	cmpq	%r15, %r12
	jne	.L553
.L538:
	movq	%rbx, %rdi
	call	free@PLT
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L584
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
.L546:
	.cfi_restore_state
	testq	%r12, %r12
	je	.L538
	movq	32(%rsp), %r15
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L550:
	cmpq	%r14, %r15
	je	.L585
	movq	(%rbx,%r14,8), %rcx
	xorl	%edx, %edx
	movq	%rbp, %rsi
	movq	%r13, %rdi
	addq	$1, %r14
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	cmpq	%r14, %r12
	jne	.L550
	jmp	.L538
	.p2align 4,,10
	.p2align 3
.L583:
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
	jmp	.L552
	.p2align 4,,10
	.p2align 3
.L579:
	movzwl	8(%r13), %eax
	leaq	32(%rsp), %rdi
	movq	%r12, %rsi
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6InsertEyy.isra.0
.LEHE0:
	movq	(%rsp), %rax
	movq	(%rax), %r9
	movq	8(%rax), %r10
	jmp	.L541
	.p2align 4,,10
	.p2align 3
.L536:
	leaq	0(,%r12,8), %rdi
	call	malloc@PLT
	movq	%rax, 40(%rsp)
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.L539
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
.L585:
	movq	%r15, %rsi
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
.LEHB2:
	call	printf@PLT
.L544:
	movl	$1, %edi
	call	exit@PLT
.L581:
	movq	%r12, %rsi
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L544
.L580:
	movq	%rbx, %rsi
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L544
.L582:
	movq	24(%rsp), %rsi
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE2:
	jmp	.L544
.L584:
	call	__stack_chk_fail@PLT
.L557:
	movq	%rax, %rbx
	jmp	.L554
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8166:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8166-.LLSDACSB8166
.LLSDACSB8166:
	.uleb128 .LEHB0-.LFB8166
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L557-.LFB8166
	.uleb128 0
	.uleb128 .LEHB1-.LFB8166
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB8166
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L557-.LFB8166
	.uleb128 0
.LLSDACSE8166:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8166
	.type	_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_.cold, @function
_ZN3wze6engine9collision18NewCollisionBranchEPN3neo5arrayIPNS0_6actors5actorEEES6_yS6_.cold:
.LFSB8166:
.L554:
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
	jne	.L586
	movq	%rbx, %rdi
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
.L586:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8166:
	.section	.gcc_except_table
.LLSDAC8166:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8166-.LLSDACSBC8166
.LLSDACSBC8166:
	.uleb128 .LEHB3-.LCOLDB6
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSEC8166:
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
.LFB8165:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8165
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
	jne	.L588
	movq	$0, 88(%rsp)
	xorl	%ebx, %ebx
.L589:
	movq	(%rsp), %rax
	movq	24(%rax), %r13
	cmpq	16(%rax), %rbp
	jnb	.L645
	salq	$4, %rbp
	leaq	0(%r13,%rbp), %rax
	movq	(%rax), %r13
	movq	%rax, 24(%rsp)
	testq	%r13, %r13
	je	.L591
	xorl	%ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L611:
	movq	24(%rsp), %rax
	leaq	0(,%rbp,8), %r14
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	movq	$0, 48(%rsp)
	movq	8(%rax), %r10
	.p2align 4,,10
	.p2align 3
.L598:
	cmpq	%rbx, %rbp
	je	.L592
	movq	(%r10,%rbx,8), %rdx
	leaq	0(,%rbx,8), %r15
	cmpq	%r13, %rbp
	jnb	.L645
	movq	(%r10,%r14), %rsi
	movq	(%rsp), %rdi
	call	_ZN3wze6engine9collision21GetCollisionDirectionEPNS0_6actors5actorES4_
	testl	%eax, %eax
	je	.L592
	cmpq	%r12, 80(%rsp)
	je	.L651
.L595:
	cmpq	%r13, %rbx
	jnb	.L648
	movq	(%r10,%r15), %rax
	movq	88(%rsp), %rcx
	leaq	1(%r12), %rdx
	cmpq	80(%rsp), %r12
	jnb	.L652
	movq	%rax, (%rcx,%r12,8)
	movq	184(%rax), %rax
	movq	%rdx, %r12
	addq	%rax, 48(%rsp)
.L592:
	addq	$1, %rbx
	cmpq	%r13, %rbx
	jb	.L598
	cmpq	%r13, %rbp
	jnb	.L645
	movq	(%r10,%r14), %r15
	movq	48(%rsp), %rax
	cmpq	176(%r15), %rax
	jnb	.L600
	testq	%r12, %r12
	je	.L605
	movq	80(%rsp), %rax
	xorl	%ebx, %ebx
	movq	%rax, 64(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 56(%rsp)
	jmp	.L610
	.p2align 4,,10
	.p2align 3
.L608:
	addq	$1, %rbx
	cmpq	%rbx, %r12
	je	.L605
.L610:
	cmpq	%rbx, 64(%rsp)
	je	.L653
	movq	56(%rsp), %rax
	movq	(%rax,%rbx,8), %r8
	movq	24(%rsp), %rax
	movq	184(%r8), %rdx
	movq	8(%rax), %rax
	cmpq	%r13, %rbp
	jnb	.L645
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
	je	.L608
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
	jnb	.L645
	movq	(%rax,%r14), %rsi
	movq	(%rsp), %rdi
	xorl	%edx, %edx
	addq	$1, %rbx
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	cmpq	%rbx, %r12
	jne	.L610
.L605:
	addq	$1, %rbp
	cmpq	%r13, %rbp
	jb	.L611
.L655:
	movq	88(%rsp), %rbx
.L591:
	movq	72(%rsp), %rcx
	movl	290(%rcx), %eax
	movupd	224(%rcx), %xmm3
	movq	%rcx, %rdi
	movl	%eax, 294(%rcx)
	movups	%xmm3, 240(%rcx)
	movaps	%xmm3, (%rsp)
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv@PLT
	movq	24(%rsp), %rax
	xorl	%ebp, %ebp
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L617
	.p2align 4,,10
	.p2align 3
.L612:
	movq	24(%rsp), %rax
	movq	8(%rax), %rax
	movq	(%rax,%rbp,8), %rdi
	movq	72(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L613
	movupd	224(%rdi), %xmm0
	ucomisd	240(%rdi), %xmm0
	jp	.L614
	jne	.L614
	movapd	%xmm0, %xmm2
	unpckhpd	%xmm2, %xmm2
	ucomisd	248(%rdi), %xmm2
	jp	.L614
	je	.L613
.L614:
	movups	%xmm0, 240(%rdi)
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv@PLT
	movq	24(%rsp), %rax
	movq	(%rax), %rdx
.L613:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jb	.L612
.L617:
	movq	%rbx, %rdi
	call	free@PLT
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L654
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
.L651:
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
	jmp	.L595
	.p2align 4,,10
	.p2align 3
.L600:
	testq	%r12, %r12
	je	.L605
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
.L604:
	cmpq	%rbp, %rbx
	je	.L648
	movq	0(%r13,%rbp,8), %rcx
	xorl	%edx, %edx
	movq	%r15, %rsi
	movq	%r14, %rdi
	addq	$1, %rbp
	call	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	cmpq	%rbp, %r12
	jne	.L604
	movq	32(%rsp), %rbp
	movq	40(%rsp), %r13
	addq	$1, %rbp
	cmpq	%r13, %rbp
	jb	.L611
	jmp	.L655
.L645:
	movq	%rbp, %rsi
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE4:
.L594:
	movl	$1, %edi
	call	exit@PLT
.L588:
	leaq	0(,%r12,8), %rdi
	call	malloc@PLT
	movq	%rax, 88(%rsp)
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.L589
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
.L648:
	movq	%rbx, %rsi
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
.LEHB6:
	call	printf@PLT
	jmp	.L594
.L653:
	movq	64(%rsp), %rsi
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L594
.L652:
	movq	%r12, %rsi
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE6:
	jmp	.L594
.L654:
	call	__stack_chk_fail@PLT
.L622:
	movq	%rax, %rbx
	jmp	.L618
	.section	.gcc_except_table
.LLSDA8165:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8165-.LLSDACSB8165
.LLSDACSB8165:
	.uleb128 .LEHB4-.LFB8165
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L622-.LFB8165
	.uleb128 0
	.uleb128 .LEHB5-.LFB8165
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB8165
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L622-.LFB8165
	.uleb128 0
.LLSDACSE8165:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8165
	.type	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE.cold, @function
_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE.cold:
.LFSB8165:
.L618:
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
	jne	.L656
	movq	%rbx, %rdi
.LEHB7:
	call	_Unwind_Resume@PLT
.LEHE7:
.L656:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8165:
	.section	.gcc_except_table
.LLSDAC8165:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8165-.LLSDACSBC8165
.LLSDACSBC8165:
	.uleb128 .LEHB7-.LCOLDB7
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSEC8165:
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
