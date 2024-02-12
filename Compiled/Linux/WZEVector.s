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
.LFB8349:
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
.LFE8349:
	.size	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0, .-_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vectorC2EPS0_
	.type	_ZN3wze6engine6vectorC2EPS0_, @function
_ZN3wze6engine6vectorC2EPS0_:
.LFB8156:
	.cfi_startproc
	movq	%rsi, (%rdi)
	ret
	.cfi_endproc
.LFE8156:
	.size	_ZN3wze6engine6vectorC2EPS0_, .-_ZN3wze6engine6vectorC2EPS0_
	.globl	_ZN3wze6engine6vectorC1EPS0_
	.set	_ZN3wze6engine6vectorC1EPS0_,_ZN3wze6engine6vectorC2EPS0_
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"wze::engine::vector::Length(): InitialX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\n"
	.align 8
.LC3:
	.string	"wze::engine::vector::Length(): InitialY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\n"
	.align 8
.LC4:
	.string	"wze::engine::vector::Length(): TerminalX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\n"
	.align 8
.LC5:
	.string	"wze::engine::vector::Length(): TerminalY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector6LengthEdddd
	.type	_ZN3wze6engine6vector6LengthEdddd, @function
_ZN3wze6engine6vector6LengthEdddd:
.LFB8158:
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
.LFE8158:
	.size	_ZN3wze6engine6vector6LengthEdddd, .-_ZN3wze6engine6vector6LengthEdddd
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"wze::engine::vector::Angle(): InitialX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\n"
	.align 8
.LC7:
	.string	"wze::engine::vector::Angle(): InitialY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\n"
	.align 8
.LC8:
	.string	"wze::engine::vector::Angle(): TerminalX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\n"
	.align 8
.LC9:
	.string	"wze::engine::vector::Angle(): TerminalY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector5AngleEdddd
	.type	_ZN3wze6engine6vector5AngleEdddd, @function
_ZN3wze6engine6vector5AngleEdddd:
.LFB8159:
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
.LFE8159:
	.size	_ZN3wze6engine6vector5AngleEdddd, .-_ZN3wze6engine6vector5AngleEdddd
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"wze::engine::vector::TerminalX(): InitialX must not be NaN\nParams: InitialX: %lf, Length: %lf, Angle: %lf\n"
	.align 8
.LC13:
	.string	"wze::engine::vector::TerminalX(): Length must not be NaN\nParams: InitialX: %lf, Length: %lf, Angle: %lf\n"
	.align 8
.LC14:
	.string	"wze::engine::vector::TerminalX(): Angle must not be NaN\nParams: InitialX: %lf, Length: %lf, Angle: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector9TerminalXEddd
	.type	_ZN3wze6engine6vector9TerminalXEddd, @function
_ZN3wze6engine6vector9TerminalXEddd:
.LFB8160:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L94
	ucomisd	%xmm1, %xmm1
	jp	.L95
	ucomisd	%xmm2, %xmm2
	jp	.L96
	mulsd	.LC15(%rip), %xmm2
	movsd	%xmm0, (%rsp)
	movsd	%xmm1, 8(%rsp)
	movapd	%xmm2, %xmm0
	call	cos@PLT
	movsd	8(%rsp), %xmm1
	movsd	(%rsp), %xmm3
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	mulsd	%xmm1, %xmm0
	addsd	%xmm3, %xmm0
	ret
.L94:
	.cfi_restore_state
	leaq	.LC12(%rip), %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L96:
	leaq	.LC14(%rip), %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L95:
	leaq	.LC13(%rip), %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8160:
	.size	_ZN3wze6engine6vector9TerminalXEddd, .-_ZN3wze6engine6vector9TerminalXEddd
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"wze::engine::vector::TerminalY(): InitialY must not be NaN\nParams: InitialY: %lf, Length: %lf, Angle: %lf\n"
	.align 8
.LC17:
	.string	"wze::engine::vector::TerminalY(): Length must not be NaN\nParams: InitialY: %lf, Length: %lf, Angle: %lf\n"
	.align 8
.LC18:
	.string	"wze::engine::vector::TerminalY(): Angle must not be NaN\nParams: InitialY: %lf, Length: %lf, Angle: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector9TerminalYEddd
	.type	_ZN3wze6engine6vector9TerminalYEddd, @function
_ZN3wze6engine6vector9TerminalYEddd:
.LFB8161:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L111
	ucomisd	%xmm1, %xmm1
	jp	.L112
	ucomisd	%xmm2, %xmm2
	jp	.L113
	mulsd	.LC15(%rip), %xmm2
	movsd	%xmm0, (%rsp)
	movsd	%xmm1, 8(%rsp)
	movapd	%xmm2, %xmm0
	call	sin@PLT
	movsd	8(%rsp), %xmm1
	movsd	(%rsp), %xmm3
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	mulsd	%xmm1, %xmm0
	addsd	%xmm3, %xmm0
	ret
.L111:
	.cfi_restore_state
	leaq	.LC16(%rip), %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L113:
	leaq	.LC18(%rip), %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L112:
	leaq	.LC17(%rip), %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8161:
	.size	_ZN3wze6engine6vector9TerminalYEddd, .-_ZN3wze6engine6vector9TerminalYEddd
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"neo::array(): Memory allocation failed\nParams: Length: %lld\n"
	.align 8
.LC20:
	.ascii	"wz"
	.string	"e::engine.vector.RayCast(): InitialX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC21:
	.ascii	"wz"
	.string	"e::engine.vector.RayCast(): InitialY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC22:
	.ascii	"wze"
	.string	"::engine.vector.RayCast(): TerminalX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC23:
	.ascii	"wze"
	.string	"::engine.vector.RayCast(): TerminalY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC24:
	.ascii	"wze::e"
	.string	"ngine.vector.RayCast(): SamplingStep must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC26:
	.ascii	"wze::engine.vector.RayCast"
	.string	"(): SamplingStep must not be less than or equal to 0\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC27:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB29:
	.text
.LHOTB29:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_
	.type	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_, @function
_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_:
.LFB8162:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8162
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
	movzwl	288(%rcx), %ebx
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
	jne	.L115
	movq	$0, 120(%rsp)
	xorl	%r12d, %r12d
.L116:
	movsd	(%rsp), %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L211
	movsd	8(%rsp), %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L212
	movsd	16(%rsp), %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L213
	movsd	24(%rsp), %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L214
	movsd	32(%rsp), %xmm7
	ucomisd	%xmm7, %xmm7
	jp	.L215
	pxor	%xmm0, %xmm0
	comisd	32(%rsp), %xmm0
	jnb	.L216
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
	jne	.L130
	movq	264(%rcx), %rsi
	cmpq	$1, %rsi
	jbe	.L166
	movl	$1, %ebx
	xorl	%r15d, %r15d
	jmp	.L152
	.p2align 4,,10
	.p2align 3
.L132:
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jnb	.L217
.L152:
	movq	272(%rcx), %rax
	leaq	0(,%rbx,8), %r13
	movq	(%rax,%rbx,8), %rdx
	testq	%rdx, %rdx
	je	.L132
	movq	216(%rdx), %rdi
	movq	56(%rsp), %r8
	xorl	%edx, %edx
	testq	%r14, %r14
	je	.L132
	cmpq	(%r8,%rdx,8), %rdi
	je	.L218
.L196:
	addq	$1, %rdx
	cmpq	%rdx, %r14
	je	.L132
	cmpq	(%r8,%rdx,8), %rdi
	jne	.L196
.L218:
	xorl	%edx, %edx
	cmpq	$0, 64(%rsp)
	movq	80(%rsp), %rdi
	je	.L136
.L164:
	cmpq	%rbx, (%rdi,%rdx,8)
	je	.L132
	addq	$1, %rdx
	cmpq	%rdx, 64(%rsp)
	jne	.L164
.L136:
	cmpq	%rsi, %rbx
	jnb	.L210
	movl	$1, %r12d
	.p2align 4,,10
	.p2align 3
.L138:
	movq	(%rax,%r13), %rax
	cmpq	152(%rax), %r12
	jnb	.L132
	movq	160(%rax), %rax
	leaq	0(,%r12,8), %rdx
	movq	%rdx, 40(%rsp)
	movq	(%rax,%r12,8), %rax
	testq	%rax, %rax
	jne	.L139
.L143:
	movq	272(%rcx), %rax
	addq	$1, %r12
	cmpq	%rsi, %rbx
	jb	.L138
.L210:
	movq	%rbx, %rsi
	leaq	.LC27(%rip), %rdi
	xorl	%eax, %eax
.LEHB0:
	call	printf@PLT
	jmp	.L121
	.p2align 4,,10
	.p2align 3
.L217:
	movq	120(%rsp), %r12
.L131:
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
	ja	.L219
	call	acos@PLT
	movsd	%xmm0, 24(%rsp)
.L155:
	movsd	16(%rsp), %xmm6
	pxor	%xmm0, %xmm0
	movzwl	94(%rsp), %r14d
	comisd	%xmm0, %xmm6
	jbe	.L200
.L158:
	testq	%r15, %r15
	je	.L161
	movq	112(%rsp), %r13
	xorl	%ebx, %ebx
	jmp	.L157
	.p2align 4,,10
	.p2align 3
.L221:
	addq	$1, %rbx
	cmpq	%r15, %rbx
	je	.L161
.L157:
	movq	0(%rbp), %rax
	leaq	280(%rax), %rdi
	cmpq	%rbx, %r13
	je	.L220
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
	je	.L221
.L130:
	movq	%r12, %rdi
	call	free@PLT
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L222
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
.L219:
	.cfi_restore_state
	call	acos@PLT
	movsd	.LC28(%rip), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 24(%rsp)
	jmp	.L155
	.p2align 4,,10
	.p2align 3
.L139:
	movq	32(%rax), %rdx
	xorl	%eax, %eax
	cmpq	$0, 48(%rsp)
	movq	72(%rsp), %rdi
	je	.L142
.L141:
	cmpq	(%rdi,%rax,8), %rdx
	je	.L143
	addq	$1, %rax
	cmpq	%rax, 48(%rsp)
	jne	.L141
.L142:
	cmpq	%r15, 112(%rsp)
	je	.L223
.L145:
	movq	272(%rcx), %rax
	cmpq	%rsi, %rbx
	jnb	.L210
	movq	(%rax,%r13), %rdx
	movq	160(%rdx), %rdi
	cmpq	152(%rdx), %r12
	jnb	.L224
	movq	40(%rsp), %rdx
	movq	(%rdi,%rdx), %r8
	movq	120(%rsp), %rdi
	leaq	1(%r15), %rdx
	cmpq	112(%rsp), %r15
	jnb	.L225
	movq	%r8, (%rdi,%r15,8)
	addq	$1, %r12
	movq	%rdx, %r15
	jmp	.L138
	.p2align 4,,10
	.p2align 3
.L161:
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
	ja	.L158
.L200:
	movb	$1, 93(%rsp)
	jmp	.L130
.L223:
	movzwl	288(%rcx), %eax
	leaq	112(%rsp), %rdi
	movq	%r15, %rsi
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0
.LEHE0:
	movq	0(%rbp), %rcx
	movq	264(%rcx), %rsi
	jmp	.L145
.L115:
	leaq	0(,%rbx,8), %rdi
	movq	%rcx, 40(%rsp)
	call	malloc@PLT
	movq	40(%rsp), %rcx
	testq	%rax, %rax
	movq	%rax, 120(%rsp)
	movq	%rax, %r12
	jne	.L116
	leaq	.LC19(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
.LEHB1:
	call	printf@PLT
.LEHE1:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L166:
	xorl	%r15d, %r15d
	jmp	.L131
.L220:
	movq	%r13, %rsi
	leaq	.LC27(%rip), %rdi
	xorl	%eax, %eax
.LEHB2:
	call	printf@PLT
.L121:
	movl	$1, %edi
	call	exit@PLT
.L225:
	movq	%r15, %rsi
	leaq	.LC27(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L121
.L213:
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
	jmp	.L121
.L212:
	movzwl	88(%rsp), %esi
	movq	48(%rsp), %r8
	movq	%r14, %rdx
	movapd	%xmm6, %xmm1
	movq	64(%rsp), %rcx
	movsd	(%rsp), %xmm0
	movl	$5, %eax
	leaq	.LC21(%rip), %rdi
	movsd	32(%rsp), %xmm4
	movsd	24(%rsp), %xmm3
	movsd	16(%rsp), %xmm2
	call	printf@PLT
	jmp	.L121
.L224:
	movq	%r12, %rsi
	leaq	.LC27(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L121
.L216:
	movzwl	88(%rsp), %esi
	movq	48(%rsp), %r8
	movq	%r14, %rdx
	leaq	.LC26(%rip), %rdi
	movq	64(%rsp), %rcx
	movsd	32(%rsp), %xmm4
	movl	$5, %eax
	movsd	24(%rsp), %xmm3
	movsd	16(%rsp), %xmm2
	movsd	8(%rsp), %xmm1
	movsd	(%rsp), %xmm0
	call	printf@PLT
	jmp	.L121
.L215:
	movzwl	88(%rsp), %esi
	movq	48(%rsp), %r8
	movq	%r14, %rdx
	movapd	%xmm7, %xmm4
	movq	64(%rsp), %rcx
	movsd	(%rsp), %xmm0
	movl	$5, %eax
	leaq	.LC24(%rip), %rdi
	movsd	24(%rsp), %xmm3
	movsd	16(%rsp), %xmm2
	movsd	8(%rsp), %xmm1
	call	printf@PLT
	jmp	.L121
.L214:
	movzwl	88(%rsp), %esi
	movq	48(%rsp), %r8
	movq	%r14, %rdx
	movapd	%xmm6, %xmm3
	movq	64(%rsp), %rcx
	movsd	(%rsp), %xmm0
	movl	$5, %eax
	leaq	.LC23(%rip), %rdi
	movsd	32(%rsp), %xmm4
	movsd	16(%rsp), %xmm2
	movsd	8(%rsp), %xmm1
	call	printf@PLT
	jmp	.L121
.L222:
	call	__stack_chk_fail@PLT
.L211:
	movzwl	88(%rsp), %esi
	movq	48(%rsp), %r8
	movq	%r14, %rdx
	leaq	.LC20(%rip), %rdi
	movq	64(%rsp), %rcx
	movsd	32(%rsp), %xmm4
	movl	$5, %eax
	movsd	24(%rsp), %xmm3
	movsd	16(%rsp), %xmm2
	movsd	8(%rsp), %xmm1
	movsd	(%rsp), %xmm0
	call	printf@PLT
.LEHE2:
	jmp	.L121
.L172:
	movq	%rax, %rbx
	jmp	.L162
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8162:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8162-.LLSDACSB8162
.LLSDACSB8162:
	.uleb128 .LEHB0-.LFB8162
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L172-.LFB8162
	.uleb128 0
	.uleb128 .LEHB1-.LFB8162
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB8162
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L172-.LFB8162
	.uleb128 0
.LLSDACSE8162:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8162
	.type	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_.cold, @function
_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_.cold:
.LFSB8162:
.L162:
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
	jne	.L226
	movq	%rbx, %rdi
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
.L226:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8162:
	.section	.gcc_except_table
.LLSDAC8162:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8162-.LLSDACSBC8162
.LLSDACSBC8162:
	.uleb128 .LEHB3-.LCOLDB29
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSEC8162:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_, .-_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_
	.section	.text.unlikely
	.size	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_.cold, .-_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_.cold
.LCOLDE29:
	.text
.LHOTE29:
	.section	.rodata.str1.8
	.align 8
.LC30:
	.string	"wze::engine.vector.RayCast(): InitialX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC31:
	.string	"wze::engine.vector.RayCast(): InitialY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC32:
	.string	"wze::engine.vector.RayCast(): TerminalX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC33:
	.string	"wze::engine.vector.RayCast(): TerminalY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC34:
	.string	"wze::engine.vector.RayCast(): SamplingStep must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC35:
	.ascii	"wze::engine.vecto"
	.string	"r.RayCast(): SamplingStep must not be less than or equal to 0\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC36:
	.ascii	"wze:"
	.string	":engine.vector.RayCast(): ActorTypeWhiteList must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\n"
	.section	.text.unlikely
	.align 2
.LCOLDB37:
	.text
.LHOTB37:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES7_
	.type	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES7_, @function
_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES7_:
.LFB8164:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8164
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
	movzwl	288(%rdx), %ebx
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
	jne	.L228
	movq	$0, 120(%rsp)
	xorl	%r12d, %r12d
.L229:
	movsd	24(%rsp), %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L325
	movsd	32(%rsp), %xmm7
	ucomisd	%xmm7, %xmm7
	jp	.L326
	movsd	40(%rsp), %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L327
	movsd	48(%rsp), %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L328
	movsd	56(%rsp), %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L329
	pxor	%xmm0, %xmm0
	comisd	56(%rsp), %xmm0
	jnb	.L330
	testq	%r14, %r14
	je	.L331
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
	jne	.L244
	movq	264(%rdx), %rsi
	cmpq	$1, %rsi
	jbe	.L280
	movl	$1, %ebx
	xorl	%r15d, %r15d
	.p2align 4,,10
	.p2align 3
.L266:
	movq	272(%rdx), %rax
	leaq	0(,%rbx,8), %r13
	movq	(%rax,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L246
	movq	(%r14), %rdi
	movq	216(%rcx), %r8
	xorl	%ecx, %ecx
	movq	8(%r14), %r9
	testq	%rdi, %rdi
	je	.L246
.L247:
	cmpq	(%r9,%rcx,8), %r8
	je	.L332
	addq	$1, %rcx
	cmpq	%rcx, %rdi
	jne	.L247
	.p2align 4,,10
	.p2align 3
.L246:
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jb	.L266
	movq	120(%rsp), %r12
.L245:
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
	ja	.L333
	call	acos@PLT
	movsd	%xmm0, 32(%rsp)
.L269:
	movsd	24(%rsp), %xmm6
	pxor	%xmm0, %xmm0
	movzwl	94(%rsp), %r14d
	comisd	%xmm0, %xmm6
	jbe	.L315
.L272:
	testq	%r15, %r15
	je	.L275
	movq	112(%rsp), %r13
	xorl	%ebx, %ebx
	jmp	.L271
	.p2align 4,,10
	.p2align 3
.L335:
	addq	$1, %rbx
	cmpq	%r15, %rbx
	je	.L275
.L271:
	movq	0(%rbp), %rax
	leaq	280(%rax), %rdi
	cmpq	%rbx, %r13
	je	.L334
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
	je	.L335
.L244:
	movq	%r12, %rdi
	call	free@PLT
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L336
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
.L332:
	.cfi_restore_state
	xorl	%ecx, %ecx
	cmpq	$0, 64(%rsp)
	movq	80(%rsp), %rdi
	je	.L250
.L278:
	cmpq	(%rdi,%rcx,8), %rbx
	je	.L246
	addq	$1, %rcx
	cmpq	%rcx, 64(%rsp)
	jne	.L278
.L250:
	cmpq	%rsi, %rbx
	jnb	.L324
	movl	$1, %r12d
	.p2align 4,,10
	.p2align 3
.L252:
	movq	(%rax,%r13), %rax
	cmpq	152(%rax), %r12
	jnb	.L246
	movq	160(%rax), %rax
	leaq	0(,%r12,8), %rcx
	movq	%rcx, 8(%rsp)
	movq	(%rax,%r12,8), %rax
	testq	%rax, %rax
	jne	.L253
.L257:
	movq	272(%rdx), %rax
	addq	$1, %r12
	cmpq	%rsi, %rbx
	jb	.L252
.L324:
	movq	%rbx, %rsi
	leaq	.LC27(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.L234:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L253:
	movq	32(%rax), %rcx
	xorl	%eax, %eax
	cmpq	$0, 16(%rsp)
	movq	72(%rsp), %rdi
	je	.L256
.L255:
	cmpq	(%rdi,%rax,8), %rcx
	je	.L257
	addq	$1, %rax
	cmpq	%rax, 16(%rsp)
	jne	.L255
.L256:
	cmpq	%r15, 112(%rsp)
	je	.L337
.L259:
	movq	272(%rdx), %rax
	cmpq	%rsi, %rbx
	jnb	.L324
	movq	(%rax,%r13), %rcx
	movq	160(%rcx), %rdi
	cmpq	152(%rcx), %r12
	jnb	.L338
	movq	8(%rsp), %rcx
	movq	(%rdi,%rcx), %r8
	movq	120(%rsp), %rdi
	leaq	1(%r15), %rcx
	cmpq	112(%rsp), %r15
	jnb	.L339
	movq	%r8, (%rdi,%r15,8)
	addq	$1, %r12
	movq	%rcx, %r15
	jmp	.L252
	.p2align 4,,10
	.p2align 3
.L337:
	movzwl	288(%rdx), %eax
	leaq	112(%rsp), %rdi
	movq	%r15, %rsi
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0
.LEHE4:
	movq	0(%rbp), %rdx
	movq	264(%rdx), %rsi
	jmp	.L259
.L333:
	call	acos@PLT
	movsd	.LC28(%rip), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 32(%rsp)
	jmp	.L269
	.p2align 4,,10
	.p2align 3
.L275:
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
	ja	.L272
.L315:
	movb	$1, 93(%rsp)
	jmp	.L244
.L228:
	leaq	0(,%rbx,8), %rdi
	movq	%rdx, 8(%rsp)
	call	malloc@PLT
	movq	8(%rsp), %rdx
	testq	%rax, %rax
	movq	%rax, 120(%rsp)
	movq	%rax, %r12
	jne	.L229
	leaq	.LC19(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
.LEHB5:
	call	printf@PLT
.LEHE5:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L280:
	xorl	%r15d, %r15d
	jmp	.L245
.L334:
	movq	%r13, %rsi
	leaq	.LC27(%rip), %rdi
	xorl	%eax, %eax
.LEHB6:
	call	printf@PLT
	jmp	.L234
.L331:
	movzwl	88(%rsp), %esi
	movq	16(%rsp), %r8
	xorl	%edx, %edx
	leaq	.LC36(%rip), %rdi
	movq	64(%rsp), %rcx
	movsd	56(%rsp), %xmm4
	movl	$5, %eax
	movsd	48(%rsp), %xmm3
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
	jmp	.L234
.L336:
	call	__stack_chk_fail@PLT
.L339:
	movq	%r15, %rsi
	leaq	.LC27(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L234
.L330:
	movzwl	88(%rsp), %esi
	movq	16(%rsp), %r8
	movq	%r14, %rdx
	leaq	.LC35(%rip), %rdi
	movq	64(%rsp), %rcx
	movsd	56(%rsp), %xmm4
	movl	$5, %eax
	movsd	48(%rsp), %xmm3
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
	jmp	.L234
.L338:
	movq	%r12, %rsi
	leaq	.LC27(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L234
.L328:
	movzwl	88(%rsp), %esi
	movq	16(%rsp), %r8
	movq	%r14, %rdx
	movapd	%xmm6, %xmm3
	movq	64(%rsp), %rcx
	movsd	56(%rsp), %xmm4
	leaq	.LC33(%rip), %rdi
	movl	$5, %eax
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
	jmp	.L234
.L327:
	movzwl	88(%rsp), %esi
	movq	16(%rsp), %r8
	movq	%r14, %rdx
	leaq	.LC32(%rip), %rdi
	movq	64(%rsp), %rcx
	movsd	56(%rsp), %xmm4
	movl	$5, %eax
	movsd	48(%rsp), %xmm3
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
	jmp	.L234
.L326:
	movzwl	88(%rsp), %esi
	movq	16(%rsp), %r8
	movq	%r14, %rdx
	movapd	%xmm7, %xmm1
	movq	64(%rsp), %rcx
	movsd	56(%rsp), %xmm4
	leaq	.LC31(%rip), %rdi
	movl	$5, %eax
	movsd	48(%rsp), %xmm3
	movsd	40(%rsp), %xmm2
	movsd	24(%rsp), %xmm0
	call	printf@PLT
	jmp	.L234
.L325:
	movzwl	88(%rsp), %esi
	movq	16(%rsp), %r8
	movq	%r14, %rdx
	movapd	%xmm6, %xmm0
	movq	64(%rsp), %rcx
	movsd	56(%rsp), %xmm4
	leaq	.LC30(%rip), %rdi
	movl	$5, %eax
	movsd	48(%rsp), %xmm3
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	call	printf@PLT
	jmp	.L234
.L329:
	movzwl	88(%rsp), %esi
	movq	16(%rsp), %r8
	movq	%r14, %rdx
	leaq	.LC34(%rip), %rdi
	movq	64(%rsp), %rcx
	movsd	48(%rsp), %xmm3
	movl	$5, %eax
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
.LEHE6:
	jmp	.L234
.L285:
	movq	%rax, %rbx
	jmp	.L276
	.section	.gcc_except_table
.LLSDA8164:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8164-.LLSDACSB8164
.LLSDACSB8164:
	.uleb128 .LEHB4-.LFB8164
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L285-.LFB8164
	.uleb128 0
	.uleb128 .LEHB5-.LFB8164
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB8164
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L285-.LFB8164
	.uleb128 0
.LLSDACSE8164:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8164
	.type	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES7_.cold, @function
_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES7_.cold:
.LFSB8164:
.L276:
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
	jne	.L340
	movq	%rbx, %rdi
.LEHB7:
	call	_Unwind_Resume@PLT
.LEHE7:
.L340:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8164:
	.section	.gcc_except_table
.LLSDAC8164:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8164-.LLSDACSBC8164
.LLSDACSBC8164:
	.uleb128 .LEHB7-.LCOLDB37
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSEC8164:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES7_, .-_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES7_
	.section	.text.unlikely
	.size	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES7_.cold, .-_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES7_.cold
.LCOLDE37:
	.text
.LHOTE37:
	.section	.rodata.str1.8
	.align 8
.LC38:
	.string	"wze::engine.vector.RayCast(): InitialX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC39:
	.string	"wze::engine.vector.RayCast(): InitialY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC40:
	.string	"wze::engine.vector.RayCast(): TerminalX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC41:
	.string	"wze::engine.vector.RayCast(): TerminalY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC42:
	.string	"wze::engine.vector.RayCast(): SamplingStep must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC43:
	.ascii	"wze::engine.vecto"
	.string	"r.RayCast(): SamplingStep must not be less than or equal to 0\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC44:
	.ascii	"wz"
	.string	"e::engine.vector.RayCast(): ActorIDBlacklist must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n"
	.section	.text.unlikely
	.align 2
.LCOLDB45:
	.text
.LHOTB45:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES3_
	.type	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES3_, @function
_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES3_:
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
	movzwl	288(%rdx), %ebx
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
	jne	.L342
	movq	$0, 120(%rsp)
	xorl	%r12d, %r12d
.L343:
	movsd	16(%rsp), %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L441
	movsd	24(%rsp), %xmm7
	ucomisd	%xmm7, %xmm7
	jp	.L442
	movsd	32(%rsp), %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L443
	movsd	40(%rsp), %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L444
	movsd	48(%rsp), %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L445
	pxor	%xmm0, %xmm0
	comisd	48(%rsp), %xmm0
	jnb	.L446
	cmpq	$0, 56(%rsp)
	je	.L447
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
	jne	.L358
	movq	264(%rdx), %rsi
	cmpq	$1, %rsi
	jbe	.L394
	movl	$1, %ebx
	xorl	%r15d, %r15d
	jmp	.L380
	.p2align 4,,10
	.p2align 3
.L360:
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jnb	.L448
.L380:
	movq	272(%rdx), %rax
	leaq	0(,%rbx,8), %r13
	movq	(%rax,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L360
	movq	216(%rcx), %rdi
	xorl	%ecx, %ecx
	cmpq	$0, 8(%rsp)
	movq	72(%rsp), %r8
	je	.L360
	cmpq	(%r8,%rcx,8), %rdi
	je	.L449
.L425:
	addq	$1, %rcx
	cmpq	%rcx, 8(%rsp)
	je	.L360
	cmpq	(%r8,%rcx,8), %rdi
	jne	.L425
.L449:
	movq	56(%rsp), %rcx
	movq	(%rcx), %rdi
	movq	8(%rcx), %r8
	xorl	%ecx, %ecx
	testq	%rdi, %rdi
	je	.L364
.L392:
	cmpq	%rbx, (%r8,%rcx,8)
	je	.L360
	addq	$1, %rcx
	cmpq	%rcx, %rdi
	jne	.L392
	.p2align 4,,10
	.p2align 3
.L364:
	cmpq	%rsi, %rbx
	jnb	.L440
	movl	$1, %r12d
	.p2align 4,,10
	.p2align 3
.L366:
	movq	(%rax,%r13), %rax
	cmpq	152(%rax), %r12
	jnb	.L360
	movq	160(%rax), %rax
	leaq	0(,%r12,8), %r14
	movq	(%rax,%r12,8), %rax
	testq	%rax, %rax
	jne	.L367
.L371:
	movq	272(%rdx), %rax
	addq	$1, %r12
	cmpq	%rsi, %rbx
	jb	.L366
.L440:
	movq	%rbx, %rsi
	leaq	.LC27(%rip), %rdi
	xorl	%eax, %eax
.LEHB8:
	call	printf@PLT
.L348:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L367:
	movq	32(%rax), %rcx
	xorl	%eax, %eax
	cmpq	$0, (%rsp)
	movq	64(%rsp), %rdi
	je	.L370
.L369:
	cmpq	(%rdi,%rax,8), %rcx
	je	.L371
	addq	$1, %rax
	cmpq	%rax, (%rsp)
	jne	.L369
.L370:
	cmpq	%r15, 112(%rsp)
	je	.L450
.L373:
	movq	272(%rdx), %rax
	cmpq	%rsi, %rbx
	jnb	.L440
	movq	(%rax,%r13), %rcx
	movq	160(%rcx), %rdi
	cmpq	152(%rcx), %r12
	jnb	.L451
	movq	(%rdi,%r14), %r8
	leaq	1(%r15), %rcx
	movq	120(%rsp), %rdi
	cmpq	112(%rsp), %r15
	jnb	.L452
	movq	%r8, (%rdi,%r15,8)
	addq	$1, %r12
	movq	%rcx, %r15
	jmp	.L366
	.p2align 4,,10
	.p2align 3
.L448:
	movq	120(%rsp), %r12
.L359:
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
	ja	.L453
	call	acos@PLT
	movsd	%xmm0, 24(%rsp)
.L383:
	movsd	16(%rsp), %xmm6
	pxor	%xmm0, %xmm0
	movzwl	94(%rsp), %r14d
	comisd	%xmm0, %xmm6
	jbe	.L429
.L386:
	testq	%r15, %r15
	je	.L389
	movq	112(%rsp), %r13
	xorl	%ebx, %ebx
	jmp	.L385
	.p2align 4,,10
	.p2align 3
.L454:
	addq	$1, %rbx
	cmpq	%r15, %rbx
	je	.L389
.L385:
	movq	0(%rbp), %rax
	leaq	280(%rax), %rdi
	cmpq	%r13, %rbx
	je	.L440
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
	je	.L454
.L358:
	movq	%r12, %rdi
	call	free@PLT
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L455
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
.L450:
	.cfi_restore_state
	movzwl	288(%rdx), %eax
	leaq	112(%rsp), %rdi
	movq	%r15, %rsi
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0
.LEHE8:
	movq	0(%rbp), %rdx
	movq	264(%rdx), %rsi
	jmp	.L373
.L453:
	call	acos@PLT
	movsd	.LC28(%rip), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 24(%rsp)
	jmp	.L383
	.p2align 4,,10
	.p2align 3
.L389:
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
	ja	.L386
.L429:
	movb	$1, 80(%rsp)
	jmp	.L358
.L342:
	leaq	0(,%rbx,8), %rdi
	movq	%rdx, 80(%rsp)
	call	malloc@PLT
	movq	80(%rsp), %rdx
	testq	%rax, %rax
	movq	%rax, 120(%rsp)
	movq	%rax, %r12
	jne	.L343
	leaq	.LC19(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
.LEHB9:
	call	printf@PLT
.LEHE9:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L394:
	xorl	%r15d, %r15d
	jmp	.L359
.L443:
	movzwl	88(%rsp), %esi
	movq	(%rsp), %r8
	movl	$5, %eax
	leaq	.LC40(%rip), %rdi
	movq	56(%rsp), %rcx
	movq	8(%rsp), %rdx
	movsd	48(%rsp), %xmm4
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
.LEHB10:
	call	printf@PLT
	jmp	.L348
.L442:
	movzwl	88(%rsp), %esi
	movq	(%rsp), %r8
	movapd	%xmm7, %xmm1
	leaq	.LC39(%rip), %rdi
	movq	56(%rsp), %rcx
	movq	8(%rsp), %rdx
	movl	$5, %eax
	movsd	48(%rsp), %xmm4
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L348
.L455:
	call	__stack_chk_fail@PLT
.L452:
	movq	%r15, %rsi
	leaq	.LC27(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L348
.L444:
	movzwl	88(%rsp), %esi
	movq	(%rsp), %r8
	movapd	%xmm6, %xmm3
	leaq	.LC41(%rip), %rdi
	movq	56(%rsp), %rcx
	movq	8(%rsp), %rdx
	movl	$5, %eax
	movsd	48(%rsp), %xmm4
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L348
.L441:
	movzwl	88(%rsp), %esi
	movq	(%rsp), %r8
	movapd	%xmm6, %xmm0
	leaq	.LC38(%rip), %rdi
	movq	56(%rsp), %rcx
	movq	8(%rsp), %rdx
	movl	$5, %eax
	movsd	48(%rsp), %xmm4
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	call	printf@PLT
	jmp	.L348
.L451:
	movq	%r12, %rsi
	leaq	.LC27(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L348
.L447:
	movzwl	88(%rsp), %esi
	movq	(%rsp), %r8
	xorl	%ecx, %ecx
	movl	$5, %eax
	movq	8(%rsp), %rdx
	movsd	48(%rsp), %xmm4
	leaq	.LC44(%rip), %rdi
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L348
.L446:
	movzwl	88(%rsp), %esi
	movq	(%rsp), %r8
	movl	$5, %eax
	leaq	.LC43(%rip), %rdi
	movq	56(%rsp), %rcx
	movq	8(%rsp), %rdx
	movsd	48(%rsp), %xmm4
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L348
.L445:
	movzwl	88(%rsp), %esi
	movq	(%rsp), %r8
	movl	$5, %eax
	leaq	.LC42(%rip), %rdi
	movq	56(%rsp), %rcx
	movq	8(%rsp), %rdx
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
.LEHE10:
	jmp	.L348
.L399:
	movq	%rax, %rbx
	jmp	.L390
	.section	.gcc_except_table
.LLSDA8165:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8165-.LLSDACSB8165
.LLSDACSB8165:
	.uleb128 .LEHB8-.LFB8165
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L399-.LFB8165
	.uleb128 0
	.uleb128 .LEHB9-.LFB8165
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB8165
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L399-.LFB8165
	.uleb128 0
.LLSDACSE8165:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8165
	.type	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES3_.cold, @function
_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES3_.cold:
.LFSB8165:
.L390:
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
	jne	.L456
	movq	%rbx, %rdi
.LEHB11:
	call	_Unwind_Resume@PLT
.LEHE11:
.L456:
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
	.uleb128 .LEHB11-.LCOLDB45
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSEC8165:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES3_, .-_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES3_
	.section	.text.unlikely
	.size	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES3_.cold, .-_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES3_.cold
.LCOLDE45:
	.text
.LHOTE45:
	.section	.rodata.str1.8
	.align 8
.LC46:
	.string	"wze::engine.vector.RayCast(): InitialX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC47:
	.string	"wze::engine.vector.RayCast(): InitialY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC48:
	.string	"wze::engine.vector.RayCast(): TerminalX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC49:
	.string	"wze::engine.vector.RayCast(): TerminalY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC50:
	.string	"wze::engine.vector.RayCast(): SamplingStep must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC51:
	.ascii	"wze::engine.vecto"
	.string	"r.RayCast(): SamplingStep must not be less than or equal to 0\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC52:
	.ascii	"wze::engi"
	.string	"ne.vector.RayCast(): OverlapboxTypeBlacklist must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n"
	.section	.text.unlikely
	.align 2
.LCOLDB53:
	.text
.LHOTB53:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_PN3neo5arrayIyEE
	.type	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_PN3neo5arrayIyEE, @function
_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_PN3neo5arrayIyEE:
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
	movzwl	288(%rcx), %ebx
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
	jne	.L458
	movq	$0, 120(%rsp)
	xorl	%r12d, %r12d
.L459:
	movsd	16(%rsp), %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L557
	movsd	24(%rsp), %xmm7
	ucomisd	%xmm7, %xmm7
	jp	.L558
	movsd	32(%rsp), %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L559
	movsd	40(%rsp), %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L560
	movsd	48(%rsp), %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L561
	pxor	%xmm0, %xmm0
	comisd	48(%rsp), %xmm0
	jnb	.L562
	testq	%r14, %r14
	je	.L563
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
	jne	.L474
	movq	264(%rcx), %rsi
	cmpq	$1, %rsi
	jbe	.L510
	movl	$1, %ebx
	xorl	%r15d, %r15d
	jmp	.L496
	.p2align 4,,10
	.p2align 3
.L476:
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jnb	.L564
.L496:
	movq	272(%rcx), %rax
	leaq	0(,%rbx,8), %r13
	movq	(%rax,%rbx,8), %rdx
	testq	%rdx, %rdx
	je	.L476
	movq	216(%rdx), %rdi
	xorl	%edx, %edx
	cmpq	$0, (%rsp)
	movq	56(%rsp), %r8
	je	.L476
	cmpq	(%r8,%rdx,8), %rdi
	je	.L565
.L541:
	addq	$1, %rdx
	cmpq	%rdx, (%rsp)
	je	.L476
	cmpq	(%r8,%rdx,8), %rdi
	jne	.L541
.L565:
	xorl	%edx, %edx
	cmpq	$0, 64(%rsp)
	movq	72(%rsp), %rdi
	je	.L480
.L508:
	cmpq	%rbx, (%rdi,%rdx,8)
	je	.L476
	addq	$1, %rdx
	cmpq	%rdx, 64(%rsp)
	jne	.L508
.L480:
	cmpq	%rsi, %rbx
	jnb	.L556
	leaq	112(%rsp), %rdi
	movl	$1, %r12d
	movq	%rdi, 88(%rsp)
	.p2align 4,,10
	.p2align 3
.L482:
	movq	(%rax,%r13), %rax
	cmpq	152(%rax), %r12
	jnb	.L476
	movq	160(%rax), %rax
	leaq	0(,%r12,8), %rdx
	movq	%rdx, 8(%rsp)
	movq	(%rax,%r12,8), %rax
	testq	%rax, %rax
	je	.L487
	movq	(%r14), %rdx
	movq	32(%rax), %rdi
	xorl	%eax, %eax
	movq	8(%r14), %r8
	testq	%rdx, %rdx
	je	.L485
.L486:
	cmpq	(%r8,%rax,8), %rdi
	je	.L487
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L486
	.p2align 4,,10
	.p2align 3
.L485:
	cmpq	%r15, 112(%rsp)
	je	.L566
.L489:
	movq	272(%rcx), %rax
	cmpq	%rsi, %rbx
	jnb	.L556
	movq	(%rax,%r13), %rdx
	movq	160(%rdx), %rdi
	cmpq	152(%rdx), %r12
	jnb	.L567
	movq	8(%rsp), %rdx
	movq	(%rdi,%rdx), %r8
	movq	120(%rsp), %rdi
	leaq	1(%r15), %rdx
	cmpq	112(%rsp), %r15
	jnb	.L568
	movq	%r8, (%rdi,%r15,8)
	addq	$1, %r12
	movq	%rdx, %r15
	jmp	.L482
	.p2align 4,,10
	.p2align 3
.L564:
	movq	120(%rsp), %r12
.L475:
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
	ja	.L569
	call	acos@PLT
	movsd	%xmm0, 24(%rsp)
.L499:
	movsd	16(%rsp), %xmm6
	pxor	%xmm0, %xmm0
	movzwl	86(%rsp), %r14d
	comisd	%xmm0, %xmm6
	jbe	.L545
.L502:
	testq	%r15, %r15
	je	.L505
	movq	112(%rsp), %r13
	xorl	%ebx, %ebx
	jmp	.L501
	.p2align 4,,10
	.p2align 3
.L570:
	addq	$1, %rbx
	cmpq	%r15, %rbx
	je	.L505
.L501:
	movq	0(%rbp), %rax
	leaq	280(%rax), %rdi
	cmpq	%r13, %rbx
	je	.L556
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
	je	.L570
.L474:
	movq	%r12, %rdi
	call	free@PLT
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L571
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
.L569:
	.cfi_restore_state
	call	acos@PLT
	movsd	.LC28(%rip), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 24(%rsp)
	jmp	.L499
	.p2align 4,,10
	.p2align 3
.L487:
	movq	272(%rcx), %rax
	addq	$1, %r12
	cmpq	%rsi, %rbx
	jb	.L482
.L556:
	movq	%rbx, %rsi
	leaq	.LC27(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.L464:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L505:
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
	ja	.L502
.L545:
	movb	$1, 85(%rsp)
	jmp	.L474
	.p2align 4,,10
	.p2align 3
.L566:
	movzwl	288(%rcx), %eax
	movq	88(%rsp), %rdi
	movq	%r15, %rsi
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0
.LEHE12:
	movq	0(%rbp), %rcx
	movq	264(%rcx), %rsi
	jmp	.L489
.L458:
	leaq	0(,%rbx,8), %rdi
	movq	%rcx, 8(%rsp)
	call	malloc@PLT
	movq	8(%rsp), %rcx
	testq	%rax, %rax
	movq	%rax, 120(%rsp)
	movq	%rax, %r12
	jne	.L459
	leaq	.LC19(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
.LEHB13:
	call	printf@PLT
.LEHE13:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L510:
	xorl	%r15d, %r15d
	jmp	.L475
.L557:
	movzwl	80(%rsp), %esi
	movq	(%rsp), %rdx
	movq	%r14, %r8
	movapd	%xmm6, %xmm0
	movq	64(%rsp), %rcx
	movsd	48(%rsp), %xmm4
	leaq	.LC46(%rip), %rdi
	movl	$5, %eax
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
.LEHB14:
	call	printf@PLT
	jmp	.L464
.L571:
	call	__stack_chk_fail@PLT
.L561:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	movq	%r14, %r8
	leaq	.LC50(%rip), %rdi
	movq	(%rsp), %rdx
	movsd	40(%rsp), %xmm3
	movl	$5, %eax
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L464
.L560:
	movzwl	80(%rsp), %esi
	movq	(%rsp), %rdx
	movq	%r14, %r8
	movapd	%xmm6, %xmm3
	movq	64(%rsp), %rcx
	movsd	48(%rsp), %xmm4
	leaq	.LC49(%rip), %rdi
	movl	$5, %eax
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L464
.L567:
	movq	%r12, %rsi
	leaq	.LC27(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L464
.L568:
	movq	%r15, %rsi
	leaq	.LC27(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L464
.L559:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	movq	%r14, %r8
	leaq	.LC48(%rip), %rdi
	movq	(%rsp), %rdx
	movsd	48(%rsp), %xmm4
	movl	$5, %eax
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L464
.L558:
	movzwl	80(%rsp), %esi
	movq	(%rsp), %rdx
	movq	%r14, %r8
	movapd	%xmm7, %xmm1
	movq	64(%rsp), %rcx
	movsd	48(%rsp), %xmm4
	leaq	.LC47(%rip), %rdi
	movl	$5, %eax
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L464
.L563:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	xorl	%r8d, %r8d
	leaq	.LC52(%rip), %rdi
	movq	(%rsp), %rdx
	movsd	48(%rsp), %xmm4
	movl	$5, %eax
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L464
.L562:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	movq	%r14, %r8
	leaq	.LC51(%rip), %rdi
	movq	(%rsp), %rdx
	movsd	48(%rsp), %xmm4
	movl	$5, %eax
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
.LEHE14:
	jmp	.L464
.L515:
	movq	%rax, %rbx
	jmp	.L506
	.section	.gcc_except_table
.LLSDA8166:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8166-.LLSDACSB8166
.LLSDACSB8166:
	.uleb128 .LEHB12-.LFB8166
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L515-.LFB8166
	.uleb128 0
	.uleb128 .LEHB13-.LFB8166
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB8166
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L515-.LFB8166
	.uleb128 0
.LLSDACSE8166:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8166
	.type	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_PN3neo5arrayIyEE.cold, @function
_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_PN3neo5arrayIyEE.cold:
.LFSB8166:
.L506:
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
	jne	.L572
	movq	%rbx, %rdi
.LEHB15:
	call	_Unwind_Resume@PLT
.LEHE15:
.L572:
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
	.uleb128 .LEHB15-.LCOLDB53
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSEC8166:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_PN3neo5arrayIyEE, .-_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_PN3neo5arrayIyEE
	.section	.text.unlikely
	.size	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_PN3neo5arrayIyEE.cold, .-_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_PN3neo5arrayIyEE.cold
.LCOLDE53:
	.text
.LHOTE53:
	.section	.rodata.str1.8
	.align 8
.LC54:
	.string	"wze::engine.vector.RayCast(): InitialX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC55:
	.string	"wze::engine.vector.RayCast(): InitialY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC56:
	.string	"wze::engine.vector.RayCast(): TerminalX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC57:
	.string	"wze::engine.vector.RayCast(): TerminalY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC58:
	.string	"wze::engine.vector.RayCast(): SamplingStep must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC59:
	.ascii	"wze::eng"
	.string	"ine.vector.RayCast(): SamplingStep must not be less than or equal to 0\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC60:
	.string	"wze::engine.vector.RayCast(): ActorTypeWhitelist must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n"
	.align 8
.LC61:
	.string	"wze::engine.vector.RayCast(): ActorIDBlacklist must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\n"
	.section	.text.unlikely
	.align 2
.LCOLDB62:
	.text
.LHOTB62:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_St16initializer_listIyE
	.type	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_St16initializer_listIyE, @function
_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_St16initializer_listIyE:
.LFB8167:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8167
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
	movzwl	288(%rdx), %ebx
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
	jne	.L574
	movq	$0, 120(%rsp)
	xorl	%r12d, %r12d
.L575:
	movsd	16(%rsp), %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L674
	movsd	24(%rsp), %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L675
	movsd	32(%rsp), %xmm7
	ucomisd	%xmm7, %xmm7
	jp	.L676
	movsd	40(%rsp), %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L677
	movsd	48(%rsp), %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L678
	pxor	%xmm0, %xmm0
	comisd	48(%rsp), %xmm0
	jnb	.L679
	cmpq	$0, 8(%rsp)
	je	.L680
	cmpq	$0, 56(%rsp)
	je	.L681
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
	jne	.L591
	movq	264(%rdx), %rcx
	cmpq	$1, %rcx
	jbe	.L627
	leaq	112(%rsp), %rax
	movl	$1, %r12d
	xorl	%ebp, %ebp
	movq	%rax, 88(%rsp)
	.p2align 4,,10
	.p2align 3
.L613:
	movq	272(%rdx), %rax
	leaq	0(,%r12,8), %r13
	movq	(%rax,%r12,8), %rsi
	testq	%rsi, %rsi
	je	.L593
	movq	8(%rsp), %rbx
	movq	216(%rsi), %r8
	xorl	%esi, %esi
	movq	(%rbx), %rdi
	movq	8(%rbx), %r9
	testq	%rdi, %rdi
	je	.L593
.L594:
	cmpq	(%r9,%rsi,8), %r8
	je	.L682
	addq	$1, %rsi
	cmpq	%rsi, %rdi
	jne	.L594
	.p2align 4,,10
	.p2align 3
.L593:
	addq	$1, %r12
	cmpq	%rcx, %r12
	jb	.L613
	movq	120(%rsp), %r12
.L592:
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
	ja	.L683
	call	acos@PLT
	movsd	%xmm0, 24(%rsp)
.L616:
	movsd	16(%rsp), %xmm6
	pxor	%xmm0, %xmm0
	movzwl	86(%rsp), %r14d
	comisd	%xmm0, %xmm6
	jbe	.L663
.L619:
	testq	%rbp, %rbp
	je	.L622
	movq	112(%rsp), %r13
	xorl	%ebx, %ebx
	jmp	.L618
	.p2align 4,,10
	.p2align 3
.L684:
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	je	.L622
.L618:
	movq	(%r15), %rax
	leaq	280(%rax), %rdi
	cmpq	%r13, %rbx
	je	.L673
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
	je	.L684
.L591:
	movq	%r12, %rdi
	call	free@PLT
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L685
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
.L682:
	.cfi_restore_state
	movq	56(%rsp), %rsi
	movq	(%rsi), %rdi
	movq	8(%rsi), %r8
	xorl	%esi, %esi
	testq	%rdi, %rdi
	je	.L597
.L625:
	cmpq	%r12, (%r8,%rsi,8)
	je	.L593
	addq	$1, %rsi
	cmpq	%rsi, %rdi
	jne	.L625
	.p2align 4,,10
	.p2align 3
.L597:
	cmpq	%rcx, %r12
	jnb	.L671
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L599:
	movq	(%rax,%r13), %rax
	cmpq	152(%rax), %rbx
	jnb	.L593
	movq	160(%rax), %rax
	leaq	0(,%rbx,8), %r14
	movq	(%rax,%rbx,8), %rax
	testq	%rax, %rax
	jne	.L600
.L604:
	movq	272(%rdx), %rax
	addq	$1, %rbx
	cmpq	%rcx, %r12
	jb	.L599
.L671:
	movq	%r12, %rsi
	leaq	.LC27(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.L580:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L600:
	movq	32(%rax), %rsi
	xorl	%eax, %eax
	cmpq	$0, (%rsp)
	movq	64(%rsp), %rdi
	je	.L603
.L602:
	cmpq	(%rdi,%rax,8), %rsi
	je	.L604
	addq	$1, %rax
	cmpq	%rax, (%rsp)
	jne	.L602
.L603:
	cmpq	112(%rsp), %rbp
	je	.L686
.L606:
	movq	272(%rdx), %rax
	cmpq	%rcx, %r12
	jnb	.L671
	movq	(%rax,%r13), %rsi
	movq	160(%rsi), %rdi
	cmpq	152(%rsi), %rbx
	jnb	.L673
	movq	(%rdi,%r14), %r8
	leaq	1(%rbp), %rsi
	movq	120(%rsp), %rdi
	cmpq	112(%rsp), %rbp
	jnb	.L687
	movq	%r8, (%rdi,%rbp,8)
	addq	$1, %rbx
	movq	%rsi, %rbp
	jmp	.L599
	.p2align 4,,10
	.p2align 3
.L686:
	movzwl	288(%rdx), %eax
	movq	88(%rsp), %rdi
	movq	%rbp, %rsi
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0
.LEHE16:
	movq	(%r15), %rdx
	movq	264(%rdx), %rcx
	jmp	.L606
.L683:
	call	acos@PLT
	movsd	.LC28(%rip), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 24(%rsp)
	jmp	.L616
.L622:
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
	ja	.L619
.L663:
	movb	$1, 72(%rsp)
	jmp	.L591
.L574:
	leaq	0(,%rbx,8), %rdi
	movq	%rdx, 72(%rsp)
	call	malloc@PLT
	movq	72(%rsp), %rdx
	testq	%rax, %rax
	movq	%rax, 120(%rsp)
	movq	%rax, %r12
	jne	.L575
	leaq	.LC19(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
.LEHB17:
	call	printf@PLT
.LEHE17:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L627:
	xorl	%ebp, %ebp
	jmp	.L592
.L673:
	movq	%rbx, %rsi
	leaq	.LC27(%rip), %rdi
	xorl	%eax, %eax
.LEHB18:
	call	printf@PLT
	jmp	.L580
.L681:
	movzwl	80(%rsp), %esi
	movq	(%rsp), %r8
	xorl	%ecx, %ecx
	movl	$5, %eax
	movq	8(%rsp), %rdx
	movsd	48(%rsp), %xmm4
	leaq	.LC61(%rip), %rdi
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L580
.L680:
	movzwl	80(%rsp), %esi
	movq	(%rsp), %r8
	xorl	%edx, %edx
	movl	$5, %eax
	movq	56(%rsp), %rcx
	movsd	48(%rsp), %xmm4
	leaq	.LC60(%rip), %rdi
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L580
.L685:
	call	__stack_chk_fail@PLT
.L687:
	movq	%rbp, %rsi
	leaq	.LC27(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L580
.L678:
	movzwl	80(%rsp), %esi
	movq	(%rsp), %r8
	movl	$5, %eax
	leaq	.LC58(%rip), %rdi
	movq	56(%rsp), %rcx
	movq	8(%rsp), %rdx
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L580
.L674:
	movzwl	80(%rsp), %esi
	movq	(%rsp), %r8
	movapd	%xmm6, %xmm0
	leaq	.LC54(%rip), %rdi
	movq	56(%rsp), %rcx
	movq	8(%rsp), %rdx
	movl	$5, %eax
	movsd	48(%rsp), %xmm4
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	call	printf@PLT
	jmp	.L580
.L679:
	movzwl	80(%rsp), %esi
	movq	(%rsp), %r8
	movl	$5, %eax
	leaq	.LC59(%rip), %rdi
	movq	56(%rsp), %rcx
	movq	8(%rsp), %rdx
	movsd	48(%rsp), %xmm4
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L580
.L677:
	movzwl	80(%rsp), %esi
	movq	(%rsp), %r8
	movapd	%xmm6, %xmm3
	leaq	.LC57(%rip), %rdi
	movq	56(%rsp), %rcx
	movq	8(%rsp), %rdx
	movl	$5, %eax
	movsd	48(%rsp), %xmm4
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L580
.L676:
	movzwl	80(%rsp), %esi
	movq	(%rsp), %r8
	movapd	%xmm7, %xmm2
	leaq	.LC56(%rip), %rdi
	movq	56(%rsp), %rcx
	movq	8(%rsp), %rdx
	movl	$5, %eax
	movsd	48(%rsp), %xmm4
	movsd	40(%rsp), %xmm3
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L580
.L675:
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
.LEHE18:
	jmp	.L580
.L631:
	movq	%rax, %rbx
	jmp	.L623
	.section	.gcc_except_table
.LLSDA8167:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8167-.LLSDACSB8167
.LLSDACSB8167:
	.uleb128 .LEHB16-.LFB8167
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L631-.LFB8167
	.uleb128 0
	.uleb128 .LEHB17-.LFB8167
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB18-.LFB8167
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L631-.LFB8167
	.uleb128 0
.LLSDACSE8167:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8167
	.type	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_St16initializer_listIyE.cold, @function
_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_St16initializer_listIyE.cold:
.LFSB8167:
.L623:
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
	jne	.L688
	movq	%rbx, %rdi
.LEHB19:
	call	_Unwind_Resume@PLT
.LEHE19:
.L688:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8167:
	.section	.gcc_except_table
.LLSDAC8167:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8167-.LLSDACSBC8167
.LLSDACSBC8167:
	.uleb128 .LEHB19-.LCOLDB62
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSEC8167:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_St16initializer_listIyE, .-_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_St16initializer_listIyE
	.section	.text.unlikely
	.size	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_St16initializer_listIyE.cold, .-_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_St16initializer_listIyE.cold
.LCOLDE62:
	.text
.LHOTE62:
	.section	.rodata.str1.8
	.align 8
.LC63:
	.string	"wze::engine.vector.RayCast(): InitialX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC64:
	.string	"wze::engine.vector.RayCast(): InitialY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC65:
	.string	"wze::engine.vector.RayCast(): TerminalX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC66:
	.string	"wze::engine.vector.RayCast(): TerminalY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC67:
	.string	"wze::engine.vector.RayCast(): SamplingStep must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC68:
	.ascii	"wze::eng"
	.string	"ine.vector.RayCast(): SamplingStep must not be less than or equal to 0\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC69:
	.string	"wze::engine.vector.RayCast(): ActorTypeWhitelist must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC70:
	.string	"wze::engine.vector.RayCast(): OverlapboxTypeBlacklist must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\n"
	.section	.text.unlikely
	.align 2
.LCOLDB71:
	.text
.LHOTB71:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES5_
	.type	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES5_, @function
_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES5_:
.LFB8168:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8168
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
	movzwl	288(%rdx), %ebx
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
	jne	.L690
	movq	$0, 120(%rsp)
	xorl	%r12d, %r12d
.L691:
	movsd	24(%rsp), %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L790
	movsd	32(%rsp), %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L791
	movsd	40(%rsp), %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L792
	movsd	48(%rsp), %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L793
	movsd	56(%rsp), %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L794
	pxor	%xmm0, %xmm0
	comisd	56(%rsp), %xmm0
	jnb	.L795
	cmpq	$0, 16(%rsp)
	je	.L796
	testq	%r14, %r14
	je	.L797
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
	jne	.L707
	movq	264(%rdx), %rsi
	cmpq	$1, %rsi
	jbe	.L743
	leaq	112(%rsp), %rax
	movl	$1, %ebx
	xorl	%ebp, %ebp
	movq	%rax, 88(%rsp)
	.p2align 4,,10
	.p2align 3
.L729:
	movq	272(%rdx), %rax
	leaq	0(,%rbx,8), %r13
	movq	(%rax,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L709
	movq	216(%rcx), %r8
	movq	16(%rsp), %rcx
	movq	(%rcx), %rdi
	movq	8(%rcx), %r9
	xorl	%ecx, %ecx
	testq	%rdi, %rdi
	je	.L709
.L710:
	cmpq	(%r9,%rcx,8), %r8
	je	.L798
	addq	$1, %rcx
	cmpq	%rcx, %rdi
	jne	.L710
	.p2align 4,,10
	.p2align 3
.L709:
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jb	.L729
	movq	120(%rsp), %r12
.L708:
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
	ja	.L799
	call	acos@PLT
	movsd	%xmm0, 32(%rsp)
.L732:
	movsd	24(%rsp), %xmm6
	pxor	%xmm0, %xmm0
	movzwl	86(%rsp), %r14d
	comisd	%xmm0, %xmm6
	jbe	.L779
.L735:
	testq	%rbp, %rbp
	je	.L738
	movq	112(%rsp), %r13
	xorl	%ebx, %ebx
	jmp	.L734
	.p2align 4,,10
	.p2align 3
.L800:
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	je	.L738
.L734:
	movq	(%r15), %rax
	leaq	280(%rax), %rdi
	cmpq	%r13, %rbx
	je	.L789
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
	je	.L800
.L707:
	movq	%r12, %rdi
	call	free@PLT
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L801
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
.L798:
	.cfi_restore_state
	xorl	%ecx, %ecx
	cmpq	$0, 64(%rsp)
	movq	72(%rsp), %rdi
	je	.L713
.L741:
	cmpq	%rbx, (%rdi,%rcx,8)
	je	.L709
	addq	$1, %rcx
	cmpq	%rcx, 64(%rsp)
	jne	.L741
.L713:
	cmpq	%rsi, %rbx
	jnb	.L789
	movl	$1, %r12d
	.p2align 4,,10
	.p2align 3
.L715:
	movq	(%rax,%r13), %rax
	cmpq	152(%rax), %r12
	jnb	.L709
	movq	160(%rax), %rax
	leaq	0(,%r12,8), %rdi
	movq	%rdi, 8(%rsp)
	movq	(%rax,%r12,8), %rax
	testq	%rax, %rax
	je	.L720
	movq	(%r14), %rcx
	movq	32(%rax), %rdi
	xorl	%eax, %eax
	movq	8(%r14), %r8
	testq	%rcx, %rcx
	je	.L718
.L719:
	cmpq	(%r8,%rax,8), %rdi
	je	.L720
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L719
	.p2align 4,,10
	.p2align 3
.L718:
	cmpq	%rbp, 112(%rsp)
	je	.L802
.L722:
	movq	272(%rdx), %rax
	cmpq	%rsi, %rbx
	jnb	.L789
	movq	(%rax,%r13), %rcx
	movq	160(%rcx), %rdi
	cmpq	152(%rcx), %r12
	jnb	.L803
	movq	8(%rsp), %rcx
	movq	(%rdi,%rcx), %r8
	movq	120(%rsp), %rdi
	leaq	1(%rbp), %rcx
	cmpq	112(%rsp), %rbp
	jnb	.L804
	movq	%r8, (%rdi,%rbp,8)
	addq	$1, %r12
	movq	%rcx, %rbp
	jmp	.L715
	.p2align 4,,10
	.p2align 3
.L720:
	movq	272(%rdx), %rax
	addq	$1, %r12
	cmpq	%rsi, %rbx
	jb	.L715
.L789:
	movq	%rbx, %rsi
	leaq	.LC27(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.L696:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L802:
	movzwl	288(%rdx), %eax
	movq	88(%rsp), %rdi
	movq	%rbp, %rsi
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0
.LEHE20:
	movq	(%r15), %rdx
	movq	264(%rdx), %rsi
	jmp	.L722
	.p2align 4,,10
	.p2align 3
.L799:
	call	acos@PLT
	movsd	.LC28(%rip), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 32(%rsp)
	jmp	.L732
	.p2align 4,,10
	.p2align 3
.L738:
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
	ja	.L735
.L779:
	movb	$1, 85(%rsp)
	jmp	.L707
	.p2align 4,,10
	.p2align 3
.L690:
	leaq	0(,%rbx,8), %rdi
	movq	%rdx, 8(%rsp)
	call	malloc@PLT
	movq	8(%rsp), %rdx
	testq	%rax, %rax
	movq	%rax, 120(%rsp)
	movq	%rax, %r12
	jne	.L691
	leaq	.LC19(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
.LEHB21:
	call	printf@PLT
.LEHE21:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L743:
	xorl	%ebp, %ebp
	jmp	.L708
.L804:
	movq	%rbp, %rsi
	leaq	.LC27(%rip), %rdi
	xorl	%eax, %eax
.LEHB22:
	call	printf@PLT
	jmp	.L696
.L791:
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
	jmp	.L696
.L790:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	movq	%r14, %r8
	movapd	%xmm6, %xmm0
	movq	16(%rsp), %rdx
	movsd	56(%rsp), %xmm4
	leaq	.LC63(%rip), %rdi
	movl	$5, %eax
	movsd	48(%rsp), %xmm3
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	call	printf@PLT
	jmp	.L696
.L803:
	movq	%r12, %rsi
	leaq	.LC27(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L696
.L793:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	movq	%r14, %r8
	leaq	.LC66(%rip), %rdi
	movq	16(%rsp), %rdx
	movsd	56(%rsp), %xmm4
	movl	$5, %eax
	movsd	48(%rsp), %xmm3
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
	jmp	.L696
.L792:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	movq	%r14, %r8
	movapd	%xmm6, %xmm2
	movq	16(%rsp), %rdx
	movsd	56(%rsp), %xmm4
	leaq	.LC65(%rip), %rdi
	movl	$5, %eax
	movsd	48(%rsp), %xmm3
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
	jmp	.L696
.L797:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	xorl	%r8d, %r8d
	leaq	.LC70(%rip), %rdi
	movq	16(%rsp), %rdx
	movsd	56(%rsp), %xmm4
	movl	$5, %eax
	movsd	48(%rsp), %xmm3
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
	jmp	.L696
.L796:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	movq	%r14, %r8
	xorl	%edx, %edx
	movsd	56(%rsp), %xmm4
	movsd	48(%rsp), %xmm3
	leaq	.LC69(%rip), %rdi
	movl	$5, %eax
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
	jmp	.L696
.L795:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	movq	%r14, %r8
	leaq	.LC68(%rip), %rdi
	movq	16(%rsp), %rdx
	movsd	56(%rsp), %xmm4
	movl	$5, %eax
	movsd	48(%rsp), %xmm3
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
	jmp	.L696
.L794:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	movq	%r14, %r8
	leaq	.LC67(%rip), %rdi
	movq	16(%rsp), %rdx
	movsd	48(%rsp), %xmm3
	movl	$5, %eax
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
.LEHE22:
	jmp	.L696
.L801:
	call	__stack_chk_fail@PLT
.L747:
	movq	%rax, %rbx
	jmp	.L739
	.section	.gcc_except_table
.LLSDA8168:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8168-.LLSDACSB8168
.LLSDACSB8168:
	.uleb128 .LEHB20-.LFB8168
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L747-.LFB8168
	.uleb128 0
	.uleb128 .LEHB21-.LFB8168
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB22-.LFB8168
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L747-.LFB8168
	.uleb128 0
.LLSDACSE8168:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8168
	.type	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES5_.cold, @function
_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES5_.cold:
.LFSB8168:
.L739:
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
	jne	.L805
	movq	%rbx, %rdi
.LEHB23:
	call	_Unwind_Resume@PLT
.LEHE23:
.L805:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8168:
	.section	.gcc_except_table
.LLSDAC8168:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8168-.LLSDACSBC8168
.LLSDACSBC8168:
	.uleb128 .LEHB23-.LCOLDB71
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
.LLSDACSEC8168:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES5_, .-_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES5_
	.section	.text.unlikely
	.size	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES5_.cold, .-_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES5_.cold
.LCOLDE71:
	.text
.LHOTE71:
	.section	.rodata.str1.8
	.align 8
.LC72:
	.string	"wze::engine.vector.RayCast(): InitialX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC73:
	.string	"wze::engine.vector.RayCast(): InitialY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC74:
	.string	"wze::engine.vector.RayCast(): TerminalX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC75:
	.string	"wze::engine.vector.RayCast(): TerminalY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC76:
	.string	"wze::engine.vector.RayCast(): SamplingStep must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC77:
	.ascii	"wze::eng"
	.string	"ine.vector.RayCast(): SamplingStep must not be less than or equal to 0\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC78:
	.string	"wze::engine.vector.RayCast(): ActorIDBlacklist must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC79:
	.string	"wze::engine.vector.RayCast(): OverlapboxTypeBlackList must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n"
	.section	.text.unlikely
	.align 2
.LCOLDB80:
	.text
.LHOTB80:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES7_
	.type	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES7_, @function
_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES7_:
.LFB8169:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8169
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
	movzwl	288(%rdx), %ebx
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
	jne	.L807
	movq	$0, 120(%rsp)
	xorl	%r12d, %r12d
.L808:
	movsd	24(%rsp), %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L907
	movsd	32(%rsp), %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L908
	movsd	40(%rsp), %xmm7
	ucomisd	%xmm7, %xmm7
	jp	.L909
	movsd	48(%rsp), %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L910
	movsd	56(%rsp), %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L911
	pxor	%xmm0, %xmm0
	comisd	56(%rsp), %xmm0
	jnb	.L912
	cmpq	$0, 64(%rsp)
	je	.L913
	testq	%r14, %r14
	je	.L914
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
	jne	.L824
	movq	264(%rdx), %rsi
	cmpq	$1, %rsi
	jbe	.L860
	leaq	112(%rsp), %rax
	movl	$1, %ebx
	xorl	%ebp, %ebp
	movq	%rax, 88(%rsp)
	jmp	.L846
	.p2align 4,,10
	.p2align 3
.L826:
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jnb	.L915
.L846:
	movq	272(%rdx), %rax
	leaq	0(,%rbx,8), %r13
	movq	(%rax,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L826
	movq	216(%rcx), %rdi
	xorl	%ecx, %ecx
	cmpq	$0, 16(%rsp)
	movq	72(%rsp), %r8
	je	.L826
	cmpq	(%r8,%rcx,8), %rdi
	je	.L916
.L892:
	addq	$1, %rcx
	cmpq	%rcx, 16(%rsp)
	je	.L826
	cmpq	(%r8,%rcx,8), %rdi
	jne	.L892
.L916:
	movq	64(%rsp), %rcx
	movq	(%rcx), %rdi
	movq	8(%rcx), %r8
	xorl	%ecx, %ecx
	testq	%rdi, %rdi
	je	.L830
.L858:
	cmpq	%rbx, (%r8,%rcx,8)
	je	.L826
	addq	$1, %rcx
	cmpq	%rcx, %rdi
	jne	.L858
	.p2align 4,,10
	.p2align 3
.L830:
	cmpq	%rsi, %rbx
	jnb	.L906
	movl	$1, %r12d
	.p2align 4,,10
	.p2align 3
.L832:
	movq	(%rax,%r13), %rax
	cmpq	152(%rax), %r12
	jnb	.L826
	movq	160(%rax), %rax
	leaq	0(,%r12,8), %rcx
	movq	%rcx, 8(%rsp)
	movq	(%rax,%r12,8), %rax
	testq	%rax, %rax
	je	.L837
	movq	(%r14), %rcx
	movq	32(%rax), %rdi
	xorl	%eax, %eax
	movq	8(%r14), %r8
	testq	%rcx, %rcx
	je	.L835
.L836:
	cmpq	(%r8,%rax,8), %rdi
	je	.L837
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L836
	.p2align 4,,10
	.p2align 3
.L835:
	cmpq	%rbp, 112(%rsp)
	je	.L917
.L839:
	movq	272(%rdx), %rax
	cmpq	%rsi, %rbx
	jnb	.L906
	movq	(%rax,%r13), %rcx
	movq	160(%rcx), %rdi
	cmpq	152(%rcx), %r12
	jnb	.L918
	movq	8(%rsp), %rcx
	movq	(%rdi,%rcx), %r8
	movq	120(%rsp), %rdi
	leaq	1(%rbp), %rcx
	cmpq	112(%rsp), %rbp
	jnb	.L919
	movq	%r8, (%rdi,%rbp,8)
	addq	$1, %r12
	movq	%rcx, %rbp
	jmp	.L832
	.p2align 4,,10
	.p2align 3
.L837:
	movq	272(%rdx), %rax
	addq	$1, %r12
	cmpq	%rsi, %rbx
	jb	.L832
.L906:
	movq	%rbx, %rsi
	leaq	.LC27(%rip), %rdi
	xorl	%eax, %eax
.LEHB24:
	call	printf@PLT
.L813:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L915:
	movq	120(%rsp), %r12
.L825:
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
	ja	.L920
	call	acos@PLT
	movsd	%xmm0, 32(%rsp)
.L849:
	movsd	24(%rsp), %xmm6
	pxor	%xmm0, %xmm0
	movzwl	86(%rsp), %r14d
	comisd	%xmm0, %xmm6
	jbe	.L896
.L852:
	testq	%rbp, %rbp
	je	.L855
	movq	112(%rsp), %r13
	xorl	%ebx, %ebx
	jmp	.L851
	.p2align 4,,10
	.p2align 3
.L921:
	addq	$1, %rbx
	cmpq	%rbx, %rbp
	je	.L855
.L851:
	movq	(%r15), %rax
	leaq	280(%rax), %rdi
	cmpq	%r13, %rbx
	je	.L906
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
	je	.L921
.L824:
	movq	%r12, %rdi
	call	free@PLT
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L922
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
.L917:
	.cfi_restore_state
	movzwl	288(%rdx), %eax
	movq	88(%rsp), %rdi
	movq	%rbp, %rsi
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0
.LEHE24:
	movq	(%r15), %rdx
	movq	264(%rdx), %rsi
	jmp	.L839
.L920:
	call	acos@PLT
	movsd	.LC28(%rip), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 32(%rsp)
	jmp	.L849
	.p2align 4,,10
	.p2align 3
.L855:
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
	ja	.L852
.L896:
	movb	$1, 85(%rsp)
	jmp	.L824
.L807:
	leaq	0(,%rbx,8), %rdi
	movq	%rdx, 8(%rsp)
	call	malloc@PLT
	movq	8(%rsp), %rdx
	testq	%rax, %rax
	movq	%rax, 120(%rsp)
	movq	%rax, %r12
	jne	.L808
	leaq	.LC19(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
.LEHB25:
	call	printf@PLT
.LEHE25:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L860:
	xorl	%ebp, %ebp
	jmp	.L825
.L922:
	call	__stack_chk_fail@PLT
.L919:
	movq	%rbp, %rsi
	leaq	.LC27(%rip), %rdi
	xorl	%eax, %eax
.LEHB26:
	call	printf@PLT
	jmp	.L813
.L907:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	movq	%r14, %r8
	movapd	%xmm6, %xmm0
	movq	16(%rsp), %rdx
	movsd	56(%rsp), %xmm4
	leaq	.LC72(%rip), %rdi
	movl	$5, %eax
	movsd	48(%rsp), %xmm3
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	call	printf@PLT
	jmp	.L813
.L914:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	xorl	%r8d, %r8d
	leaq	.LC79(%rip), %rdi
	movq	16(%rsp), %rdx
	movsd	56(%rsp), %xmm4
	movl	$5, %eax
	movsd	48(%rsp), %xmm3
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
	jmp	.L813
.L911:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	movq	%r14, %r8
	leaq	.LC76(%rip), %rdi
	movq	16(%rsp), %rdx
	movsd	48(%rsp), %xmm3
	movl	$5, %eax
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
	jmp	.L813
.L910:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	movq	%r14, %r8
	movapd	%xmm6, %xmm3
	movq	16(%rsp), %rdx
	movsd	56(%rsp), %xmm4
	leaq	.LC75(%rip), %rdi
	movl	$5, %eax
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
	jmp	.L813
.L909:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	movq	%r14, %r8
	movapd	%xmm7, %xmm2
	movq	16(%rsp), %rdx
	movsd	56(%rsp), %xmm4
	leaq	.LC74(%rip), %rdi
	movl	$5, %eax
	movsd	48(%rsp), %xmm3
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
	jmp	.L813
.L908:
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
	jmp	.L813
.L913:
	movzwl	80(%rsp), %esi
	movq	16(%rsp), %rdx
	movq	%r14, %r8
	xorl	%ecx, %ecx
	movsd	56(%rsp), %xmm4
	movsd	48(%rsp), %xmm3
	leaq	.LC78(%rip), %rdi
	movl	$5, %eax
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
	jmp	.L813
.L912:
	movzwl	80(%rsp), %esi
	movq	64(%rsp), %rcx
	movq	%r14, %r8
	leaq	.LC77(%rip), %rdi
	movq	16(%rsp), %rdx
	movsd	56(%rsp), %xmm4
	movl	$5, %eax
	movsd	48(%rsp), %xmm3
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	printf@PLT
	jmp	.L813
.L918:
	movq	%r12, %rsi
	leaq	.LC27(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE26:
	jmp	.L813
.L864:
	movq	%rax, %rbx
	jmp	.L856
	.section	.gcc_except_table
.LLSDA8169:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8169-.LLSDACSB8169
.LLSDACSB8169:
	.uleb128 .LEHB24-.LFB8169
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L864-.LFB8169
	.uleb128 0
	.uleb128 .LEHB25-.LFB8169
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB26-.LFB8169
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L864-.LFB8169
	.uleb128 0
.LLSDACSE8169:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8169
	.type	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES7_.cold, @function
_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES7_.cold:
.LFSB8169:
.L856:
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
	jne	.L923
	movq	%rbx, %rdi
.LEHB27:
	call	_Unwind_Resume@PLT
.LEHE27:
.L923:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8169:
	.section	.gcc_except_table
.LLSDAC8169:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8169-.LLSDACSBC8169
.LLSDACSBC8169:
	.uleb128 .LEHB27-.LCOLDB80
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
.LLSDACSEC8169:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES7_, .-_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES7_
	.section	.text.unlikely
	.size	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES7_.cold, .-_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES7_.cold
.LCOLDE80:
	.text
.LHOTE80:
	.section	.rodata.str1.8
	.align 8
.LC81:
	.string	"wze::engine.vector.RayCast(): InitialX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC82:
	.string	"wze::engine.vector.RayCast(): InitialY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC83:
	.string	"wze::engine.vector.RayCast(): TerminalX must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC84:
	.string	"wze::engine.vector.RayCast(): TerminalY must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC85:
	.string	"wze::engine.vector.RayCast(): SamplingStep must not be NaN\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC86:
	.string	"wze::engine.vector.RayCast(): SamplingStep must not be less than or equal to 0\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC87:
	.string	"wze::engine.vector.RayCast(): ActorTypeWhitelist must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC88:
	.string	"wze::engine.vector.RayCast(): ActorIDBlacklist must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n"
	.align 8
.LC89:
	.string	"wze::engine.vector.RayCast(): OverlapboxTypeBlacklist must not be NULL\nParams: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\n"
	.section	.text.unlikely
	.align 2
.LCOLDB90:
	.text
.LHOTB90:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_S5_
	.type	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_S5_, @function
_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_S5_:
.LFB8170:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8170
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
	movzwl	288(%rdx), %ebx
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
	jne	.L925
	movq	$0, 104(%rsp)
	xorl	%r12d, %r12d
.L926:
	movsd	16(%rsp), %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L1026
	movsd	24(%rsp), %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L1027
	movsd	32(%rsp), %xmm7
	ucomisd	%xmm7, %xmm7
	jp	.L1028
	movsd	40(%rsp), %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L1029
	movsd	48(%rsp), %xmm4
	ucomisd	%xmm4, %xmm4
	jp	.L1030
	pxor	%xmm0, %xmm0
	comisd	48(%rsp), %xmm0
	jnb	.L1031
	cmpq	$0, 8(%rsp)
	je	.L1032
	cmpq	$0, 56(%rsp)
	je	.L1033
	testq	%r14, %r14
	je	.L1034
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
	jne	.L943
	movq	264(%rdx), %rcx
	cmpq	$1, %rcx
	jbe	.L979
	leaq	96(%rsp), %rax
	movl	$1, %r12d
	xorl	%ebp, %ebp
	movq	%rax, 64(%rsp)
	.p2align 4,,10
	.p2align 3
.L965:
	movq	272(%rdx), %rax
	leaq	0(,%r12,8), %r13
	movq	(%rax,%r12,8), %rsi
	testq	%rsi, %rsi
	je	.L945
	movq	8(%rsp), %rbx
	movq	216(%rsi), %r8
	xorl	%esi, %esi
	movq	(%rbx), %rdi
	movq	8(%rbx), %r9
	testq	%rdi, %rdi
	je	.L945
.L946:
	cmpq	(%r9,%rsi,8), %r8
	je	.L1035
	addq	$1, %rsi
	cmpq	%rsi, %rdi
	jne	.L946
	.p2align 4,,10
	.p2align 3
.L945:
	addq	$1, %r12
	cmpq	%rcx, %r12
	jb	.L965
	movq	104(%rsp), %r12
.L944:
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
	ja	.L1036
	call	acos@PLT
	movsd	%xmm0, 24(%rsp)
.L968:
	movsd	16(%rsp), %xmm6
	pxor	%xmm0, %xmm0
	movzwl	78(%rsp), %r14d
	comisd	%xmm0, %xmm6
	jbe	.L1016
.L971:
	testq	%rbp, %rbp
	je	.L974
	movq	96(%rsp), %r13
	xorl	%ebx, %ebx
	jmp	.L970
	.p2align 4,,10
	.p2align 3
.L1037:
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	je	.L974
.L970:
	movq	(%r15), %rax
	leaq	280(%rax), %rdi
	cmpq	%r13, %rbx
	je	.L1025
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
	je	.L1037
.L943:
	movq	%r12, %rdi
	call	free@PLT
	movq	120(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1038
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
.L1035:
	.cfi_restore_state
	movq	56(%rsp), %rbx
	xorl	%esi, %esi
	movq	(%rbx), %rdi
	movq	8(%rbx), %r8
	testq	%rdi, %rdi
	je	.L949
.L977:
	cmpq	%r12, (%r8,%rsi,8)
	je	.L945
	addq	$1, %rsi
	cmpq	%rsi, %rdi
	jne	.L977
	.p2align 4,,10
	.p2align 3
.L949:
	cmpq	%rcx, %r12
	jnb	.L1023
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L951:
	movq	(%rax,%r13), %rax
	cmpq	152(%rax), %rbx
	jnb	.L945
	movq	160(%rax), %rax
	leaq	0(,%rbx,8), %rdi
	movq	%rdi, (%rsp)
	movq	(%rax,%rbx,8), %rax
	testq	%rax, %rax
	je	.L956
	movq	(%r14), %rsi
	movq	32(%rax), %rdi
	xorl	%eax, %eax
	movq	8(%r14), %r8
	testq	%rsi, %rsi
	je	.L954
.L955:
	cmpq	(%r8,%rax,8), %rdi
	je	.L956
	addq	$1, %rax
	cmpq	%rax, %rsi
	jne	.L955
	.p2align 4,,10
	.p2align 3
.L954:
	cmpq	%rbp, 96(%rsp)
	je	.L1039
.L958:
	movq	272(%rdx), %rax
	cmpq	%rcx, %r12
	jnb	.L1023
	movq	(%rax,%r13), %rsi
	movq	160(%rsi), %rdi
	cmpq	152(%rsi), %rbx
	jnb	.L1025
	movq	(%rsp), %rsi
	movq	(%rdi,%rsi), %r8
	movq	104(%rsp), %rdi
	leaq	1(%rbp), %rsi
	cmpq	96(%rsp), %rbp
	jnb	.L1040
	movq	%r8, (%rdi,%rbp,8)
	addq	$1, %rbx
	movq	%rsi, %rbp
	jmp	.L951
	.p2align 4,,10
	.p2align 3
.L956:
	movq	272(%rdx), %rax
	addq	$1, %rbx
	cmpq	%rcx, %r12
	jb	.L951
.L1023:
	movq	%r12, %rsi
	leaq	.LC27(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.L931:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L1039:
	movzwl	288(%rdx), %eax
	movq	64(%rsp), %rdi
	movq	%rbp, %rsi
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0
.LEHE28:
	movq	(%r15), %rdx
	movq	264(%rdx), %rcx
	jmp	.L958
.L1036:
	call	acos@PLT
	movsd	.LC28(%rip), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 24(%rsp)
	jmp	.L968
	.p2align 4,,10
	.p2align 3
.L974:
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
	ja	.L971
.L1016:
	movb	$1, 77(%rsp)
	jmp	.L943
.L925:
	leaq	0(,%rbx,8), %rdi
	movq	%rdx, (%rsp)
	call	malloc@PLT
	movq	(%rsp), %rdx
	testq	%rax, %rax
	movq	%rax, 104(%rsp)
	movq	%rax, %r12
	jne	.L926
	leaq	.LC19(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
.LEHB29:
	call	printf@PLT
.LEHE29:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L979:
	xorl	%ebp, %ebp
	jmp	.L944
.L1025:
	movq	%rbx, %rsi
	leaq	.LC27(%rip), %rdi
	xorl	%eax, %eax
.LEHB30:
	call	printf@PLT
	jmp	.L931
.L1033:
	movzwl	72(%rsp), %esi
	movq	8(%rsp), %rdx
	movq	%r14, %r8
	xorl	%ecx, %ecx
	movsd	48(%rsp), %xmm4
	movsd	40(%rsp), %xmm3
	leaq	.LC88(%rip), %rdi
	movl	$5, %eax
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L931
.L1032:
	movzwl	72(%rsp), %esi
	movq	56(%rsp), %rcx
	movq	%r14, %r8
	xorl	%edx, %edx
	movsd	48(%rsp), %xmm4
	movsd	40(%rsp), %xmm3
	leaq	.LC87(%rip), %rdi
	movl	$5, %eax
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L931
.L1031:
	movzwl	72(%rsp), %esi
	movq	56(%rsp), %rcx
	movq	%r14, %r8
	leaq	.LC86(%rip), %rdi
	movq	8(%rsp), %rdx
	movsd	48(%rsp), %xmm4
	movl	$5, %eax
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L931
.L1030:
	movzwl	72(%rsp), %esi
	movq	56(%rsp), %rcx
	movq	%r14, %r8
	leaq	.LC85(%rip), %rdi
	movq	8(%rsp), %rdx
	movsd	40(%rsp), %xmm3
	movl	$5, %eax
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L931
.L1040:
	movq	%rbp, %rsi
	leaq	.LC27(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L931
.L1027:
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
	jmp	.L931
.L1026:
	movzwl	72(%rsp), %esi
	movq	56(%rsp), %rcx
	movq	%r14, %r8
	movapd	%xmm6, %xmm0
	movq	8(%rsp), %rdx
	movsd	48(%rsp), %xmm4
	leaq	.LC81(%rip), %rdi
	movl	$5, %eax
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	call	printf@PLT
	jmp	.L931
.L1029:
	movzwl	72(%rsp), %esi
	movq	56(%rsp), %rcx
	movq	%r14, %r8
	movapd	%xmm6, %xmm3
	movq	8(%rsp), %rdx
	movsd	48(%rsp), %xmm4
	leaq	.LC84(%rip), %rdi
	movl	$5, %eax
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L931
.L1028:
	movzwl	72(%rsp), %esi
	movq	56(%rsp), %rcx
	movq	%r14, %r8
	movapd	%xmm7, %xmm2
	movq	8(%rsp), %rdx
	movsd	48(%rsp), %xmm4
	leaq	.LC83(%rip), %rdi
	movl	$5, %eax
	movsd	40(%rsp), %xmm3
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
	jmp	.L931
.L1034:
	movzwl	72(%rsp), %esi
	movq	56(%rsp), %rcx
	xorl	%r8d, %r8d
	leaq	.LC89(%rip), %rdi
	movq	8(%rsp), %rdx
	movsd	48(%rsp), %xmm4
	movl	$5, %eax
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	printf@PLT
.LEHE30:
	jmp	.L931
.L1038:
	call	__stack_chk_fail@PLT
.L982:
	movq	%rax, %rbx
	jmp	.L975
	.section	.gcc_except_table
.LLSDA8170:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8170-.LLSDACSB8170
.LLSDACSB8170:
	.uleb128 .LEHB28-.LFB8170
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L982-.LFB8170
	.uleb128 0
	.uleb128 .LEHB29-.LFB8170
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB30-.LFB8170
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L982-.LFB8170
	.uleb128 0
.LLSDACSE8170:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8170
	.type	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_S5_.cold, @function
_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_S5_.cold:
.LFSB8170:
.L975:
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
	jne	.L1041
	movq	%rbx, %rdi
.LEHB31:
	call	_Unwind_Resume@PLT
.LEHE31:
.L1041:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8170:
	.section	.gcc_except_table
.LLSDAC8170:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8170-.LLSDACSBC8170
.LLSDACSBC8170:
	.uleb128 .LEHB31-.LCOLDB90
	.uleb128 .LEHE31-.LEHB31
	.uleb128 0
	.uleb128 0
.LLSDACSEC8170:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_S5_, .-_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_S5_
	.section	.text.unlikely
	.size	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_S5_.cold, .-_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_S5_.cold
.LCOLDE90:
	.text
.LHOTE90:
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
.LC15:
	.long	-1571644103
	.long	1066524486
	.align 8
.LC28:
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
