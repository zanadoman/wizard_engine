	.file	"WZECollision.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"skip"
.LC3:
	.string	"top left"
.LC4:
	.string	"top right"
.LC5:
	.string	"bot left"
.LC6:
	.string	"bot right"
.LC7:
	.string	"top"
.LC8:
	.string	"bot"
.LC9:
	.string	"left"
.LC10:
	.string	"right"
.LC11:
	.string	"center"
.LC12:
	.string	"none"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_
	.type	_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_, @function
_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_:
.LFB2231:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movzwl	200(%rsi), %eax
	pxor	%xmm1, %xmm1
	movsd	.LC0(%rip), %xmm0
	movsd	152(%rsi), %xmm4
	movsd	160(%rsi), %xmm6
	cvtsi2sdl	%eax, %xmm1
	movzwl	200(%rdx), %eax
	movzwl	202(%rsi), %ecx
	movsd	160(%rdx), %xmm7
	movapd	%xmm1, %xmm2
	movapd	%xmm1, %xmm5
	movsd	152(%rdx), %xmm1
	mulsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm4
	pxor	%xmm2, %xmm2
	cvtsi2sdl	%eax, %xmm2
	movzwl	202(%rdx), %eax
	addsd	%xmm4, %xmm5
	movapd	%xmm2, %xmm3
	mulsd	%xmm0, %xmm3
	subsd	%xmm3, %xmm1
	comisd	%xmm5, %xmm1
	addsd	%xmm1, %xmm2
	ja	.L2
	comisd	%xmm2, %xmm4
	ja	.L2
	pxor	%xmm8, %xmm8
	cvtsi2sdl	%ecx, %xmm8
	movapd	%xmm8, %xmm3
	mulsd	%xmm0, %xmm3
	addsd	%xmm6, %xmm3
	pxor	%xmm6, %xmm6
	cvtsi2sdl	%eax, %xmm6
	mulsd	%xmm6, %xmm0
	addsd	%xmm7, %xmm0
	movapd	%xmm0, %xmm7
	subsd	%xmm6, %xmm7
	comisd	%xmm3, %xmm7
	ja	.L2
	movapd	%xmm3, %xmm6
	subsd	%xmm8, %xmm6
	comisd	%xmm0, %xmm6
	ja	.L2
	comisd	%xmm4, %xmm2
	jnb	.L273
.L214:
	xorl	%eax, %eax
.L6:
	comisd	%xmm4, %xmm1
	jnb	.L19
	comisd	%xmm1, %xmm5
	jnb	.L274
.L20:
	comisd	%xmm4, %xmm2
	jnb	.L10
	comisd	%xmm1, %xmm4
	jnb	.L22
.L270:
	comisd	%xmm4, %xmm1
	jnb	.L275
	comisd	%xmm1, %xmm5
	jnb	.L238
.L56:
	cmpb	$32, %al
	je	.L86
	ja	.L87
.L101:
	testb	%al, %al
	je	.L276
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	jmp	.L174
	.p2align 4,,10
	.p2align 3
.L2:
	leaq	.LC1(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.L174:
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L273:
	.cfi_restore_state
	comisd	%xmm2, %xmm5
	jnb	.L8
	comisd	%xmm1, %xmm4
	jnb	.L9
	xorl	%eax, %eax
	comisd	%xmm1, %xmm5
	jb	.L10
	comisd	%xmm6, %xmm7
	jnb	.L12
	.p2align 4,,10
	.p2align 3
.L13:
	comisd	%xmm7, %xmm3
	jb	.L10
	comisd	%xmm3, %xmm0
	jnb	.L28
	comisd	%xmm2, %xmm5
	jb	.L218
.L115:
	comisd	%xmm6, %xmm0
	jb	.L32
	.p2align 4,,10
	.p2align 3
.L31:
	movl	%eax, %edx
	orl	$64, %edx
	comisd	%xmm4, %xmm1
	jb	.L277
	comisd	%xmm0, %xmm3
	jb	.L236
	testb	%al, %al
	je	.L85
	orl	$-64, %eax
	jmp	.L92
	.p2align 4,,10
	.p2align 3
.L9:
	comisd	%xmm7, %xmm3
	jb	.L214
	comisd	%xmm3, %xmm0
	setnb	%al
	sall	$4, %eax
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L282:
	comisd	%xmm5, %xmm2
	movl	$16, %eax
	jb	.L113
	comisd	%xmm3, %xmm0
	jb	.L115
.L28:
	orl	$32, %eax
	.p2align 4,,10
	.p2align 3
.L10:
	comisd	%xmm2, %xmm5
	jnb	.L16
	comisd	%xmm1, %xmm4
	jnb	.L60
	comisd	%xmm1, %xmm5
	jb	.L56
	comisd	%xmm6, %xmm0
	jnb	.L278
	.p2align 4,,10
	.p2align 3
.L238:
	comisd	%xmm5, %xmm2
	jnb	.L58
	jmp	.L81
	.p2align 4,,10
	.p2align 3
.L22:
	comisd	%xmm4, %xmm2
	jb	.L270
	.p2align 4,,10
	.p2align 3
.L60:
	comisd	%xmm7, %xmm6
	jb	.L270
	pxor	%xmm8, %xmm8
	movl	$1, %esi
	ucomisd	%xmm8, %xmm6
	setp	%dl
	cmovne	%esi, %edx
	ucomisd	%xmm8, %xmm0
	setp	%cl
	cmovne	%esi, %ecx
	andl	%ecx, %edx
	sall	$6, %edx
	orl	%edx, %eax
	comisd	%xmm4, %xmm1
	jnb	.L279
	comisd	%xmm1, %xmm5
	jb	.L84
.L49:
	comisd	%xmm5, %xmm2
	jb	.L84
.L58:
	comisd	%xmm7, %xmm6
	jb	.L84
.L76:
	pxor	%xmm1, %xmm1
	movl	$1, %ecx
	ucomisd	%xmm1, %xmm6
	setp	%dl
	cmovne	%ecx, %edx
	testb	%dl, %dl
	je	.L84
	ucomisd	%xmm1, %xmm0
	setp	%dl
	cmovne	%ecx, %edx
	testb	%dl, %dl
	je	.L84
.L72:
	orl	$-128, %eax
	cmpb	$-64, %al
	je	.L85
.L51:
	cmpb	$-64, %al
	jbe	.L99
.L92:
	cmpb	$-16, %al
	jne	.L174
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
	jmp	.L174
	.p2align 4,,10
	.p2align 3
.L8:
	comisd	%xmm6, %xmm7
	jnb	.L280
	comisd	%xmm1, %xmm4
	jnb	.L9
	comisd	%xmm6, %xmm7
	jnb	.L120
	xorl	%eax, %eax
	comisd	%xmm5, %xmm2
	jnb	.L13
	.p2align 4,,10
	.p2align 3
.L16:
	comisd	%xmm6, %xmm0
	jb	.L32
	comisd	%xmm0, %xmm3
	jnb	.L31
	comisd	%xmm1, %xmm4
	jnb	.L60
.L43:
	comisd	%xmm5, %xmm2
	jb	.L235
	comisd	%xmm7, %xmm6
	jb	.L235
	pxor	%xmm1, %xmm1
	movl	$1, %ecx
	ucomisd	%xmm1, %xmm6
	setp	%dl
	cmovne	%ecx, %edx
	testb	%dl, %dl
	je	.L56
	ucomisd	%xmm1, %xmm0
	setp	%dl
	cmovne	%ecx, %edx
	testb	%dl, %dl
	je	.L56
.L259:
	orl	$-128, %eax
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L19:
	comisd	%xmm1, %xmm5
	jb	.L20
	comisd	%xmm6, %xmm7
	jnb	.L12
	comisd	%xmm5, %xmm2
	jnb	.L13
	comisd	%xmm4, %xmm2
	jnb	.L16
	comisd	%xmm1, %xmm4
	jnb	.L22
	comisd	%xmm6, %xmm0
	jnb	.L281
	comisd	%xmm5, %xmm2
	jb	.L56
.L251:
	comisd	%xmm7, %xmm6
	jnb	.L76
	jmp	.L81
	.p2align 4,,10
	.p2align 3
.L87:
	cmpb	$48, %al
	je	.L90
.L230:
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	jmp	.L174
	.p2align 4,,10
	.p2align 3
.L280:
	comisd	%xmm4, %xmm1
	jb	.L282
	movl	$48, %eax
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L32:
	comisd	%xmm1, %xmm4
	jnb	.L60
	comisd	%xmm6, %xmm0
	jnb	.L283
	comisd	%xmm5, %xmm2
	jb	.L235
	comisd	%xmm7, %xmm6
	jb	.L56
	pxor	%xmm1, %xmm1
	movl	$1, %ecx
	ucomisd	%xmm1, %xmm6
	setp	%dl
	cmovne	%ecx, %edx
	testb	%dl, %dl
	je	.L81
	ucomisd	%xmm1, %xmm0
	setp	%dl
	cmovne	%ecx, %edx
	testb	%dl, %dl
	jne	.L72
	.p2align 4,,10
	.p2align 3
.L81:
	cmpb	$80, %al
	ja	.L174
	jmp	.L56
	.p2align 4,,10
	.p2align 3
.L279:
	comisd	%xmm1, %xmm5
	jnb	.L54
	.p2align 4,,10
	.p2align 3
.L84:
	cmpb	$80, %al
	jne	.L81
.L74:
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	jmp	.L174
	.p2align 4,,10
	.p2align 3
.L274:
	comisd	%xmm5, %xmm2
	jnb	.L13
.L113:
	comisd	%xmm4, %xmm2
	jnb	.L16
	jmp	.L270
	.p2align 4,,10
	.p2align 3
.L275:
	comisd	%xmm1, %xmm5
	jb	.L81
.L54:
	comisd	%xmm6, %xmm0
	jb	.L49
	comisd	%xmm0, %xmm3
	jnb	.L72
	jmp	.L49
.L235:
	cmpb	$32, %al
	je	.L86
	jbe	.L101
	.p2align 4,,10
	.p2align 3
.L90:
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	jmp	.L174
.L85:
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	jmp	.L174
	.p2align 4,,10
	.p2align 3
.L276:
	leaq	.LC12(%rip), %rdi
	call	puts@PLT
	jmp	.L174
	.p2align 4,,10
	.p2align 3
.L86:
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	jmp	.L174
.L12:
	orl	$32, %eax
	jmp	.L20
.L277:
	comisd	%xmm5, %xmm2
	jnb	.L123
	cmpb	$80, %dl
	je	.L74
	ja	.L174
	jmp	.L230
.L283:
	comisd	%xmm0, %xmm3
	jb	.L43
.L261:
	orl	$-128, %eax
.L99:
	cmpb	$-128, %al
	je	.L93
	cmpb	$-96, %al
	jne	.L174
	leaq	.LC10(%rip), %rdi
	call	puts@PLT
	jmp	.L174
.L93:
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
	jmp	.L174
.L120:
	movl	$32, %eax
	jmp	.L10
.L218:
	comisd	%xmm1, %xmm4
	jnb	.L60
	comisd	%xmm6, %xmm0
	jb	.L251
	jmp	.L261
.L236:
	movl	%edx, %eax
	jmp	.L49
.L123:
	movl	%edx, %eax
	jmp	.L58
.L278:
	comisd	%xmm0, %xmm3
	jb	.L49
	jmp	.L259
.L281:
	comisd	%xmm0, %xmm3
	jb	.L238
	jmp	.L261
	.cfi_endproc
.LFE2231:
	.size	_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_, .-_ZN3wze6engine9collision14CheckCollisionEPNS0_6actors5actorES4_
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1071644672
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
