	.file	"WZEVector.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vectorC2EPS0_
	.type	_ZN3wze6engine6vectorC2EPS0_, @function
_ZN3wze6engine6vectorC2EPS0_:
.LFB8147:
	.cfi_startproc
	movq	%rsi, (%rdi)
	ret
	.cfi_endproc
.LFE8147:
	.size	_ZN3wze6engine6vectorC2EPS0_, .-_ZN3wze6engine6vectorC2EPS0_
	.globl	_ZN3wze6engine6vectorC1EPS0_
	.set	_ZN3wze6engine6vectorC1EPS0_,_ZN3wze6engine6vectorC2EPS0_
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"wze::engine.vector.Length(): InitialX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\n"
	.align 8
.LC1:
	.string	"wze::engine.vector.Length(): InitialY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\n"
	.align 8
.LC2:
	.string	"wze::engine.vector.Length(): TerminalX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\n"
	.align 8
.LC3:
	.string	"wze::engine.vector.Length(): TerminalY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector6LengthEdddd
	.type	_ZN3wze6engine6vector6LengthEdddd, @function
_ZN3wze6engine6vector6LengthEdddd:
.LFB8149:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L21
	ucomisd	%xmm1, %xmm1
	jp	.L22
	ucomisd	%xmm2, %xmm2
	jp	.L23
	ucomisd	%xmm3, %xmm3
	jp	.L24
	subsd	%xmm0, %xmm2
	subsd	%xmm1, %xmm3
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	mulsd	%xmm2, %xmm2
	mulsd	%xmm3, %xmm3
	addsd	%xmm3, %xmm2
	movapd	%xmm2, %xmm0
	sqrtsd	%xmm0, %xmm0
	ret
.L21:
	.cfi_restore_state
	leaq	.LC0(%rip), %rdi
	movl	$4, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L24:
	leaq	.LC3(%rip), %rdi
	movl	$4, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L23:
	leaq	.LC2(%rip), %rdi
	movl	$4, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L22:
	leaq	.LC1(%rip), %rdi
	movl	$4, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8149:
	.size	_ZN3wze6engine6vector6LengthEdddd, .-_ZN3wze6engine6vector6LengthEdddd
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"wze::engine.vector.Angle(): InitialX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\n"
	.align 8
.LC5:
	.string	"wze::engine.vector.Angle(): InitialY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\n"
	.align 8
.LC6:
	.string	"wze::engine.vector.Angle(): TerminalX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\n"
	.align 8
.LC7:
	.string	"wze::engine.vector.Angle(): TerminalY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector5AngleEdddd
	.type	_ZN3wze6engine6vector5AngleEdddd, @function
_ZN3wze6engine6vector5AngleEdddd:
.LFB8150:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L48
	ucomisd	%xmm1, %xmm1
	jp	.L49
	ucomisd	%xmm2, %xmm2
	jp	.L50
	ucomisd	%xmm3, %xmm3
	jp	.L51
	subsd	%xmm0, %xmm2
	comisd	%xmm3, %xmm1
	movapd	%xmm3, %xmm4
	subsd	%xmm1, %xmm4
	movapd	%xmm2, %xmm0
	mulsd	%xmm2, %xmm0
	mulsd	%xmm4, %xmm4
	addsd	%xmm4, %xmm0
	sqrtsd	%xmm0, %xmm0
	divsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	ja	.L52
	call	acos@PLT
	mulsd	.LC8(%rip), %xmm0
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L52:
	.cfi_restore_state
	call	acos@PLT
	movsd	.LC8(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	.LC9(%rip), %xmm0
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	subsd	%xmm1, %xmm0
	ret
.L51:
	.cfi_restore_state
	leaq	.LC7(%rip), %rdi
	movl	$4, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L50:
	leaq	.LC6(%rip), %rdi
	movl	$4, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L49:
	leaq	.LC5(%rip), %rdi
	movl	$4, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L48:
	leaq	.LC4(%rip), %rdi
	movl	$4, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8150:
	.size	_ZN3wze6engine6vector5AngleEdddd, .-_ZN3wze6engine6vector5AngleEdddd
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"wze::engine.vector.TerminalX(): InitialX must not be NaN\nParams: InitialX: %lf, Length: %lf, Angle: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector9TerminalXEddd
	.type	_ZN3wze6engine6vector9TerminalXEddd, @function
_ZN3wze6engine6vector9TerminalXEddd:
.LFB8151:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	movsd	%xmm1, (%rsp)
	jp	.L59
	mulsd	.LC11(%rip), %xmm2
	movsd	%xmm0, 8(%rsp)
	movapd	%xmm2, %xmm0
	call	cos@PLT
	mulsd	(%rsp), %xmm0
	movsd	8(%rsp), %xmm3
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	addsd	%xmm3, %xmm0
	ret
.L59:
	.cfi_restore_state
	leaq	.LC10(%rip), %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8151:
	.size	_ZN3wze6engine6vector9TerminalXEddd, .-_ZN3wze6engine6vector9TerminalXEddd
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"wze::engine.vector.TerminalY(): InitialY must not be NaN\nParams: InitialY: %lf, Length: %lf, Angle: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector9TerminalYEddd
	.type	_ZN3wze6engine6vector9TerminalYEddd, @function
_ZN3wze6engine6vector9TerminalYEddd:
.LFB8152:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	movsd	%xmm1, (%rsp)
	jp	.L66
	mulsd	.LC11(%rip), %xmm2
	movsd	%xmm0, 8(%rsp)
	movapd	%xmm2, %xmm0
	call	sin@PLT
	mulsd	(%rsp), %xmm0
	movsd	8(%rsp), %xmm3
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	addsd	%xmm3, %xmm0
	ret
.L66:
	.cfi_restore_state
	leaq	.LC12(%rip), %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8152:
	.size	_ZN3wze6engine6vector9TerminalYEddd, .-_ZN3wze6engine6vector9TerminalYEddd
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"neo::array(): Memory allocation failed\nParams: Length: %lld\n"
	.align 8
.LC14:
	.string	"whe::engine.vector.RayCast(): InitialX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld\n"
	.align 8
.LC15:
	.string	"whe::engine.vector.RayCast(): InitialY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld\n"
	.align 8
.LC16:
	.string	"whe::engine.vector.RayCast(): TerminalX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld\n"
	.align 8
.LC17:
	.string	"whe::engine.vector.RayCast(): TerminalY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld\n"
	.align 8
.LC18:
	.string	"whe::engine.vector.RayCast(): SamplingStep must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld\n"
	.align 8
.LC20:
	.string	"whe::engine.vector.RayCast(): SamplingStep must not be less than or equal to 0\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld\n"
	.align 8
.LC21:
	.string	"neo::array.Insert(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC22:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB24:
	.text
.LHOTB24:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_
	.type	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_, @function
_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_:
.LFB8153:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8153
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r11
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%esi, %r14d
	movq	%rcx, %rsi
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	xorl	%r12d, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$200, %rsp
	.cfi_def_cfa_offset 256
	movq	(%rdi), %rbx
	movq	264(%rsp), %rax
	movq	%r8, 8(%rsp)
	movzwl	664(%rbx), %r15d
	movq	256(%rsp), %r10
	movw	%r14w, 138(%rsp)
	movq	%rax, 32(%rsp)
	movw	%r15w, 16(%rsp)
	movsd	%xmm4, 24(%rsp)
	testq	%r15, %r15
	jne	.L162
.L68:
	ucomisd	%xmm0, %xmm0
	jp	.L163
	ucomisd	%xmm1, %xmm1
	jp	.L164
	ucomisd	%xmm2, %xmm2
	jp	.L165
	ucomisd	%xmm3, %xmm3
	jp	.L166
	movsd	24(%rsp), %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L167
	pxor	%xmm4, %xmm4
	comisd	24(%rsp), %xmm4
	jnb	.L168
	ucomisd	%xmm2, %xmm0
	movl	$0, %ecx
	setnp	%dl
	cmovne	%ecx, %edx
	ucomisd	%xmm3, %xmm1
	setnp	%al
	cmovne	%ecx, %eax
	andb	%al, %dl
	movb	%dl, 40(%rsp)
	jne	.L82
	movq	640(%rbx), %rax
	cmpq	$1, %rax
	jbe	.L111
	movq	648(%rbx), %rdi
	movq	%r15, %r8
	movq	%r13, 48(%rsp)
	movq	%rax, %r15
	movl	$1, %ebx
	xorl	%ebp, %ebp
	movq	%r12, %rax
	jmp	.L99
	.p2align 4,,10
	.p2align 3
.L84:
	addq	$1, %rbx
	cmpq	%rbx, %r15
	je	.L169
.L99:
	movq	(%rdi,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L84
	movq	208(%rcx), %r12
	xorl	%edx, %edx
	testq	%rsi, %rsi
	je	.L84
	cmpq	(%r11,%rdx,8), %r12
	je	.L170
.L148:
	addq	$1, %rdx
	cmpq	%rdx, %rsi
	je	.L84
	cmpq	(%r11,%rdx,8), %r12
	jne	.L148
.L170:
	movq	8(%rsp), %r12
	xorl	%edx, %edx
	testq	%r9, %r9
	je	.L88
.L109:
	cmpq	%rbx, (%r12,%rdx,8)
	je	.L84
	addq	$1, %rdx
	cmpq	%rdx, %r9
	jne	.L109
.L88:
	movq	152(%rcx), %rdx
	cmpq	$1, %rdx
	jbe	.L84
	movq	%r15, 56(%rsp)
	movl	$1, %r13d
	movq	%rdx, %r15
	movq	160(%rcx), %r12
	movq	%r11, 72(%rsp)
	movq	32(%rsp), %rcx
	movq	%rsi, %r11
	movq	%r9, 80(%rsp)
	movl	%r14d, %r9d
	movq	%r8, %r14
	movq	%rdi, %r8
	movq	%rbx, 64(%rsp)
	movq	%rax, %rdi
	jmp	.L98
	.p2align 4,,10
	.p2align 3
.L90:
	addq	$1, %r13
	cmpq	%r15, %r13
	je	.L171
.L98:
	movq	(%r12,%r13,8), %rbx
	testq	%rbx, %rbx
	je	.L90
	movq	24(%rbx), %rsi
	xorl	%edx, %edx
	testq	%rcx, %rcx
	je	.L92
.L91:
	cmpq	(%r10,%rdx,8), %rsi
	je	.L90
	addq	$1, %rdx
	cmpq	%rdx, %rcx
	jne	.L91
.L92:
	cmpq	%rbp, %r14
	je	.L172
.L94:
	leaq	1(%rbp), %rdx
	cmpq	%r14, %rbp
	jnb	.L173
	addq	$1, %r13
	movq	%rbx, (%rdi,%rbp,8)
	movq	%rdx, %rbp
	cmpq	%r15, %r13
	jne	.L98
.L171:
	movq	64(%rsp), %rbx
	movq	56(%rsp), %r15
	movq	%rdi, %rax
	movq	%r11, %rsi
	movq	%r8, %rdi
	movq	72(%rsp), %r11
	movq	%r14, %r8
	movl	%r9d, %r14d
	addq	$1, %rbx
	movq	80(%rsp), %r9
	cmpq	%rbx, %r15
	jne	.L99
	.p2align 4,,10
	.p2align 3
.L169:
	movq	48(%rsp), %r13
	movq	%rax, %r12
	movq	%r8, %r15
.L83:
	pxor	%xmm4, %xmm4
	shrw	%r14w
	movapd	%xmm0, %xmm6
	subsd	%xmm0, %xmm2
	movzwl	%r14w, %eax
	comisd	%xmm3, %xmm1
	movapd	%xmm3, %xmm0
	cvtsi2sdl	%eax, %xmm4
	subsd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm0
	subsd	%xmm4, %xmm6
	addsd	%xmm1, %xmm4
	movsd	%xmm4, 16(%rsp)
	movapd	%xmm2, %xmm4
	mulsd	%xmm2, %xmm4
	movsd	%xmm6, 8(%rsp)
	addsd	%xmm0, %xmm4
	movapd	%xmm2, %xmm0
	movapd	%xmm4, %xmm7
	sqrtsd	%xmm7, %xmm7
	divsd	%xmm7, %xmm0
	movsd	%xmm7, 32(%rsp)
	ja	.L174
	call	acos@PLT
	movsd	%xmm0, 48(%rsp)
.L102:
	movsd	32(%rsp), %xmm7
	pxor	%xmm0, %xmm0
	movzwl	138(%rsp), %r14d
	comisd	%xmm0, %xmm7
	jbe	.L152
.L105:
	xorl	%ebx, %ebx
	testq	%rbp, %rbp
	jne	.L104
	jmp	.L107
	.p2align 4,,10
	.p2align 3
.L176:
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	je	.L107
.L104:
	movq	0(%r13), %rax
	leaq	656(%rax), %rdi
	cmpq	%rbx, %r15
	je	.L175
	pxor	%xmm2, %xmm2
	movsd	16(%rsp), %xmm1
	movsd	8(%rsp), %xmm5
	cvtsi2sdl	%r14d, %xmm2
	movq	(%r12,%rbx,8), %rsi
	movapd	%xmm1, %xmm3
	movapd	%xmm5, %xmm0
	subsd	%xmm2, %xmm3
	addsd	%xmm5, %xmm2
.LEHB0:
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE@PLT
.LEHE0:
	testb	%al, %al
	je	.L176
.L82:
	movq	%r12, %rdi
	call	free@PLT
	movzbl	40(%rsp), %eax
	addq	$200, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
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
.L174:
	.cfi_restore_state
	call	acos@PLT
	movsd	.LC23(%rip), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 48(%rsp)
	jmp	.L102
	.p2align 4,,10
	.p2align 3
.L107:
	movsd	48(%rsp), %xmm0
	leaq	184(%rsp), %rdi
	leaq	176(%rsp), %rsi
	call	sincos@PLT
	movsd	24(%rsp), %xmm6
	movsd	176(%rsp), %xmm0
	movsd	32(%rsp), %xmm7
	mulsd	%xmm6, %xmm0
	addsd	8(%rsp), %xmm0
	subsd	%xmm6, %xmm7
	movsd	%xmm0, 8(%rsp)
	movsd	184(%rsp), %xmm0
	movsd	%xmm7, 32(%rsp)
	mulsd	%xmm6, %xmm0
	addsd	16(%rsp), %xmm0
	movsd	%xmm0, 16(%rsp)
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm7
	ja	.L105
.L152:
	movb	$1, 40(%rsp)
	jmp	.L82
.L172:
	movzwl	16(%rsp), %edx
	movq	%rcx, 160(%rsp)
	movq	%r10, 152(%rsp)
	leaq	1(%rdx), %rax
	movq	%r11, 144(%rsp)
	leaq	(%rax,%r14), %rdx
	movl	%r9d, 140(%rsp)
	leaq	0(,%rdx,8), %rsi
	movq	%r8, 128(%rsp)
	movq	%rdx, 88(%rsp)
	movsd	%xmm3, 120(%rsp)
	movsd	%xmm2, 112(%rsp)
	movsd	%xmm1, 104(%rsp)
	movsd	%xmm0, 96(%rsp)
	movq	%rax, 168(%rsp)
	call	realloc@PLT
	movq	88(%rsp), %rdx
	movsd	96(%rsp), %xmm0
	testq	%rax, %rax
	movsd	104(%rsp), %xmm1
	movsd	112(%rsp), %xmm2
	movq	%rax, %rdi
	movsd	120(%rsp), %xmm3
	movq	128(%rsp), %r8
	movl	140(%rsp), %r9d
	movq	144(%rsp), %r11
	movq	152(%rsp), %r10
	movq	160(%rsp), %rcx
	je	.L177
	testq	%rdx, %rdx
	jne	.L114
.L96:
	jmp	.L96
	.p2align 4,,10
	.p2align 3
.L162:
	leaq	0(,%r15,8), %rdi
	movq	%r10, 96(%rsp)
	movq	%r9, 88(%rsp)
	movsd	%xmm3, 64(%rsp)
	movsd	%xmm2, 56(%rsp)
	movsd	%xmm1, 48(%rsp)
	movsd	%xmm0, 40(%rsp)
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	call	malloc@PLT
	movsd	40(%rsp), %xmm0
	movq	72(%rsp), %r11
	testq	%rax, %rax
	movq	80(%rsp), %rsi
	movq	88(%rsp), %r9
	movq	%rax, %r12
	movsd	48(%rsp), %xmm1
	movsd	56(%rsp), %xmm2
	movsd	64(%rsp), %xmm3
	movq	96(%rsp), %r10
	jne	.L68
	leaq	.LC13(%rip), %rdi
	movq	%r15, %rsi
	xorl	%eax, %eax
.LEHB1:
	call	printf@PLT
.LEHE1:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L111:
	xorl	%ebp, %ebp
	jmp	.L83
.L114:
	movq	%rdx, %r14
	jmp	.L94
.L175:
	movq	%r15, %rsi
	leaq	.LC22(%rip), %rdi
	xorl	%eax, %eax
.LEHB2:
	call	printf@PLT
.L73:
	movl	$1, %edi
	call	exit@PLT
.L164:
	movzwl	%r14w, %r14d
	movsd	24(%rsp), %xmm4
	movq	%rsi, %rdx
	movq	%r9, %rcx
	movl	%r14d, %esi
	leaq	.LC15(%rip), %rdi
	movl	$5, %eax
	call	printf@PLT
	jmp	.L73
.L163:
	movzwl	%r14w, %r14d
	movsd	24(%rsp), %xmm4
	movq	%rsi, %rdx
	movq	%r9, %rcx
	movl	%r14d, %esi
	leaq	.LC14(%rip), %rdi
	movl	$5, %eax
	call	printf@PLT
	jmp	.L73
.L166:
	movzwl	%r14w, %r14d
	movsd	24(%rsp), %xmm4
	movq	%rsi, %rdx
	movq	%r9, %rcx
	movl	%r14d, %esi
	leaq	.LC17(%rip), %rdi
	movl	$5, %eax
	call	printf@PLT
	jmp	.L73
.L165:
	movzwl	%r14w, %r14d
	movsd	24(%rsp), %xmm4
	movq	%rsi, %rdx
	movq	%r9, %rcx
	movl	%r14d, %esi
	leaq	.LC16(%rip), %rdi
	movl	$5, %eax
	call	printf@PLT
	jmp	.L73
.L168:
	movzwl	%r14w, %r14d
	movsd	24(%rsp), %xmm4
	movq	%rsi, %rdx
	movq	%r9, %rcx
	movl	%r14d, %esi
	leaq	.LC20(%rip), %rdi
	movl	$5, %eax
	call	printf@PLT
	jmp	.L73
.L167:
	movzwl	%r14w, %r14d
	movq	%rsi, %rdx
	movq	%r9, %rcx
	movl	$5, %eax
	movapd	%xmm6, %xmm4
	movl	%r14d, %esi
	leaq	.LC18(%rip), %rdi
	call	printf@PLT
	jmp	.L73
.L173:
	movq	%rdi, %r12
	movq	%rbp, %rsi
	leaq	.LC22(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L73
.L177:
	movq	168(%rsp), %rdx
	movq	%rax, %r12
	xorl	%eax, %eax
	movq	%r14, %rsi
	leaq	.LC21(%rip), %rdi
	call	printf@PLT
.LEHE2:
	jmp	.L73
.L118:
	movq	%rax, %rbx
	jmp	.L108
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
	.uleb128 .L118-.LFB8153
	.uleb128 0
	.uleb128 .LEHB1-.LFB8153
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB8153
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L118-.LFB8153
	.uleb128 0
.LLSDACSE8153:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8153
	.type	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_.cold, @function
_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_.cold:
.LFSB8153:
.L108:
	.cfi_def_cfa_offset 256
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r12, %rdi
	call	free@PLT
	movq	%rbx, %rdi
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
	.cfi_endproc
.LFE8153:
	.section	.gcc_except_table
.LLSDAC8153:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8153-.LLSDACSBC8153
.LLSDACSBC8153:
	.uleb128 .LEHB3-.LCOLDB24
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSEC8153:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_, .-_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_
	.section	.text.unlikely
	.size	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_.cold, .-_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_.cold
.LCOLDE24:
	.text
.LHOTE24:
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC8:
	.long	442745336
	.long	1078765020
	.align 8
.LC9:
	.long	0
	.long	1081507840
	.align 8
.LC11:
	.long	-1571644103
	.long	1066524486
	.align 8
.LC23:
	.long	1413754136
	.long	1075388923
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
