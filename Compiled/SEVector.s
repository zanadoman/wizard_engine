	.file	"SEVector.cpp"
	.text
	.align 2
	.globl	_ZN4slay6engine6vectorC2ERS0_
	.type	_ZN4slay6engine6vectorC2ERS0_, @function
_ZN4slay6engine6vectorC2ERS0_:
.LFB2197:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2197:
	.size	_ZN4slay6engine6vectorC2ERS0_, .-_ZN4slay6engine6vectorC2ERS0_
	.globl	_ZN4slay6engine6vectorC1ERS0_
	.set	_ZN4slay6engine6vectorC1ERS0_,_ZN4slay6engine6vectorC2ERS0_
	.align 2
	.globl	_ZN4slay6engine6vector6LengthEdddd
	.type	_ZN4slay6engine6vector6LengthEdddd, @function
_ZN4slay6engine6vector6LengthEdddd:
.LFB2199:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -40(%rbp)
	movsd	-32(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	subsd	-16(%rbp), %xmm1
	movsd	-32(%rbp), %xmm0
	subsd	-16(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	subsd	-24(%rbp), %xmm2
	movsd	-40(%rbp), %xmm0
	subsd	-24(%rbp), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	call	sqrt@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2199:
	.size	_ZN4slay6engine6vector6LengthEdddd, .-_ZN4slay6engine6vector6LengthEdddd
	.align 2
	.globl	_ZN4slay6engine6vector5AngleEdddd
	.type	_ZN4slay6engine6vector5AngleEdddd, @function
_ZN4slay6engine6vector5AngleEdddd:
.LFB2200:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm3, -56(%rbp)
	movsd	-48(%rbp), %xmm0
	subsd	-32(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-56(%rbp), %xmm2
	movsd	-48(%rbp), %xmm1
	movsd	-40(%rbp), %xmm0
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rdx, %xmm0
	movq	%rax, %rdi
	call	_ZN4slay6engine6vector6LengthEdddd
	movsd	-64(%rbp), %xmm4
	divsd	%xmm0, %xmm4
	movq	%xmm4, %rax
	movq	%rax, %xmm0
	call	acos@PLT
	movsd	.LC0(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-40(%rbp), %xmm0
	comisd	-56(%rbp), %xmm0
	jbe	.L5
	movsd	.LC2(%rip), %xmm0
	subsd	-8(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
.L5:
	movsd	-8(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2200:
	.size	_ZN4slay6engine6vector5AngleEdddd, .-_ZN4slay6engine6vector5AngleEdddd
	.align 2
	.globl	_ZN4slay6engine6vector5ApplyEddPdS2_
	.type	_ZN4slay6engine6vector5ApplyEddPdS2_, @function
_ZN4slay6engine6vector5ApplyEddPdS2_:
.LFB2201:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movsd	-40(%rbp), %xmm1
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC0(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm2
	movsd	%xmm2, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %xmm0
	call	cos@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	mulsd	-32(%rbp), %xmm0
	addsd	-64(%rbp), %xmm0
	movq	-48(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm3
	movsd	%xmm3, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %xmm0
	call	sin@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	mulsd	-32(%rbp), %xmm0
	addsd	-64(%rbp), %xmm0
	movq	-56(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2201:
	.size	_ZN4slay6engine6vector5ApplyEddPdS2_, .-_ZN4slay6engine6vector5ApplyEddPdS2_
	.section	.rodata
	.align 8
.LC3:
	.string	"engine.vector.Apply(): Actor does not exists\nParams: Length: %lf, Angle: %lf, Actor: %lld\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6vector5ApplyEddy
	.type	_ZN4slay6engine6vector5ApplyEddy, @function
_ZN4slay6engine6vector5ApplyEddy:
.LFB2202:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm1, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	$528, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	cmpq	%rax, -64(%rbp)
	jnb	.L12
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L13
.L12:
	movl	$1, %eax
	jmp	.L14
.L13:
	movl	$0, %eax
.L14:
	testb	%al, %al
	je	.L15
	movq	-64(%rbp), %rdx
	movsd	-56(%rbp), %xmm0
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L15:
	movsd	-56(%rbp), %xmm1
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC0(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rbx
	movsd	120(%rbx), %xmm2
	movsd	%xmm2, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %xmm0
	call	cos@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	mulsd	-48(%rbp), %xmm0
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, 120(%rbx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rbx
	movsd	128(%rbx), %xmm3
	movsd	%xmm3, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %xmm0
	call	sin@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	mulsd	-48(%rbp), %xmm0
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, 128(%rbx)
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2202:
	.size	_ZN4slay6engine6vector5ApplyEddy, .-_ZN4slay6engine6vector5ApplyEddy
	.align 2
	.globl	_ZN4slay6engine6vector8TerminalEddddPdS2_
	.type	_ZN4slay6engine6vector8TerminalEddddPdS2_, @function
_ZN4slay6engine6vector8TerminalEddddPdS2_:
.LFB2203:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm3, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movsd	-56(%rbp), %xmm1
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC0(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %xmm0
	call	cos@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	mulsd	-48(%rbp), %xmm0
	addsd	-32(%rbp), %xmm0
	movq	-64(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %xmm0
	call	sin@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	mulsd	-48(%rbp), %xmm0
	addsd	-40(%rbp), %xmm0
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2203:
	.size	_ZN4slay6engine6vector8TerminalEddddPdS2_, .-_ZN4slay6engine6vector8TerminalEddddPdS2_
	.section	.rodata
	.align 8
.LC4:
	.string	"engine.vector.Terminal(): Actor does not exists\nParams: InitialX: %lf, InitialY: %lf, Length: %lf, Angle: %lf, Actor: %lld\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6vector8TerminalEddddy
	.type	_ZN4slay6engine6vector8TerminalEddddy, @function
_ZN4slay6engine6vector8TerminalEddddy:
.LFB2204:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm3, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$528, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	cmpq	%rax, -64(%rbp)
	jnb	.L20
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L21
.L20:
	movl	$1, %eax
	jmp	.L22
.L21:
	movl	$0, %eax
.L22:
	testb	%al, %al
	je	.L23
	movq	-64(%rbp), %rdx
	movsd	-56(%rbp), %xmm2
	movsd	-48(%rbp), %xmm1
	movsd	-40(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$4, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L23:
	movsd	-56(%rbp), %xmm1
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC0(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %xmm0
	call	cos@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	mulsd	-48(%rbp), %xmm0
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	-72(%rbp), %xmm0
	movsd	%xmm0, 120(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %xmm0
	call	sin@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	mulsd	-48(%rbp), %xmm0
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	-72(%rbp), %xmm0
	movsd	%xmm0, 128(%rax)
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2204:
	.size	_ZN4slay6engine6vector8TerminalEddddy, .-_ZN4slay6engine6vector8TerminalEddddy
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv, @function
_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv:
.LFB2269:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2269:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv, .-_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	.section	.rodata
	.align 8
.LC5:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy, @function
_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy:
.LFB2270:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L28
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L28:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2270:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy, .-_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1080459264
	.align 8
.LC1:
	.long	1413754136
	.long	1074340347
	.align 8
.LC2:
	.long	0
	.long	1081507840
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
