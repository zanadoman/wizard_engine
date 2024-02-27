	.file	"WZEMath.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine4mathC2EPS0_
	.type	_ZN3wze6engine4mathC2EPS0_, @function
_ZN3wze6engine4mathC2EPS0_:
.LFB8163:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	%rsi, (%rdi)
	xorl	%edi, %edi
	call	time@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	movl	%eax, %edi
	jmp	srand@PLT
	.cfi_endproc
.LFE8163:
	.size	_ZN3wze6engine4mathC2EPS0_, .-_ZN3wze6engine4mathC2EPS0_
	.globl	_ZN3wze6engine4mathC1EPS0_
	.set	_ZN3wze6engine4mathC1EPS0_,_ZN3wze6engine4mathC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine4math6EqualsEdd
	.type	_ZN3wze6engine4math6EqualsEdd, @function
_ZN3wze6engine4math6EqualsEdd:
.LFB8165:
	.cfi_startproc
	movsd	.LC0(%rip), %xmm2
	movapd	%xmm0, %xmm3
	subsd	%xmm2, %xmm3
	comisd	%xmm3, %xmm1
	jb	.L9
	addsd	%xmm2, %xmm0
	comisd	%xmm1, %xmm0
	setnb	%al
	ret
	.p2align 4,,10
	.p2align 3
.L9:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE8165:
	.size	_ZN3wze6engine4math6EqualsEdd, .-_ZN3wze6engine4math6EqualsEdd
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"wze::engine::math::IfNaN(): Fallback must not be NaN\nParams: Value: %lf, Fallback: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine4math5IfNaNEdd
	.type	_ZN3wze6engine4math5IfNaNEdd, @function
_ZN3wze6engine4math5IfNaNEdd:
.LFB8166:
	.cfi_startproc
	ucomisd	%xmm1, %xmm1
	jp	.L21
	ucomisd	%xmm0, %xmm0
	movq	%xmm1, %rdx
	movq	%xmm0, %rax
	cmovp	%rdx, %rax
	movq	%rax, %xmm1
	movapd	%xmm1, %xmm0
	ret
.L21:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC1(%rip), %rdi
	movl	$2, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8166:
	.size	_ZN3wze6engine4math5IfNaNEdd, .-_ZN3wze6engine4math5IfNaNEdd
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"wze::engine::math::Random(): Max must not be less than or equal to Min\nParams: Min: %d, Max: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine4math6RandomEii
	.type	_ZN3wze6engine4math6RandomEii, @function
_ZN3wze6engine4math6RandomEii:
.LFB8167:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%esi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	%edx, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	cmpl	%esi, %edx
	jle	.L25
	call	rand@PLT
	subl	%ebp, %ebx
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	cltd
	idivl	%ebx
	popq	%rbx
	.cfi_def_cfa_offset 16
	leal	(%rdx,%rbp), %eax
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L25:
	.cfi_restore_state
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8167:
	.size	_ZN3wze6engine4math6RandomEii, .-_ZN3wze6engine4math6RandomEii
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	-350469331
	.long	1058682594
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
