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
	.globl	_ZN3wze6engine9collision21GetCollisionDirectionEdddddddddddd
	.def	_ZN3wze6engine9collision21GetCollisionDirectionEdddddddddddd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collision21GetCollisionDirectionEdddddddddddd
_ZN3wze6engine9collision21GetCollisionDirectionEdddddddddddd:
.LFB8436:
	subq	$56, %rsp
	.seh_stackalloc	56
	movaps	%xmm6, (%rsp)
	.seh_savexmm	%xmm6, 0
	movaps	%xmm7, 16(%rsp)
	.seh_savexmm	%xmm7, 16
	movaps	%xmm8, 32(%rsp)
	.seh_savexmm	%xmm8, 32
	.seh_endprologue
	movsd	136(%rsp), %xmm0
	movsd	96(%rsp), %xmm7
	movsd	144(%rsp), %xmm6
	movsd	152(%rsp), %xmm4
	movsd	160(%rsp), %xmm5
	comisd	%xmm3, %xmm0
	ja	.L136
	comisd	%xmm4, %xmm1
	ja	.L136
	comisd	%xmm2, %xmm5
	ja	.L136
	comisd	%xmm6, %xmm7
	ja	.L136
	comisd	%xmm1, %xmm4
	jb	.L137
	comisd	%xmm4, %xmm3
	jnb	.L139
	comisd	%xmm0, %xmm1
	jnb	.L140
	comisd	%xmm1, %xmm0
	jnb	.L141
	comisd	%xmm0, %xmm3
	jnb	.L142
	.p2align 4,,10
	.p2align 3
.L143:
	comisd	%xmm1, %xmm4
	jnb	.L157
.L174:
	comisd	%xmm0, %xmm1
	jnb	.L162
.L190:
	comisd	%xmm1, %xmm0
	jnb	.L163
.L184:
	comisd	%xmm0, %xmm3
	jb	.L136
.L196:
	comisd	%xmm3, %xmm4
	jb	.L136
.L177:
	comisd	%xmm5, %xmm7
	jb	.L136
	xorl	%eax, %eax
	comisd	%xmm7, %xmm6
	jnb	.L135
	.p2align 4,,10
	.p2align 3
.L136:
	xorl	%eax, %eax
	comisd	120(%rsp), %xmm0
	ja	.L135
	movsd	104(%rsp), %xmm8
	comisd	%xmm4, %xmm8
	ja	.L135
	comisd	112(%rsp), %xmm5
	ja	.L135
	movsd	128(%rsp), %xmm8
	comisd	%xmm6, %xmm8
	ja	.L135
	comisd	104(%rsp), %xmm4
	jb	.L406
	movsd	120(%rsp), %xmm8
	comisd	%xmm4, %xmm8
	jnb	.L204
	movsd	104(%rsp), %xmm8
	comisd	%xmm0, %xmm8
	jnb	.L205
	comisd	%xmm8, %xmm0
	jnb	.L206
	movsd	120(%rsp), %xmm8
	comisd	%xmm0, %xmm8
	jb	.L208
	movsd	112(%rsp), %xmm8
	comisd	%xmm5, %xmm8
	jnb	.L314
	movsd	128(%rsp), %xmm8
	comisd	%xmm5, %xmm8
	jb	.L252
	.p2align 4,,10
	.p2align 3
.L218:
	comisd	128(%rsp), %xmm6
	jnb	.L211
	.p2align 4,,10
	.p2align 3
.L255:
	comisd	104(%rsp), %xmm0
	jnb	.L227
.L219:
	movsd	120(%rsp), %xmm8
	comisd	%xmm0, %xmm8
	jb	.L368
.L261:
	comisd	120(%rsp), %xmm4
	jnb	.L243
.L368:
	xorl	%eax, %eax
.L135:
	movaps	(%rsp), %xmm6
	movaps	16(%rsp), %xmm7
	movaps	32(%rsp), %xmm8
	addq	$56, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L155:
	xorl	%eax, %eax
	comisd	%xmm2, %xmm6
	jnb	.L135
	.p2align 4,,10
	.p2align 3
.L137:
	comisd	%xmm1, %xmm0
	jnb	.L141
.L153:
	comisd	%xmm0, %xmm3
	jb	.L143
.L156:
	comisd	%xmm3, %xmm4
	jnb	.L142
	comisd	%xmm1, %xmm4
	jb	.L174
	jmp	.L161
	.p2align 4,,10
	.p2align 3
.L141:
	comisd	%xmm0, %xmm3
	jnb	.L150
	comisd	%xmm1, %xmm4
	jnb	.L157
.L430:
	comisd	%xmm0, %xmm1
	jb	.L163
.L162:
	comisd	%xmm1, %xmm4
	jb	.L190
	.p2align 4,,10
	.p2align 3
.L176:
	comisd	%xmm5, %xmm7
	jb	.L190
.L310:
	comisd	%xmm7, %xmm6
	jb	.L190
	xorl	%eax, %eax
	jmp	.L135
	.p2align 4,,10
	.p2align 3
.L406:
	comisd	104(%rsp), %xmm0
	jnb	.L206
	movsd	120(%rsp), %xmm8
	comisd	%xmm0, %xmm8
	jnb	.L220
	comisd	104(%rsp), %xmm4
	jnb	.L208
.L240:
	movsd	104(%rsp), %xmm8
	comisd	%xmm0, %xmm8
	jb	.L255
.L226:
	comisd	104(%rsp), %xmm4
	jb	.L255
	.p2align 4,,10
	.p2align 3
.L242:
	movsd	128(%rsp), %xmm8
	comisd	%xmm5, %xmm8
	jb	.L255
	jmp	.L218
	.p2align 4,,10
	.p2align 3
.L206:
	movsd	120(%rsp), %xmm8
	comisd	%xmm0, %xmm8
	jb	.L409
.L214:
	comisd	128(%rsp), %xmm5
	jnb	.L212
.L220:
	comisd	120(%rsp), %xmm4
	jnb	.L316
	comisd	104(%rsp), %xmm4
	jb	.L240
.L239:
	comisd	128(%rsp), %xmm6
	jnb	.L249
.L238:
	movsd	104(%rsp), %xmm8
	comisd	%xmm0, %xmm8
	jnb	.L242
	comisd	%xmm8, %xmm0
	jb	.L219
	.p2align 4,,10
	.p2align 3
.L227:
	movsd	120(%rsp), %xmm8
	comisd	%xmm0, %xmm8
	jb	.L368
.L252:
	comisd	128(%rsp), %xmm6
	jb	.L261
	movsd	112(%rsp), %xmm8
	comisd	%xmm6, %xmm8
	jnb	.L211
	comisd	120(%rsp), %xmm4
	jb	.L368
	movsd	128(%rsp), %xmm8
	comisd	%xmm5, %xmm8
	jb	.L368
	.p2align 4,,10
	.p2align 3
.L211:
	comisd	%xmm0, %xmm1
	jb	.L420
	comisd	%xmm3, %xmm4
	jnb	.L270
	ucomisd	%xmm0, %xmm1
	jp	.L389
	je	.L271
.L389:
	comisd	%xmm5, %xmm7
	jnb	.L273
	comisd	%xmm7, %xmm5
	jb	.L275
	comisd	%xmm6, %xmm2
	jnb	.L280
	comisd	%xmm2, %xmm6
	ja	.L289
.L433:
	comisd	%xmm3, %xmm4
	jbe	.L368
	.p2align 4,,10
	.p2align 3
.L281:
	comisd	%xmm2, %xmm6
	ja	.L292
	comisd	%xmm0, %xmm1
	ja	.L293
.L296:
	comisd	%xmm5, %xmm7
	jbe	.L368
	comisd	%xmm0, %xmm3
	movl	$2, %eax
	jnb	.L135
	comisd	%xmm7, %xmm6
	movl	$8, %eax
	jnb	.L135
	movsd	120(%rsp), %xmm1
	movl	$2, %eax
	subsd	128(%rsp), %xmm6
	subsd	%xmm0, %xmm1
	comisd	%xmm6, %xmm1
	ja	.L135
	comisd	%xmm1, %xmm6
	movl	$8, %eax
	movl	$128, %edx
	cmovbe	%edx, %eax
	jmp	.L135
	.p2align 4,,10
	.p2align 3
.L139:
	comisd	%xmm7, %xmm5
	jb	.L398
	xorl	%eax, %eax
	comisd	%xmm5, %xmm2
	jnb	.L135
	comisd	%xmm0, %xmm1
	jnb	.L147
	comisd	%xmm1, %xmm0
	jnb	.L148
.L149:
	comisd	%xmm0, %xmm3
	jnb	.L440
	comisd	%xmm7, %xmm6
	jnb	.L183
	comisd	%xmm0, %xmm1
	jnb	.L176
	comisd	%xmm1, %xmm0
	jnb	.L136
	jmp	.L184
	.p2align 4,,10
	.p2align 3
.L398:
	comisd	%xmm0, %xmm1
	jnb	.L147
	comisd	%xmm1, %xmm0
	jb	.L149
	.p2align 4,,10
	.p2align 3
.L150:
	comisd	%xmm7, %xmm5
	jnb	.L148
	comisd	%xmm3, %xmm4
	jnb	.L142
	comisd	%xmm1, %xmm4
	jb	.L430
.L161:
	comisd	%xmm7, %xmm6
	jb	.L173
.L183:
	xorl	%eax, %eax
	comisd	%xmm6, %xmm2
	jnb	.L135
	comisd	%xmm0, %xmm1
	jb	.L441
.L180:
	xorl	%eax, %eax
	comisd	%xmm5, %xmm7
	jnb	.L135
	jmp	.L190
	.p2align 4,,10
	.p2align 3
.L204:
	comisd	128(%rsp), %xmm5
	jb	.L407
	movsd	112(%rsp), %xmm8
	comisd	%xmm5, %xmm8
	jnb	.L211
	movsd	104(%rsp), %xmm8
	comisd	%xmm0, %xmm8
	jnb	.L205
	comisd	%xmm8, %xmm0
	jnb	.L212
.L213:
	movsd	120(%rsp), %xmm8
	comisd	%xmm0, %xmm8
	jnb	.L442
	comisd	128(%rsp), %xmm6
	jnb	.L249
	movsd	104(%rsp), %xmm8
	comisd	%xmm0, %xmm8
	jnb	.L242
	xorl	%eax, %eax
	comisd	%xmm8, %xmm0
	jnb	.L135
	jmp	.L219
	.p2align 4,,10
	.p2align 3
.L409:
	comisd	104(%rsp), %xmm4
	jnb	.L208
	movsd	104(%rsp), %xmm8
	comisd	%xmm0, %xmm8
	jnb	.L226
	jmp	.L227
	.p2align 4,,10
	.p2align 3
.L142:
	comisd	%xmm5, %xmm2
	jb	.L403
.L318:
	xorl	%eax, %eax
	comisd	%xmm2, %xmm6
	jnb	.L135
	comisd	%xmm1, %xmm4
	jb	.L169
	ucomisd	%xmm4, %xmm3
	jp	.L171
	jne	.L171
	comisd	%xmm7, %xmm6
	jnb	.L135
	.p2align 4,,10
	.p2align 3
.L173:
	comisd	%xmm0, %xmm1
	jb	.L190
	jmp	.L176
	.p2align 4,,10
	.p2align 3
.L215:
	comisd	112(%rsp), %xmm6
	jnb	.L211
	comisd	104(%rsp), %xmm0
	jnb	.L206
	movsd	120(%rsp), %xmm8
	comisd	%xmm0, %xmm8
	jnb	.L220
	.p2align 4,,10
	.p2align 3
.L208:
	movsd	120(%rsp), %xmm8
	comisd	%xmm4, %xmm8
	jnb	.L239
.L236:
	movsd	104(%rsp), %xmm8
	comisd	%xmm0, %xmm8
	jnb	.L242
	comisd	%xmm8, %xmm0
	jnb	.L227
	movsd	120(%rsp), %xmm8
	comisd	%xmm0, %xmm8
	jb	.L368
	.p2align 4,,10
	.p2align 3
.L243:
	movsd	128(%rsp), %xmm8
	comisd	%xmm5, %xmm8
	jb	.L368
	comisd	%xmm8, %xmm6
	jnb	.L211
	xorl	%eax, %eax
	jmp	.L135
	.p2align 4,,10
	.p2align 3
.L420:
	comisd	%xmm1, %xmm0
	jb	.L276
.L271:
	comisd	%xmm4, %xmm3
	jnb	.L270
	comisd	%xmm5, %xmm7
	jnb	.L273
	comisd	%xmm7, %xmm5
	jb	.L278
	comisd	%xmm6, %xmm2
	jnb	.L280
	comisd	%xmm0, %xmm1
	jbe	.L433
.L275:
	comisd	%xmm2, %xmm6
	ja	.L289
	comisd	%xmm3, %xmm4
	ja	.L281
	.p2align 4,,10
	.p2align 3
.L290:
	comisd	%xmm5, %xmm7
	jbe	.L282
.L298:
	comisd	%xmm1, %xmm4
	movl	$2, %eax
	jnb	.L135
	comisd	%xmm7, %xmm6
	movl	$4, %eax
	jnb	.L135
	subsd	104(%rsp), %xmm4
	movl	$2, %eax
	subsd	128(%rsp), %xmm6
	comisd	%xmm6, %xmm4
	ja	.L135
	comisd	%xmm4, %xmm6
	movl	$4, %eax
	movl	$64, %edx
	cmovbe	%edx, %eax
	jmp	.L135
	.p2align 4,,10
	.p2align 3
.L270:
	comisd	%xmm2, %xmm5
	movl	$1, %eax
	ja	.L135
	comisd	%xmm6, %xmm7
	movl	$2, %eax
	ja	.L135
.L276:
	comisd	%xmm5, %xmm7
	jb	.L283
.L273:
	comisd	%xmm2, %xmm6
	jb	.L283
.L280:
	comisd	%xmm4, %xmm1
	movl	$4, %eax
	ja	.L135
	comisd	%xmm3, %xmm0
	movl	$8, %eax
	ja	.L135
.L285:
	comisd	%xmm0, %xmm1
	jbe	.L278
	comisd	%xmm2, %xmm6
	ja	.L289
	comisd	%xmm3, %xmm4
	jbe	.L290
	comisd	%xmm2, %xmm6
	ja	.L292
.L293:
	comisd	%xmm5, %xmm7
	ja	.L298
	xorl	%eax, %eax
	jmp	.L135
	.p2align 4,,10
	.p2align 3
.L283:
	comisd	%xmm7, %xmm5
	jb	.L285
	comisd	%xmm6, %xmm2
	jb	.L285
	jmp	.L280
	.p2align 4,,10
	.p2align 3
.L278:
	comisd	%xmm3, %xmm4
	ja	.L281
	comisd	%xmm0, %xmm1
	ja	.L290
.L282:
	comisd	%xmm3, %xmm4
	ja	.L296
	xorl	%eax, %eax
	jmp	.L135
	.p2align 4,,10
	.p2align 3
.L289:
	comisd	%xmm1, %xmm4
	movl	$1, %eax
	jnb	.L135
	comisd	%xmm5, %xmm2
	movl	$4, %eax
	jnb	.L135
	movsd	112(%rsp), %xmm0
	subsd	104(%rsp), %xmm4
	movl	$1, %eax
	subsd	%xmm5, %xmm0
	comisd	%xmm0, %xmm4
	ja	.L135
	comisd	%xmm4, %xmm0
	movl	$4, %eax
	movl	$16, %edx
	cmovbe	%edx, %eax
	jmp	.L135
.L404:
	comisd	%xmm0, %xmm1
	jnb	.L176
	.p2align 4,,10
	.p2align 3
.L163:
	comisd	%xmm0, %xmm3
	jb	.L136
.L187:
	comisd	%xmm7, %xmm6
	jb	.L196
	xorl	%eax, %eax
	comisd	%xmm6, %xmm2
	jnb	.L135
	comisd	%xmm3, %xmm4
	jb	.L136
	comisd	%xmm5, %xmm7
	jnb	.L135
	jmp	.L136
	.p2align 4,,10
	.p2align 3
.L292:
	comisd	%xmm0, %xmm3
	movl	$1, %eax
	jnb	.L135
	comisd	%xmm5, %xmm2
	movl	$8, %eax
	jnb	.L135
	movsd	120(%rsp), %xmm1
	movl	$1, %eax
	subsd	%xmm0, %xmm1
	movsd	112(%rsp), %xmm0
	subsd	%xmm5, %xmm0
	comisd	%xmm0, %xmm1
	ja	.L135
	comisd	%xmm1, %xmm0
	movl	$8, %eax
	movl	$32, %edx
	cmovbe	%edx, %eax
	jmp	.L135
	.p2align 4,,10
	.p2align 3
.L140:
	comisd	%xmm5, %xmm2
	jnb	.L155
	comisd	%xmm1, %xmm0
	jnb	.L141
	comisd	%xmm0, %xmm3
	jnb	.L156
	.p2align 4,,10
	.p2align 3
.L157:
	comisd	%xmm4, %xmm3
	jnb	.L161
.L171:
	comisd	%xmm0, %xmm1
	jnb	.L176
	comisd	%xmm1, %xmm0
	jnb	.L163
	comisd	%xmm0, %xmm3
	jnb	.L177
	jmp	.L136
	.p2align 4,,10
	.p2align 3
.L205:
	movsd	112(%rsp), %xmm8
	comisd	%xmm5, %xmm8
	jnb	.L215
	comisd	104(%rsp), %xmm0
	jnb	.L206
	movsd	120(%rsp), %xmm8
	comisd	%xmm0, %xmm8
	jnb	.L216
	comisd	%xmm4, %xmm8
	jnb	.L424
	movsd	128(%rsp), %xmm8
	comisd	%xmm5, %xmm8
	jnb	.L218
	jmp	.L219
	.p2align 4,,10
	.p2align 3
.L316:
	movsd	112(%rsp), %xmm8
	comisd	%xmm5, %xmm8
	jnb	.L314
	comisd	104(%rsp), %xmm4
	jnb	.L208
.L234:
	comisd	104(%rsp), %xmm0
	jb	.L219
	jmp	.L252
	.p2align 4,,10
	.p2align 3
.L148:
	xorl	%eax, %eax
	comisd	%xmm5, %xmm2
	jb	.L156
	jmp	.L135
	.p2align 4,,10
	.p2align 3
.L403:
	comisd	%xmm1, %xmm4
	jnb	.L157
.L169:
	comisd	%xmm1, %xmm0
	jnb	.L187
	jmp	.L184
	.p2align 4,,10
	.p2align 3
.L407:
	movsd	104(%rsp), %xmm8
	comisd	%xmm0, %xmm8
	jnb	.L205
	comisd	%xmm8, %xmm0
	jnb	.L214
	jmp	.L213
	.p2align 4,,10
	.p2align 3
.L147:
	comisd	%xmm5, %xmm2
	jb	.L399
	xorl	%eax, %eax
	comisd	%xmm2, %xmm6
	jnb	.L135
	comisd	%xmm1, %xmm0
	jnb	.L150
	jmp	.L153
	.p2align 4,,10
	.p2align 3
.L212:
	movsd	112(%rsp), %xmm8
	comisd	%xmm5, %xmm8
	jb	.L220
	jmp	.L211
	.p2align 4,,10
	.p2align 3
.L314:
	comisd	112(%rsp), %xmm6
	jnb	.L211
	comisd	104(%rsp), %xmm4
	jb	.L234
	movsd	120(%rsp), %xmm8
	comisd	%xmm4, %xmm8
	jb	.L236
	comisd	128(%rsp), %xmm6
	jnb	.L211
	jmp	.L238
.L443:
	movsd	112(%rsp), %xmm8
	comisd	%xmm5, %xmm8
	jnb	.L314
	movsd	120(%rsp), %xmm8
	comisd	%xmm4, %xmm8
	jb	.L242
	comisd	128(%rsp), %xmm6
	jb	.L242
	.p2align 4,,10
	.p2align 3
.L249:
	movsd	112(%rsp), %xmm8
	comisd	%xmm6, %xmm8
	jnb	.L211
	movsd	104(%rsp), %xmm8
	comisd	%xmm0, %xmm8
	jnb	.L246
	comisd	104(%rsp), %xmm0
	jb	.L219
.L247:
	movsd	112(%rsp), %xmm8
	comisd	%xmm6, %xmm8
	jb	.L261
	jmp	.L211
	.p2align 4,,10
	.p2align 3
.L399:
	comisd	%xmm1, %xmm0
	jnb	.L150
	ucomisd	%xmm4, %xmm3
	jp	.L395
	je	.L307
.L395:
	comisd	%xmm7, %xmm6
	jnb	.L309
	comisd	%xmm5, %xmm7
	jnb	.L310
	jmp	.L184
	.p2align 4,,10
	.p2align 3
.L441:
	comisd	%xmm1, %xmm0
	jb	.L184
.L181:
	xorl	%eax, %eax
	comisd	%xmm6, %xmm2
	jb	.L196
	jmp	.L135
.L216:
	comisd	120(%rsp), %xmm4
	jnb	.L443
.L424:
	comisd	128(%rsp), %xmm6
	jb	.L242
	movsd	112(%rsp), %xmm8
	comisd	%xmm6, %xmm8
	jnb	.L211
.L246:
	movsd	128(%rsp), %xmm8
	comisd	%xmm5, %xmm8
	jnb	.L211
	jmp	.L255
.L440:
	comisd	%xmm3, %xmm4
	jnb	.L142
	comisd	%xmm7, %xmm6
	jb	.L404
	comisd	%xmm6, %xmm2
	jnb	.L368
	comisd	%xmm0, %xmm1
	jnb	.L180
	jmp	.L181
.L442:
	comisd	120(%rsp), %xmm4
	jnb	.L316
	comisd	128(%rsp), %xmm6
	jb	.L413
	movsd	112(%rsp), %xmm8
	comisd	%xmm6, %xmm8
	jnb	.L211
	movsd	104(%rsp), %xmm8
	comisd	%xmm0, %xmm8
	jnb	.L246
	jmp	.L247
.L307:
	comisd	%xmm5, %xmm2
	jnb	.L318
	comisd	%xmm7, %xmm6
	jb	.L176
.L309:
	comisd	%xmm6, %xmm2
	jb	.L180
	xorl	%eax, %eax
	jmp	.L135
.L413:
	movsd	104(%rsp), %xmm8
	comisd	%xmm0, %xmm8
	jb	.L227
	jmp	.L242
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
	.def	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_
_ZN3wze6engine9collision16ResolveCollisionEPNS0_6actors5actorEyS4_:
.LFB8437:
	subq	$280, %rsp
	.seh_stackalloc	280
	movaps	%xmm6, 112(%rsp)
	.seh_savexmm	%xmm6, 112
	movaps	%xmm7, 128(%rsp)
	.seh_savexmm	%xmm7, 128
	movaps	%xmm8, 144(%rsp)
	.seh_savexmm	%xmm8, 144
	movaps	%xmm9, 160(%rsp)
	.seh_savexmm	%xmm9, 160
	movaps	%xmm10, 176(%rsp)
	.seh_savexmm	%xmm10, 176
	movaps	%xmm11, 192(%rsp)
	.seh_savexmm	%xmm11, 192
	movaps	%xmm12, 208(%rsp)
	.seh_savexmm	%xmm12, 208
	movaps	%xmm13, 224(%rsp)
	.seh_savexmm	%xmm13, 224
	movaps	%xmm14, 240(%rsp)
	.seh_savexmm	%xmm14, 240
	movaps	%xmm15, 256(%rsp)
	.seh_savexmm	%xmm15, 256
	.seh_endprologue
	pxor	%xmm0, %xmm0
	pxor	%xmm9, %xmm9
	pxor	%xmm1, %xmm1
	pxor	%xmm8, %xmm8
	movsd	168(%r9), %xmm6
	movsd	184(%rdx), %xmm7
	movsd	192(%rdx), %xmm10
	movapd	%xmm7, %xmm12
	movapd	%xmm10, %xmm13
	movq	%rcx, %r10
	movzwl	234(%r9), %ecx
	movl	%ecx, %eax
	cvtsi2sdl	%ecx, %xmm8
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	movzwl	236(%r9), %eax
	movl	%eax, %r11d
	shrw	%r11w
	subsd	%xmm0, %xmm6
	pxor	%xmm0, %xmm0
	movzwl	%r11w, %r11d
	cvtsi2sdl	%eax, %xmm0
	movzwl	240(%rdx), %eax
	cvtsi2sdl	%r11d, %xmm9
	addsd	176(%r9), %xmm9
	shrw	%ax
	addsd	%xmm6, %xmm8
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm1
	movzwl	238(%rdx), %eax
	movapd	%xmm9, %xmm11
	subsd	%xmm0, %xmm11
	pxor	%xmm0, %xmm0
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	%xmm1, %xmm13
	addsd	%xmm1, %xmm10
	addsd	%xmm0, %xmm12
	subsd	%xmm0, %xmm7
	comisd	%xmm12, %xmm6
	ja	.L445
	comisd	%xmm8, %xmm7
	ja	.L445
	comisd	%xmm10, %xmm11
	ja	.L445
	comisd	%xmm9, %xmm13
	ja	.L445
	comisd	%xmm7, %xmm8
	jb	.L757
	comisd	%xmm8, %xmm12
	jb	.L867
	comisd	%xmm13, %xmm11
	jb	.L759
	xorl	%eax, %eax
	comisd	%xmm11, %xmm10
	jnb	.L444
	comisd	%xmm6, %xmm7
	jnb	.L457
	comisd	%xmm11, %xmm10
	jnb	.L444
.L805:
	comisd	%xmm12, %xmm8
	jnb	.L453
	.p2align 4,,10
	.p2align 3
.L458:
	comisd	%xmm13, %xmm9
	jb	.L765
.L709:
	xorl	%eax, %eax
	comisd	%xmm9, %xmm10
	jnb	.L444
	comisd	%xmm6, %xmm7
	jnb	.L490
.L493:
	xorl	%eax, %eax
	comisd	%xmm9, %xmm10
	jb	.L482
.L444:
	movaps	112(%rsp), %xmm6
	movaps	128(%rsp), %xmm7
	movaps	144(%rsp), %xmm8
	movaps	160(%rsp), %xmm9
	movaps	176(%rsp), %xmm10
	movaps	192(%rsp), %xmm11
	movaps	208(%rsp), %xmm12
	movaps	224(%rsp), %xmm13
	movaps	240(%rsp), %xmm14
	movaps	256(%rsp), %xmm15
	addq	$280, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L765:
	comisd	%xmm6, %xmm7
	jb	.L479
.L494:
	ucomisd	%xmm6, %xmm7
	jp	.L482
	jne	.L482
	.p2align 4,,10
	.p2align 3
.L473:
	comisd	%xmm6, %xmm12
	jnb	.L479
	.p2align 4,,10
	.p2align 3
.L445:
	movzwl	234(%rdx), %ecx
	pxor	%xmm2, %xmm2
	movsd	168(%rdx), %xmm14
	pxor	%xmm3, %xmm3
	movupd	168(%rdx), %xmm0
	movsd	%xmm11, 64(%rsp)
	movl	%ecx, %eax
	cvtsi2sdl	%ecx, %xmm3
	movapd	%xmm14, %xmm1
	movsd	%xmm8, 56(%rsp)
	shrw	%ax
	movapd	%xmm0, %xmm5
	movsd	%xmm6, 40(%rsp)
	movq	%r10, %rcx
	movzwl	%ax, %eax
	unpckhpd	%xmm5, %xmm5
	movaps	%xmm0, 96(%rsp)
	cvtsi2sdl	%eax, %xmm2
	movzwl	236(%rdx), %eax
	movapd	%xmm5, %xmm15
	movsd	%xmm9, 48(%rsp)
	movl	%eax, %r11d
	shrw	%r11w
	subsd	%xmm2, %xmm1
	movzwl	%r11w, %r11d
	pxor	%xmm2, %xmm2
	cvtsi2sdl	%r11d, %xmm2
	addsd	%xmm1, %xmm3
	addsd	%xmm5, %xmm2
	pxor	%xmm5, %xmm5
	cvtsi2sdl	%eax, %xmm5
	movapd	%xmm2, %xmm4
	subsd	%xmm5, %xmm4
	movsd	%xmm4, 32(%rsp)
	movsd	%xmm4, 88(%rsp)
	call	_ZN3wze6engine9collision14CheckCollisionEdddddddd
	testb	%al, %al
	je	.L444
	comisd	%xmm6, %xmm7
	movsd	88(%rsp), %xmm4
	movapd	96(%rsp), %xmm0
	jb	.L767
	comisd	%xmm12, %xmm8
	jnb	.L506
	ucomisd	%xmm6, %xmm7
	jp	.L735
	je	.L507
.L735:
	comisd	%xmm11, %xmm13
	jb	.L868
	.p2align 4,,10
	.p2align 3
.L509:
	comisd	%xmm10, %xmm9
	jb	.L523
.L516:
	comisd	%xmm8, %xmm7
	ja	.L528
	comisd	%xmm12, %xmm6
	ja	.L869
	comisd	%xmm6, %xmm7
	jbe	.L870
	comisd	%xmm10, %xmm9
	ja	.L540
	comisd	%xmm12, %xmm8
	jbe	.L541
.L536:
	comisd	%xmm6, %xmm7
	ja	.L544
.L555:
	comisd	%xmm11, %xmm13
	jbe	.L725
	comisd	%xmm6, %xmm12
	movq	144(%rdx), %rcx
	jnb	.L571
	comisd	%xmm13, %xmm9
	subsd	%xmm6, %xmm3
	jnb	.L588
	subsd	%xmm4, %xmm9
	movapd	%xmm3, %xmm1
	comisd	%xmm9, %xmm3
	unpcklpd	%xmm9, %xmm1
	ja	.L575
	comisd	%xmm3, %xmm9
	ja	.L588
	cmpq	%r8, %rcx
	jb	.L871
	movsd	.LC1(%rip), %xmm2
	unpcklpd	%xmm2, %xmm2
	addpd	%xmm2, %xmm1
	movapd	%xmm0, %xmm2
	subpd	%xmm1, %xmm2
	addpd	%xmm0, %xmm1
	movsd	%xmm2, %xmm1
	movups	%xmm1, 168(%rdx)
	jmp	.L444
	.p2align 4,,10
	.p2align 3
.L767:
	comisd	%xmm7, %xmm6
	jb	.L512
.L507:
	comisd	%xmm8, %xmm12
	jnb	.L506
	comisd	%xmm11, %xmm13
	jnb	.L509
	comisd	%xmm13, %xmm11
	jb	.L514
	comisd	%xmm9, %xmm10
	jnb	.L516
	comisd	%xmm6, %xmm7
	ja	.L511
.L807:
	comisd	%xmm12, %xmm8
	jbe	.L725
	.p2align 4,,10
	.p2align 3
.L517:
	comisd	%xmm10, %xmm9
	jbe	.L536
.L543:
	comisd	%xmm6, %xmm12
	movq	144(%rdx), %rcx
	jnb	.L545
	comisd	%xmm11, %xmm10
	subsd	%xmm6, %xmm3
	jnb	.L588
	subsd	%xmm11, %xmm2
	movapd	%xmm3, %xmm1
	comisd	%xmm2, %xmm3
	unpcklpd	%xmm2, %xmm1
	ja	.L550
	comisd	%xmm3, %xmm2
	ja	.L588
	cmpq	%r8, %rcx
	jb	.L872
	movsd	.LC1(%rip), %xmm2
	unpcklpd	%xmm2, %xmm2
	addpd	%xmm2, %xmm1
	subpd	%xmm1, %xmm0
	movups	%xmm0, 168(%rdx)
	jmp	.L444
	.p2align 4,,10
	.p2align 3
.L506:
	comisd	%xmm10, %xmm11
	ja	.L519
	comisd	%xmm9, %xmm13
	ja	.L873
.L512:
	comisd	%xmm11, %xmm13
	jnb	.L509
.L523:
	comisd	%xmm13, %xmm11
	jb	.L525
	comisd	%xmm9, %xmm10
	jnb	.L516
.L525:
	comisd	%xmm6, %xmm7
	jbe	.L514
	comisd	%xmm10, %xmm9
	ja	.L540
	comisd	%xmm12, %xmm8
	jbe	.L541
	comisd	%xmm10, %xmm9
	ja	.L543
.L544:
	comisd	%xmm11, %xmm13
	jbe	.L725
.L557:
	comisd	%xmm7, %xmm8
	movq	144(%rdx), %rcx
	jnb	.L571
	comisd	%xmm13, %xmm9
	subsd	%xmm1, %xmm8
	jnb	.L859
	subsd	%xmm4, %xmm9
	movapd	%xmm8, %xmm1
	comisd	%xmm9, %xmm8
	unpcklpd	%xmm9, %xmm1
	ja	.L575
	comisd	%xmm8, %xmm9
	ja	.L859
	cmpq	%r8, %rcx
	jb	.L874
	movsd	.LC1(%rip), %xmm2
	unpcklpd	%xmm2, %xmm2
	addpd	%xmm2, %xmm1
	addpd	%xmm1, %xmm0
	movups	%xmm0, 168(%rdx)
	jmp	.L444
	.p2align 4,,10
	.p2align 3
.L868:
	comisd	%xmm13, %xmm11
	jb	.L511
	comisd	%xmm9, %xmm10
	jnb	.L516
	comisd	%xmm10, %xmm9
	jbe	.L807
	.p2align 4,,10
	.p2align 3
.L540:
	comisd	%xmm7, %xmm8
	movq	144(%rdx), %rcx
	jnb	.L545
	comisd	%xmm11, %xmm10
	subsd	%xmm1, %xmm8
	jnb	.L859
	subsd	%xmm11, %xmm2
	movapd	%xmm8, %xmm1
	comisd	%xmm2, %xmm8
	unpcklpd	%xmm2, %xmm1
	ja	.L550
	comisd	%xmm8, %xmm2
	ja	.L859
	cmpq	%r8, %rcx
	jb	.L875
	movsd	.LC1(%rip), %xmm2
	unpcklpd	%xmm2, %xmm2
	addpd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	addpd	%xmm0, %xmm2
	subpd	%xmm1, %xmm0
	movsd	%xmm2, %xmm0
	movups	%xmm0, 168(%rdx)
	jmp	.L444
	.p2align 4,,10
	.p2align 3
.L757:
	comisd	%xmm7, %xmm6
	jnb	.L466
.L462:
	comisd	%xmm6, %xmm12
	jnb	.L467
	comisd	%xmm7, %xmm8
	jnb	.L468
.L488:
	comisd	%xmm6, %xmm7
	jb	.L495
	jmp	.L472
	.p2align 4,,10
	.p2align 3
.L466:
	comisd	%xmm6, %xmm12
	jb	.L758
.L461:
	comisd	%xmm13, %xmm11
	jb	.L467
.L452:
	xorl	%eax, %eax
	comisd	%xmm11, %xmm10
	jnb	.L444
.L467:
	comisd	%xmm12, %xmm8
	jnb	.L453
	comisd	%xmm7, %xmm8
	jb	.L488
	jmp	.L458
	.p2align 4,,10
	.p2align 3
.L514:
	comisd	%xmm12, %xmm8
	ja	.L517
.L534:
	comisd	%xmm6, %xmm7
	ja	.L541
.L518:
	comisd	%xmm12, %xmm8
	ja	.L555
.L725:
	xorl	%eax, %eax
	jmp	.L444
	.p2align 4,,10
	.p2align 3
.L511:
	comisd	%xmm10, %xmm9
	ja	.L540
	comisd	%xmm12, %xmm8
	ja	.L517
	.p2align 4,,10
	.p2align 3
.L541:
	comisd	%xmm11, %xmm13
	ja	.L557
	jmp	.L518
	.p2align 4,,10
	.p2align 3
.L867:
	comisd	%xmm6, %xmm7
	jnb	.L449
	comisd	%xmm6, %xmm12
	jnb	.L876
.L758:
	comisd	%xmm7, %xmm8
	jnb	.L468
	comisd	%xmm6, %xmm7
	jb	.L473
.L472:
	comisd	%xmm7, %xmm8
	jnb	.L490
.L495:
	comisd	%xmm7, %xmm6
	jnb	.L473
	comisd	%xmm6, %xmm12
	jb	.L445
.L482:
	comisd	%xmm12, %xmm8
	jb	.L445
.L480:
	xorl	%eax, %eax
	comisd	%xmm11, %xmm13
	jnb	.L444
	jmp	.L445
	.p2align 4,,10
	.p2align 3
.L870:
	comisd	%xmm12, %xmm8
	jbe	.L534
	comisd	%xmm10, %xmm9
	jbe	.L536
	movq	144(%rdx), %rcx
.L545:
	subsd	%xmm11, %xmm2
.L550:
	cmpq	%r8, %rcx
	jb	.L778
.L560:
	addsd	.LC1(%rip), %xmm2
	subsd	%xmm2, %xmm15
	movsd	%xmm15, 176(%rdx)
	jmp	.L444
	.p2align 4,,10
	.p2align 3
.L876:
	comisd	%xmm13, %xmm11
	jnb	.L452
	.p2align 4,,10
	.p2align 3
.L453:
	comisd	%xmm11, %xmm10
	jnb	.L478
	comisd	%xmm7, %xmm8
	jnb	.L468
	comisd	%xmm7, %xmm6
	jb	.L480
	.p2align 4,,10
	.p2align 3
.L479:
	comisd	%xmm13, %xmm9
	jb	.L445
	jmp	.L493
	.p2align 4,,10
	.p2align 3
.L873:
	subsd	%xmm4, %xmm9
	cmpq	%r8, 144(%rdx)
	jnb	.L521
.L769:
	testq	%r8, %r8
	js	.L702
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L703:
	addq	144(%r9), %r8
	js	.L704
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%r8, %xmm0
.L705:
	divsd	%xmm0, %xmm1
	movsd	.LC3(%rip), %xmm0
	subsd	%xmm1, %xmm0
	mulsd	%xmm9, %xmm0
	addsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm9
	addsd	%xmm15, %xmm0
	movsd	%xmm0, 176(%rdx)
	movsd	176(%r9), %xmm0
	subsd	%xmm9, %xmm0
	movsd	%xmm0, 176(%r9)
	jmp	.L444
	.p2align 4,,10
	.p2align 3
.L449:
	comisd	%xmm11, %xmm10
	jb	.L762
	xorl	%eax, %eax
	comisd	%xmm10, %xmm9
	jnb	.L444
.L762:
	comisd	%xmm7, %xmm6
	jnb	.L466
	comisd	%xmm6, %xmm12
	jnb	.L467
	.p2align 4,,10
	.p2align 3
.L468:
	comisd	%xmm8, %xmm12
	jnb	.L458
	comisd	%xmm6, %xmm7
	jb	.L473
.L490:
	xorl	%eax, %eax
	comisd	%xmm11, %xmm13
	jnb	.L444
	jmp	.L495
	.p2align 4,,10
	.p2align 3
.L519:
	subsd	%xmm11, %xmm2
	cmpq	%r8, 144(%rdx)
	jnb	.L560
.L778:
	testq	%r8, %r8
	js	.L686
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L687:
	addq	144(%r9), %r8
	js	.L688
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%r8, %xmm0
.L689:
	divsd	%xmm0, %xmm1
	movsd	.LC3(%rip), %xmm0
	subsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	addsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm2
	subsd	%xmm0, %xmm15
	movsd	%xmm15, 176(%rdx)
	addsd	176(%r9), %xmm2
	movsd	%xmm2, 176(%r9)
	jmp	.L444
.L871:
	testq	%r8, %r8
	js	.L658
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%r8, %xmm0
.L659:
	addq	144(%r9), %r8
	js	.L660
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L661:
	divsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	movapd	%xmm9, %xmm2
	movsd	.LC1(%rip), %xmm4
	subsd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm9
	mulsd	%xmm1, %xmm2
	mulsd	%xmm3, %xmm1
	addsd	%xmm4, %xmm2
	addsd	%xmm4, %xmm1
	addsd	%xmm15, %xmm2
	movsd	%xmm2, 176(%rdx)
	movsd	176(%r9), %xmm2
	subsd	%xmm9, %xmm2
	movsd	%xmm2, 176(%r9)
.L808:
	subsd	%xmm1, %xmm14
	mulsd	%xmm3, %xmm0
	movsd	%xmm14, 168(%rdx)
	addsd	168(%r9), %xmm0
	movsd	%xmm0, 168(%r9)
	jmp	.L444
.L875:
	testq	%r8, %r8
	js	.L641
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L642:
	addq	144(%r9), %r8
	js	.L643
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%r8, %xmm0
.L644:
	divsd	%xmm0, %xmm1
	movsd	.LC3(%rip), %xmm0
	movapd	%xmm2, %xmm3
	movsd	.LC1(%rip), %xmm4
	subsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm2
	mulsd	%xmm8, %xmm1
	mulsd	%xmm0, %xmm3
	mulsd	%xmm8, %xmm0
	addsd	%xmm4, %xmm3
	addsd	%xmm4, %xmm0
	subsd	%xmm3, %xmm15
	addsd	%xmm14, %xmm0
	movsd	%xmm15, 176(%rdx)
	addsd	176(%r9), %xmm2
	movsd	%xmm2, 176(%r9)
	movsd	%xmm0, 168(%rdx)
	movsd	168(%r9), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 168(%r9)
	jmp	.L444
.L874:
	testq	%r8, %r8
	js	.L620
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%r8, %xmm2
.L621:
	addq	144(%r9), %r8
	js	.L622
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L623:
	divsd	%xmm1, %xmm2
	movsd	.LC3(%rip), %xmm0
	movapd	%xmm9, %xmm1
	movsd	.LC1(%rip), %xmm3
	subsd	%xmm2, %xmm0
	mulsd	%xmm2, %xmm9
	mulsd	%xmm8, %xmm2
	mulsd	%xmm0, %xmm1
	mulsd	%xmm8, %xmm0
	addsd	%xmm3, %xmm1
	addsd	%xmm3, %xmm0
	addsd	%xmm15, %xmm1
	addsd	%xmm14, %xmm0
	movsd	%xmm1, 176(%rdx)
	movsd	176(%r9), %xmm1
	subsd	%xmm9, %xmm1
	movsd	%xmm1, 176(%r9)
	movsd	%xmm0, 168(%rdx)
	movsd	168(%r9), %xmm1
	subsd	%xmm2, %xmm1
	movsd	%xmm1, 168(%r9)
	jmp	.L444
.L872:
	testq	%r8, %r8
	js	.L678
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%r8, %xmm0
.L679:
	addq	144(%r9), %r8
	js	.L680
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L681:
	divsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	movapd	%xmm2, %xmm4
	movsd	.LC1(%rip), %xmm5
	subsd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm2
	mulsd	%xmm1, %xmm4
	mulsd	%xmm3, %xmm1
	addsd	%xmm5, %xmm4
	addsd	%xmm5, %xmm1
	subsd	%xmm4, %xmm15
	movsd	%xmm15, 176(%rdx)
	addsd	176(%r9), %xmm2
	movsd	%xmm2, 176(%r9)
	jmp	.L808
	.p2align 4,,10
	.p2align 3
.L571:
	subsd	%xmm4, %xmm9
.L575:
	cmpq	%r8, %rcx
	jb	.L769
.L521:
	addsd	.LC1(%rip), %xmm9
	addsd	%xmm15, %xmm9
	movsd	%xmm9, 176(%rdx)
	jmp	.L444
	.p2align 4,,10
	.p2align 3
.L859:
	cmpq	%r8, %rcx
	jnb	.L548
.L773:
	testq	%r8, %r8
	js	.L694
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L695:
	addq	144(%r9), %r8
	js	.L696
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%r8, %xmm0
.L697:
	divsd	%xmm0, %xmm1
	movsd	.LC3(%rip), %xmm0
	subsd	%xmm1, %xmm0
	mulsd	%xmm8, %xmm0
	addsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm8
	addsd	%xmm14, %xmm0
	movsd	%xmm0, 168(%rdx)
	movsd	168(%r9), %xmm0
	subsd	%xmm8, %xmm0
	movsd	%xmm0, 168(%r9)
	jmp	.L444
	.p2align 4,,10
	.p2align 3
.L528:
	subsd	%xmm1, %xmm8
	cmpq	%r8, 144(%rdx)
	jb	.L773
.L548:
	addsd	.LC1(%rip), %xmm8
	addsd	%xmm14, %xmm8
	movsd	%xmm8, 168(%rdx)
	jmp	.L444
	.p2align 4,,10
	.p2align 3
.L759:
	comisd	%xmm6, %xmm7
	jnb	.L457
	comisd	%xmm13, %xmm11
	jb	.L805
	jmp	.L452
	.p2align 4,,10
	.p2align 3
.L478:
	xorl	%eax, %eax
	comisd	%xmm10, %xmm9
	jnb	.L444
	comisd	%xmm7, %xmm8
	jnb	.L481
	comisd	%xmm7, %xmm6
	jb	.L482
	comisd	%xmm13, %xmm9
	jb	.L445
	jmp	.L444
	.p2align 4,,10
	.p2align 3
.L588:
	cmpq	%r8, %rcx
	jnb	.L531
.L771:
	testq	%r8, %r8
	js	.L698
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r8, %xmm1
.L699:
	addq	144(%r9), %r8
	js	.L700
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%r8, %xmm0
.L701:
	divsd	%xmm0, %xmm1
	movsd	.LC3(%rip), %xmm0
	subsd	%xmm1, %xmm0
	mulsd	%xmm3, %xmm0
	addsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm3
	subsd	%xmm0, %xmm14
	movsd	%xmm14, 168(%rdx)
	addsd	168(%r9), %xmm3
	movsd	%xmm3, 168(%r9)
	jmp	.L444
	.p2align 4,,10
	.p2align 3
.L869:
	subsd	%xmm6, %xmm3
	cmpq	%r8, 144(%rdx)
	jb	.L771
.L531:
	addsd	.LC1(%rip), %xmm3
	subsd	%xmm3, %xmm14
	movsd	%xmm14, 168(%rdx)
	jmp	.L444
	.p2align 4,,10
	.p2align 3
.L688:
	movq	%r8, %rcx
	andl	$1, %r8d
	pxor	%xmm0, %xmm0
	shrq	%rcx
	orq	%r8, %rcx
	cvtsi2sdq	%rcx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L689
	.p2align 4,,10
	.p2align 3
.L686:
	movq	%r8, %rcx
	movq	%r8, %r10
	pxor	%xmm1, %xmm1
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L687
	.p2align 4,,10
	.p2align 3
.L457:
	comisd	%xmm11, %xmm10
	jb	.L760
	xorl	%eax, %eax
	comisd	%xmm10, %xmm9
	jnb	.L444
	comisd	%xmm7, %xmm6
	jb	.L462
	jmp	.L461
	.p2align 4,,10
	.p2align 3
.L622:
	movq	%r8, %rcx
	andl	$1, %r8d
	pxor	%xmm1, %xmm1
	shrq	%rcx
	orq	%r8, %rcx
	cvtsi2sdq	%rcx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L623
	.p2align 4,,10
	.p2align 3
.L660:
	movq	%r8, %rcx
	andl	$1, %r8d
	pxor	%xmm1, %xmm1
	shrq	%rcx
	orq	%r8, %rcx
	cvtsi2sdq	%rcx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L661
	.p2align 4,,10
	.p2align 3
.L658:
	movq	%r8, %rcx
	movq	%r8, %r10
	pxor	%xmm0, %xmm0
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L659
	.p2align 4,,10
	.p2align 3
.L680:
	movq	%r8, %rcx
	andl	$1, %r8d
	pxor	%xmm1, %xmm1
	shrq	%rcx
	orq	%r8, %rcx
	cvtsi2sdq	%rcx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L681
	.p2align 4,,10
	.p2align 3
.L678:
	movq	%r8, %rcx
	movq	%r8, %r10
	pxor	%xmm0, %xmm0
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L679
	.p2align 4,,10
	.p2align 3
.L643:
	movq	%r8, %rcx
	andl	$1, %r8d
	pxor	%xmm0, %xmm0
	shrq	%rcx
	orq	%r8, %rcx
	cvtsi2sdq	%rcx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L644
	.p2align 4,,10
	.p2align 3
.L641:
	movq	%r8, %rcx
	movq	%r8, %r10
	pxor	%xmm1, %xmm1
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L642
	.p2align 4,,10
	.p2align 3
.L620:
	movq	%r8, %rcx
	movq	%r8, %r10
	pxor	%xmm0, %xmm0
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm0
	movapd	%xmm0, %xmm2
	addsd	%xmm0, %xmm2
	jmp	.L621
.L696:
	movq	%r8, %rcx
	andl	$1, %r8d
	pxor	%xmm0, %xmm0
	shrq	%rcx
	orq	%r8, %rcx
	cvtsi2sdq	%rcx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L697
.L694:
	movq	%r8, %rcx
	movq	%r8, %r10
	pxor	%xmm1, %xmm1
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L695
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
	movq	%r8, %r10
	pxor	%xmm1, %xmm1
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L699
.L760:
	comisd	%xmm7, %xmm6
	jnb	.L461
	ucomisd	%xmm8, %xmm12
	jp	.L707
	jne	.L707
	comisd	%xmm11, %xmm10
	jnb	.L478
	comisd	%xmm13, %xmm9
	jnb	.L709
	jmp	.L494
	.p2align 4,,10
	.p2align 3
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
	movq	%r8, %r10
	pxor	%xmm1, %xmm1
	shrq	%rcx
	andl	$1, %r10d
	orq	%r10, %rcx
	cvtsi2sdq	%rcx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L703
.L481:
	ucomisd	%xmm8, %xmm12
	jp	.L484
	jne	.L484
	comisd	%xmm13, %xmm9
	jnb	.L444
	comisd	%xmm6, %xmm7
	jb	.L479
	ucomisd	%xmm6, %xmm7
	jp	.L480
	je	.L473
	jmp	.L480
.L484:
	comisd	%xmm6, %xmm7
	jnb	.L490
	jmp	.L479
.L707:
	comisd	%xmm13, %xmm9
	jb	.L445
	comisd	%xmm9, %xmm10
	jb	.L490
	xorl	%eax, %eax
	jmp	.L444
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC1:
	.long	-350469331
	.long	1058682594
	.align 8
.LC3:
	.long	0
	.long	1072693248
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
