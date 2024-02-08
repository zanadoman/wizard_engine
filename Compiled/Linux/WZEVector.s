	.file	"WZEVector.cpp"
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
	.type	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0, @function
_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0:
.LFB8340:
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
.LFE8340:
	.size	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0, .-_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0
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
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"wze::engine.vector.Length(): InitialX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\n"
	.align 8
.LC3:
	.string	"wze::engine.vector.Length(): InitialY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\n"
	.align 8
.LC4:
	.string	"wze::engine.vector.Length(): TerminalX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\n"
	.align 8
.LC5:
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
	jp	.L48
	ucomisd	%xmm1, %xmm1
	jp	.L49
	ucomisd	%xmm2, %xmm2
	jp	.L50
	ucomisd	%xmm3, %xmm3
	jp	.L51
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
.L48:
	.cfi_restore_state
	leaq	.LC2(%rip), %rdi
	movl	$4, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L51:
	leaq	.LC5(%rip), %rdi
	movl	$4, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L50:
	leaq	.LC4(%rip), %rdi
	movl	$4, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L49:
	leaq	.LC3(%rip), %rdi
	movl	$4, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8149:
	.size	_ZN3wze6engine6vector6LengthEdddd, .-_ZN3wze6engine6vector6LengthEdddd
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"wze::engine.vector.Angle(): InitialX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\n"
	.align 8
.LC7:
	.string	"wze::engine.vector.Angle(): InitialY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\n"
	.align 8
.LC8:
	.string	"wze::engine.vector.Angle(): TerminalX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\n"
	.align 8
.LC9:
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
	jp	.L75
	ucomisd	%xmm1, %xmm1
	jp	.L76
	ucomisd	%xmm2, %xmm2
	jp	.L77
	ucomisd	%xmm3, %xmm3
	jp	.L78
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
	ja	.L79
	call	acos@PLT
	mulsd	.LC10(%rip), %xmm0
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L79:
	.cfi_restore_state
	call	acos@PLT
	movsd	.LC10(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	.LC11(%rip), %xmm0
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	subsd	%xmm1, %xmm0
	ret
.L78:
	.cfi_restore_state
	leaq	.LC9(%rip), %rdi
	movl	$4, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L77:
	leaq	.LC8(%rip), %rdi
	movl	$4, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L76:
	leaq	.LC7(%rip), %rdi
	movl	$4, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L75:
	leaq	.LC6(%rip), %rdi
	movl	$4, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8150:
	.size	_ZN3wze6engine6vector5AngleEdddd, .-_ZN3wze6engine6vector5AngleEdddd
	.section	.rodata.str1.8
	.align 8
.LC12:
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
	jp	.L86
	mulsd	.LC13(%rip), %xmm2
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
.L86:
	.cfi_restore_state
	leaq	.LC12(%rip), %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8151:
	.size	_ZN3wze6engine6vector9TerminalXEddd, .-_ZN3wze6engine6vector9TerminalXEddd
	.section	.rodata.str1.8
	.align 8
.LC14:
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
	jp	.L93
	mulsd	.LC13(%rip), %xmm2
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
.L93:
	.cfi_restore_state
	leaq	.LC14(%rip), %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8152:
	.size	_ZN3wze6engine6vector9TerminalYEddd, .-_ZN3wze6engine6vector9TerminalYEddd
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"neo::array(): Memory allocation failed\nParams: Length: %lld\n"
	.align 8
.LC16:
	.ascii	"wz"
	.string	"e::engine.vector.RayCast(): InitialX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC17:
	.ascii	"wz"
	.string	"e::engine.vector.RayCast(): InitialY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC18:
	.ascii	"wze"
	.string	"::engine.vector.RayCast(): TerminalX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC19:
	.ascii	"wze"
	.string	"::engine.vector.RayCast(): TerminalY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC20:
	.ascii	"wze::e"
	.string	"ngine.vector.RayCast(): SamplingStep must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC22:
	.ascii	"wze::engine.vector.RayCast"
	.string	"(): SamplingStep must not be less than or equal to 0\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC23:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB25:
	.text
.LHOTB25:
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
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rcx, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	movq	(%rdi), %rcx
	movq	208(%rsp), %rax
	movl	%esi, 88(%rsp)
	movq	%rdx, 56(%rsp)
	movzwl	608(%rcx), %ebx
	movq	%rax, 72(%rsp)
	movq	216(%rsp), %rax
	movq	%r8, 80(%rsp)
	movq	%r9, 64(%rsp)
	movq	%rax, 48(%rsp)
	movw	%si, 94(%rsp)
	movsd	%xmm0, (%rsp)
	movsd	%xmm1, 8(%rsp)
	movsd	%xmm2, 16(%rsp)
	movsd	%xmm3, 24(%rsp)
	movsd	%xmm4, 32(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
	movq	%rbx, 112(%rsp)
	testq	%rbx, %rbx
	jne	.L95
	movq	$0, 120(%rsp)
	xorl	%r12d, %r12d
.L96:
	movsd	(%rsp), %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L191
	movsd	8(%rsp), %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L192
	movsd	16(%rsp), %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L193
	movsd	24(%rsp), %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L194
	movsd	32(%rsp), %xmm7
	ucomisd	%xmm7, %xmm7
	jp	.L195
	pxor	%xmm0, %xmm0
	comisd	32(%rsp), %xmm0
	jnb	.L196
	movsd	(%rsp), %xmm7
	ucomisd	16(%rsp), %xmm7
	movl	$0, %esi
	movsd	8(%rsp), %xmm4
	setnp	%dl
	cmovne	%esi, %edx
	ucomisd	24(%rsp), %xmm4
	setnp	%al
	cmovne	%esi, %eax
	andb	%al, %dl
	movb	%dl, 93(%rsp)
	jne	.L110
	movq	584(%rcx), %rsi
	cmpq	$1, %rsi
	jbe	.L146
	movl	$1, %ebx
	xorl	%r15d, %r15d
	jmp	.L132
	.p2align 4,,10
	.p2align 3
.L112:
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jnb	.L197
.L132:
	movq	592(%rcx), %rax
	leaq	0(,%rbx,8), %r13
	movq	(%rax,%rbx,8), %rdx
	testq	%rdx, %rdx
	je	.L112
	movq	208(%rdx), %rdi
	movq	56(%rsp), %r8
	xorl	%edx, %edx
	testq	%r14, %r14
	je	.L112
	cmpq	(%r8,%rdx,8), %rdi
	je	.L198
.L176:
	addq	$1, %rdx
	cmpq	%rdx, %r14
	je	.L112
	cmpq	(%r8,%rdx,8), %rdi
	jne	.L176
.L198:
	xorl	%edx, %edx
	cmpq	$0, 64(%rsp)
	movq	80(%rsp), %rdi
	je	.L116
.L144:
	cmpq	%rbx, (%rdi,%rdx,8)
	je	.L112
	addq	$1, %rdx
	cmpq	%rdx, 64(%rsp)
	jne	.L144
.L116:
	cmpq	%rsi, %rbx
	jnb	.L190
	movl	$1, %r12d
	.p2align 4,,10
	.p2align 3
.L118:
	movq	(%rax,%r13), %rax
	cmpq	152(%rax), %r12
	jnb	.L112
	movq	160(%rax), %rax
	leaq	0(,%r12,8), %rdx
	movq	%rdx, 40(%rsp)
	movq	(%rax,%r12,8), %rax
	testq	%rax, %rax
	jne	.L119
.L123:
	movq	592(%rcx), %rax
	addq	$1, %r12
	cmpq	%rsi, %rbx
	jb	.L118
.L190:
	movq	%rbx, %rsi
	leaq	.LC23(%rip), %rdi
	xorl	%eax, %eax
.LEHB0:
	call	printf@PLT
	jmp	.L101
	.p2align 4,,10
	.p2align 3
.L197:
	movq	120(%rsp), %r12
.L111:
	movzwl	88(%rsp), %eax
	pxor	%xmm0, %xmm0
	movsd	(%rsp), %xmm7
	movsd	8(%rsp), %xmm6
	shrw	%ax
	movapd	%xmm7, %xmm4
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	%xmm0, %xmm4
	addsd	%xmm6, %xmm0
	movsd	%xmm4, (%rsp)
	movsd	24(%rsp), %xmm4
	movsd	%xmm0, 8(%rsp)
	movsd	16(%rsp), %xmm0
	movapd	%xmm4, %xmm1
	comisd	%xmm4, %xmm6
	subsd	%xmm7, %xmm0
	subsd	%xmm6, %xmm1
	mulsd	%xmm1, %xmm1
	movapd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	sqrtsd	%xmm2, %xmm2
	divsd	%xmm2, %xmm0
	movsd	%xmm2, 16(%rsp)
	ja	.L199
	call	acos@PLT
	movsd	%xmm0, 24(%rsp)
.L135:
	movsd	16(%rsp), %xmm6
	pxor	%xmm0, %xmm0
	movzwl	94(%rsp), %r14d
	comisd	%xmm0, %xmm6
	jbe	.L180
.L138:
	testq	%r15, %r15
	je	.L141
	movq	112(%rsp), %r13
	xorl	%ebx, %ebx
	jmp	.L137
	.p2align 4,,10
	.p2align 3
.L201:
	addq	$1, %rbx
	cmpq	%r15, %rbx
	je	.L141
.L137:
	movq	0(%rbp), %rax
	leaq	600(%rax), %rdi
	cmpq	%rbx, %r13
	je	.L200
	pxor	%xmm2, %xmm2
	movsd	8(%rsp), %xmm1
	movsd	(%rsp), %xmm5
	cvtsi2sdl	%r14d, %xmm2
	movq	(%r12,%rbx,8), %rsi
	movapd	%xmm1, %xmm3
	movapd	%xmm5, %xmm0
	subsd	%xmm2, %xmm3
	addsd	%xmm5, %xmm2
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE@PLT
	testb	%al, %al
	je	.L201
.L110:
	movq	%r12, %rdi
	call	free@PLT
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L202
	movzbl	93(%rsp), %eax
	addq	$152, %rsp
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
.L199:
	.cfi_restore_state
	call	acos@PLT
	movsd	.LC24(%rip), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 24(%rsp)
	jmp	.L135
	.p2align 4,,10
	.p2align 3
.L119:
	movq	24(%rax), %rdx
	xorl	%eax, %eax
	cmpq	$0, 48(%rsp)
	movq	72(%rsp), %rdi
	je	.L122
.L121:
	cmpq	(%rdi,%rax,8), %rdx
	je	.L123
	addq	$1, %rax
	cmpq	%rax, 48(%rsp)
	jne	.L121
.L122:
	cmpq	%r15, 112(%rsp)
	je	.L203
.L125:
	movq	592(%rcx), %rax
	cmpq	%rsi, %rbx
	jnb	.L190
	movq	(%rax,%r13), %rdx
	movq	160(%rdx), %rdi
	cmpq	152(%rdx), %r12
	jnb	.L204
	movq	40(%rsp), %rdx
	movq	(%rdi,%rdx), %r8
	movq	120(%rsp), %rdi
	leaq	1(%r15), %rdx
	cmpq	112(%rsp), %r15
	jnb	.L205
	movq	%r8, (%rdi,%r15,8)
	addq	$1, %r12
	movq	%rdx, %r15
	jmp	.L118
	.p2align 4,,10
	.p2align 3
.L141:
	movsd	24(%rsp), %xmm0
	leaq	104(%rsp), %rdi
	leaq	96(%rsp), %rsi
	call	sincos@PLT
	movsd	32(%rsp), %xmm6
	movsd	96(%rsp), %xmm0
	movsd	16(%rsp), %xmm7
	mulsd	%xmm6, %xmm0
	addsd	(%rsp), %xmm0
	subsd	%xmm6, %xmm7
	movsd	%xmm0, (%rsp)
	movsd	104(%rsp), %xmm0
	movsd	%xmm7, 16(%rsp)
	mulsd	%xmm6, %xmm0
	addsd	8(%rsp), %xmm0
	movsd	%xmm0, 8(%rsp)
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm7
	ja	.L138
.L180:
	movb	$1, 93(%rsp)
	jmp	.L110
.L203:
	movzwl	608(%rcx), %eax
	leaq	112(%rsp), %rdi
	movq	%r15, %rsi
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0
.LEHE0:
	movq	0(%rbp), %rcx
	movq	584(%rcx), %rsi
	jmp	.L125
.L95:
	leaq	0(,%rbx,8), %rdi
	movq	%rcx, 40(%rsp)
	call	malloc@PLT
	movq	40(%rsp), %rcx
	testq	%rax, %rax
	movq	%rax, 120(%rsp)
	movq	%rax, %r12
	jne	.L96
	leaq	.LC15(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
.LEHB1:
	call	printf@PLT
.LEHE1:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L146:
	xorl	%r15d, %r15d
	jmp	.L111
.L200:
	movq	%r13, %rsi
	leaq	.LC23(%rip), %rdi
	xorl	%eax, %eax
.LEHB2:
	call	printf@PLT
.L101:
	movl	$1, %edi
	call	exit@PLT
.L205:
	movq	%r15, %rsi
	leaq	.LC23(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L101
.L193:
	movzwl	88(%rsp), %esi
	movq	48(%rsp), %r8
	movq	%r14, %rdx
	leaq	.LC18(%rip), %rdi
	movq	64(%rsp), %rcx
	movsd	32(%rsp), %xmm4
	movl	$5, %eax
	movsd	24(%rsp), %xmm3
	movsd	16(%rsp), %xmm2
	movsd	8(%rsp), %xmm1
	movsd	(%rsp), %xmm0
	call	printf@PLT
	jmp	.L101
.L192:
	movzwl	88(%rsp), %esi
	movq	48(%rsp), %r8
	movq	%r14, %rdx
	movapd	%xmm6, %xmm1
	movq	64(%rsp), %rcx
	movsd	(%rsp), %xmm0
	movl	$5, %eax
	leaq	.LC17(%rip), %rdi
	movsd	32(%rsp), %xmm4
	movsd	24(%rsp), %xmm3
	movsd	16(%rsp), %xmm2
	call	printf@PLT
	jmp	.L101
.L204:
	movq	%r12, %rsi
	leaq	.LC23(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L101
.L196:
	movzwl	88(%rsp), %esi
	movq	48(%rsp), %r8
	movq	%r14, %rdx
	leaq	.LC22(%rip), %rdi
	movq	64(%rsp), %rcx
	movsd	32(%rsp), %xmm4
	movl	$5, %eax
	movsd	24(%rsp), %xmm3
	movsd	16(%rsp), %xmm2
	movsd	8(%rsp), %xmm1
	movsd	(%rsp), %xmm0
	call	printf@PLT
	jmp	.L101
.L195:
	movzwl	88(%rsp), %esi
	movq	48(%rsp), %r8
	movq	%r14, %rdx
	movapd	%xmm7, %xmm4
	movq	64(%rsp), %rcx
	movsd	(%rsp), %xmm0
	movl	$5, %eax
	leaq	.LC20(%rip), %rdi
	movsd	24(%rsp), %xmm3
	movsd	16(%rsp), %xmm2
	movsd	8(%rsp), %xmm1
	call	printf@PLT
	jmp	.L101
.L194:
	movzwl	88(%rsp), %esi
	movq	48(%rsp), %r8
	movq	%r14, %rdx
	movapd	%xmm6, %xmm3
	movq	64(%rsp), %rcx
	movsd	(%rsp), %xmm0
	movl	$5, %eax
	leaq	.LC19(%rip), %rdi
	movsd	32(%rsp), %xmm4
	movsd	16(%rsp), %xmm2
	movsd	8(%rsp), %xmm1
	call	printf@PLT
	jmp	.L101
.L202:
	call	__stack_chk_fail@PLT
.L191:
	movzwl	88(%rsp), %esi
	movq	48(%rsp), %r8
	movq	%r14, %rdx
	leaq	.LC16(%rip), %rdi
	movq	64(%rsp), %rcx
	movsd	32(%rsp), %xmm4
	movl	$5, %eax
	movsd	24(%rsp), %xmm3
	movsd	16(%rsp), %xmm2
	movsd	8(%rsp), %xmm1
	movsd	(%rsp), %xmm0
	call	printf@PLT
.LEHE2:
	jmp	.L101
.L152:
	movq	%rax, %rbx
	jmp	.L142
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
	.uleb128 .L152-.LFB8153
	.uleb128 0
	.uleb128 .LEHB1-.LFB8153
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB8153
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L152-.LFB8153
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
.L142:
	.cfi_def_cfa_offset 208
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	120(%rsp), %rdi
	call	free@PLT
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L206
	movq	%rbx, %rdi
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
.L206:
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
	.uleb128 .LEHB3-.LCOLDB25
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSEC8153:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_, .-_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_
	.section	.text.unlikely
	.size	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_.cold, .-_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_.cold
.LCOLDE25:
	.text
.LHOTE25:
	.section	.rodata.str1.8
	.align 8
.LC26:
	.string	"wze::engine.vector.RayCast(): InitialX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC27:
	.string	"wze::engine.vector.RayCast(): InitialY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC28:
	.string	"wze::engine.vector.RayCast(): TerminalX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC29:
	.string	"wze::engine.vector.RayCast(): TerminalY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC30:
	.string	"wze::engine.vector.RayCast(): SamplingStep must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC31:
	.ascii	"wze::engine.vecto"
	.string	"r.RayCast(): SamplingStep must not be less than or equal to 0\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC32:
	.ascii	"wze:"
	.string	":engine.vector.RayCast(): ActorTypeWhiteList must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n"
	.section	.text.unlikely
	.align 2
.LCOLDB33:
	.text
.LHOTB33:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES7_
	.type	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES7_, @function
_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES7_:
.LFB8155:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8155
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
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	movq	(%rdi), %rdx
	movq	208(%rsp), %rax
	movl	%esi, 88(%rsp)
	movq	%rcx, 80(%rsp)
	movzwl	608(%rdx), %ebx
	movq	%rax, 72(%rsp)
	movq	216(%rsp), %rax
	movq	%r8, 64(%rsp)
	movq	%rax, 16(%rsp)
	movw	%si, 94(%rsp)
	movsd	%xmm0, 24(%rsp)
	movsd	%xmm1, 32(%rsp)
	movsd	%xmm2, 40(%rsp)
	movsd	%xmm3, 48(%rsp)
	movsd	%xmm4, 56(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
	movq	%rbx, 112(%rsp)
	testq	%rbx, %rbx
	jne	.L208
	movq	$0, 120(%rsp)
	xorl	%r12d, %r12d
.L209:
	movsd	24(%rsp), %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L305
	movsd	32(%rsp), %xmm7
	ucomisd	%xmm7, %xmm7
	jp	.L306
	movsd	40(%rsp), %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L307
	movsd	48(%rsp), %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L308
	movsd	56(%rsp), %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L309
	pxor	%xmm0, %xmm0
	comisd	56(%rsp), %xmm0
	jnb	.L310
	testq	%r14, %r14
	je	.L311
	movapd	%xmm7, %xmm4
	movsd	24(%rsp), %xmm7
	ucomisd	40(%rsp), %xmm7
	movl	$0, %esi
	setnp	%cl
	cmovne	%esi, %ecx
	ucomisd	48(%rsp), %xmm4
	setnp	%al
	cmovne	%esi, %eax
	andb	%al, %cl
	movb	%cl, 93(%rsp)
	jne	.L224
	movq	584(%rdx), %rsi
	cmpq	$1, %rsi
	jbe	.L260
	movl	$1, %ebx
	xorl	%r15d, %r15d
	.p2align 4,,10
	.p2align 3
.L246:
	movq	592(%rdx), %rax
	leaq	0(,%rbx,8), %r13
	movq	(%rax,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L226
	movq	(%r14), %rdi
	movq	208(%rcx), %r8
	xorl	%ecx, %ecx
	movq	8(%r14), %r9
	testq	%rdi, %rdi
	je	.L226
.L227:
	cmpq	(%r9,%rcx,8), %r8
	je	.L312
	addq	$1, %rcx
	cmpq	%rcx, %rdi
	jne	.L227
	.p2align 4,,10
	.p2align 3
.L226:
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jb	.L246
	movq	120(%rsp), %r12
.L225:
	movzwl	88(%rsp), %eax
	pxor	%xmm0, %xmm0
	movsd	24(%rsp), %xmm7
	movsd	32(%rsp), %xmm6
	shrw	%ax
	movapd	%xmm7, %xmm4
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	%xmm0, %xmm4
	addsd	%xmm6, %xmm0
	movsd	%xmm4, 8(%rsp)
	movsd	48(%rsp), %xmm4
	movsd	%xmm0, 16(%rsp)
	movsd	40(%rsp), %xmm0
	movapd	%xmm4, %xmm1
	comisd	%xmm4, %xmm6
	subsd	%xmm7, %xmm0
	subsd	%xmm6, %xmm1
	mulsd	%xmm1, %xmm1
	movapd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	sqrtsd	%xmm2, %xmm2
	divsd	%xmm2, %xmm0
	movsd	%xmm2, 24(%rsp)
	ja	.L313
	call	acos@PLT
	movsd	%xmm0, 32(%rsp)
.L249:
	movsd	24(%rsp), %xmm6
	pxor	%xmm0, %xmm0
	movzwl	94(%rsp), %r14d
	comisd	%xmm0, %xmm6
	jbe	.L295
.L252:
	testq	%r15, %r15
	je	.L255
	movq	112(%rsp), %r13
	xorl	%ebx, %ebx
	jmp	.L251
	.p2align 4,,10
	.p2align 3
.L315:
	addq	$1, %rbx
	cmpq	%r15, %rbx
	je	.L255
.L251:
	movq	0(%rbp), %rax
	leaq	600(%rax), %rdi
	cmpq	%rbx, %r13
	je	.L314
	pxor	%xmm2, %xmm2
	movsd	16(%rsp), %xmm1
	movsd	8(%rsp), %xmm5
	cvtsi2sdl	%r14d, %xmm2
	movq	(%r12,%rbx,8), %rsi
	movapd	%xmm1, %xmm3
	movapd	%xmm5, %xmm0
	subsd	%xmm2, %xmm3
	addsd	%xmm5, %xmm2
.LEHB4:
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE@PLT
	testb	%al, %al
	je	.L315
.L224:
	movq	%r12, %rdi
	call	free@PLT
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L316
	movzbl	93(%rsp), %eax
	addq	$152, %rsp
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
.L312:
	.cfi_restore_state
	xorl	%ecx, %ecx
	cmpq	$0, 64(%rsp)
	movq	80(%rsp), %rdi
	je	.L230
.L258:
	cmpq	(%rdi,%rcx,8), %rbx
	je	.L226
	addq	$1, %rcx
	cmpq	%rcx, 64(%rsp)
	jne	.L258
.L230:
	cmpq	%rsi, %rbx
	jnb	.L304
	movl	$1, %r12d
	.p2align 4,,10
	.p2align 3
.L232:
	movq	(%rax,%r13), %rax
	cmpq	152(%rax), %r12
	jnb	.L226
	movq	160(%rax), %rax
	leaq	0(,%r12,8), %rcx
	movq	%rcx, 8(%rsp)
	movq	(%rax,%r12,8), %rax
	testq	%rax, %rax
	jne	.L233
.L237:
	movq	592(%rdx), %rax
	addq	$1, %r12
	cmpq	%rsi, %rbx
	jb	.L232
.L304:
	movq	%rbx, %rsi
	leaq	.LC23(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.L214:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L233:
	movq	24(%rax), %rcx
	xorl	%eax, %eax
	cmpq	$0, 16(%rsp)
	movq	72(%rsp), %rdi
	je	.L236
.L235:
	cmpq	(%rdi,%rax,8), %rcx
	je	.L237
	addq	$1, %rax
	cmpq	%rax, 16(%rsp)
	jne	.L235
.L236:
	cmpq	%r15, 112(%rsp)
	je	.L317
.L239:
	movq	592(%rdx), %rax
	cmpq	%rsi, %rbx
	jnb	.L304
	movq	(%rax,%r13), %rcx
	movq	160(%rcx), %rdi
	cmpq	152(%rcx), %r12
	jnb	.L318
	movq	8(%rsp), %rcx
	movq	(%rdi,%rcx), %r8
	movq	120(%rsp), %rdi
	leaq	1(%r15), %rcx
	cmpq	112(%rsp), %r15
	jnb	.L319
	movq	%r8, (%rdi,%r15,8)
	addq	$1, %r12
	movq	%rcx, %r15
	jmp	.L232
	.p2align 4,,10
	.p2align 3
.L317:
	movzwl	608(%rdx), %eax
	leaq	112(%rsp), %rdi
	movq	%r15, %rsi
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0
.LEHE4:
	movq	0(%rbp), %rdx
	movq	584(%rdx), %rsi
	jmp	.L239
.L313:
	call	acos@PLT
	movsd	.LC24(%rip), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 32(%rsp)
	jmp	.L249
	.p2align 4,,10
	.p2align 3
.L255:
	movsd	32(%rsp), %xmm0
	leaq	104(%rsp), %rdi
	leaq	96(%rsp), %rsi
	call	sincos@PLT
	movsd	56(%rsp), %xmm6
	movsd	96(%rsp), %xmm0
	movsd	24(%rsp), %xmm7
	mulsd	%xmm6, %xmm0
	addsd	8(%rsp), %xmm0
	subsd	%xmm6, %xmm7
	movsd	%xmm0, 8(%rsp)
	movsd	104(%rsp), %xmm0
	movsd	%xmm7, 24(%rsp)
	mulsd	%xmm6, %xmm0
	addsd	16(%rsp), %xmm0
	movsd	%xmm0, 16(%rsp)
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm7
	ja	.L252
.L295:
	movb	$1, 93(%rsp)
	jmp	.L224
.L208:
	leaq	0(,%rbx,8), %rdi
	movq	%rdx, 8(%rsp)
	call	malloc@PLT
	movq	8(%rsp), %rdx
	testq	%rax, %rax
	movq	%rax, 120(%rsp)
	movq	%rax, %r12
	jne	.L209
	leaq	.LC15(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
.LEHB5:
	call	printf@PLT
.LEHE5:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L260:
	xorl	%r15d, %r15d
	jmp	.L225
.L314:
	movq	%r13, %rsi
	leaq	.LC23(%rip), %rdi
	xorl	%eax, %eax
.LEHB6:
	call	printf@PLT
	jmp	.L214
.L311:
	movzwl	88(%rsp), %esi
	movq	16(%rsp), %r8
	xorl	%edx, %edx
	leaq	.LC32(%rip), %rdi
	movq	64(%rsp), %rcx
	movsd	56(%rsp), %xmm4
	movl	$5, %eax
	movsd	48(%rsp), %xmm3
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
	jmp	.L214
.L316:
	call	__stack_chk_fail@PLT
.L319:
	movq	%r15, %rsi
	leaq	.LC23(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L214
.L310:
	movzwl	88(%rsp), %esi
	movq	16(%rsp), %r8
	movq	%r14, %rdx
	leaq	.LC31(%rip), %rdi
	movq	64(%rsp), %rcx
	movsd	56(%rsp), %xmm4
	movl	$5, %eax
	movsd	48(%rsp), %xmm3
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
	jmp	.L214
.L318:
	movq	%r12, %rsi
	leaq	.LC23(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L214
.L308:
	movzwl	88(%rsp), %esi
	movq	16(%rsp), %r8
	movq	%r14, %rdx
	movapd	%xmm6, %xmm3
	movq	64(%rsp), %rcx
	movsd	56(%rsp), %xmm4
	leaq	.LC29(%rip), %rdi
	movl	$5, %eax
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
	jmp	.L214
.L307:
	movzwl	88(%rsp), %esi
	movq	16(%rsp), %r8
	movq	%r14, %rdx
	leaq	.LC28(%rip), %rdi
	movq	64(%rsp), %rcx
	movsd	56(%rsp), %xmm4
	movl	$5, %eax
	movsd	48(%rsp), %xmm3
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
	jmp	.L214
.L306:
	movzwl	88(%rsp), %esi
	movq	16(%rsp), %r8
	movq	%r14, %rdx
	movapd	%xmm7, %xmm1
	movq	64(%rsp), %rcx
	movsd	56(%rsp), %xmm4
	leaq	.LC27(%rip), %rdi
	movl	$5, %eax
	movsd	48(%rsp), %xmm3
	movsd	40(%rsp), %xmm2
	movsd	24(%rsp), %xmm0
	call	printf@PLT
	jmp	.L214
.L305:
	movzwl	88(%rsp), %esi
	movq	16(%rsp), %r8
	movq	%r14, %rdx
	movapd	%xmm6, %xmm0
	movq	64(%rsp), %rcx
	movsd	56(%rsp), %xmm4
	leaq	.LC26(%rip), %rdi
	movl	$5, %eax
	movsd	48(%rsp), %xmm3
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	call	printf@PLT
	jmp	.L214
.L309:
	movzwl	88(%rsp), %esi
	movq	16(%rsp), %r8
	movq	%r14, %rdx
	leaq	.LC30(%rip), %rdi
	movq	64(%rsp), %rcx
	movsd	48(%rsp), %xmm3
	movl	$5, %eax
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
.LEHE6:
	jmp	.L214
.L265:
	movq	%rax, %rbx
	jmp	.L256
	.section	.gcc_except_table
.LLSDA8155:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8155-.LLSDACSB8155
.LLSDACSB8155:
	.uleb128 .LEHB4-.LFB8155
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L265-.LFB8155
	.uleb128 0
	.uleb128 .LEHB5-.LFB8155
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB8155
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L265-.LFB8155
	.uleb128 0
.LLSDACSE8155:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8155
	.type	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES7_.cold, @function
_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES7_.cold:
.LFSB8155:
.L256:
	.cfi_def_cfa_offset 208
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	120(%rsp), %rdi
	call	free@PLT
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L320
	movq	%rbx, %rdi
.LEHB7:
	call	_Unwind_Resume@PLT
.LEHE7:
.L320:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8155:
	.section	.gcc_except_table
.LLSDAC8155:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8155-.LLSDACSBC8155
.LLSDACSBC8155:
	.uleb128 .LEHB7-.LCOLDB33
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSEC8155:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES7_, .-_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES7_
	.section	.text.unlikely
	.size	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES7_.cold, .-_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES7_.cold
.LCOLDE33:
	.text
.LHOTE33:
	.section	.rodata.str1.8
	.align 8
.LC34:
	.string	"wze::engine.vector.RayCast(): InitialX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC35:
	.string	"wze::engine.vector.RayCast(): InitialY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC36:
	.string	"wze::engine.vector.RayCast(): TerminalX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC37:
	.string	"wze::engine.vector.RayCast(): TerminalY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC38:
	.string	"wze::engine.vector.RayCast(): SamplingStep must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC39:
	.ascii	"wze::engine.vecto"
	.string	"r.RayCast(): SamplingStep must not be less than or equal to 0\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC40:
	.ascii	"wz"
	.string	"e::engine.vector.RayCast(): ActorIDBlacklist must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n"
	.section	.text.unlikely
	.align 2
.LCOLDB41:
	.text
.LHOTB41:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES3_
	.type	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES3_, @function
_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES3_:
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
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	movq	208(%rsp), %rax
	movq	%rdx, 72(%rsp)
	movq	(%rdi), %rdx
	movl	%esi, 88(%rsp)
	movq	%rax, 64(%rsp)
	movq	216(%rsp), %rax
	movq	%rcx, 8(%rsp)
	movzwl	608(%rdx), %ebx
	movq	%r8, 56(%rsp)
	movq	%rax, (%rsp)
	movw	%si, 94(%rsp)
	movsd	%xmm0, 16(%rsp)
	movsd	%xmm1, 24(%rsp)
	movsd	%xmm2, 32(%rsp)
	movsd	%xmm3, 40(%rsp)
	movsd	%xmm4, 48(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
	movq	%rbx, 112(%rsp)
	testq	%rbx, %rbx
	jne	.L322
	movq	$0, 120(%rsp)
	xorl	%r12d, %r12d
.L323:
	movsd	16(%rsp), %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L421
	movsd	24(%rsp), %xmm7
	ucomisd	%xmm7, %xmm7
	jp	.L422
	movsd	32(%rsp), %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L423
	movsd	40(%rsp), %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L424
	movsd	48(%rsp), %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L425
	pxor	%xmm0, %xmm0
	comisd	48(%rsp), %xmm0
	jnb	.L426
	cmpq	$0, 56(%rsp)
	je	.L427
	movsd	16(%rsp), %xmm4
	ucomisd	32(%rsp), %xmm4
	movl	$0, %esi
	setnp	%cl
	cmovne	%esi, %ecx
	ucomisd	40(%rsp), %xmm7
	setnp	%al
	cmovne	%esi, %eax
	andb	%al, %cl
	movb	%cl, 80(%rsp)
	jne	.L338
	movq	584(%rdx), %rsi
	cmpq	$1, %rsi
	jbe	.L374
	movl	$1, %ebx
	xorl	%r15d, %r15d
	jmp	.L360
	.p2align 4,,10
	.p2align 3
.L340:
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jnb	.L428
.L360:
	movq	592(%rdx), %rax
	leaq	0(,%rbx,8), %r13
	movq	(%rax,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L340
	movq	208(%rcx), %rdi
	xorl	%ecx, %ecx
	cmpq	$0, 8(%rsp)
	movq	72(%rsp), %r8
	je	.L340
	cmpq	(%r8,%rcx,8), %rdi
	je	.L429
.L405:
	addq	$1, %rcx
	cmpq	%rcx, 8(%rsp)
	je	.L340
	cmpq	(%r8,%rcx,8), %rdi
	jne	.L405
.L429:
	movq	56(%rsp), %rcx
	movq	(%rcx), %rdi
	movq	8(%rcx), %r8
	xorl	%ecx, %ecx
	testq	%rdi, %rdi
	je	.L344
.L372:
	cmpq	%rbx, (%r8,%rcx,8)
	je	.L340
	addq	$1, %rcx
	cmpq	%rcx, %rdi
	jne	.L372
	.p2align 4,,10
	.p2align 3
.L344:
	cmpq	%rsi, %rbx
	jnb	.L420
	movl	$1, %r12d
	.p2align 4,,10
	.p2align 3
.L346:
	movq	(%rax,%r13), %rax
	cmpq	152(%rax), %r12
	jnb	.L340
	movq	160(%rax), %rax
	leaq	0(,%r12,8), %r14
	movq	(%rax,%r12,8), %rax
	testq	%rax, %rax
	jne	.L347
.L351:
	movq	592(%rdx), %rax
	addq	$1, %r12
	cmpq	%rsi, %rbx
	jb	.L346
.L420:
	movq	%rbx, %rsi
	leaq	.LC23(%rip), %rdi
	xorl	%eax, %eax
.LEHB8:
	call	printf@PLT
.L328:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L347:
	movq	24(%rax), %rcx
	xorl	%eax, %eax
	cmpq	$0, (%rsp)
	movq	64(%rsp), %rdi
	je	.L350
.L349:
	cmpq	(%rdi,%rax,8), %rcx
	je	.L351
	addq	$1, %rax
	cmpq	%rax, (%rsp)
	jne	.L349
.L350:
	cmpq	%r15, 112(%rsp)
	je	.L430
.L353:
	movq	592(%rdx), %rax
	cmpq	%rsi, %rbx
	jnb	.L420
	movq	(%rax,%r13), %rcx
	movq	160(%rcx), %rdi
	cmpq	152(%rcx), %r12
	jnb	.L431
	movq	(%rdi,%r14), %r8
	leaq	1(%r15), %rcx
	movq	120(%rsp), %rdi
	cmpq	112(%rsp), %r15
	jnb	.L432
	movq	%r8, (%rdi,%r15,8)
	addq	$1, %r12
	movq	%rcx, %r15
	jmp	.L346
	.p2align 4,,10
	.p2align 3
.L428:
	movq	120(%rsp), %r12
.L339:
	movzwl	88(%rsp), %eax
	pxor	%xmm0, %xmm0
	movsd	16(%rsp), %xmm7
	movsd	24(%rsp), %xmm6
	shrw	%ax
	movapd	%xmm7, %xmm4
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	%xmm0, %xmm4
	addsd	%xmm6, %xmm0
	movsd	%xmm4, (%rsp)
	movsd	40(%rsp), %xmm4
	movsd	%xmm0, 8(%rsp)
	movsd	32(%rsp), %xmm0
	movapd	%xmm4, %xmm1
	comisd	%xmm4, %xmm6
	subsd	%xmm7, %xmm0
	subsd	%xmm6, %xmm1
	mulsd	%xmm1, %xmm1
	movapd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	sqrtsd	%xmm2, %xmm2
	divsd	%xmm2, %xmm0
	movsd	%xmm2, 16(%rsp)
	ja	.L433
	call	acos@PLT
	movsd	%xmm0, 24(%rsp)
.L363:
	movsd	16(%rsp), %xmm6
	pxor	%xmm0, %xmm0
	movzwl	94(%rsp), %r14d
	comisd	%xmm0, %xmm6
	jbe	.L409
.L366:
	testq	%r15, %r15
	je	.L369
	movq	112(%rsp), %r13
	xorl	%ebx, %ebx
	jmp	.L365
	.p2align 4,,10
	.p2align 3
.L434:
	addq	$1, %rbx
	cmpq	%r15, %rbx
	je	.L369
.L365:
	movq	0(%rbp), %rax
	leaq	600(%rax), %rdi
	cmpq	%r13, %rbx
	je	.L420
	pxor	%xmm2, %xmm2
	movsd	8(%rsp), %xmm1
	movsd	(%rsp), %xmm5
	cvtsi2sdl	%r14d, %xmm2
	movq	(%r12,%rbx,8), %rsi
	movapd	%xmm1, %xmm3
	movapd	%xmm5, %xmm0
	subsd	%xmm2, %xmm3
	addsd	%xmm5, %xmm2
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE@PLT
	testb	%al, %al
	je	.L434
.L338:
	movq	%r12, %rdi
	call	free@PLT
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L435
	movzbl	80(%rsp), %eax
	addq	$152, %rsp
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
	.p2align 4,,10
	.p2align 3
.L430:
	.cfi_restore_state
	movzwl	608(%rdx), %eax
	leaq	112(%rsp), %rdi
	movq	%r15, %rsi
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0
.LEHE8:
	movq	0(%rbp), %rdx
	movq	584(%rdx), %rsi
	jmp	.L353
.L433:
	call	acos@PLT
	movsd	.LC24(%rip), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 24(%rsp)
	jmp	.L363
	.p2align 4,,10
	.p2align 3
.L369:
	movsd	24(%rsp), %xmm0
	leaq	104(%rsp), %rdi
	leaq	96(%rsp), %rsi
	call	sincos@PLT
	movsd	48(%rsp), %xmm6
	movsd	96(%rsp), %xmm0
	movsd	16(%rsp), %xmm7
	mulsd	%xmm6, %xmm0
	addsd	(%rsp), %xmm0
	subsd	%xmm6, %xmm7
	movsd	%xmm0, (%rsp)
	movsd	104(%rsp), %xmm0
	movsd	%xmm7, 16(%rsp)
	mulsd	%xmm6, %xmm0
	addsd	8(%rsp), %xmm0
	movsd	%xmm0, 8(%rsp)
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm7
	ja	.L366
.L409:
	movb	$1, 80(%rsp)
	jmp	.L338
.L322:
	leaq	0(,%rbx,8), %rdi
	movq	%rdx, 80(%rsp)
	call	malloc@PLT
	movq	80(%rsp), %rdx
	testq	%rax, %rax
	movq	%rax, 120(%rsp)
	movq	%rax, %r12
	jne	.L323
	leaq	.LC15(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
.LEHB9:
	call	printf@PLT
.LEHE9:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L374:
	xorl	%r15d, %r15d
	jmp	.L339
.L423:
	movzwl	88(%rsp), %esi
	movq	(%rsp), %r8
	movl	$5, %eax
	leaq	.LC36(%rip), %rdi
	movq	56(%rsp), %rcx
	movq	8(%rsp), %rdx
	movsd	48(%rsp), %xmm4
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
.LEHB10:
	call	printf@PLT
	jmp	.L328
.L422:
	movzwl	88(%rsp), %esi
	movq	(%rsp), %r8
	movapd	%xmm7, %xmm1
	leaq	.LC35(%rip), %rdi
	movq	56(%rsp), %rcx
	movq	8(%rsp), %rdx
	movl	$5, %eax
	movsd	48(%rsp), %xmm4
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L328
.L435:
	call	__stack_chk_fail@PLT
.L432:
	movq	%r15, %rsi
	leaq	.LC23(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L328
.L424:
	movzwl	88(%rsp), %esi
	movq	(%rsp), %r8
	movapd	%xmm6, %xmm3
	leaq	.LC37(%rip), %rdi
	movq	56(%rsp), %rcx
	movq	8(%rsp), %rdx
	movl	$5, %eax
	movsd	48(%rsp), %xmm4
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L328
.L421:
	movzwl	88(%rsp), %esi
	movq	(%rsp), %r8
	movapd	%xmm6, %xmm0
	leaq	.LC34(%rip), %rdi
	movq	56(%rsp), %rcx
	movq	8(%rsp), %rdx
	movl	$5, %eax
	movsd	48(%rsp), %xmm4
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	call	printf@PLT
	jmp	.L328
.L431:
	movq	%r12, %rsi
	leaq	.LC23(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L328
.L427:
	movzwl	88(%rsp), %esi
	movq	(%rsp), %r8
	xorl	%ecx, %ecx
	movl	$5, %eax
	movq	8(%rsp), %rdx
	movsd	48(%rsp), %xmm4
	leaq	.LC40(%rip), %rdi
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L328
.L426:
	movzwl	88(%rsp), %esi
	movq	(%rsp), %r8
	movl	$5, %eax
	leaq	.LC39(%rip), %rdi
	movq	56(%rsp), %rcx
	movq	8(%rsp), %rdx
	movsd	48(%rsp), %xmm4
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L328
.L425:
	movzwl	88(%rsp), %esi
	movq	(%rsp), %r8
	movl	$5, %eax
	leaq	.LC38(%rip), %rdi
	movq	56(%rsp), %rcx
	movq	8(%rsp), %rdx
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
.LEHE10:
	jmp	.L328
.L379:
	movq	%rax, %rbx
	jmp	.L370
	.section	.gcc_except_table
.LLSDA8156:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8156-.LLSDACSB8156
.LLSDACSB8156:
	.uleb128 .LEHB8-.LFB8156
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L379-.LFB8156
	.uleb128 0
	.uleb128 .LEHB9-.LFB8156
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB8156
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L379-.LFB8156
	.uleb128 0
.LLSDACSE8156:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8156
	.type	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES3_.cold, @function
_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES3_.cold:
.LFSB8156:
.L370:
	.cfi_def_cfa_offset 208
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	120(%rsp), %rdi
	call	free@PLT
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L436
	movq	%rbx, %rdi
.LEHB11:
	call	_Unwind_Resume@PLT
.LEHE11:
.L436:
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
	.uleb128 .LEHB11-.LCOLDB41
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSEC8156:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES3_, .-_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES3_
	.section	.text.unlikely
	.size	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES3_.cold, .-_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES3_.cold
.LCOLDE41:
	.text
.LHOTE41:
	.section	.rodata.str1.8
	.align 8
.LC42:
	.string	"wze::engine.vector.RayCast(): InitialX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC43:
	.string	"wze::engine.vector.RayCast(): InitialY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC44:
	.string	"wze::engine.vector.RayCast(): TerminalX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC45:
	.string	"wze::engine.vector.RayCast(): TerminalY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC46:
	.string	"wze::engine.vector.RayCast(): SamplingStep must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC47:
	.ascii	"wze::engine.vecto"
	.string	"r.RayCast(): SamplingStep must not be less than or equal to 0\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC48:
	.ascii	"wze::engi"
	.string	"ne.vector.RayCast(): OverlapboxTypeBlacklist must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n"
	.section	.text.unlikely
	.align 2
.LCOLDB49:
	.text
.LHOTB49:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_PN3neo5arrayIyEE
	.type	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_PN3neo5arrayIyEE, @function
_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_PN3neo5arrayIyEE:
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
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	movq	%rcx, (%rsp)
	movq	(%rdi), %rcx
	movl	%esi, 80(%rsp)
	movq	208(%rsp), %r14
	movq	%rdx, 56(%rsp)
	movzwl	608(%rcx), %ebx
	movq	%r8, 72(%rsp)
	movq	%r9, 64(%rsp)
	movw	%si, 86(%rsp)
	movsd	%xmm0, 16(%rsp)
	movsd	%xmm1, 24(%rsp)
	movsd	%xmm2, 32(%rsp)
	movsd	%xmm3, 40(%rsp)
	movsd	%xmm4, 48(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
	movq	%rbx, 112(%rsp)
	testq	%rbx, %rbx
	jne	.L438
	movq	$0, 120(%rsp)
	xorl	%r12d, %r12d
.L439:
	movsd	16(%rsp), %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L537
	movsd	24(%rsp), %xmm7
	ucomisd	%xmm7, %xmm7
	jp	.L538
	movsd	32(%rsp), %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L539
	movsd	40(%rsp), %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L540
	movsd	48(%rsp), %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L541
	pxor	%xmm0, %xmm0
	comisd	48(%rsp), %xmm0
	jnb	.L542
	testq	%r14, %r14
	je	.L543
	movsd	16(%rsp), %xmm4
	ucomisd	32(%rsp), %xmm4
	movl	$0, %esi
	setnp	%dl
	cmovne	%esi, %edx
	ucomisd	40(%rsp), %xmm7
	setnp	%al
	cmovne	%esi, %eax
	andb	%al, %dl
	movb	%dl, 85(%rsp)
	jne	.L454
	movq	584(%rcx), %rsi
	cmpq	$1, %rsi
	jbe	.L490
	movl	$1, %ebx
	xorl	%r15d, %r15d
	jmp	.L476
	.p2align 4,,10
	.p2align 3
.L456:
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jnb	.L544
.L476:
	movq	592(%rcx), %rax
	leaq	0(,%rbx,8), %r13
	movq	(%rax,%rbx,8), %rdx
	testq	%rdx, %rdx
	je	.L456
	movq	208(%rdx), %rdi
	xorl	%edx, %edx
	cmpq	$0, (%rsp)
	movq	56(%rsp), %r8
	je	.L456
	cmpq	(%r8,%rdx,8), %rdi
	je	.L545
.L521:
	addq	$1, %rdx
	cmpq	%rdx, (%rsp)
	je	.L456
	cmpq	(%r8,%rdx,8), %rdi
	jne	.L521
.L545:
	xorl	%edx, %edx
	cmpq	$0, 64(%rsp)
	movq	72(%rsp), %rdi
	je	.L460
.L488:
	cmpq	%rbx, (%rdi,%rdx,8)
	je	.L456
	addq	$1, %rdx
	cmpq	%rdx, 64(%rsp)
	jne	.L488
.L460:
	cmpq	%rsi, %rbx
	jnb	.L536
	leaq	112(%rsp), %rdi
	movl	$1, %r12d
	movq	%rdi, 88(%rsp)
	.p2align 4,,10
	.p2align 3
.L462:
	movq	(%rax,%r13), %rax
	cmpq	152(%rax), %r12
	jnb	.L456
	movq	160(%rax), %rax
	leaq	0(,%r12,8), %rdx
	movq	%rdx, 8(%rsp)
	movq	(%rax,%r12,8), %rax
	testq	%rax, %rax
	je	.L467
	movq	(%r14), %rdx
	movq	24(%rax), %rdi
	xorl	%eax, %eax
	movq	8(%r14), %r8
	testq	%rdx, %rdx
	je	.L465
.L466:
	cmpq	(%r8,%rax,8), %rdi
	je	.L467
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L466
	.p2align 4,,10
	.p2align 3
.L465:
	cmpq	%r15, 112(%rsp)
	je	.L546
.L469:
	movq	592(%rcx), %rax
	cmpq	%rsi, %rbx
	jnb	.L536
	movq	(%rax,%r13), %rdx
	movq	160(%rdx), %rdi
	cmpq	152(%rdx), %r12
	jnb	.L547
	movq	8(%rsp), %rdx
	movq	(%rdi,%rdx), %r8
	movq	120(%rsp), %rdi
	leaq	1(%r15), %rdx
	cmpq	112(%rsp), %r15
	jnb	.L548
	movq	%r8, (%rdi,%r15,8)
	addq	$1, %r12
	movq	%rdx, %r15
	jmp	.L462
	.p2align 4,,10
	.p2align 3
.L544:
	movq	120(%rsp), %r12
.L455:
	movzwl	80(%rsp), %eax
	pxor	%xmm0, %xmm0
	movsd	16(%rsp), %xmm7
	movsd	24(%rsp), %xmm6
	shrw	%ax
	movapd	%xmm7, %xmm4
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	%xmm0, %xmm4
	addsd	%xmm6, %xmm0
	movsd	%xmm4, (%rsp)
	movsd	40(%rsp), %xmm4
	movsd	%xmm0, 8(%rsp)
	movsd	32(%rsp), %xmm0
	movapd	%xmm4, %xmm1
	comisd	%xmm4, %xmm6
	subsd	%xmm7, %xmm0
	subsd	%xmm6, %xmm1
	mulsd	%xmm1, %xmm1
	movapd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	sqrtsd	%xmm2, %xmm2
	divsd	%xmm2, %xmm0
	movsd	%xmm2, 16(%rsp)
	ja	.L549
	call	acos@PLT
	movsd	%xmm0, 24(%rsp)
.L479:
	movsd	16(%rsp), %xmm6
	pxor	%xmm0, %xmm0
	movzwl	86(%rsp), %r14d
	comisd	%xmm0, %xmm6
	jbe	.L525
.L482:
	testq	%r15, %r15
	je	.L485
	movq	112(%rsp), %r13
	xorl	%ebx, %ebx
	jmp	.L481
	.p2align 4,,10
	.p2align 3
.L550:
	addq	$1, %rbx
	cmpq	%r15, %rbx
	je	.L485
.L481:
	movq	0(%rbp), %rax
	leaq	600(%rax), %rdi
	cmpq	%r13, %rbx
	je	.L536
	pxor	%xmm2, %xmm2
	movsd	8(%rsp), %xmm1
	movsd	(%rsp), %xmm5
	cvtsi2sdl	%r14d, %xmm2
	movq	(%r12,%rbx,8), %rsi
	movapd	%xmm1, %xmm3
	movapd	%xmm5, %xmm0
	subsd	%xmm2, %xmm3
	addsd	%xmm5, %xmm2
.LEHB12:
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE@PLT
	testb	%al, %al
	je	.L550
.L454:
	movq	%r12, %rdi
	call	free@PLT
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L551
	movzbl	85(%rsp), %eax
	addq	$152, %rsp
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
.L549:
	.cfi_restore_state
	call	acos@PLT
	movsd	.LC24(%rip), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 24(%rsp)
	jmp	.L479
	.p2align 4,,10
	.p2align 3
.L467:
	movq	592(%rcx), %rax
	addq	$1, %r12
	cmpq	%rsi, %rbx
	jb	.L462
.L536:
	movq	%rbx, %rsi
	leaq	.LC23(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.L444:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L485:
	movsd	24(%rsp), %xmm0
	leaq	104(%rsp), %rdi
	leaq	96(%rsp), %rsi
	call	sincos@PLT
	movsd	48(%rsp), %xmm6
	movsd	96(%rsp), %xmm0
	movsd	16(%rsp), %xmm7
	mulsd	%xmm6, %xmm0
	addsd	(%rsp), %xmm0
	subsd	%xmm6, %xmm7
	movsd	%xmm0, (%rsp)
	movsd	104(%rsp), %xmm0
	movsd	%xmm7, 16(%rsp)
	mulsd	%xmm6, %xmm0
	addsd	8(%rsp), %xmm0
	movsd	%xmm0, 8(%rsp)
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm7
	ja	.L482
.L525:
	movb	$1, 85(%rsp)
	jmp	.L454
	.p2align 4,,10
	.p2align 3
.L546:
	movzwl	608(%rcx), %eax
	movq	88(%rsp), %rdi
	movq	%r15, %rsi
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0
.LEHE12:
	movq	0(%rbp), %rcx
	movq	584(%rcx), %rsi
	jmp	.L469
.L438:
	leaq	0(,%rbx,8), %rdi
	movq	%rcx, 8(%rsp)
	call	malloc@PLT
	movq	8(%rsp), %rcx
	testq	%rax, %rax
	movq	%rax, 120(%rsp)
	movq	%rax, %r12
	jne	.L439
	leaq	.LC15(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
.LEHB13:
	call	printf@PLT
.LEHE13:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L490:
	xorl	%r15d, %r15d
	jmp	.L455
.L537:
	movzwl	80(%rsp), %esi
	movq	(%rsp), %rdx
	movq	%r14, %r8
	movapd	%xmm6, %xmm0
	movq	64(%rsp), %rcx
	movsd	48(%rsp), %xmm4
	leaq	.LC42(%rip), %rdi
	movl	$5, %eax
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
.LEHB14:
	call	printf@PLT
	jmp	.L444
.L551:
	call	__stack_chk_fail@PLT
.L541:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	movq	%r14, %r8
	leaq	.LC46(%rip), %rdi
	movq	(%rsp), %rdx
	movsd	40(%rsp), %xmm3
	movl	$5, %eax
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L444
.L540:
	movzwl	80(%rsp), %esi
	movq	(%rsp), %rdx
	movq	%r14, %r8
	movapd	%xmm6, %xmm3
	movq	64(%rsp), %rcx
	movsd	48(%rsp), %xmm4
	leaq	.LC45(%rip), %rdi
	movl	$5, %eax
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L444
.L547:
	movq	%r12, %rsi
	leaq	.LC23(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L444
.L548:
	movq	%r15, %rsi
	leaq	.LC23(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L444
.L539:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	movq	%r14, %r8
	leaq	.LC44(%rip), %rdi
	movq	(%rsp), %rdx
	movsd	48(%rsp), %xmm4
	movl	$5, %eax
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L444
.L538:
	movzwl	80(%rsp), %esi
	movq	(%rsp), %rdx
	movq	%r14, %r8
	movapd	%xmm7, %xmm1
	movq	64(%rsp), %rcx
	movsd	48(%rsp), %xmm4
	leaq	.LC43(%rip), %rdi
	movl	$5, %eax
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L444
.L543:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	xorl	%r8d, %r8d
	leaq	.LC48(%rip), %rdi
	movq	(%rsp), %rdx
	movsd	48(%rsp), %xmm4
	movl	$5, %eax
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L444
.L542:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	movq	%r14, %r8
	leaq	.LC47(%rip), %rdi
	movq	(%rsp), %rdx
	movsd	48(%rsp), %xmm4
	movl	$5, %eax
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
.LEHE14:
	jmp	.L444
.L495:
	movq	%rax, %rbx
	jmp	.L486
	.section	.gcc_except_table
.LLSDA8157:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8157-.LLSDACSB8157
.LLSDACSB8157:
	.uleb128 .LEHB12-.LFB8157
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L495-.LFB8157
	.uleb128 0
	.uleb128 .LEHB13-.LFB8157
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB8157
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L495-.LFB8157
	.uleb128 0
.LLSDACSE8157:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8157
	.type	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_PN3neo5arrayIyEE.cold, @function
_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_PN3neo5arrayIyEE.cold:
.LFSB8157:
.L486:
	.cfi_def_cfa_offset 208
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	120(%rsp), %rdi
	call	free@PLT
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L552
	movq	%rbx, %rdi
.LEHB15:
	call	_Unwind_Resume@PLT
.LEHE15:
.L552:
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
	.uleb128 .LEHB15-.LCOLDB49
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSEC8157:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_PN3neo5arrayIyEE, .-_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_PN3neo5arrayIyEE
	.section	.text.unlikely
	.size	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_PN3neo5arrayIyEE.cold, .-_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_PN3neo5arrayIyEE.cold
.LCOLDE49:
	.text
.LHOTE49:
	.section	.rodata.str1.8
	.align 8
.LC50:
	.string	"wze::engine.vector.RayCast(): InitialX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC51:
	.string	"wze::engine.vector.RayCast(): InitialY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC52:
	.string	"wze::engine.vector.RayCast(): TerminalX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC53:
	.string	"wze::engine.vector.RayCast(): TerminalY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC54:
	.string	"wze::engine.vector.RayCast(): SamplingStep must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC55:
	.ascii	"wze::eng"
	.string	"ine.vector.RayCast(): SamplingStep must not be less than or equal to 0\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC56:
	.string	"wze::engine.vector.RayCast(): ActorTypeWhitelist must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC57:
	.string	"wze::engine.vector.RayCast(): ActorIDBlacklist must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n"
	.section	.text.unlikely
	.align 2
.LCOLDB58:
	.text
.LHOTB58:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_St16initializer_listIyE
	.type	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_St16initializer_listIyE, @function
_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_St16initializer_listIyE:
.LFB8158:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8158
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15
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
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	movq	%rdx, 8(%rsp)
	movq	(%rdi), %rdx
	movl	%esi, 80(%rsp)
	movq	%rcx, 56(%rsp)
	movzwl	608(%rdx), %ebx
	movq	%r8, 64(%rsp)
	movq	%r9, (%rsp)
	movw	%si, 86(%rsp)
	movsd	%xmm0, 16(%rsp)
	movsd	%xmm1, 24(%rsp)
	movsd	%xmm2, 32(%rsp)
	movsd	%xmm3, 40(%rsp)
	movsd	%xmm4, 48(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
	movq	%rbx, 112(%rsp)
	testq	%rbx, %rbx
	jne	.L554
	movq	$0, 120(%rsp)
	xorl	%r12d, %r12d
.L555:
	movsd	16(%rsp), %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L654
	movsd	24(%rsp), %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L655
	movsd	32(%rsp), %xmm7
	ucomisd	%xmm7, %xmm7
	jp	.L656
	movsd	40(%rsp), %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L657
	movsd	48(%rsp), %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L658
	pxor	%xmm0, %xmm0
	comisd	48(%rsp), %xmm0
	jnb	.L659
	cmpq	$0, 8(%rsp)
	je	.L660
	cmpq	$0, 56(%rsp)
	je	.L661
	movsd	16(%rsp), %xmm4
	ucomisd	32(%rsp), %xmm4
	movl	$0, %esi
	movsd	24(%rsp), %xmm7
	setnp	%cl
	cmovne	%esi, %ecx
	ucomisd	40(%rsp), %xmm7
	setnp	%al
	cmovne	%esi, %eax
	andb	%al, %cl
	movb	%cl, 72(%rsp)
	jne	.L571
	movq	584(%rdx), %rcx
	cmpq	$1, %rcx
	jbe	.L607
	leaq	112(%rsp), %rax
	movl	$1, %r12d
	xorl	%ebp, %ebp
	movq	%rax, 88(%rsp)
	.p2align 4,,10
	.p2align 3
.L593:
	movq	592(%rdx), %rax
	leaq	0(,%r12,8), %r13
	movq	(%rax,%r12,8), %rsi
	testq	%rsi, %rsi
	je	.L573
	movq	8(%rsp), %rbx
	movq	208(%rsi), %r8
	xorl	%esi, %esi
	movq	(%rbx), %rdi
	movq	8(%rbx), %r9
	testq	%rdi, %rdi
	je	.L573
.L574:
	cmpq	(%r9,%rsi,8), %r8
	je	.L662
	addq	$1, %rsi
	cmpq	%rsi, %rdi
	jne	.L574
	.p2align 4,,10
	.p2align 3
.L573:
	addq	$1, %r12
	cmpq	%rcx, %r12
	jb	.L593
	movq	120(%rsp), %r12
.L572:
	movzwl	80(%rsp), %eax
	pxor	%xmm0, %xmm0
	movsd	16(%rsp), %xmm7
	movsd	24(%rsp), %xmm6
	shrw	%ax
	movapd	%xmm7, %xmm4
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	%xmm0, %xmm4
	addsd	%xmm6, %xmm0
	movsd	%xmm4, (%rsp)
	movsd	40(%rsp), %xmm4
	movsd	%xmm0, 8(%rsp)
	movsd	32(%rsp), %xmm0
	movapd	%xmm4, %xmm1
	comisd	%xmm4, %xmm6
	subsd	%xmm7, %xmm0
	subsd	%xmm6, %xmm1
	mulsd	%xmm1, %xmm1
	movapd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	sqrtsd	%xmm2, %xmm2
	divsd	%xmm2, %xmm0
	movsd	%xmm2, 16(%rsp)
	ja	.L663
	call	acos@PLT
	movsd	%xmm0, 24(%rsp)
.L596:
	movsd	16(%rsp), %xmm6
	pxor	%xmm0, %xmm0
	movzwl	86(%rsp), %r14d
	comisd	%xmm0, %xmm6
	jbe	.L643
.L599:
	testq	%rbp, %rbp
	je	.L602
	movq	112(%rsp), %r13
	xorl	%ebx, %ebx
	jmp	.L598
	.p2align 4,,10
	.p2align 3
.L664:
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	je	.L602
.L598:
	movq	(%r15), %rax
	leaq	600(%rax), %rdi
	cmpq	%r13, %rbx
	je	.L653
	pxor	%xmm2, %xmm2
	movsd	8(%rsp), %xmm1
	movsd	(%rsp), %xmm5
	cvtsi2sdl	%r14d, %xmm2
	movq	(%r12,%rbx,8), %rsi
	movapd	%xmm1, %xmm3
	movapd	%xmm5, %xmm0
	subsd	%xmm2, %xmm3
	addsd	%xmm5, %xmm2
.LEHB16:
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE@PLT
	testb	%al, %al
	je	.L664
.L571:
	movq	%r12, %rdi
	call	free@PLT
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L665
	movzbl	72(%rsp), %eax
	addq	$152, %rsp
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
.L662:
	.cfi_restore_state
	movq	56(%rsp), %rsi
	movq	(%rsi), %rdi
	movq	8(%rsi), %r8
	xorl	%esi, %esi
	testq	%rdi, %rdi
	je	.L577
.L605:
	cmpq	%r12, (%r8,%rsi,8)
	je	.L573
	addq	$1, %rsi
	cmpq	%rsi, %rdi
	jne	.L605
	.p2align 4,,10
	.p2align 3
.L577:
	cmpq	%rcx, %r12
	jnb	.L651
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L579:
	movq	(%rax,%r13), %rax
	cmpq	152(%rax), %rbx
	jnb	.L573
	movq	160(%rax), %rax
	leaq	0(,%rbx,8), %r14
	movq	(%rax,%rbx,8), %rax
	testq	%rax, %rax
	jne	.L580
.L584:
	movq	592(%rdx), %rax
	addq	$1, %rbx
	cmpq	%rcx, %r12
	jb	.L579
.L651:
	movq	%r12, %rsi
	leaq	.LC23(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.L560:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L580:
	movq	24(%rax), %rsi
	xorl	%eax, %eax
	cmpq	$0, (%rsp)
	movq	64(%rsp), %rdi
	je	.L583
.L582:
	cmpq	(%rdi,%rax,8), %rsi
	je	.L584
	addq	$1, %rax
	cmpq	%rax, (%rsp)
	jne	.L582
.L583:
	cmpq	112(%rsp), %rbp
	je	.L666
.L586:
	movq	592(%rdx), %rax
	cmpq	%rcx, %r12
	jnb	.L651
	movq	(%rax,%r13), %rsi
	movq	160(%rsi), %rdi
	cmpq	152(%rsi), %rbx
	jnb	.L653
	movq	(%rdi,%r14), %r8
	leaq	1(%rbp), %rsi
	movq	120(%rsp), %rdi
	cmpq	112(%rsp), %rbp
	jnb	.L667
	movq	%r8, (%rdi,%rbp,8)
	addq	$1, %rbx
	movq	%rsi, %rbp
	jmp	.L579
	.p2align 4,,10
	.p2align 3
.L666:
	movzwl	608(%rdx), %eax
	movq	88(%rsp), %rdi
	movq	%rbp, %rsi
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0
.LEHE16:
	movq	(%r15), %rdx
	movq	584(%rdx), %rcx
	jmp	.L586
.L663:
	call	acos@PLT
	movsd	.LC24(%rip), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 24(%rsp)
	jmp	.L596
.L602:
	movsd	24(%rsp), %xmm0
	leaq	104(%rsp), %rdi
	leaq	96(%rsp), %rsi
	call	sincos@PLT
	movsd	48(%rsp), %xmm6
	movsd	96(%rsp), %xmm0
	movsd	16(%rsp), %xmm7
	mulsd	%xmm6, %xmm0
	addsd	(%rsp), %xmm0
	subsd	%xmm6, %xmm7
	movsd	%xmm0, (%rsp)
	movsd	104(%rsp), %xmm0
	movsd	%xmm7, 16(%rsp)
	mulsd	%xmm6, %xmm0
	addsd	8(%rsp), %xmm0
	movsd	%xmm0, 8(%rsp)
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm7
	ja	.L599
.L643:
	movb	$1, 72(%rsp)
	jmp	.L571
.L554:
	leaq	0(,%rbx,8), %rdi
	movq	%rdx, 72(%rsp)
	call	malloc@PLT
	movq	72(%rsp), %rdx
	testq	%rax, %rax
	movq	%rax, 120(%rsp)
	movq	%rax, %r12
	jne	.L555
	leaq	.LC15(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
.LEHB17:
	call	printf@PLT
.LEHE17:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L607:
	xorl	%ebp, %ebp
	jmp	.L572
.L653:
	movq	%rbx, %rsi
	leaq	.LC23(%rip), %rdi
	xorl	%eax, %eax
.LEHB18:
	call	printf@PLT
	jmp	.L560
.L661:
	movzwl	80(%rsp), %esi
	movq	(%rsp), %r8
	xorl	%ecx, %ecx
	movl	$5, %eax
	movq	8(%rsp), %rdx
	movsd	48(%rsp), %xmm4
	leaq	.LC57(%rip), %rdi
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L560
.L660:
	movzwl	80(%rsp), %esi
	movq	(%rsp), %r8
	xorl	%edx, %edx
	movl	$5, %eax
	movq	56(%rsp), %rcx
	movsd	48(%rsp), %xmm4
	leaq	.LC56(%rip), %rdi
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L560
.L665:
	call	__stack_chk_fail@PLT
.L667:
	movq	%rbp, %rsi
	leaq	.LC23(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L560
.L658:
	movzwl	80(%rsp), %esi
	movq	(%rsp), %r8
	movl	$5, %eax
	leaq	.LC54(%rip), %rdi
	movq	56(%rsp), %rcx
	movq	8(%rsp), %rdx
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L560
.L654:
	movzwl	80(%rsp), %esi
	movq	(%rsp), %r8
	movapd	%xmm6, %xmm0
	leaq	.LC50(%rip), %rdi
	movq	56(%rsp), %rcx
	movq	8(%rsp), %rdx
	movl	$5, %eax
	movsd	48(%rsp), %xmm4
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	call	printf@PLT
	jmp	.L560
.L659:
	movzwl	80(%rsp), %esi
	movq	(%rsp), %r8
	movl	$5, %eax
	leaq	.LC55(%rip), %rdi
	movq	56(%rsp), %rcx
	movq	8(%rsp), %rdx
	movsd	48(%rsp), %xmm4
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L560
.L657:
	movzwl	80(%rsp), %esi
	movq	(%rsp), %r8
	movapd	%xmm6, %xmm3
	leaq	.LC53(%rip), %rdi
	movq	56(%rsp), %rcx
	movq	8(%rsp), %rdx
	movl	$5, %eax
	movsd	48(%rsp), %xmm4
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L560
.L656:
	movzwl	80(%rsp), %esi
	movq	(%rsp), %r8
	movapd	%xmm7, %xmm2
	leaq	.LC52(%rip), %rdi
	movq	56(%rsp), %rcx
	movq	8(%rsp), %rdx
	movl	$5, %eax
	movsd	48(%rsp), %xmm4
	movsd	40(%rsp), %xmm3
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L560
.L655:
	movzwl	80(%rsp), %esi
	movq	(%rsp), %r8
	movl	$5, %eax
	leaq	.LC51(%rip), %rdi
	movq	56(%rsp), %rcx
	movq	8(%rsp), %rdx
	movsd	48(%rsp), %xmm4
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
.LEHE18:
	jmp	.L560
.L611:
	movq	%rax, %rbx
	jmp	.L603
	.section	.gcc_except_table
.LLSDA8158:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8158-.LLSDACSB8158
.LLSDACSB8158:
	.uleb128 .LEHB16-.LFB8158
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L611-.LFB8158
	.uleb128 0
	.uleb128 .LEHB17-.LFB8158
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB18-.LFB8158
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L611-.LFB8158
	.uleb128 0
.LLSDACSE8158:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8158
	.type	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_St16initializer_listIyE.cold, @function
_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_St16initializer_listIyE.cold:
.LFSB8158:
.L603:
	.cfi_def_cfa_offset 208
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	120(%rsp), %rdi
	call	free@PLT
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L668
	movq	%rbx, %rdi
.LEHB19:
	call	_Unwind_Resume@PLT
.LEHE19:
.L668:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8158:
	.section	.gcc_except_table
.LLSDAC8158:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8158-.LLSDACSBC8158
.LLSDACSBC8158:
	.uleb128 .LEHB19-.LCOLDB58
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSEC8158:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_St16initializer_listIyE, .-_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_St16initializer_listIyE
	.section	.text.unlikely
	.size	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_St16initializer_listIyE.cold, .-_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_St16initializer_listIyE.cold
.LCOLDE58:
	.text
.LHOTE58:
	.section	.rodata.str1.8
	.align 8
.LC59:
	.string	"wze::engine.vector.RayCast(): InitialX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC60:
	.string	"wze::engine.vector.RayCast(): InitialY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC61:
	.string	"wze::engine.vector.RayCast(): TerminalX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC62:
	.string	"wze::engine.vector.RayCast(): TerminalY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC63:
	.string	"wze::engine.vector.RayCast(): SamplingStep must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC64:
	.ascii	"wze::eng"
	.string	"ine.vector.RayCast(): SamplingStep must not be less than or equal to 0\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC65:
	.string	"wze::engine.vector.RayCast(): ActorTypeWhitelist must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC66:
	.string	"wze::engine.vector.RayCast(): OverlapboxTypeBlacklist must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n"
	.section	.text.unlikely
	.align 2
.LCOLDB67:
	.text
.LHOTB67:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES5_
	.type	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES5_, @function
_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES5_:
.LFB8159:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8159
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%r9, %r14
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
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	movq	%rdx, 16(%rsp)
	movq	(%rdi), %rdx
	movl	%esi, 80(%rsp)
	movq	%rcx, 72(%rsp)
	movzwl	608(%rdx), %ebx
	movq	%r8, 64(%rsp)
	movw	%si, 86(%rsp)
	movsd	%xmm0, 24(%rsp)
	movsd	%xmm1, 32(%rsp)
	movsd	%xmm2, 40(%rsp)
	movsd	%xmm3, 48(%rsp)
	movsd	%xmm4, 56(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
	movq	%rbx, 112(%rsp)
	testq	%rbx, %rbx
	jne	.L670
	movq	$0, 120(%rsp)
	xorl	%r12d, %r12d
.L671:
	movsd	24(%rsp), %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L770
	movsd	32(%rsp), %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L771
	movsd	40(%rsp), %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L772
	movsd	48(%rsp), %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L773
	movsd	56(%rsp), %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L774
	pxor	%xmm0, %xmm0
	comisd	56(%rsp), %xmm0
	jnb	.L775
	cmpq	$0, 16(%rsp)
	je	.L776
	testq	%r14, %r14
	je	.L777
	movsd	24(%rsp), %xmm7
	ucomisd	40(%rsp), %xmm7
	movl	$0, %esi
	movsd	32(%rsp), %xmm7
	setnp	%cl
	cmovne	%esi, %ecx
	ucomisd	48(%rsp), %xmm7
	setnp	%al
	cmovne	%esi, %eax
	andb	%al, %cl
	movb	%cl, 85(%rsp)
	jne	.L687
	movq	584(%rdx), %rsi
	cmpq	$1, %rsi
	jbe	.L723
	leaq	112(%rsp), %rax
	movl	$1, %ebx
	xorl	%ebp, %ebp
	movq	%rax, 88(%rsp)
	.p2align 4,,10
	.p2align 3
.L709:
	movq	592(%rdx), %rax
	leaq	0(,%rbx,8), %r13
	movq	(%rax,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L689
	movq	208(%rcx), %r8
	movq	16(%rsp), %rcx
	movq	(%rcx), %rdi
	movq	8(%rcx), %r9
	xorl	%ecx, %ecx
	testq	%rdi, %rdi
	je	.L689
.L690:
	cmpq	(%r9,%rcx,8), %r8
	je	.L778
	addq	$1, %rcx
	cmpq	%rcx, %rdi
	jne	.L690
	.p2align 4,,10
	.p2align 3
.L689:
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jb	.L709
	movq	120(%rsp), %r12
.L688:
	movzwl	80(%rsp), %eax
	pxor	%xmm0, %xmm0
	movsd	24(%rsp), %xmm7
	movsd	32(%rsp), %xmm6
	shrw	%ax
	movapd	%xmm7, %xmm4
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	%xmm0, %xmm4
	addsd	%xmm6, %xmm0
	movsd	%xmm4, 8(%rsp)
	movsd	48(%rsp), %xmm4
	movsd	%xmm0, 16(%rsp)
	movsd	40(%rsp), %xmm0
	movapd	%xmm4, %xmm1
	comisd	%xmm4, %xmm6
	subsd	%xmm7, %xmm0
	subsd	%xmm6, %xmm1
	mulsd	%xmm1, %xmm1
	movapd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	sqrtsd	%xmm2, %xmm2
	divsd	%xmm2, %xmm0
	movsd	%xmm2, 24(%rsp)
	ja	.L779
	call	acos@PLT
	movsd	%xmm0, 32(%rsp)
.L712:
	movsd	24(%rsp), %xmm6
	pxor	%xmm0, %xmm0
	movzwl	86(%rsp), %r14d
	comisd	%xmm0, %xmm6
	jbe	.L759
.L715:
	testq	%rbp, %rbp
	je	.L718
	movq	112(%rsp), %r13
	xorl	%ebx, %ebx
	jmp	.L714
	.p2align 4,,10
	.p2align 3
.L780:
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	je	.L718
.L714:
	movq	(%r15), %rax
	leaq	600(%rax), %rdi
	cmpq	%r13, %rbx
	je	.L769
	pxor	%xmm2, %xmm2
	movsd	16(%rsp), %xmm1
	movsd	8(%rsp), %xmm5
	cvtsi2sdl	%r14d, %xmm2
	movq	(%r12,%rbx,8), %rsi
	movapd	%xmm1, %xmm3
	movapd	%xmm5, %xmm0
	subsd	%xmm2, %xmm3
	addsd	%xmm5, %xmm2
.LEHB20:
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE@PLT
	testb	%al, %al
	je	.L780
.L687:
	movq	%r12, %rdi
	call	free@PLT
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L781
	movzbl	85(%rsp), %eax
	addq	$152, %rsp
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
.L778:
	.cfi_restore_state
	xorl	%ecx, %ecx
	cmpq	$0, 64(%rsp)
	movq	72(%rsp), %rdi
	je	.L693
.L721:
	cmpq	%rbx, (%rdi,%rcx,8)
	je	.L689
	addq	$1, %rcx
	cmpq	%rcx, 64(%rsp)
	jne	.L721
.L693:
	cmpq	%rsi, %rbx
	jnb	.L769
	movl	$1, %r12d
	.p2align 4,,10
	.p2align 3
.L695:
	movq	(%rax,%r13), %rax
	cmpq	152(%rax), %r12
	jnb	.L689
	movq	160(%rax), %rax
	leaq	0(,%r12,8), %rdi
	movq	%rdi, 8(%rsp)
	movq	(%rax,%r12,8), %rax
	testq	%rax, %rax
	je	.L700
	movq	(%r14), %rcx
	movq	24(%rax), %rdi
	xorl	%eax, %eax
	movq	8(%r14), %r8
	testq	%rcx, %rcx
	je	.L698
.L699:
	cmpq	(%r8,%rax,8), %rdi
	je	.L700
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L699
	.p2align 4,,10
	.p2align 3
.L698:
	cmpq	%rbp, 112(%rsp)
	je	.L782
.L702:
	movq	592(%rdx), %rax
	cmpq	%rsi, %rbx
	jnb	.L769
	movq	(%rax,%r13), %rcx
	movq	160(%rcx), %rdi
	cmpq	152(%rcx), %r12
	jnb	.L783
	movq	8(%rsp), %rcx
	movq	(%rdi,%rcx), %r8
	movq	120(%rsp), %rdi
	leaq	1(%rbp), %rcx
	cmpq	112(%rsp), %rbp
	jnb	.L784
	movq	%r8, (%rdi,%rbp,8)
	addq	$1, %r12
	movq	%rcx, %rbp
	jmp	.L695
	.p2align 4,,10
	.p2align 3
.L700:
	movq	592(%rdx), %rax
	addq	$1, %r12
	cmpq	%rsi, %rbx
	jb	.L695
.L769:
	movq	%rbx, %rsi
	leaq	.LC23(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.L676:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L782:
	movzwl	608(%rdx), %eax
	movq	88(%rsp), %rdi
	movq	%rbp, %rsi
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0
.LEHE20:
	movq	(%r15), %rdx
	movq	584(%rdx), %rsi
	jmp	.L702
	.p2align 4,,10
	.p2align 3
.L779:
	call	acos@PLT
	movsd	.LC24(%rip), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 32(%rsp)
	jmp	.L712
	.p2align 4,,10
	.p2align 3
.L718:
	movsd	32(%rsp), %xmm0
	leaq	104(%rsp), %rdi
	leaq	96(%rsp), %rsi
	call	sincos@PLT
	movsd	56(%rsp), %xmm6
	movsd	96(%rsp), %xmm0
	movsd	24(%rsp), %xmm7
	mulsd	%xmm6, %xmm0
	addsd	8(%rsp), %xmm0
	subsd	%xmm6, %xmm7
	movsd	%xmm0, 8(%rsp)
	movsd	104(%rsp), %xmm0
	movsd	%xmm7, 24(%rsp)
	mulsd	%xmm6, %xmm0
	addsd	16(%rsp), %xmm0
	movsd	%xmm0, 16(%rsp)
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm7
	ja	.L715
.L759:
	movb	$1, 85(%rsp)
	jmp	.L687
	.p2align 4,,10
	.p2align 3
.L670:
	leaq	0(,%rbx,8), %rdi
	movq	%rdx, 8(%rsp)
	call	malloc@PLT
	movq	8(%rsp), %rdx
	testq	%rax, %rax
	movq	%rax, 120(%rsp)
	movq	%rax, %r12
	jne	.L671
	leaq	.LC15(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
.LEHB21:
	call	printf@PLT
.LEHE21:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L723:
	xorl	%ebp, %ebp
	jmp	.L688
.L784:
	movq	%rbp, %rsi
	leaq	.LC23(%rip), %rdi
	xorl	%eax, %eax
.LEHB22:
	call	printf@PLT
	jmp	.L676
.L771:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	movq	%r14, %r8
	leaq	.LC60(%rip), %rdi
	movq	16(%rsp), %rdx
	movsd	56(%rsp), %xmm4
	movl	$5, %eax
	movsd	48(%rsp), %xmm3
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
	jmp	.L676
.L770:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	movq	%r14, %r8
	movapd	%xmm6, %xmm0
	movq	16(%rsp), %rdx
	movsd	56(%rsp), %xmm4
	leaq	.LC59(%rip), %rdi
	movl	$5, %eax
	movsd	48(%rsp), %xmm3
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	call	printf@PLT
	jmp	.L676
.L783:
	movq	%r12, %rsi
	leaq	.LC23(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L676
.L773:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	movq	%r14, %r8
	leaq	.LC62(%rip), %rdi
	movq	16(%rsp), %rdx
	movsd	56(%rsp), %xmm4
	movl	$5, %eax
	movsd	48(%rsp), %xmm3
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
	jmp	.L676
.L772:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	movq	%r14, %r8
	movapd	%xmm6, %xmm2
	movq	16(%rsp), %rdx
	movsd	56(%rsp), %xmm4
	leaq	.LC61(%rip), %rdi
	movl	$5, %eax
	movsd	48(%rsp), %xmm3
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
	jmp	.L676
.L777:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	xorl	%r8d, %r8d
	leaq	.LC66(%rip), %rdi
	movq	16(%rsp), %rdx
	movsd	56(%rsp), %xmm4
	movl	$5, %eax
	movsd	48(%rsp), %xmm3
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
	jmp	.L676
.L776:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	movq	%r14, %r8
	xorl	%edx, %edx
	movsd	56(%rsp), %xmm4
	movsd	48(%rsp), %xmm3
	leaq	.LC65(%rip), %rdi
	movl	$5, %eax
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
	jmp	.L676
.L775:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	movq	%r14, %r8
	leaq	.LC64(%rip), %rdi
	movq	16(%rsp), %rdx
	movsd	56(%rsp), %xmm4
	movl	$5, %eax
	movsd	48(%rsp), %xmm3
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
	jmp	.L676
.L774:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	movq	%r14, %r8
	leaq	.LC63(%rip), %rdi
	movq	16(%rsp), %rdx
	movsd	48(%rsp), %xmm3
	movl	$5, %eax
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
.LEHE22:
	jmp	.L676
.L781:
	call	__stack_chk_fail@PLT
.L727:
	movq	%rax, %rbx
	jmp	.L719
	.section	.gcc_except_table
.LLSDA8159:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8159-.LLSDACSB8159
.LLSDACSB8159:
	.uleb128 .LEHB20-.LFB8159
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L727-.LFB8159
	.uleb128 0
	.uleb128 .LEHB21-.LFB8159
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB22-.LFB8159
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L727-.LFB8159
	.uleb128 0
.LLSDACSE8159:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8159
	.type	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES5_.cold, @function
_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES5_.cold:
.LFSB8159:
.L719:
	.cfi_def_cfa_offset 208
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	120(%rsp), %rdi
	call	free@PLT
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L785
	movq	%rbx, %rdi
.LEHB23:
	call	_Unwind_Resume@PLT
.LEHE23:
.L785:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8159:
	.section	.gcc_except_table
.LLSDAC8159:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8159-.LLSDACSBC8159
.LLSDACSBC8159:
	.uleb128 .LEHB23-.LCOLDB67
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
.LLSDACSEC8159:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES5_, .-_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES5_
	.section	.text.unlikely
	.size	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES5_.cold, .-_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES5_.cold
.LCOLDE67:
	.text
.LHOTE67:
	.section	.rodata.str1.8
	.align 8
.LC68:
	.string	"wze::engine.vector.RayCast(): InitialX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist): %p, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC69:
	.string	"wze::engine.vector.RayCast(): InitialY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC70:
	.string	"wze::engine.vector.RayCast(): TerminalX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC71:
	.string	"wze::engine.vector.RayCast(): TerminalY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC72:
	.string	"wze::engine.vector.RayCast(): SamplingStep must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC73:
	.ascii	"wze::eng"
	.string	"ine.vector.RayCast(): SamplingStep must not be less than or equal to 0\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC74:
	.string	"wze::engine.vector.RayCast(): ActorIDBlacklist must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC75:
	.string	"wze::engine.vector.RayCast(): OverlapboxTypeBlackList must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n"
	.section	.text.unlikely
	.align 2
.LCOLDB76:
	.text
.LHOTB76:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES7_
	.type	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES7_, @function
_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES7_:
.LFB8160:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8160
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%r9, %r14
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
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	movq	%rdx, 72(%rsp)
	movq	(%rdi), %rdx
	movl	%esi, 80(%rsp)
	movq	%rcx, 16(%rsp)
	movzwl	608(%rdx), %ebx
	movq	%r8, 64(%rsp)
	movw	%si, 86(%rsp)
	movsd	%xmm0, 24(%rsp)
	movsd	%xmm1, 32(%rsp)
	movsd	%xmm2, 40(%rsp)
	movsd	%xmm3, 48(%rsp)
	movsd	%xmm4, 56(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
	movq	%rbx, 112(%rsp)
	testq	%rbx, %rbx
	jne	.L787
	movq	$0, 120(%rsp)
	xorl	%r12d, %r12d
.L788:
	movsd	24(%rsp), %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L887
	movsd	32(%rsp), %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L888
	movsd	40(%rsp), %xmm7
	ucomisd	%xmm7, %xmm7
	jp	.L889
	movsd	48(%rsp), %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L890
	movsd	56(%rsp), %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L891
	pxor	%xmm0, %xmm0
	comisd	56(%rsp), %xmm0
	jnb	.L892
	cmpq	$0, 64(%rsp)
	je	.L893
	testq	%r14, %r14
	je	.L894
	movsd	24(%rsp), %xmm4
	ucomisd	40(%rsp), %xmm4
	movl	$0, %esi
	movsd	32(%rsp), %xmm7
	setnp	%cl
	cmovne	%esi, %ecx
	ucomisd	48(%rsp), %xmm7
	setnp	%al
	cmovne	%esi, %eax
	andb	%al, %cl
	movb	%cl, 85(%rsp)
	jne	.L804
	movq	584(%rdx), %rsi
	cmpq	$1, %rsi
	jbe	.L840
	leaq	112(%rsp), %rax
	movl	$1, %ebx
	xorl	%ebp, %ebp
	movq	%rax, 88(%rsp)
	jmp	.L826
	.p2align 4,,10
	.p2align 3
.L806:
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jnb	.L895
.L826:
	movq	592(%rdx), %rax
	leaq	0(,%rbx,8), %r13
	movq	(%rax,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L806
	movq	208(%rcx), %rdi
	xorl	%ecx, %ecx
	cmpq	$0, 16(%rsp)
	movq	72(%rsp), %r8
	je	.L806
	cmpq	(%r8,%rcx,8), %rdi
	je	.L896
.L872:
	addq	$1, %rcx
	cmpq	%rcx, 16(%rsp)
	je	.L806
	cmpq	(%r8,%rcx,8), %rdi
	jne	.L872
.L896:
	movq	64(%rsp), %rcx
	movq	(%rcx), %rdi
	movq	8(%rcx), %r8
	xorl	%ecx, %ecx
	testq	%rdi, %rdi
	je	.L810
.L838:
	cmpq	%rbx, (%r8,%rcx,8)
	je	.L806
	addq	$1, %rcx
	cmpq	%rcx, %rdi
	jne	.L838
	.p2align 4,,10
	.p2align 3
.L810:
	cmpq	%rsi, %rbx
	jnb	.L886
	movl	$1, %r12d
	.p2align 4,,10
	.p2align 3
.L812:
	movq	(%rax,%r13), %rax
	cmpq	152(%rax), %r12
	jnb	.L806
	movq	160(%rax), %rax
	leaq	0(,%r12,8), %rcx
	movq	%rcx, 8(%rsp)
	movq	(%rax,%r12,8), %rax
	testq	%rax, %rax
	je	.L817
	movq	(%r14), %rcx
	movq	24(%rax), %rdi
	xorl	%eax, %eax
	movq	8(%r14), %r8
	testq	%rcx, %rcx
	je	.L815
.L816:
	cmpq	(%r8,%rax,8), %rdi
	je	.L817
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L816
	.p2align 4,,10
	.p2align 3
.L815:
	cmpq	%rbp, 112(%rsp)
	je	.L897
.L819:
	movq	592(%rdx), %rax
	cmpq	%rsi, %rbx
	jnb	.L886
	movq	(%rax,%r13), %rcx
	movq	160(%rcx), %rdi
	cmpq	152(%rcx), %r12
	jnb	.L898
	movq	8(%rsp), %rcx
	movq	(%rdi,%rcx), %r8
	movq	120(%rsp), %rdi
	leaq	1(%rbp), %rcx
	cmpq	112(%rsp), %rbp
	jnb	.L899
	movq	%r8, (%rdi,%rbp,8)
	addq	$1, %r12
	movq	%rcx, %rbp
	jmp	.L812
	.p2align 4,,10
	.p2align 3
.L817:
	movq	592(%rdx), %rax
	addq	$1, %r12
	cmpq	%rsi, %rbx
	jb	.L812
.L886:
	movq	%rbx, %rsi
	leaq	.LC23(%rip), %rdi
	xorl	%eax, %eax
.LEHB24:
	call	printf@PLT
.L793:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L895:
	movq	120(%rsp), %r12
.L805:
	movzwl	80(%rsp), %eax
	pxor	%xmm0, %xmm0
	movsd	24(%rsp), %xmm7
	movsd	32(%rsp), %xmm6
	shrw	%ax
	movapd	%xmm7, %xmm4
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	%xmm0, %xmm4
	addsd	%xmm6, %xmm0
	movsd	%xmm4, 8(%rsp)
	movsd	48(%rsp), %xmm4
	movsd	%xmm0, 16(%rsp)
	movsd	40(%rsp), %xmm0
	movapd	%xmm4, %xmm1
	comisd	%xmm4, %xmm6
	subsd	%xmm7, %xmm0
	subsd	%xmm6, %xmm1
	mulsd	%xmm1, %xmm1
	movapd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	sqrtsd	%xmm2, %xmm2
	divsd	%xmm2, %xmm0
	movsd	%xmm2, 24(%rsp)
	ja	.L900
	call	acos@PLT
	movsd	%xmm0, 32(%rsp)
.L829:
	movsd	24(%rsp), %xmm6
	pxor	%xmm0, %xmm0
	movzwl	86(%rsp), %r14d
	comisd	%xmm0, %xmm6
	jbe	.L876
.L832:
	testq	%rbp, %rbp
	je	.L835
	movq	112(%rsp), %r13
	xorl	%ebx, %ebx
	jmp	.L831
	.p2align 4,,10
	.p2align 3
.L901:
	addq	$1, %rbx
	cmpq	%rbx, %rbp
	je	.L835
.L831:
	movq	(%r15), %rax
	leaq	600(%rax), %rdi
	cmpq	%r13, %rbx
	je	.L886
	pxor	%xmm2, %xmm2
	movsd	16(%rsp), %xmm1
	movsd	8(%rsp), %xmm5
	cvtsi2sdl	%r14d, %xmm2
	movq	(%r12,%rbx,8), %rsi
	movapd	%xmm1, %xmm3
	movapd	%xmm5, %xmm0
	subsd	%xmm2, %xmm3
	addsd	%xmm5, %xmm2
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE@PLT
	testb	%al, %al
	je	.L901
.L804:
	movq	%r12, %rdi
	call	free@PLT
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L902
	movzbl	85(%rsp), %eax
	addq	$152, %rsp
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
	.p2align 4,,10
	.p2align 3
.L897:
	.cfi_restore_state
	movzwl	608(%rdx), %eax
	movq	88(%rsp), %rdi
	movq	%rbp, %rsi
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0
.LEHE24:
	movq	(%r15), %rdx
	movq	584(%rdx), %rsi
	jmp	.L819
.L900:
	call	acos@PLT
	movsd	.LC24(%rip), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 32(%rsp)
	jmp	.L829
	.p2align 4,,10
	.p2align 3
.L835:
	movsd	32(%rsp), %xmm0
	leaq	104(%rsp), %rdi
	leaq	96(%rsp), %rsi
	call	sincos@PLT
	movsd	56(%rsp), %xmm6
	movsd	96(%rsp), %xmm0
	movsd	24(%rsp), %xmm7
	mulsd	%xmm6, %xmm0
	addsd	8(%rsp), %xmm0
	subsd	%xmm6, %xmm7
	movsd	%xmm0, 8(%rsp)
	movsd	104(%rsp), %xmm0
	movsd	%xmm7, 24(%rsp)
	mulsd	%xmm6, %xmm0
	addsd	16(%rsp), %xmm0
	movsd	%xmm0, 16(%rsp)
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm7
	ja	.L832
.L876:
	movb	$1, 85(%rsp)
	jmp	.L804
.L787:
	leaq	0(,%rbx,8), %rdi
	movq	%rdx, 8(%rsp)
	call	malloc@PLT
	movq	8(%rsp), %rdx
	testq	%rax, %rax
	movq	%rax, 120(%rsp)
	movq	%rax, %r12
	jne	.L788
	leaq	.LC15(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
.LEHB25:
	call	printf@PLT
.LEHE25:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L840:
	xorl	%ebp, %ebp
	jmp	.L805
.L902:
	call	__stack_chk_fail@PLT
.L899:
	movq	%rbp, %rsi
	leaq	.LC23(%rip), %rdi
	xorl	%eax, %eax
.LEHB26:
	call	printf@PLT
	jmp	.L793
.L887:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	movq	%r14, %r8
	movapd	%xmm6, %xmm0
	movq	16(%rsp), %rdx
	movsd	56(%rsp), %xmm4
	leaq	.LC68(%rip), %rdi
	movl	$5, %eax
	movsd	48(%rsp), %xmm3
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	call	printf@PLT
	jmp	.L793
.L894:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	xorl	%r8d, %r8d
	leaq	.LC75(%rip), %rdi
	movq	16(%rsp), %rdx
	movsd	56(%rsp), %xmm4
	movl	$5, %eax
	movsd	48(%rsp), %xmm3
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
	jmp	.L793
.L891:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	movq	%r14, %r8
	leaq	.LC72(%rip), %rdi
	movq	16(%rsp), %rdx
	movsd	48(%rsp), %xmm3
	movl	$5, %eax
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
	jmp	.L793
.L890:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	movq	%r14, %r8
	movapd	%xmm6, %xmm3
	movq	16(%rsp), %rdx
	movsd	56(%rsp), %xmm4
	leaq	.LC71(%rip), %rdi
	movl	$5, %eax
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
	jmp	.L793
.L889:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	movq	%r14, %r8
	movapd	%xmm7, %xmm2
	movq	16(%rsp), %rdx
	movsd	56(%rsp), %xmm4
	leaq	.LC70(%rip), %rdi
	movl	$5, %eax
	movsd	48(%rsp), %xmm3
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
	jmp	.L793
.L888:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	movq	%r14, %r8
	leaq	.LC69(%rip), %rdi
	movq	16(%rsp), %rdx
	movsd	56(%rsp), %xmm4
	movl	$5, %eax
	movsd	48(%rsp), %xmm3
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
	jmp	.L793
.L893:
	movzwl	80(%rsp), %esi
	movq	16(%rsp), %rdx
	movq	%r14, %r8
	xorl	%ecx, %ecx
	movsd	56(%rsp), %xmm4
	movsd	48(%rsp), %xmm3
	leaq	.LC74(%rip), %rdi
	movl	$5, %eax
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
	jmp	.L793
.L892:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	movq	%r14, %r8
	leaq	.LC73(%rip), %rdi
	movq	16(%rsp), %rdx
	movsd	56(%rsp), %xmm4
	movl	$5, %eax
	movsd	48(%rsp), %xmm3
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
	jmp	.L793
.L898:
	movq	%r12, %rsi
	leaq	.LC23(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE26:
	jmp	.L793
.L844:
	movq	%rax, %rbx
	jmp	.L836
	.section	.gcc_except_table
.LLSDA8160:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8160-.LLSDACSB8160
.LLSDACSB8160:
	.uleb128 .LEHB24-.LFB8160
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L844-.LFB8160
	.uleb128 0
	.uleb128 .LEHB25-.LFB8160
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB26-.LFB8160
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L844-.LFB8160
	.uleb128 0
.LLSDACSE8160:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8160
	.type	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES7_.cold, @function
_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES7_.cold:
.LFSB8160:
.L836:
	.cfi_def_cfa_offset 208
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	120(%rsp), %rdi
	call	free@PLT
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L903
	movq	%rbx, %rdi
.LEHB27:
	call	_Unwind_Resume@PLT
.LEHE27:
.L903:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8160:
	.section	.gcc_except_table
.LLSDAC8160:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8160-.LLSDACSBC8160
.LLSDACSBC8160:
	.uleb128 .LEHB27-.LCOLDB76
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
.LLSDACSEC8160:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES7_, .-_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES7_
	.section	.text.unlikely
	.size	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES7_.cold, .-_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES7_.cold
.LCOLDE76:
	.text
.LHOTE76:
	.section	.rodata.str1.8
	.align 8
.LC77:
	.string	"wze::engine.vector.RayCast(): InitialX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC78:
	.string	"wze::engine.vector.RayCast(): InitialY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC79:
	.string	"wze::engine.vector.RayCast(): TerminalX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC80:
	.string	"wze::engine.vector.RayCast(): TerminalY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC81:
	.string	"wze::engine.vector.RayCast(): SamplingStep must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC82:
	.string	"wze::engine.vector.RayCast(): SamplingStep must not be less than or equal to 0\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC83:
	.string	"wze::engine.vector.RayCast(): ActorTypeWhitelist must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC84:
	.string	"wze::engine.vector.RayCast(): ActorIDBlacklist must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC85:
	.string	"wze::engine.vector.RayCast(): OverlapboxTypeBlacklist must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n"
	.section	.text.unlikely
	.align 2
.LCOLDB86:
	.text
.LHOTB86:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_S5_
	.type	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_S5_, @function
_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_S5_:
.LFB8161:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8161
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%r8, %r14
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
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	movq	%rdx, 8(%rsp)
	movq	(%rdi), %rdx
	movl	%esi, 72(%rsp)
	movq	%rcx, 56(%rsp)
	movzwl	608(%rdx), %ebx
	movw	%si, 78(%rsp)
	movsd	%xmm0, 16(%rsp)
	movsd	%xmm1, 24(%rsp)
	movsd	%xmm2, 32(%rsp)
	movsd	%xmm3, 40(%rsp)
	movsd	%xmm4, 48(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	movq	%rbx, 96(%rsp)
	testq	%rbx, %rbx
	jne	.L905
	movq	$0, 104(%rsp)
	xorl	%r12d, %r12d
.L906:
	movsd	16(%rsp), %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L1006
	movsd	24(%rsp), %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L1007
	movsd	32(%rsp), %xmm7
	ucomisd	%xmm7, %xmm7
	jp	.L1008
	movsd	40(%rsp), %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L1009
	movsd	48(%rsp), %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L1010
	pxor	%xmm0, %xmm0
	comisd	48(%rsp), %xmm0
	jnb	.L1011
	cmpq	$0, 8(%rsp)
	je	.L1012
	cmpq	$0, 56(%rsp)
	je	.L1013
	testq	%r14, %r14
	je	.L1014
	movsd	16(%rsp), %xmm4
	ucomisd	32(%rsp), %xmm4
	movl	$0, %esi
	movsd	24(%rsp), %xmm7
	setnp	%cl
	cmovne	%esi, %ecx
	ucomisd	40(%rsp), %xmm7
	setnp	%al
	cmovne	%esi, %eax
	andb	%al, %cl
	movb	%cl, 77(%rsp)
	jne	.L923
	movq	584(%rdx), %rcx
	cmpq	$1, %rcx
	jbe	.L959
	leaq	96(%rsp), %rax
	movl	$1, %r12d
	xorl	%ebp, %ebp
	movq	%rax, 64(%rsp)
	.p2align 4,,10
	.p2align 3
.L945:
	movq	592(%rdx), %rax
	leaq	0(,%r12,8), %r13
	movq	(%rax,%r12,8), %rsi
	testq	%rsi, %rsi
	je	.L925
	movq	8(%rsp), %rbx
	movq	208(%rsi), %r8
	xorl	%esi, %esi
	movq	(%rbx), %rdi
	movq	8(%rbx), %r9
	testq	%rdi, %rdi
	je	.L925
.L926:
	cmpq	(%r9,%rsi,8), %r8
	je	.L1015
	addq	$1, %rsi
	cmpq	%rsi, %rdi
	jne	.L926
	.p2align 4,,10
	.p2align 3
.L925:
	addq	$1, %r12
	cmpq	%rcx, %r12
	jb	.L945
	movq	104(%rsp), %r12
.L924:
	movzwl	72(%rsp), %eax
	pxor	%xmm0, %xmm0
	movsd	16(%rsp), %xmm7
	movsd	24(%rsp), %xmm6
	shrw	%ax
	movapd	%xmm7, %xmm4
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	%xmm0, %xmm4
	addsd	%xmm6, %xmm0
	movsd	%xmm4, (%rsp)
	movsd	40(%rsp), %xmm4
	movsd	%xmm0, 8(%rsp)
	movsd	32(%rsp), %xmm0
	movapd	%xmm4, %xmm1
	comisd	%xmm4, %xmm6
	subsd	%xmm7, %xmm0
	subsd	%xmm6, %xmm1
	mulsd	%xmm1, %xmm1
	movapd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	sqrtsd	%xmm2, %xmm2
	divsd	%xmm2, %xmm0
	movsd	%xmm2, 16(%rsp)
	ja	.L1016
	call	acos@PLT
	movsd	%xmm0, 24(%rsp)
.L948:
	movsd	16(%rsp), %xmm6
	pxor	%xmm0, %xmm0
	movzwl	78(%rsp), %r14d
	comisd	%xmm0, %xmm6
	jbe	.L996
.L951:
	testq	%rbp, %rbp
	je	.L954
	movq	96(%rsp), %r13
	xorl	%ebx, %ebx
	jmp	.L950
	.p2align 4,,10
	.p2align 3
.L1017:
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	je	.L954
.L950:
	movq	(%r15), %rax
	leaq	600(%rax), %rdi
	cmpq	%r13, %rbx
	je	.L1005
	pxor	%xmm2, %xmm2
	movsd	8(%rsp), %xmm1
	movsd	(%rsp), %xmm5
	cvtsi2sdl	%r14d, %xmm2
	movq	(%r12,%rbx,8), %rsi
	movapd	%xmm1, %xmm3
	movapd	%xmm5, %xmm0
	subsd	%xmm2, %xmm3
	addsd	%xmm5, %xmm2
.LEHB28:
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE@PLT
	testb	%al, %al
	je	.L1017
.L923:
	movq	%r12, %rdi
	call	free@PLT
	movq	120(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1018
	movzbl	77(%rsp), %eax
	addq	$136, %rsp
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
.L1015:
	.cfi_restore_state
	movq	56(%rsp), %rbx
	xorl	%esi, %esi
	movq	(%rbx), %rdi
	movq	8(%rbx), %r8
	testq	%rdi, %rdi
	je	.L929
.L957:
	cmpq	%r12, (%r8,%rsi,8)
	je	.L925
	addq	$1, %rsi
	cmpq	%rsi, %rdi
	jne	.L957
	.p2align 4,,10
	.p2align 3
.L929:
	cmpq	%rcx, %r12
	jnb	.L1003
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L931:
	movq	(%rax,%r13), %rax
	cmpq	152(%rax), %rbx
	jnb	.L925
	movq	160(%rax), %rax
	leaq	0(,%rbx,8), %rdi
	movq	%rdi, (%rsp)
	movq	(%rax,%rbx,8), %rax
	testq	%rax, %rax
	je	.L936
	movq	(%r14), %rsi
	movq	24(%rax), %rdi
	xorl	%eax, %eax
	movq	8(%r14), %r8
	testq	%rsi, %rsi
	je	.L934
.L935:
	cmpq	(%r8,%rax,8), %rdi
	je	.L936
	addq	$1, %rax
	cmpq	%rax, %rsi
	jne	.L935
	.p2align 4,,10
	.p2align 3
.L934:
	cmpq	%rbp, 96(%rsp)
	je	.L1019
.L938:
	movq	592(%rdx), %rax
	cmpq	%rcx, %r12
	jnb	.L1003
	movq	(%rax,%r13), %rsi
	movq	160(%rsi), %rdi
	cmpq	152(%rsi), %rbx
	jnb	.L1005
	movq	(%rsp), %rsi
	movq	(%rdi,%rsi), %r8
	movq	104(%rsp), %rdi
	leaq	1(%rbp), %rsi
	cmpq	96(%rsp), %rbp
	jnb	.L1020
	movq	%r8, (%rdi,%rbp,8)
	addq	$1, %rbx
	movq	%rsi, %rbp
	jmp	.L931
	.p2align 4,,10
	.p2align 3
.L936:
	movq	592(%rdx), %rax
	addq	$1, %rbx
	cmpq	%rcx, %r12
	jb	.L931
.L1003:
	movq	%r12, %rsi
	leaq	.LC23(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.L911:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L1019:
	movzwl	608(%rdx), %eax
	movq	64(%rsp), %rdi
	movq	%rbp, %rsi
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0
.LEHE28:
	movq	(%r15), %rdx
	movq	584(%rdx), %rcx
	jmp	.L938
.L1016:
	call	acos@PLT
	movsd	.LC24(%rip), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 24(%rsp)
	jmp	.L948
	.p2align 4,,10
	.p2align 3
.L954:
	movsd	24(%rsp), %xmm0
	leaq	88(%rsp), %rdi
	leaq	80(%rsp), %rsi
	call	sincos@PLT
	movsd	48(%rsp), %xmm6
	movsd	80(%rsp), %xmm0
	movsd	16(%rsp), %xmm7
	mulsd	%xmm6, %xmm0
	addsd	(%rsp), %xmm0
	subsd	%xmm6, %xmm7
	movsd	%xmm0, (%rsp)
	movsd	88(%rsp), %xmm0
	movsd	%xmm7, 16(%rsp)
	mulsd	%xmm6, %xmm0
	addsd	8(%rsp), %xmm0
	movsd	%xmm0, 8(%rsp)
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm7
	ja	.L951
.L996:
	movb	$1, 77(%rsp)
	jmp	.L923
.L905:
	leaq	0(,%rbx,8), %rdi
	movq	%rdx, (%rsp)
	call	malloc@PLT
	movq	(%rsp), %rdx
	testq	%rax, %rax
	movq	%rax, 104(%rsp)
	movq	%rax, %r12
	jne	.L906
	leaq	.LC15(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
.LEHB29:
	call	printf@PLT
.LEHE29:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L959:
	xorl	%ebp, %ebp
	jmp	.L924
.L1005:
	movq	%rbx, %rsi
	leaq	.LC23(%rip), %rdi
	xorl	%eax, %eax
.LEHB30:
	call	printf@PLT
	jmp	.L911
.L1013:
	movzwl	72(%rsp), %esi
	movq	8(%rsp), %rdx
	movq	%r14, %r8
	xorl	%ecx, %ecx
	movsd	48(%rsp), %xmm4
	movsd	40(%rsp), %xmm3
	leaq	.LC84(%rip), %rdi
	movl	$5, %eax
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L911
.L1012:
	movzwl	72(%rsp), %esi
	movq	56(%rsp), %rcx
	movq	%r14, %r8
	xorl	%edx, %edx
	movsd	48(%rsp), %xmm4
	movsd	40(%rsp), %xmm3
	leaq	.LC83(%rip), %rdi
	movl	$5, %eax
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L911
.L1011:
	movzwl	72(%rsp), %esi
	movq	56(%rsp), %rcx
	movq	%r14, %r8
	leaq	.LC82(%rip), %rdi
	movq	8(%rsp), %rdx
	movsd	48(%rsp), %xmm4
	movl	$5, %eax
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L911
.L1010:
	movzwl	72(%rsp), %esi
	movq	56(%rsp), %rcx
	movq	%r14, %r8
	leaq	.LC81(%rip), %rdi
	movq	8(%rsp), %rdx
	movsd	40(%rsp), %xmm3
	movl	$5, %eax
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L911
.L1020:
	movq	%rbp, %rsi
	leaq	.LC23(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L911
.L1007:
	movzwl	72(%rsp), %esi
	movq	56(%rsp), %rcx
	movq	%r14, %r8
	leaq	.LC78(%rip), %rdi
	movq	8(%rsp), %rdx
	movsd	48(%rsp), %xmm4
	movl	$5, %eax
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L911
.L1006:
	movzwl	72(%rsp), %esi
	movq	56(%rsp), %rcx
	movq	%r14, %r8
	movapd	%xmm6, %xmm0
	movq	8(%rsp), %rdx
	movsd	48(%rsp), %xmm4
	leaq	.LC77(%rip), %rdi
	movl	$5, %eax
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	call	printf@PLT
	jmp	.L911
.L1009:
	movzwl	72(%rsp), %esi
	movq	56(%rsp), %rcx
	movq	%r14, %r8
	movapd	%xmm6, %xmm3
	movq	8(%rsp), %rdx
	movsd	48(%rsp), %xmm4
	leaq	.LC80(%rip), %rdi
	movl	$5, %eax
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L911
.L1008:
	movzwl	72(%rsp), %esi
	movq	56(%rsp), %rcx
	movq	%r14, %r8
	movapd	%xmm7, %xmm2
	movq	8(%rsp), %rdx
	movsd	48(%rsp), %xmm4
	leaq	.LC79(%rip), %rdi
	movl	$5, %eax
	movsd	40(%rsp), %xmm3
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L911
.L1014:
	movzwl	72(%rsp), %esi
	movq	56(%rsp), %rcx
	xorl	%r8d, %r8d
	leaq	.LC85(%rip), %rdi
	movq	8(%rsp), %rdx
	movsd	48(%rsp), %xmm4
	movl	$5, %eax
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
.LEHE30:
	jmp	.L911
.L1018:
	call	__stack_chk_fail@PLT
.L962:
	movq	%rax, %rbx
	jmp	.L955
	.section	.gcc_except_table
.LLSDA8161:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8161-.LLSDACSB8161
.LLSDACSB8161:
	.uleb128 .LEHB28-.LFB8161
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L962-.LFB8161
	.uleb128 0
	.uleb128 .LEHB29-.LFB8161
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB30-.LFB8161
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L962-.LFB8161
	.uleb128 0
.LLSDACSE8161:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8161
	.type	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_S5_.cold, @function
_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_S5_.cold:
.LFSB8161:
.L955:
	.cfi_def_cfa_offset 192
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	104(%rsp), %rdi
	call	free@PLT
	movq	120(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1021
	movq	%rbx, %rdi
.LEHB31:
	call	_Unwind_Resume@PLT
.LEHE31:
.L1021:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8161:
	.section	.gcc_except_table
.LLSDAC8161:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8161-.LLSDACSBC8161
.LLSDACSBC8161:
	.uleb128 .LEHB31-.LCOLDB86
	.uleb128 .LEHE31-.LEHB31
	.uleb128 0
	.uleb128 0
.LLSDACSEC8161:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_S5_, .-_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_S5_
	.section	.text.unlikely
	.size	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_S5_.cold, .-_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_S5_.cold
.LCOLDE86:
	.text
.LHOTE86:
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC10:
	.long	442745336
	.long	1078765020
	.align 8
.LC11:
	.long	0
	.long	1081507840
	.align 8
.LC13:
	.long	-1571644103
	.long	1066524486
	.align 8
.LC24:
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
