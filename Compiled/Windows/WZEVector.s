	.file	"WZEVector.cpp"
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
	.ascii "neo::array.Insert(): Index out of range\12Params: Index: %lld, Length: %lld\12\0"
	.align 8
.LC1:
	.ascii "neo::array.Insert(): Memory allocation failed\12Params: Index: %lld, Length: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.def	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0
_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0:
.LFB8613:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rdx, %rbx
	movq	(%rcx), %rdx
	movq	%rcx, %rsi
	movq	%r8, %rdi
	cmpq	%rbx, %rdx
	jb	.L26
	testq	%r8, %r8
	jne	.L27
.L3:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L27:
	addq	%r8, %rdx
	movq	%rdx, (%rcx)
	movq	8(%rcx), %rcx
	salq	$3, %rdx
	call	realloc
	movq	%rax, 8(%rsi)
	movq	%rax, %r8
	testq	%rax, %rax
	je	.L28
	movq	(%rsi), %rcx
	leaq	(%rbx,%rdi), %rdx
	leaq	-1(%rcx), %rax
	cmpq	%rdx, %rax
	jb	.L3
	movq	%rcx, %r9
	subq	%rdx, %r9
	leaq	-1(%r9), %r10
	cmpq	$2, %r10
	jbe	.L7
	leaq	8(,%rdi,8), %r10
	testq	%r10, %r10
	je	.L7
	testq	%rdx, %rdx
	je	.L7
	movq	%rcx, %rdx
	leaq	-16(%r8,%rcx,8), %r10
	movq	%r9, %rcx
	shrq	%rcx
	subq	%rdi, %rdx
	negq	%rcx
	leaq	-16(%r8,%rdx,8), %r11
	xorl	%edx, %edx
	salq	$4, %rcx
	.p2align 4,,10
	.p2align 3
.L8:
	movdqu	(%r11,%rdx), %xmm0
	movups	%xmm0, (%r10,%rdx)
	subq	$16, %rdx
	cmpq	%rcx, %rdx
	jne	.L8
	movq	%r9, %rdx
	andq	$-2, %rdx
	subq	%rdx, %rax
	andl	$1, %r9d
	je	.L3
	movq	%rax, %rdx
	subq	%rdi, %rdx
	movq	(%r8,%rdx,8), %rdx
	movq	%rdx, (%r8,%rax,8)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	negq	%rdi
	leaq	(%r8,%rdi,8), %r9
	.p2align 4,,10
	.p2align 3
.L10:
	movq	(%r9,%rax,8), %rcx
	movq	%rcx, (%r8,%rax,8)
	subq	$1, %rax
	cmpq	%rdx, %rax
	jnb	.L10
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L26:
	leaq	.LC0(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L28:
	leaq	.LC1(%rip), %rcx
	movq	%rdi, %r8
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vectorC2EPS0_
	.def	_ZN3wze6engine6vectorC2EPS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6vectorC2EPS0_
_ZN3wze6engine6vectorC2EPS0_:
.LFB8422:
	.seh_endprologue
	movq	%rdx, (%rcx)
	ret
	.seh_endproc
	.globl	_ZN3wze6engine6vectorC1EPS0_
	.def	_ZN3wze6engine6vectorC1EPS0_;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6vectorC1EPS0_,_ZN3wze6engine6vectorC2EPS0_
	.section .rdata,"dr"
	.align 8
.LC2:
	.ascii "wze::engine.vector.Length(): InitialX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\12\0"
	.align 8
.LC3:
	.ascii "wze::engine.vector.Length(): InitialY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\12\0"
	.align 8
.LC4:
	.ascii "wze::engine.vector.Length(): TerminalX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\12\0"
	.align 8
.LC5:
	.ascii "wze::engine.vector.Length(): TerminalY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector6LengthEdddd
	.def	_ZN3wze6engine6vector6LengthEdddd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6vector6LengthEdddd
_ZN3wze6engine6vector6LengthEdddd:
.LFB8424:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movsd	96(%rsp), %xmm0
	ucomisd	%xmm1, %xmm1
	jp	.L47
	ucomisd	%xmm2, %xmm2
	jp	.L48
	ucomisd	%xmm3, %xmm3
	jp	.L49
	ucomisd	%xmm0, %xmm0
	jp	.L50
	subsd	%xmm1, %xmm3
	subsd	%xmm2, %xmm0
	mulsd	%xmm3, %xmm3
	mulsd	%xmm0, %xmm0
	addsd	%xmm3, %xmm0
	sqrtsd	%xmm0, %xmm0
	addq	$56, %rsp
	ret
.L47:
	movsd	%xmm0, 32(%rsp)
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	leaq	.LC2(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L50:
	movsd	%xmm0, 32(%rsp)
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	leaq	.LC5(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L49:
	movsd	%xmm0, 32(%rsp)
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	leaq	.LC4(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L48:
	movsd	%xmm0, 32(%rsp)
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	leaq	.LC3(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC6:
	.ascii "wze::engine.vector.Angle(): InitialX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\12\0"
	.align 8
.LC7:
	.ascii "wze::engine.vector.Angle(): InitialY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\12\0"
	.align 8
.LC8:
	.ascii "wze::engine.vector.Angle(): TerminalX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\12\0"
	.align 8
.LC9:
	.ascii "wze::engine.vector.Angle(): TerminalY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector5AngleEdddd
	.def	_ZN3wze6engine6vector5AngleEdddd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6vector5AngleEdddd
_ZN3wze6engine6vector5AngleEdddd:
.LFB8425:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movsd	96(%rsp), %xmm4
	ucomisd	%xmm1, %xmm1
	jp	.L73
	ucomisd	%xmm2, %xmm2
	jp	.L74
	ucomisd	%xmm3, %xmm3
	jp	.L75
	ucomisd	%xmm4, %xmm4
	jp	.L76
	subsd	%xmm1, %xmm3
	comisd	%xmm4, %xmm2
	movapd	%xmm4, %xmm1
	subsd	%xmm2, %xmm1
	movapd	%xmm3, %xmm0
	mulsd	%xmm3, %xmm0
	mulsd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	sqrtsd	%xmm0, %xmm0
	divsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm0
	ja	.L77
	call	acos
	mulsd	.LC10(%rip), %xmm0
	addq	$56, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L77:
	call	acos
	movsd	.LC10(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	.LC11(%rip), %xmm0
	subsd	%xmm1, %xmm0
	addq	$56, %rsp
	ret
.L76:
	movsd	%xmm4, 32(%rsp)
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	leaq	.LC9(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L75:
	movsd	%xmm4, 32(%rsp)
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	leaq	.LC8(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L74:
	movsd	%xmm4, 32(%rsp)
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	leaq	.LC7(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L73:
	movsd	%xmm4, 32(%rsp)
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	leaq	.LC6(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC12:
	.ascii "wze::engine.vector.TerminalX(): InitialX must not be NaN\12Params: InitialX: %lf, Length: %lf, Angle: %lf\12\0"
	.align 8
.LC13:
	.ascii "wze::engine.vector.TerminalX(): Length must not be NaN\12Params: InitialX: %lf, Length: %lf, Angle: %lf\12\0"
	.align 8
.LC14:
	.ascii "wze::engine.vector.TerminalX(): Angle must not be NaN\12Params: InitialX: %lf, Length: %lf, Angle: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector9TerminalXEddd
	.def	_ZN3wze6engine6vector9TerminalXEddd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6vector9TerminalXEddd
_ZN3wze6engine6vector9TerminalXEddd:
.LFB8426:
	subq	$72, %rsp
	.seh_stackalloc	72
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movapd	%xmm1, %xmm6
	movapd	%xmm2, %xmm7
	jp	.L91
	ucomisd	%xmm2, %xmm2
	jp	.L92
	ucomisd	%xmm3, %xmm3
	jp	.L93
	mulsd	.LC15(%rip), %xmm3
	movapd	%xmm3, %xmm0
	call	cos
	mulsd	%xmm7, %xmm0
	movaps	48(%rsp), %xmm7
	addsd	%xmm6, %xmm0
	movaps	32(%rsp), %xmm6
	addq	$72, %rsp
	ret
.L91:
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	movq	%xmm1, %rdx
	leaq	.LC12(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L93:
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	movq	%xmm1, %rdx
	leaq	.LC14(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L92:
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	movq	%xmm1, %rdx
	leaq	.LC13(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC16:
	.ascii "wze::engine.vector.TerminalY(): InitialY must not be NaN\12Params: InitialY: %lf, Length: %lf, Angle: %lf\12\0"
	.align 8
.LC17:
	.ascii "wze::engine.vector.TerminalY(): Length must not be NaN\12Params: InitialY: %lf, Length: %lf, Angle: %lf\12\0"
	.align 8
.LC18:
	.ascii "wze::engine.vector.TerminalY(): Angle must not be NaN\12Params: InitialY: %lf, Length: %lf, Angle: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector9TerminalYEddd
	.def	_ZN3wze6engine6vector9TerminalYEddd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6vector9TerminalYEddd
_ZN3wze6engine6vector9TerminalYEddd:
.LFB8427:
	subq	$72, %rsp
	.seh_stackalloc	72
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movapd	%xmm1, %xmm6
	movapd	%xmm2, %xmm7
	jp	.L107
	ucomisd	%xmm2, %xmm2
	jp	.L108
	ucomisd	%xmm3, %xmm3
	jp	.L109
	mulsd	.LC15(%rip), %xmm3
	movapd	%xmm3, %xmm0
	call	sin
	mulsd	%xmm7, %xmm0
	movaps	48(%rsp), %xmm7
	addsd	%xmm6, %xmm0
	movaps	32(%rsp), %xmm6
	addq	$72, %rsp
	ret
.L107:
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	movq	%xmm1, %rdx
	leaq	.LC16(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L109:
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	movq	%xmm1, %rdx
	leaq	.LC18(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L108:
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	movq	%xmm1, %rdx
	leaq	.LC17(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC19:
	.ascii "neo::array(): Memory allocation failed\12Params: Length: %lld\12\0"
	.align 8
.LC20:
	.ascii "wze::engine.vector.RayCast(): InitialX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC21:
	.ascii "wze::engine.vector.RayCast(): InitialY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC22:
	.ascii "wze::engine.vector.RayCast(): TerminalX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC23:
	.ascii "wze::engine.vector.RayCast(): TerminalY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC24:
	.ascii "wze::engine.vector.RayCast(): SamplingStep must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC26:
	.ascii "wze::engine.vector.RayCast(): SamplingStep must not be less than or equal to 0\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC27:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB29:
	.text
.LHOTB29:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_
	.def	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_
_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_:
.LFB8428:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$280, %rsp
	.seh_stackalloc	280
	movaps	%xmm6, 160(%rsp)
	.seh_savexmm	%xmm6, 160
	movaps	%xmm7, 176(%rsp)
	.seh_savexmm	%xmm7, 176
	movaps	%xmm8, 192(%rsp)
	.seh_savexmm	%xmm8, 192
	movaps	%xmm9, 208(%rsp)
	.seh_savexmm	%xmm9, 208
	movaps	%xmm10, 224(%rsp)
	.seh_savexmm	%xmm10, 224
	movaps	%xmm11, 240(%rsp)
	.seh_savexmm	%xmm11, 240
	movaps	%xmm12, 256(%rsp)
	.seh_savexmm	%xmm12, 256
	.seh_endprologue
	movq	408(%rsp), %rax
	movq	(%rcx), %r8
	movl	392(%rsp), %edi
	movsd	384(%rsp), %xmm12
	movq	(%rax), %r14
	movq	8(%rax), %r13
	movq	416(%rsp), %rax
	movzwl	272(%r8), %esi
	movl	%edi, 120(%rsp)
	movq	%rcx, %rbp
	movapd	%xmm1, %xmm11
	movapd	%xmm2, %xmm9
	movq	(%rax), %rbx
	movq	8(%rax), %rax
	movw	%di, 126(%rsp)
	movapd	%xmm3, %xmm8
	movq	%rsi, 144(%rsp)
	movsd	400(%rsp), %xmm10
	movq	%rax, 88(%rsp)
	movq	424(%rsp), %rax
	movq	%rbx, 112(%rsp)
	movq	(%rax), %rbx
	movq	8(%rax), %rax
	movq	%rbx, 96(%rsp)
	movq	%rax, 80(%rsp)
	testq	%rsi, %rsi
	jne	.L111
	movq	$0, 152(%rsp)
	xorl	%ebx, %ebx
.L112:
	ucomisd	%xmm11, %xmm11
	jp	.L204
	ucomisd	%xmm9, %xmm9
	jp	.L205
	ucomisd	%xmm8, %xmm8
	jp	.L206
	ucomisd	%xmm12, %xmm12
	jp	.L207
	ucomisd	%xmm10, %xmm10
	jp	.L208
	pxor	%xmm0, %xmm0
	comisd	%xmm10, %xmm0
	jnb	.L209
	ucomisd	%xmm8, %xmm11
	movl	$0, %ecx
	setnp	%dl
	cmovne	%ecx, %edx
	ucomisd	%xmm12, %xmm9
	setnp	%al
	cmovne	%ecx, %eax
	andb	%al, %dl
	movb	%dl, 104(%rsp)
	jne	.L126
	movq	248(%r8), %rcx
	cmpq	$1, %rcx
	jbe	.L160
	movl	$1, %ebx
	xorl	%edi, %edi
	jmp	.L148
	.p2align 4,,10
	.p2align 3
.L128:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jnb	.L210
.L148:
	movq	256(%r8), %rax
	leaq	0(,%rbx,8), %r12
	movq	(%rax,%rbx,8), %rdx
	testq	%rdx, %rdx
	je	.L128
	movq	208(%rdx), %r9
	xorl	%edx, %edx
	testq	%r13, %r13
	je	.L128
	cmpq	(%r14,%rdx,8), %r9
	je	.L211
.L190:
	addq	$1, %rdx
	cmpq	%rdx, %r13
	je	.L128
	cmpq	(%r14,%rdx,8), %r9
	jne	.L190
.L211:
	xorl	%edx, %edx
	cmpq	$0, 88(%rsp)
	movq	112(%rsp), %r9
	je	.L132
.L159:
	cmpq	%rbx, (%r9,%rdx,8)
	je	.L128
	addq	$1, %rdx
	cmpq	%rdx, 88(%rsp)
	jne	.L159
.L132:
	cmpq	%rcx, %rbx
	jnb	.L203
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L134:
	movq	(%rax,%r12), %rax
	cmpq	152(%rax), %rsi
	jnb	.L128
	movq	160(%rax), %rax
	leaq	0(,%rsi,8), %r15
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	jne	.L135
.L139:
	movq	256(%r8), %rax
	addq	$1, %rsi
	cmpq	%rcx, %rbx
	jb	.L134
.L203:
	movq	%rbx, %rdx
	leaq	.LC27(%rip), %rcx
.LEHB0:
	call	_Z6printfPKcz
	jmp	.L117
	.p2align 4,,10
	.p2align 3
.L210:
	movq	152(%rsp), %rbx
.L127:
	subsd	%xmm11, %xmm8
	movapd	%xmm12, %xmm0
	movapd	%xmm11, %xmm7
	movzwl	120(%rsp), %eax
	subsd	%xmm9, %xmm0
	pxor	%xmm6, %xmm6
	shrw	%ax
	comisd	%xmm12, %xmm9
	movapd	%xmm8, %xmm11
	movzwl	%ax, %eax
	mulsd	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm6
	mulsd	%xmm8, %xmm11
	subsd	%xmm6, %xmm7
	addsd	%xmm9, %xmm6
	addsd	%xmm0, %xmm11
	movapd	%xmm8, %xmm0
	sqrtsd	%xmm11, %xmm11
	divsd	%xmm11, %xmm0
	ja	.L212
	call	acos
	movapd	%xmm0, %xmm8
.L151:
	pxor	%xmm0, %xmm0
	movzwl	126(%rsp), %r13d
	comisd	%xmm0, %xmm11
	jbe	.L194
.L154:
	testq	%rdi, %rdi
	je	.L157
	movq	144(%rsp), %r12
	xorl	%esi, %esi
	jmp	.L153
	.p2align 4,,10
	.p2align 3
.L214:
	addq	$1, %rsi
	cmpq	%rdi, %rsi
	je	.L157
.L153:
	movq	0(%rbp), %rax
	leaq	264(%rax), %rcx
	cmpq	%rsi, %r12
	je	.L213
	pxor	%xmm3, %xmm3
	movq	(%rbx,%rsi,8), %rax
	movapd	%xmm6, %xmm0
	movapd	%xmm6, %xmm2
	cvtsi2sdl	%r13d, %xmm3
	movapd	%xmm7, %xmm1
	movq	%rax, 40(%rsp)
	subsd	%xmm3, %xmm0
	addsd	%xmm7, %xmm3
	movsd	%xmm0, 32(%rsp)
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE
	testb	%al, %al
	je	.L214
.L126:
	movq	%rbx, %rcx
	call	free
	movzbl	104(%rsp), %eax
	movaps	160(%rsp), %xmm6
	movaps	176(%rsp), %xmm7
	movaps	192(%rsp), %xmm8
	movaps	208(%rsp), %xmm9
	movaps	224(%rsp), %xmm10
	movaps	240(%rsp), %xmm11
	movaps	256(%rsp), %xmm12
	addq	$280, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L212:
	call	acos
	movsd	.LC28(%rip), %xmm8
	subsd	%xmm0, %xmm8
	jmp	.L151
	.p2align 4,,10
	.p2align 3
.L135:
	movq	24(%rax), %rdx
	xorl	%eax, %eax
	cmpq	$0, 80(%rsp)
	movq	96(%rsp), %r9
	je	.L138
.L137:
	cmpq	(%r9,%rax,8), %rdx
	je	.L139
	addq	$1, %rax
	cmpq	%rax, 80(%rsp)
	jne	.L137
.L138:
	cmpq	%rdi, 144(%rsp)
	je	.L215
.L141:
	movq	256(%r8), %rax
	cmpq	%rcx, %rbx
	jnb	.L203
	movq	(%rax,%r12), %rdx
	movq	160(%rdx), %r9
	cmpq	152(%rdx), %rsi
	jnb	.L216
	movq	(%r9,%r15), %r10
	leaq	1(%rdi), %rdx
	movq	152(%rsp), %r9
	cmpq	144(%rsp), %rdi
	jnb	.L217
	movq	%r10, (%r9,%rdi,8)
	addq	$1, %rsi
	movq	%rdx, %rdi
	jmp	.L134
	.p2align 4,,10
	.p2align 3
.L157:
	movapd	%xmm8, %xmm0
	leaq	136(%rsp), %rdx
	leaq	128(%rsp), %r8
	call	sincos
	subsd	%xmm10, %xmm11
	movsd	128(%rsp), %xmm0
	mulsd	%xmm10, %xmm0
	addsd	%xmm0, %xmm7
	movsd	136(%rsp), %xmm0
	mulsd	%xmm10, %xmm0
	addsd	%xmm0, %xmm6
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm11
	ja	.L154
.L194:
	movb	$1, 104(%rsp)
	jmp	.L126
.L215:
	movzwl	272(%r8), %eax
	leaq	144(%rsp), %rcx
	movq	%rdi, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0
.LEHE0:
	movq	0(%rbp), %r8
	movq	248(%r8), %rcx
	jmp	.L141
.L111:
	leaq	0(,%rsi,8), %rcx
	movq	%r8, 104(%rsp)
	call	malloc
	movq	104(%rsp), %r8
	testq	%rax, %rax
	movq	%rax, 152(%rsp)
	movq	%rax, %rbx
	jne	.L112
	leaq	.LC19(%rip), %rcx
	movq	%rsi, %rdx
.LEHB1:
	call	_Z6printfPKcz
.LEHE1:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L160:
	xorl	%edi, %edi
	jmp	.L127
.L213:
	movq	%r12, %rdx
	leaq	.LC27(%rip), %rcx
.LEHB2:
	call	_Z6printfPKcz
.L117:
	movl	$1, %ecx
	call	exit
.L217:
	movq	%rdi, %rdx
	leaq	.LC27(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L117
.L206:
	movq	80(%rsp), %rax
	movq	%r13, 56(%rsp)
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movsd	%xmm10, 48(%rsp)
	movq	%rax, 72(%rsp)
	movq	88(%rsp), %rax
	movq	%xmm11, %rdx
	leaq	.LC22(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 64(%rsp)
	movzwl	120(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L117
.L207:
	movq	80(%rsp), %rax
	movq	%r13, 56(%rsp)
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movsd	%xmm10, 48(%rsp)
	movq	%rax, 72(%rsp)
	movq	88(%rsp), %rax
	movq	%xmm11, %rdx
	leaq	.LC23(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 64(%rsp)
	movzwl	120(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L117
.L205:
	movq	80(%rsp), %rax
	movq	%r13, 56(%rsp)
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movsd	%xmm10, 48(%rsp)
	movq	%rax, 72(%rsp)
	movq	88(%rsp), %rax
	movq	%xmm11, %rdx
	leaq	.LC21(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 64(%rsp)
	movzwl	120(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L117
.L204:
	movq	80(%rsp), %rax
	movq	%r13, 56(%rsp)
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movsd	%xmm10, 48(%rsp)
	movq	%rax, 72(%rsp)
	movq	88(%rsp), %rax
	movq	%xmm11, %rdx
	leaq	.LC20(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 64(%rsp)
	movzwl	120(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L117
.L209:
	movq	80(%rsp), %rax
	movq	%r13, 56(%rsp)
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movsd	%xmm10, 48(%rsp)
	movq	%rax, 72(%rsp)
	movq	88(%rsp), %rax
	movq	%xmm11, %rdx
	leaq	.LC26(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 64(%rsp)
	movzwl	120(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L117
.L208:
	movq	80(%rsp), %rax
	movq	%r13, 56(%rsp)
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movsd	%xmm10, 48(%rsp)
	movq	%rax, 72(%rsp)
	movq	88(%rsp), %rax
	movq	%xmm11, %rdx
	leaq	.LC24(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 64(%rsp)
	movzwl	120(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L117
.L216:
	movq	%rsi, %rdx
	leaq	.LC27(%rip), %rcx
	call	_Z6printfPKcz
.LEHE2:
	jmp	.L117
.L166:
	movq	%rax, %rbx
	jmp	.L158
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8428:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8428-.LLSDACSB8428
.LLSDACSB8428:
	.uleb128 .LEHB0-.LFB8428
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L166-.LFB8428
	.uleb128 0
	.uleb128 .LEHB1-.LFB8428
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB8428
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L166-.LFB8428
	.uleb128 0
.LLSDACSE8428:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_.cold
	.seh_stackalloc	344
	.seh_savereg	%rbx, 280
	.seh_savereg	%rsi, 288
	.seh_savereg	%rdi, 296
	.seh_savereg	%rbp, 304
	.seh_savexmm	%xmm6, 160
	.seh_savexmm	%xmm7, 176
	.seh_savereg	%r12, 312
	.seh_savereg	%r13, 320
	.seh_savereg	%r14, 328
	.seh_savereg	%r15, 336
	.seh_savexmm	%xmm8, 192
	.seh_savexmm	%xmm9, 208
	.seh_savexmm	%xmm10, 224
	.seh_savexmm	%xmm11, 240
	.seh_savexmm	%xmm12, 256
	.seh_endprologue
_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_.cold:
.L158:
	movq	152(%rsp), %rcx
	call	free
	movq	%rbx, %rcx
.LEHB3:
	call	_Unwind_Resume
	nop
.LEHE3:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8428:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8428-.LLSDACSBC8428
.LLSDACSBC8428:
	.uleb128 .LEHB3-.LCOLDB29
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSEC8428:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE29:
	.text
.LHOTE29:
	.section .rdata,"dr"
	.align 8
.LC30:
	.ascii "wze::engine.vector.RayCast(): InitialX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC31:
	.ascii "wze::engine.vector.RayCast(): InitialY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC32:
	.ascii "wze::engine.vector.RayCast(): TerminalX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC33:
	.ascii "wze::engine.vector.RayCast(): TerminalY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC34:
	.ascii "wze::engine.vector.RayCast(): SamplingStep must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC35:
	.ascii "wze::engine.vector.RayCast(): SamplingStep must not be less than or equal to 0\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC36:
	.ascii "wze::engine.vector.RayCast(): ActorTypeWhiteList must not be NULL\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB37:
	.text
.LHOTB37:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES7_
	.def	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES7_
_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES7_:
.LFB8430:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$280, %rsp
	.seh_stackalloc	280
	movaps	%xmm6, 160(%rsp)
	.seh_savexmm	%xmm6, 160
	movaps	%xmm7, 176(%rsp)
	.seh_savexmm	%xmm7, 176
	movaps	%xmm8, 192(%rsp)
	.seh_savexmm	%xmm8, 192
	movaps	%xmm9, 208(%rsp)
	.seh_savexmm	%xmm9, 208
	movaps	%xmm10, 224(%rsp)
	.seh_savexmm	%xmm10, 224
	movaps	%xmm11, 240(%rsp)
	.seh_savexmm	%xmm11, 240
	movaps	%xmm12, 256(%rsp)
	.seh_savexmm	%xmm12, 256
	.seh_endprologue
	movq	416(%rsp), %rax
	movl	392(%rsp), %edx
	movsd	384(%rsp), %xmm12
	movq	408(%rsp), %r13
	movsd	400(%rsp), %xmm10
	movq	(%rax), %rdi
	movq	8(%rax), %rax
	movl	%edx, 120(%rsp)
	movq	%rcx, %rbp
	movapd	%xmm1, %xmm11
	movapd	%xmm2, %xmm9
	movq	%rax, 88(%rsp)
	movq	424(%rsp), %rax
	movapd	%xmm3, %xmm8
	movw	%dx, 126(%rsp)
	movq	(%rcx), %rdx
	movq	%rdi, 104(%rsp)
	movq	(%rax), %rdi
	movzwl	272(%rdx), %esi
	movq	8(%rax), %r15
	movq	%rdi, 96(%rsp)
	movq	%rsi, 144(%rsp)
	testq	%rsi, %rsi
	jne	.L219
	movq	$0, 152(%rsp)
	xorl	%ebx, %ebx
.L220:
	ucomisd	%xmm11, %xmm11
	jp	.L313
	ucomisd	%xmm9, %xmm9
	jp	.L314
	ucomisd	%xmm8, %xmm8
	jp	.L315
	ucomisd	%xmm12, %xmm12
	jp	.L316
	ucomisd	%xmm10, %xmm10
	jp	.L317
	pxor	%xmm0, %xmm0
	comisd	%xmm10, %xmm0
	jnb	.L318
	testq	%r13, %r13
	je	.L319
	ucomisd	%xmm8, %xmm11
	movl	$0, %r8d
	setnp	%cl
	cmovne	%r8d, %ecx
	ucomisd	%xmm12, %xmm9
	setnp	%al
	cmovne	%r8d, %eax
	andb	%al, %cl
	movb	%cl, 112(%rsp)
	jne	.L235
	movq	248(%rdx), %r8
	cmpq	$1, %r8
	jbe	.L269
	movl	$1, %ebx
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L257:
	movq	256(%rdx), %rax
	leaq	0(,%rbx,8), %r12
	movq	(%rax,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L237
	movq	0(%r13), %r9
	movq	208(%rcx), %r10
	xorl	%ecx, %ecx
	movq	8(%r13), %r11
	testq	%r9, %r9
	je	.L237
.L238:
	cmpq	(%r11,%rcx,8), %r10
	je	.L320
	addq	$1, %rcx
	cmpq	%rcx, %r9
	jne	.L238
	.p2align 4,,10
	.p2align 3
.L237:
	addq	$1, %rbx
	cmpq	%r8, %rbx
	jb	.L257
	movq	152(%rsp), %rbx
.L236:
	subsd	%xmm11, %xmm8
	movapd	%xmm12, %xmm0
	movapd	%xmm11, %xmm7
	movzwl	120(%rsp), %eax
	subsd	%xmm9, %xmm0
	pxor	%xmm6, %xmm6
	shrw	%ax
	comisd	%xmm12, %xmm9
	movapd	%xmm8, %xmm11
	movzwl	%ax, %eax
	mulsd	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm6
	mulsd	%xmm8, %xmm11
	subsd	%xmm6, %xmm7
	addsd	%xmm9, %xmm6
	addsd	%xmm0, %xmm11
	movapd	%xmm8, %xmm0
	sqrtsd	%xmm11, %xmm11
	divsd	%xmm11, %xmm0
	ja	.L321
	call	acos
	movapd	%xmm0, %xmm8
.L260:
	pxor	%xmm0, %xmm0
	movzwl	126(%rsp), %r13d
	comisd	%xmm0, %xmm11
	jbe	.L304
.L263:
	testq	%rdi, %rdi
	je	.L266
	movq	144(%rsp), %r12
	xorl	%esi, %esi
	jmp	.L262
	.p2align 4,,10
	.p2align 3
.L323:
	addq	$1, %rsi
	cmpq	%rdi, %rsi
	je	.L266
.L262:
	movq	0(%rbp), %rax
	leaq	264(%rax), %rcx
	cmpq	%rsi, %r12
	je	.L322
	pxor	%xmm3, %xmm3
	movq	(%rbx,%rsi,8), %rax
	movapd	%xmm6, %xmm0
	movapd	%xmm6, %xmm2
	cvtsi2sdl	%r13d, %xmm3
	movapd	%xmm7, %xmm1
	movq	%rax, 40(%rsp)
	subsd	%xmm3, %xmm0
	addsd	%xmm7, %xmm3
	movsd	%xmm0, 32(%rsp)
.LEHB4:
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE
	testb	%al, %al
	je	.L323
.L235:
	movq	%rbx, %rcx
	call	free
	movzbl	112(%rsp), %eax
	movaps	160(%rsp), %xmm6
	movaps	176(%rsp), %xmm7
	movaps	192(%rsp), %xmm8
	movaps	208(%rsp), %xmm9
	movaps	224(%rsp), %xmm10
	movaps	240(%rsp), %xmm11
	movaps	256(%rsp), %xmm12
	addq	$280, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L320:
	xorl	%ecx, %ecx
	cmpq	$0, 88(%rsp)
	movq	104(%rsp), %r9
	je	.L241
.L268:
	cmpq	(%r9,%rcx,8), %rbx
	je	.L237
	addq	$1, %rcx
	cmpq	%rcx, 88(%rsp)
	jne	.L268
.L241:
	cmpq	%r8, %rbx
	jnb	.L312
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L243:
	movq	(%rax,%r12), %rax
	cmpq	152(%rax), %rsi
	jnb	.L237
	movq	160(%rax), %rax
	leaq	0(,%rsi,8), %r14
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	jne	.L244
.L248:
	movq	256(%rdx), %rax
	addq	$1, %rsi
	cmpq	%r8, %rbx
	jb	.L243
.L312:
	movq	%rbx, %rdx
	leaq	.LC27(%rip), %rcx
	call	_Z6printfPKcz
.L225:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L244:
	movq	24(%rax), %rcx
	movq	96(%rsp), %r9
	xorl	%eax, %eax
	testq	%r15, %r15
	je	.L247
.L246:
	cmpq	(%r9,%rax,8), %rcx
	je	.L248
	addq	$1, %rax
	cmpq	%rax, %r15
	jne	.L246
.L247:
	cmpq	%rdi, 144(%rsp)
	je	.L324
.L250:
	movq	256(%rdx), %rax
	cmpq	%r8, %rbx
	jnb	.L312
	movq	(%rax,%r12), %rcx
	movq	160(%rcx), %r9
	cmpq	152(%rcx), %rsi
	jnb	.L325
	movq	(%r9,%r14), %r10
	leaq	1(%rdi), %rcx
	movq	152(%rsp), %r9
	cmpq	144(%rsp), %rdi
	jnb	.L326
	movq	%r10, (%r9,%rdi,8)
	addq	$1, %rsi
	movq	%rcx, %rdi
	jmp	.L243
	.p2align 4,,10
	.p2align 3
.L324:
	movzwl	272(%rdx), %eax
	leaq	144(%rsp), %rcx
	movq	%rdi, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0
.LEHE4:
	movq	0(%rbp), %rdx
	movq	248(%rdx), %r8
	jmp	.L250
.L321:
	call	acos
	movsd	.LC28(%rip), %xmm8
	subsd	%xmm0, %xmm8
	jmp	.L260
	.p2align 4,,10
	.p2align 3
.L266:
	movapd	%xmm8, %xmm0
	leaq	136(%rsp), %rdx
	leaq	128(%rsp), %r8
	call	sincos
	subsd	%xmm10, %xmm11
	movsd	128(%rsp), %xmm0
	mulsd	%xmm10, %xmm0
	addsd	%xmm0, %xmm7
	movsd	136(%rsp), %xmm0
	mulsd	%xmm10, %xmm0
	addsd	%xmm0, %xmm6
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm11
	ja	.L263
.L304:
	movb	$1, 112(%rsp)
	jmp	.L235
.L219:
	leaq	0(,%rsi,8), %rcx
	movq	%rdx, 112(%rsp)
	call	malloc
	movq	112(%rsp), %rdx
	testq	%rax, %rax
	movq	%rax, 152(%rsp)
	movq	%rax, %rbx
	jne	.L220
	leaq	.LC19(%rip), %rcx
	movq	%rsi, %rdx
.LEHB5:
	call	_Z6printfPKcz
.LEHE5:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L269:
	xorl	%edi, %edi
	jmp	.L236
.L322:
	movq	%r12, %rdx
	leaq	.LC27(%rip), %rcx
.LEHB6:
	call	_Z6printfPKcz
	jmp	.L225
.L317:
	movq	88(%rsp), %rax
	movq	%r15, 72(%rsp)
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%r13, 56(%rsp)
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movq	%rax, 64(%rsp)
	movzwl	120(%rsp), %eax
	movq	%xmm11, %rdx
	leaq	.LC34(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L225
.L316:
	movq	88(%rsp), %rax
	movq	%r15, 72(%rsp)
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%r13, 56(%rsp)
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movq	%rax, 64(%rsp)
	movzwl	120(%rsp), %eax
	movq	%xmm11, %rdx
	leaq	.LC33(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L225
.L315:
	movq	88(%rsp), %rax
	movq	%r15, 72(%rsp)
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%r13, 56(%rsp)
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movq	%rax, 64(%rsp)
	movzwl	120(%rsp), %eax
	movq	%xmm11, %rdx
	leaq	.LC32(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L225
.L314:
	movq	88(%rsp), %rax
	movq	%r15, 72(%rsp)
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%r13, 56(%rsp)
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movq	%rax, 64(%rsp)
	movzwl	120(%rsp), %eax
	movq	%xmm11, %rdx
	leaq	.LC31(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L225
.L313:
	movq	88(%rsp), %rax
	movq	%r15, 72(%rsp)
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%r13, 56(%rsp)
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movq	%rax, 64(%rsp)
	movzwl	120(%rsp), %eax
	movq	%xmm11, %rdx
	leaq	.LC30(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L225
.L325:
	movq	%rsi, %rdx
	leaq	.LC27(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L225
.L326:
	movq	%rdi, %rdx
	leaq	.LC27(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L225
.L319:
	movq	88(%rsp), %rax
	movq	%r15, 72(%rsp)
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movsd	%xmm10, 48(%rsp)
	movq	%rax, 64(%rsp)
	xorl	%eax, %eax
	movq	%xmm11, %rdx
	leaq	.LC36(%rip), %rcx
	movq	%rax, 56(%rsp)
	movzwl	120(%rsp), %eax
	movsd	%xmm12, 32(%rsp)
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L225
.L318:
	movq	88(%rsp), %rax
	movq	%r15, 72(%rsp)
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%r13, 56(%rsp)
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movq	%rax, 64(%rsp)
	movzwl	120(%rsp), %eax
	movq	%xmm11, %rdx
	leaq	.LC35(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
.LEHE6:
	jmp	.L225
.L274:
	movq	%rax, %rbx
	jmp	.L267
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8430:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8430-.LLSDACSB8430
.LLSDACSB8430:
	.uleb128 .LEHB4-.LFB8430
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L274-.LFB8430
	.uleb128 0
	.uleb128 .LEHB5-.LFB8430
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB8430
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L274-.LFB8430
	.uleb128 0
.LLSDACSE8430:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES7_.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES7_.cold
	.seh_stackalloc	344
	.seh_savereg	%rbx, 280
	.seh_savereg	%rsi, 288
	.seh_savereg	%rdi, 296
	.seh_savereg	%rbp, 304
	.seh_savexmm	%xmm6, 160
	.seh_savexmm	%xmm7, 176
	.seh_savereg	%r12, 312
	.seh_savereg	%r13, 320
	.seh_savereg	%r14, 328
	.seh_savereg	%r15, 336
	.seh_savexmm	%xmm8, 192
	.seh_savexmm	%xmm9, 208
	.seh_savexmm	%xmm10, 224
	.seh_savexmm	%xmm11, 240
	.seh_savexmm	%xmm12, 256
	.seh_endprologue
_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES7_.cold:
.L267:
	movq	152(%rsp), %rcx
	call	free
	movq	%rbx, %rcx
.LEHB7:
	call	_Unwind_Resume
	nop
.LEHE7:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8430:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8430-.LLSDACSBC8430
.LLSDACSBC8430:
	.uleb128 .LEHB7-.LCOLDB37
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSEC8430:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE37:
	.text
.LHOTE37:
	.section .rdata,"dr"
	.align 8
.LC38:
	.ascii "wze::engine.vector.RayCast(): InitialX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC39:
	.ascii "wze::engine.vector.RayCast(): InitialY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC40:
	.ascii "wze::engine.vector.RayCast(): TerminalX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC41:
	.ascii "wze::engine.vector.RayCast(): TerminalY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC42:
	.ascii "wze::engine.vector.RayCast(): SamplingStep must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC43:
	.ascii "wze::engine.vector.RayCast(): SamplingStep must not be less than or equal to 0\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC44:
	.ascii "wze::engine.vector.RayCast(): ActorIDBlacklist must not be NULL\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB45:
	.text
.LHOTB45:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES3_
	.def	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES3_
_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES3_:
.LFB8431:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$264, %rsp
	.seh_stackalloc	264
	movaps	%xmm6, 144(%rsp)
	.seh_savexmm	%xmm6, 144
	movaps	%xmm7, 160(%rsp)
	.seh_savexmm	%xmm7, 160
	movaps	%xmm8, 176(%rsp)
	.seh_savexmm	%xmm8, 176
	movaps	%xmm9, 192(%rsp)
	.seh_savexmm	%xmm9, 192
	movaps	%xmm10, 208(%rsp)
	.seh_savexmm	%xmm10, 208
	movaps	%xmm11, 224(%rsp)
	.seh_savexmm	%xmm11, 224
	movaps	%xmm12, 240(%rsp)
	.seh_savexmm	%xmm12, 240
	.seh_endprologue
	movl	376(%rsp), %edx
	movq	392(%rsp), %rax
	movsd	368(%rsp), %xmm12
	movsd	384(%rsp), %xmm10
	movq	(%rax), %rdi
	movq	8(%rax), %rax
	movl	%edx, 104(%rsp)
	movq	%rcx, %rbp
	movapd	%xmm1, %xmm11
	movapd	%xmm2, %xmm9
	movw	%dx, 110(%rsp)
	movq	(%rcx), %rdx
	movapd	%xmm3, %xmm8
	movq	%rax, 80(%rsp)
	movq	408(%rsp), %rax
	movzwl	272(%rdx), %esi
	movq	%rdi, 88(%rsp)
	movq	(%rax), %r15
	movq	8(%rax), %r14
	movq	%rsi, 128(%rsp)
	testq	%rsi, %rsi
	jne	.L328
	movq	$0, 136(%rsp)
	xorl	%ebx, %ebx
.L329:
	ucomisd	%xmm11, %xmm11
	jp	.L424
	ucomisd	%xmm9, %xmm9
	jp	.L425
	ucomisd	%xmm8, %xmm8
	jp	.L426
	ucomisd	%xmm12, %xmm12
	jp	.L427
	ucomisd	%xmm10, %xmm10
	jp	.L428
	pxor	%xmm0, %xmm0
	comisd	%xmm10, %xmm0
	jnb	.L429
	cmpq	$0, 400(%rsp)
	je	.L430
	ucomisd	%xmm8, %xmm11
	movl	$0, %r8d
	setnp	%cl
	cmovne	%r8d, %ecx
	ucomisd	%xmm12, %xmm9
	setnp	%al
	cmovne	%r8d, %eax
	andb	%al, %cl
	movb	%cl, 96(%rsp)
	jne	.L344
	movq	248(%rdx), %r8
	cmpq	$1, %r8
	jbe	.L378
	movl	$1, %ebx
	xorl	%edi, %edi
	jmp	.L366
	.p2align 4,,10
	.p2align 3
.L346:
	addq	$1, %rbx
	cmpq	%r8, %rbx
	jnb	.L431
.L366:
	movq	256(%rdx), %rax
	leaq	0(,%rbx,8), %r12
	movq	(%rax,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L346
	movq	208(%rcx), %r9
	xorl	%ecx, %ecx
	cmpq	$0, 80(%rsp)
	movq	88(%rsp), %r10
	je	.L346
	cmpq	(%r10,%rcx,8), %r9
	je	.L432
.L409:
	addq	$1, %rcx
	cmpq	%rcx, 80(%rsp)
	je	.L346
	cmpq	(%r10,%rcx,8), %r9
	jne	.L409
.L432:
	movq	400(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	(%rsi), %r9
	movq	8(%rsi), %r10
	testq	%r9, %r9
	je	.L350
.L377:
	cmpq	%rbx, (%r10,%rcx,8)
	je	.L346
	addq	$1, %rcx
	cmpq	%rcx, %r9
	jne	.L377
	.p2align 4,,10
	.p2align 3
.L350:
	cmpq	%r8, %rbx
	jnb	.L421
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L352:
	movq	(%rax,%r12), %rax
	cmpq	152(%rax), %rsi
	jnb	.L346
	movq	160(%rax), %rax
	leaq	0(,%rsi,8), %r13
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	jne	.L353
.L357:
	movq	256(%rdx), %rax
	addq	$1, %rsi
	cmpq	%r8, %rbx
	jb	.L352
.L421:
	movq	%rbx, %rdx
	leaq	.LC27(%rip), %rcx
.LEHB8:
	call	_Z6printfPKcz
.L334:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L353:
	movq	24(%rax), %rcx
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.L356
.L355:
	cmpq	(%r15,%rax,8), %rcx
	je	.L357
	addq	$1, %rax
	cmpq	%rax, %r14
	jne	.L355
.L356:
	cmpq	%rdi, 128(%rsp)
	je	.L433
.L359:
	movq	256(%rdx), %rax
	cmpq	%r8, %rbx
	jnb	.L421
	movq	(%rax,%r12), %rcx
	movq	160(%rcx), %r9
	cmpq	152(%rcx), %rsi
	jnb	.L423
	movq	(%r9,%r13), %r10
	leaq	1(%rdi), %rcx
	movq	136(%rsp), %r9
	cmpq	128(%rsp), %rdi
	jnb	.L434
	movq	%r10, (%r9,%rdi,8)
	addq	$1, %rsi
	movq	%rcx, %rdi
	jmp	.L352
	.p2align 4,,10
	.p2align 3
.L431:
	movq	136(%rsp), %rbx
.L345:
	subsd	%xmm11, %xmm8
	movapd	%xmm12, %xmm0
	movapd	%xmm11, %xmm7
	movzwl	104(%rsp), %eax
	subsd	%xmm9, %xmm0
	pxor	%xmm6, %xmm6
	shrw	%ax
	comisd	%xmm12, %xmm9
	movapd	%xmm8, %xmm11
	movzwl	%ax, %eax
	mulsd	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm6
	mulsd	%xmm8, %xmm11
	subsd	%xmm6, %xmm7
	addsd	%xmm9, %xmm6
	addsd	%xmm0, %xmm11
	movapd	%xmm8, %xmm0
	sqrtsd	%xmm11, %xmm11
	divsd	%xmm11, %xmm0
	ja	.L435
	call	acos
	movapd	%xmm0, %xmm8
.L369:
	pxor	%xmm0, %xmm0
	movzwl	110(%rsp), %r13d
	comisd	%xmm0, %xmm11
	jbe	.L413
.L372:
	testq	%rdi, %rdi
	je	.L375
	movq	128(%rsp), %r12
	xorl	%esi, %esi
	jmp	.L371
	.p2align 4,,10
	.p2align 3
.L436:
	addq	$1, %rsi
	cmpq	%rdi, %rsi
	je	.L375
.L371:
	movq	0(%rbp), %rax
	leaq	264(%rax), %rcx
	cmpq	%r12, %rsi
	je	.L423
	pxor	%xmm3, %xmm3
	movq	(%rbx,%rsi,8), %rax
	movapd	%xmm6, %xmm0
	movapd	%xmm6, %xmm2
	cvtsi2sdl	%r13d, %xmm3
	movapd	%xmm7, %xmm1
	movq	%rax, 40(%rsp)
	subsd	%xmm3, %xmm0
	addsd	%xmm7, %xmm3
	movsd	%xmm0, 32(%rsp)
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE
	testb	%al, %al
	je	.L436
.L344:
	movq	%rbx, %rcx
	call	free
	movzbl	96(%rsp), %eax
	movaps	144(%rsp), %xmm6
	movaps	160(%rsp), %xmm7
	movaps	176(%rsp), %xmm8
	movaps	192(%rsp), %xmm9
	movaps	208(%rsp), %xmm10
	movaps	224(%rsp), %xmm11
	movaps	240(%rsp), %xmm12
	addq	$264, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
	.p2align 3
.L433:
	movzwl	272(%rdx), %eax
	leaq	128(%rsp), %rcx
	movq	%rdi, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0
.LEHE8:
	movq	0(%rbp), %rdx
	movq	248(%rdx), %r8
	jmp	.L359
.L435:
	call	acos
	movsd	.LC28(%rip), %xmm8
	subsd	%xmm0, %xmm8
	jmp	.L369
	.p2align 4,,10
	.p2align 3
.L375:
	movapd	%xmm8, %xmm0
	leaq	120(%rsp), %rdx
	leaq	112(%rsp), %r8
	call	sincos
	movsd	112(%rsp), %xmm0
	subsd	%xmm10, %xmm11
	mulsd	%xmm10, %xmm0
	addsd	%xmm0, %xmm7
	movsd	120(%rsp), %xmm0
	mulsd	%xmm10, %xmm0
	addsd	%xmm0, %xmm6
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm11
	ja	.L372
.L413:
	movb	$1, 96(%rsp)
	jmp	.L344
.L328:
	leaq	0(,%rsi,8), %rcx
	movq	%rdx, 96(%rsp)
	call	malloc
	movq	96(%rsp), %rdx
	testq	%rax, %rax
	movq	%rax, 136(%rsp)
	movq	%rax, %rbx
	jne	.L329
	leaq	.LC19(%rip), %rcx
	movq	%rsi, %rdx
.LEHB9:
	call	_Z6printfPKcz
.LEHE9:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L378:
	xorl	%edi, %edi
	jmp	.L345
.L423:
	movq	%rsi, %rdx
	leaq	.LC27(%rip), %rcx
.LEHB10:
	call	_Z6printfPKcz
	jmp	.L334
.L434:
	movq	%rdi, %rdx
	leaq	.LC27(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L334
.L426:
	movq	%r14, 72(%rsp)
	movq	400(%rsp), %rax
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movsd	%xmm10, 48(%rsp)
	movq	%rax, 64(%rsp)
	movq	80(%rsp), %rax
	movq	%xmm11, %rdx
	leaq	.LC40(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 56(%rsp)
	movzwl	104(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L334
.L428:
	movq	%r14, 72(%rsp)
	movq	400(%rsp), %rax
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movsd	%xmm10, 48(%rsp)
	movq	%rax, 64(%rsp)
	movq	80(%rsp), %rax
	movq	%xmm11, %rdx
	leaq	.LC42(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 56(%rsp)
	movzwl	104(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L334
.L427:
	movq	%r14, 72(%rsp)
	movq	400(%rsp), %rax
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movsd	%xmm10, 48(%rsp)
	movq	%rax, 64(%rsp)
	movq	80(%rsp), %rax
	movq	%xmm11, %rdx
	leaq	.LC41(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 56(%rsp)
	movzwl	104(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L334
.L425:
	movq	%r14, 72(%rsp)
	movq	400(%rsp), %rax
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movsd	%xmm10, 48(%rsp)
	movq	%rax, 64(%rsp)
	movq	80(%rsp), %rax
	movq	%xmm11, %rdx
	leaq	.LC39(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 56(%rsp)
	movzwl	104(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L334
.L424:
	movq	%r14, 72(%rsp)
	movq	400(%rsp), %rax
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movsd	%xmm10, 48(%rsp)
	movq	%rax, 64(%rsp)
	movq	80(%rsp), %rax
	movq	%xmm11, %rdx
	leaq	.LC38(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 56(%rsp)
	movzwl	104(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L334
.L430:
	xorl	%eax, %eax
	movq	%r14, 72(%rsp)
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%rax, 64(%rsp)
	movq	80(%rsp), %rax
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movsd	%xmm10, 48(%rsp)
	movapd	%xmm11, %xmm1
	movq	%xmm11, %rdx
	leaq	.LC44(%rip), %rcx
	movq	%rax, 56(%rsp)
	movzwl	104(%rsp), %eax
	movsd	%xmm12, 32(%rsp)
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L334
.L429:
	movq	%r14, 72(%rsp)
	movq	400(%rsp), %rax
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movsd	%xmm10, 48(%rsp)
	movq	%rax, 64(%rsp)
	movq	80(%rsp), %rax
	movq	%xmm11, %rdx
	leaq	.LC43(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 56(%rsp)
	movzwl	104(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
.LEHE10:
	jmp	.L334
.L383:
	movq	%rax, %rbx
	jmp	.L376
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8431:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8431-.LLSDACSB8431
.LLSDACSB8431:
	.uleb128 .LEHB8-.LFB8431
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L383-.LFB8431
	.uleb128 0
	.uleb128 .LEHB9-.LFB8431
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB8431
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L383-.LFB8431
	.uleb128 0
.LLSDACSE8431:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES3_.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES3_.cold
	.seh_stackalloc	328
	.seh_savereg	%rbx, 264
	.seh_savereg	%rsi, 272
	.seh_savereg	%rdi, 280
	.seh_savereg	%rbp, 288
	.seh_savexmm	%xmm6, 144
	.seh_savexmm	%xmm7, 160
	.seh_savereg	%r12, 296
	.seh_savereg	%r13, 304
	.seh_savereg	%r14, 312
	.seh_savereg	%r15, 320
	.seh_savexmm	%xmm8, 176
	.seh_savexmm	%xmm9, 192
	.seh_savexmm	%xmm10, 208
	.seh_savexmm	%xmm11, 224
	.seh_savexmm	%xmm12, 240
	.seh_endprologue
_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES3_.cold:
.L376:
	movq	136(%rsp), %rcx
	call	free
	movq	%rbx, %rcx
.LEHB11:
	call	_Unwind_Resume
	nop
.LEHE11:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8431:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8431-.LLSDACSBC8431
.LLSDACSBC8431:
	.uleb128 .LEHB11-.LCOLDB45
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSEC8431:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE45:
	.text
.LHOTE45:
	.section .rdata,"dr"
	.align 8
.LC46:
	.ascii "wze::engine.vector.RayCast(): InitialX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC47:
	.ascii "wze::engine.vector.RayCast(): InitialY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC48:
	.ascii "wze::engine.vector.RayCast(): TerminalX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC49:
	.ascii "wze::engine.vector.RayCast(): TerminalY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC50:
	.ascii "wze::engine.vector.RayCast(): SamplingStep must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC51:
	.ascii "wze::engine.vector.RayCast(): SamplingStep must not be less than or equal to 0\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC52:
	.ascii "wze::engine.vector.RayCast(): OverlapboxTypeBlacklist must not be NULL\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB53:
	.text
.LHOTB53:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_PN3neo5arrayIyEE
	.def	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_PN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_PN3neo5arrayIyEE
_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_PN3neo5arrayIyEE:
.LFB8432:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$280, %rsp
	.seh_stackalloc	280
	movaps	%xmm6, 160(%rsp)
	.seh_savexmm	%xmm6, 160
	movaps	%xmm7, 176(%rsp)
	.seh_savexmm	%xmm7, 176
	movaps	%xmm8, 192(%rsp)
	.seh_savexmm	%xmm8, 192
	movaps	%xmm9, 208(%rsp)
	.seh_savexmm	%xmm9, 208
	movaps	%xmm10, 224(%rsp)
	.seh_savexmm	%xmm10, 224
	movaps	%xmm11, 240(%rsp)
	.seh_savexmm	%xmm11, 240
	movaps	%xmm12, 256(%rsp)
	.seh_savexmm	%xmm12, 256
	.seh_endprologue
	movq	408(%rsp), %rax
	movq	(%rcx), %r8
	movl	392(%rsp), %esi
	movsd	384(%rsp), %xmm12
	movq	(%rax), %r14
	movq	8(%rax), %r13
	movq	416(%rsp), %rax
	movsd	400(%rsp), %xmm10
	movl	%esi, 112(%rsp)
	movq	%rcx, %rbp
	movapd	%xmm1, %xmm11
	movapd	%xmm2, %xmm9
	movq	(%rax), %rbx
	movw	%si, 118(%rsp)
	movapd	%xmm3, %xmm8
	movq	8(%rax), %rax
	movzwl	272(%r8), %esi
	movq	%rbx, 104(%rsp)
	movq	%rax, 88(%rsp)
	movq	%rsi, 144(%rsp)
	testq	%rsi, %rsi
	jne	.L438
	movq	$0, 152(%rsp)
	xorl	%ebx, %ebx
.L439:
	ucomisd	%xmm11, %xmm11
	jp	.L534
	ucomisd	%xmm9, %xmm9
	jp	.L535
	ucomisd	%xmm8, %xmm8
	jp	.L536
	ucomisd	%xmm12, %xmm12
	jp	.L537
	ucomisd	%xmm10, %xmm10
	jp	.L538
	pxor	%xmm0, %xmm0
	comisd	%xmm10, %xmm0
	jnb	.L539
	cmpq	$0, 424(%rsp)
	je	.L540
	ucomisd	%xmm8, %xmm11
	movl	$0, %ecx
	setnp	%dl
	cmovne	%ecx, %edx
	ucomisd	%xmm12, %xmm9
	setnp	%al
	cmovne	%ecx, %eax
	andb	%al, %dl
	movb	%dl, 96(%rsp)
	jne	.L454
	movq	248(%r8), %rcx
	cmpq	$1, %rcx
	jbe	.L488
	movl	$1, %ebx
	xorl	%esi, %esi
	jmp	.L476
	.p2align 4,,10
	.p2align 3
.L456:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jnb	.L541
.L476:
	movq	256(%r8), %rax
	leaq	0(,%rbx,8), %r12
	movq	(%rax,%rbx,8), %rdx
	testq	%rdx, %rdx
	je	.L456
	movq	208(%rdx), %r9
	xorl	%edx, %edx
	testq	%r13, %r13
	je	.L456
	cmpq	(%r14,%rdx,8), %r9
	je	.L542
.L519:
	addq	$1, %rdx
	cmpq	%rdx, %r13
	je	.L456
	cmpq	(%r14,%rdx,8), %r9
	jne	.L519
.L542:
	xorl	%edx, %edx
	cmpq	$0, 88(%rsp)
	movq	104(%rsp), %r9
	je	.L460
.L487:
	cmpq	%rbx, (%r9,%rdx,8)
	je	.L456
	addq	$1, %rdx
	cmpq	%rdx, 88(%rsp)
	jne	.L487
.L460:
	cmpq	%rcx, %rbx
	jnb	.L531
	leaq	144(%rsp), %rdx
	movl	$1, %edi
	movq	%rdx, 120(%rsp)
	.p2align 4,,10
	.p2align 3
.L462:
	movq	(%rax,%r12), %rax
	cmpq	152(%rax), %rdi
	jnb	.L456
	movq	160(%rax), %rax
	leaq	0(,%rdi,8), %r15
	movq	(%rax,%rdi,8), %rax
	testq	%rax, %rax
	je	.L467
	movq	24(%rax), %r9
	movq	424(%rsp), %rax
	movq	(%rax), %rdx
	movq	8(%rax), %r10
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.L465
.L466:
	cmpq	(%r10,%rax,8), %r9
	je	.L467
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L466
	.p2align 4,,10
	.p2align 3
.L465:
	cmpq	%rsi, 144(%rsp)
	je	.L543
.L469:
	movq	256(%r8), %rax
	cmpq	%rcx, %rbx
	jnb	.L531
	movq	(%rax,%r12), %rdx
	movq	160(%rdx), %r9
	cmpq	152(%rdx), %rdi
	jnb	.L533
	movq	(%r9,%r15), %r10
	leaq	1(%rsi), %rdx
	movq	152(%rsp), %r9
	cmpq	144(%rsp), %rsi
	jnb	.L544
	movq	%r10, (%r9,%rsi,8)
	addq	$1, %rdi
	movq	%rdx, %rsi
	jmp	.L462
	.p2align 4,,10
	.p2align 3
.L541:
	movq	152(%rsp), %rbx
.L455:
	subsd	%xmm11, %xmm8
	movapd	%xmm12, %xmm0
	movapd	%xmm11, %xmm7
	movzwl	112(%rsp), %eax
	subsd	%xmm9, %xmm0
	pxor	%xmm6, %xmm6
	shrw	%ax
	comisd	%xmm12, %xmm9
	movapd	%xmm8, %xmm11
	movzwl	%ax, %eax
	mulsd	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm6
	mulsd	%xmm8, %xmm11
	subsd	%xmm6, %xmm7
	addsd	%xmm9, %xmm6
	addsd	%xmm0, %xmm11
	movapd	%xmm8, %xmm0
	sqrtsd	%xmm11, %xmm11
	divsd	%xmm11, %xmm0
	ja	.L545
	call	acos
	movapd	%xmm0, %xmm8
.L479:
	pxor	%xmm0, %xmm0
	movzwl	118(%rsp), %r13d
	comisd	%xmm0, %xmm11
	jbe	.L523
.L482:
	testq	%rsi, %rsi
	je	.L485
	movq	144(%rsp), %r12
	xorl	%edi, %edi
	jmp	.L481
	.p2align 4,,10
	.p2align 3
.L546:
	addq	$1, %rdi
	cmpq	%rsi, %rdi
	je	.L485
.L481:
	movq	0(%rbp), %rax
	leaq	264(%rax), %rcx
	cmpq	%r12, %rdi
	je	.L533
	pxor	%xmm3, %xmm3
	movq	(%rbx,%rdi,8), %rax
	movapd	%xmm6, %xmm0
	movapd	%xmm6, %xmm2
	cvtsi2sdl	%r13d, %xmm3
	movapd	%xmm7, %xmm1
	movq	%rax, 40(%rsp)
	subsd	%xmm3, %xmm0
	addsd	%xmm7, %xmm3
	movsd	%xmm0, 32(%rsp)
.LEHB12:
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE
	testb	%al, %al
	je	.L546
.L454:
	movq	%rbx, %rcx
	call	free
	movzbl	96(%rsp), %eax
	movaps	160(%rsp), %xmm6
	movaps	176(%rsp), %xmm7
	movaps	192(%rsp), %xmm8
	movaps	208(%rsp), %xmm9
	movaps	224(%rsp), %xmm10
	movaps	240(%rsp), %xmm11
	movaps	256(%rsp), %xmm12
	addq	$280, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L545:
	call	acos
	movsd	.LC28(%rip), %xmm8
	subsd	%xmm0, %xmm8
	jmp	.L479
	.p2align 4,,10
	.p2align 3
.L467:
	movq	256(%r8), %rax
	addq	$1, %rdi
	cmpq	%rcx, %rbx
	jb	.L462
.L531:
	movq	%rbx, %rdx
	leaq	.LC27(%rip), %rcx
	call	_Z6printfPKcz
.L444:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L485:
	movapd	%xmm8, %xmm0
	leaq	136(%rsp), %rdx
	leaq	128(%rsp), %r8
	call	sincos
	subsd	%xmm10, %xmm11
	movsd	128(%rsp), %xmm0
	mulsd	%xmm10, %xmm0
	addsd	%xmm0, %xmm7
	movsd	136(%rsp), %xmm0
	mulsd	%xmm10, %xmm0
	addsd	%xmm0, %xmm6
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm11
	ja	.L482
.L523:
	movb	$1, 96(%rsp)
	jmp	.L454
	.p2align 4,,10
	.p2align 3
.L543:
	movzwl	272(%r8), %eax
	movq	120(%rsp), %rcx
	movq	%rsi, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0
.LEHE12:
	movq	0(%rbp), %r8
	movq	248(%r8), %rcx
	jmp	.L469
.L438:
	leaq	0(,%rsi,8), %rcx
	movq	%r8, 96(%rsp)
	call	malloc
	movq	96(%rsp), %r8
	testq	%rax, %rax
	movq	%rax, 152(%rsp)
	movq	%rax, %rbx
	jne	.L439
	leaq	.LC19(%rip), %rcx
	movq	%rsi, %rdx
.LEHB13:
	call	_Z6printfPKcz
.LEHE13:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L488:
	xorl	%esi, %esi
	jmp	.L455
.L533:
	movq	%rdi, %rdx
	leaq	.LC27(%rip), %rcx
.LEHB14:
	call	_Z6printfPKcz
	jmp	.L444
.L534:
	movq	%r13, 56(%rsp)
	movq	424(%rsp), %rax
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movsd	%xmm10, 48(%rsp)
	movq	%rax, 72(%rsp)
	movq	88(%rsp), %rax
	movq	%xmm11, %rdx
	leaq	.LC46(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 64(%rsp)
	movzwl	112(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L444
.L536:
	movq	%r13, 56(%rsp)
	movq	424(%rsp), %rax
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movsd	%xmm10, 48(%rsp)
	movq	%rax, 72(%rsp)
	movq	88(%rsp), %rax
	movq	%xmm11, %rdx
	leaq	.LC48(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 64(%rsp)
	movzwl	112(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L444
.L544:
	movq	%rsi, %rdx
	leaq	.LC27(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L444
.L539:
	movq	%r13, 56(%rsp)
	movq	424(%rsp), %rax
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movsd	%xmm10, 48(%rsp)
	movq	%rax, 72(%rsp)
	movq	88(%rsp), %rax
	movq	%xmm11, %rdx
	leaq	.LC51(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 64(%rsp)
	movzwl	112(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L444
.L538:
	movq	%r13, 56(%rsp)
	movq	424(%rsp), %rax
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movsd	%xmm10, 48(%rsp)
	movq	%rax, 72(%rsp)
	movq	88(%rsp), %rax
	movq	%xmm11, %rdx
	leaq	.LC50(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 64(%rsp)
	movzwl	112(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L444
.L537:
	movq	%r13, 56(%rsp)
	movq	424(%rsp), %rax
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movsd	%xmm10, 48(%rsp)
	movq	%rax, 72(%rsp)
	movq	88(%rsp), %rax
	movq	%xmm11, %rdx
	leaq	.LC49(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 64(%rsp)
	movzwl	112(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L444
.L535:
	movq	%r13, 56(%rsp)
	movq	424(%rsp), %rax
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movsd	%xmm10, 48(%rsp)
	movq	%rax, 72(%rsp)
	movq	88(%rsp), %rax
	movq	%xmm11, %rdx
	leaq	.LC47(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 64(%rsp)
	movzwl	112(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L444
.L540:
	xorl	%eax, %eax
	movq	%r13, 56(%rsp)
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%rax, 72(%rsp)
	movq	88(%rsp), %rax
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movsd	%xmm10, 48(%rsp)
	movapd	%xmm11, %xmm1
	movq	%xmm11, %rdx
	leaq	.LC52(%rip), %rcx
	movq	%rax, 64(%rsp)
	movzwl	112(%rsp), %eax
	movsd	%xmm12, 32(%rsp)
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
.LEHE14:
	jmp	.L444
.L493:
	movq	%rax, %rbx
	jmp	.L486
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8432:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8432-.LLSDACSB8432
.LLSDACSB8432:
	.uleb128 .LEHB12-.LFB8432
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L493-.LFB8432
	.uleb128 0
	.uleb128 .LEHB13-.LFB8432
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB8432
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L493-.LFB8432
	.uleb128 0
.LLSDACSE8432:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_PN3neo5arrayIyEE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_PN3neo5arrayIyEE.cold
	.seh_stackalloc	344
	.seh_savereg	%rbx, 280
	.seh_savereg	%rsi, 288
	.seh_savereg	%rdi, 296
	.seh_savereg	%rbp, 304
	.seh_savexmm	%xmm6, 160
	.seh_savexmm	%xmm7, 176
	.seh_savereg	%r12, 312
	.seh_savereg	%r13, 320
	.seh_savereg	%r14, 328
	.seh_savereg	%r15, 336
	.seh_savexmm	%xmm8, 192
	.seh_savexmm	%xmm9, 208
	.seh_savexmm	%xmm10, 224
	.seh_savexmm	%xmm11, 240
	.seh_savexmm	%xmm12, 256
	.seh_endprologue
_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_PN3neo5arrayIyEE.cold:
.L486:
	movq	152(%rsp), %rcx
	call	free
	movq	%rbx, %rcx
.LEHB15:
	call	_Unwind_Resume
	nop
.LEHE15:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8432:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8432-.LLSDACSBC8432
.LLSDACSBC8432:
	.uleb128 .LEHB15-.LCOLDB53
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSEC8432:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE53:
	.text
.LHOTE53:
	.section .rdata,"dr"
	.align 8
.LC54:
	.ascii "wze::engine.vector.RayCast(): InitialX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC55:
	.ascii "wze::engine.vector.RayCast(): InitialY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC56:
	.ascii "wze::engine.vector.RayCast(): TerminalX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC57:
	.ascii "wze::engine.vector.RayCast(): TerminalY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC58:
	.ascii "wze::engine.vector.RayCast(): SamplingStep must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC59:
	.ascii "wze::engine.vector.RayCast(): SamplingStep must not be less than or equal to 0\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC60:
	.ascii "wze::engine.vector.RayCast(): ActorTypeWhitelist must not be NULL\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC61:
	.ascii "wze::engine.vector.RayCast(): ActorIDBlacklist must not be NULL\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB62:
	.text
.LHOTB62:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_St16initializer_listIyE
	.def	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_St16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_St16initializer_listIyE
_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_St16initializer_listIyE:
.LFB8433:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$264, %rsp
	.seh_stackalloc	264
	movaps	%xmm6, 144(%rsp)
	.seh_savexmm	%xmm6, 144
	movaps	%xmm7, 160(%rsp)
	.seh_savexmm	%xmm7, 160
	movaps	%xmm8, 176(%rsp)
	.seh_savexmm	%xmm8, 176
	movaps	%xmm9, 192(%rsp)
	.seh_savexmm	%xmm9, 192
	movaps	%xmm10, 208(%rsp)
	.seh_savexmm	%xmm10, 208
	movaps	%xmm11, 224(%rsp)
	.seh_savexmm	%xmm11, 224
	movaps	%xmm12, 240(%rsp)
	.seh_savexmm	%xmm12, 240
	.seh_endprologue
	movl	376(%rsp), %edx
	movq	408(%rsp), %rax
	movsd	368(%rsp), %xmm12
	movsd	384(%rsp), %xmm10
	movq	(%rax), %r15
	movq	8(%rax), %r14
	movl	%edx, 96(%rsp)
	movq	%rcx, %r12
	movapd	%xmm1, %xmm11
	movapd	%xmm2, %xmm9
	movw	%dx, 102(%rsp)
	movq	(%rcx), %rdx
	movapd	%xmm3, %xmm8
	movzwl	272(%rdx), %esi
	movq	%rsi, 128(%rsp)
	testq	%rsi, %rsi
	jne	.L548
	movq	$0, 136(%rsp)
	xorl	%ebx, %ebx
.L549:
	ucomisd	%xmm11, %xmm11
	jp	.L645
	ucomisd	%xmm9, %xmm9
	jp	.L646
	ucomisd	%xmm8, %xmm8
	jp	.L647
	ucomisd	%xmm12, %xmm12
	jp	.L648
	ucomisd	%xmm10, %xmm10
	jp	.L649
	pxor	%xmm0, %xmm0
	comisd	%xmm10, %xmm0
	jnb	.L650
	cmpq	$0, 392(%rsp)
	je	.L651
	cmpq	$0, 400(%rsp)
	je	.L652
	ucomisd	%xmm8, %xmm11
	movl	$0, %r8d
	setnp	%cl
	cmovne	%r8d, %ecx
	ucomisd	%xmm12, %xmm9
	setnp	%al
	cmovne	%r8d, %eax
	andb	%al, %cl
	movb	%cl, 88(%rsp)
	jne	.L565
	movq	248(%rdx), %rcx
	cmpq	$1, %rcx
	jbe	.L599
	leaq	128(%rsp), %rax
	movl	$1, %esi
	xorl	%edi, %edi
	movq	%rax, 104(%rsp)
	.p2align 4,,10
	.p2align 3
.L587:
	movq	256(%rdx), %rax
	leaq	0(,%rsi,8), %rbp
	movq	(%rax,%rsi,8), %r8
	testq	%r8, %r8
	je	.L567
	movq	392(%rsp), %rbx
	movq	208(%r8), %r10
	xorl	%r8d, %r8d
	movq	(%rbx), %r9
	movq	8(%rbx), %r11
	testq	%r9, %r9
	je	.L567
.L568:
	cmpq	(%r11,%r8,8), %r10
	je	.L653
	addq	$1, %r8
	cmpq	%r8, %r9
	jne	.L568
	.p2align 4,,10
	.p2align 3
.L567:
	addq	$1, %rsi
	cmpq	%rcx, %rsi
	jb	.L587
	movq	136(%rsp), %rbx
.L566:
	subsd	%xmm11, %xmm8
	movapd	%xmm12, %xmm0
	movapd	%xmm11, %xmm7
	movzwl	96(%rsp), %eax
	subsd	%xmm9, %xmm0
	pxor	%xmm6, %xmm6
	shrw	%ax
	comisd	%xmm12, %xmm9
	movapd	%xmm8, %xmm11
	movzwl	%ax, %eax
	mulsd	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm6
	mulsd	%xmm8, %xmm11
	subsd	%xmm6, %xmm7
	addsd	%xmm9, %xmm6
	addsd	%xmm0, %xmm11
	movapd	%xmm8, %xmm0
	sqrtsd	%xmm11, %xmm11
	divsd	%xmm11, %xmm0
	ja	.L654
	call	acos
	movapd	%xmm0, %xmm8
.L590:
	pxor	%xmm0, %xmm0
	movzwl	102(%rsp), %r13d
	comisd	%xmm0, %xmm11
	jbe	.L635
.L593:
	testq	%rdi, %rdi
	je	.L596
	movq	128(%rsp), %rbp
	xorl	%esi, %esi
	jmp	.L592
	.p2align 4,,10
	.p2align 3
.L655:
	addq	$1, %rsi
	cmpq	%rdi, %rsi
	je	.L596
.L592:
	movq	(%r12), %rax
	leaq	264(%rax), %rcx
	cmpq	%rbp, %rsi
	je	.L644
	pxor	%xmm3, %xmm3
	movq	(%rbx,%rsi,8), %rax
	movapd	%xmm6, %xmm0
	movapd	%xmm6, %xmm2
	cvtsi2sdl	%r13d, %xmm3
	movapd	%xmm7, %xmm1
	movq	%rax, 40(%rsp)
	subsd	%xmm3, %xmm0
	addsd	%xmm7, %xmm3
	movsd	%xmm0, 32(%rsp)
.LEHB16:
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE
	testb	%al, %al
	je	.L655
.L565:
	movq	%rbx, %rcx
	call	free
	movzbl	88(%rsp), %eax
	movaps	144(%rsp), %xmm6
	movaps	160(%rsp), %xmm7
	movaps	176(%rsp), %xmm8
	movaps	192(%rsp), %xmm9
	movaps	208(%rsp), %xmm10
	movaps	224(%rsp), %xmm11
	movaps	240(%rsp), %xmm12
	addq	$264, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L653:
	movq	400(%rsp), %rbx
	xorl	%r8d, %r8d
	movq	(%rbx), %r9
	movq	8(%rbx), %r10
	testq	%r9, %r9
	je	.L571
.L598:
	cmpq	%rsi, (%r10,%r8,8)
	je	.L567
	addq	$1, %r8
	cmpq	%r8, %r9
	jne	.L598
	.p2align 4,,10
	.p2align 3
.L571:
	cmpq	%rcx, %rsi
	jnb	.L644
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L573:
	movq	(%rax,%rbp), %rax
	cmpq	152(%rax), %rbx
	jnb	.L567
	movq	160(%rax), %rax
	leaq	0(,%rbx,8), %r13
	movq	(%rax,%rbx,8), %rax
	testq	%rax, %rax
	jne	.L574
.L578:
	movq	256(%rdx), %rax
	addq	$1, %rbx
	cmpq	%rcx, %rsi
	jb	.L573
.L644:
	movq	%rsi, %rdx
	leaq	.LC27(%rip), %rcx
	call	_Z6printfPKcz
.L554:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L574:
	movq	24(%rax), %r8
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.L577
.L576:
	cmpq	(%r15,%rax,8), %r8
	je	.L578
	addq	$1, %rax
	cmpq	%rax, %r14
	jne	.L576
.L577:
	cmpq	128(%rsp), %rdi
	je	.L656
.L580:
	movq	256(%rdx), %rax
	cmpq	%rcx, %rsi
	jnb	.L644
	movq	(%rax,%rbp), %r8
	movq	160(%r8), %r9
	cmpq	152(%r8), %rbx
	jnb	.L657
	movq	(%r9,%r13), %r10
	leaq	1(%rdi), %r8
	movq	136(%rsp), %r9
	cmpq	128(%rsp), %rdi
	jnb	.L658
	movq	%r10, (%r9,%rdi,8)
	addq	$1, %rbx
	movq	%r8, %rdi
	jmp	.L573
	.p2align 4,,10
	.p2align 3
.L656:
	movzwl	272(%rdx), %eax
	movq	104(%rsp), %rcx
	movq	%rdi, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0
.LEHE16:
	movq	(%r12), %rdx
	movq	248(%rdx), %rcx
	jmp	.L580
.L654:
	call	acos
	movsd	.LC28(%rip), %xmm8
	subsd	%xmm0, %xmm8
	jmp	.L590
.L596:
	movapd	%xmm8, %xmm0
	leaq	120(%rsp), %rdx
	leaq	112(%rsp), %r8
	call	sincos
	movsd	112(%rsp), %xmm0
	subsd	%xmm10, %xmm11
	mulsd	%xmm10, %xmm0
	addsd	%xmm0, %xmm7
	movsd	120(%rsp), %xmm0
	mulsd	%xmm10, %xmm0
	addsd	%xmm0, %xmm6
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm11
	ja	.L593
.L635:
	movb	$1, 88(%rsp)
	jmp	.L565
.L548:
	leaq	0(,%rsi,8), %rcx
	movq	%rdx, 88(%rsp)
	call	malloc
	movq	88(%rsp), %rdx
	testq	%rax, %rax
	movq	%rax, 136(%rsp)
	movq	%rax, %rbx
	jne	.L549
	leaq	.LC19(%rip), %rcx
	movq	%rsi, %rdx
.LEHB17:
	call	_Z6printfPKcz
.LEHE17:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L599:
	xorl	%edi, %edi
	jmp	.L566
.L658:
	movq	%rdi, %rdx
	leaq	.LC27(%rip), %rcx
.LEHB18:
	call	_Z6printfPKcz
	jmp	.L554
.L651:
	movq	400(%rsp), %rax
	xorl	%edx, %edx
	movq	%r14, 72(%rsp)
	movapd	%xmm8, %xmm3
	movq	%rdx, 56(%rsp)
	movq	%xmm8, %r9
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movq	%rax, 64(%rsp)
	movzwl	96(%rsp), %eax
	movapd	%xmm11, %xmm1
	movq	%xmm11, %rdx
	movsd	%xmm10, 48(%rsp)
	leaq	.LC60(%rip), %rcx
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L554
.L650:
	movq	%r14, 72(%rsp)
	movq	400(%rsp), %rax
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movsd	%xmm10, 48(%rsp)
	movq	%rax, 64(%rsp)
	movq	392(%rsp), %rax
	movq	%xmm11, %rdx
	leaq	.LC59(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 56(%rsp)
	movzwl	96(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L554
.L649:
	movq	%r14, 72(%rsp)
	movq	400(%rsp), %rax
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movsd	%xmm10, 48(%rsp)
	movq	%rax, 64(%rsp)
	movq	392(%rsp), %rax
	movq	%xmm11, %rdx
	leaq	.LC58(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 56(%rsp)
	movzwl	96(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L554
.L646:
	movq	%r14, 72(%rsp)
	movq	400(%rsp), %rax
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movsd	%xmm10, 48(%rsp)
	movq	%rax, 64(%rsp)
	movq	392(%rsp), %rax
	movq	%xmm11, %rdx
	leaq	.LC55(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 56(%rsp)
	movzwl	96(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L554
.L652:
	xorl	%eax, %eax
	movq	%r14, 72(%rsp)
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%rax, 64(%rsp)
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movq	392(%rsp), %rax
	movsd	%xmm10, 48(%rsp)
	movapd	%xmm11, %xmm1
	movq	%xmm11, %rdx
	leaq	.LC61(%rip), %rcx
	movq	%rax, 56(%rsp)
	movzwl	96(%rsp), %eax
	movsd	%xmm12, 32(%rsp)
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L554
.L648:
	movq	%r14, 72(%rsp)
	movq	400(%rsp), %rax
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movsd	%xmm10, 48(%rsp)
	movq	%rax, 64(%rsp)
	movq	392(%rsp), %rax
	movq	%xmm11, %rdx
	leaq	.LC57(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 56(%rsp)
	movzwl	96(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L554
.L657:
	movq	%rbx, %rdx
	leaq	.LC27(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L554
.L645:
	movq	%r14, 72(%rsp)
	movq	400(%rsp), %rax
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movsd	%xmm10, 48(%rsp)
	movq	%rax, 64(%rsp)
	movq	392(%rsp), %rax
	movq	%xmm11, %rdx
	leaq	.LC54(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 56(%rsp)
	movzwl	96(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L554
.L647:
	movq	%r14, 72(%rsp)
	movq	400(%rsp), %rax
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movsd	%xmm10, 48(%rsp)
	movq	%rax, 64(%rsp)
	movq	392(%rsp), %rax
	movq	%xmm11, %rdx
	leaq	.LC56(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 56(%rsp)
	movzwl	96(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
.LEHE18:
	jmp	.L554
.L603:
	movq	%rax, %rbx
	jmp	.L597
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8433:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8433-.LLSDACSB8433
.LLSDACSB8433:
	.uleb128 .LEHB16-.LFB8433
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L603-.LFB8433
	.uleb128 0
	.uleb128 .LEHB17-.LFB8433
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB18-.LFB8433
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L603-.LFB8433
	.uleb128 0
.LLSDACSE8433:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_St16initializer_listIyE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_St16initializer_listIyE.cold
	.seh_stackalloc	328
	.seh_savereg	%rbx, 264
	.seh_savereg	%rsi, 272
	.seh_savereg	%rdi, 280
	.seh_savereg	%rbp, 288
	.seh_savexmm	%xmm6, 144
	.seh_savexmm	%xmm7, 160
	.seh_savereg	%r12, 296
	.seh_savereg	%r13, 304
	.seh_savereg	%r14, 312
	.seh_savereg	%r15, 320
	.seh_savexmm	%xmm8, 176
	.seh_savexmm	%xmm9, 192
	.seh_savexmm	%xmm10, 208
	.seh_savexmm	%xmm11, 224
	.seh_savexmm	%xmm12, 240
	.seh_endprologue
_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_St16initializer_listIyE.cold:
.L597:
	movq	136(%rsp), %rcx
	call	free
	movq	%rbx, %rcx
.LEHB19:
	call	_Unwind_Resume
	nop
.LEHE19:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8433:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8433-.LLSDACSBC8433
.LLSDACSBC8433:
	.uleb128 .LEHB19-.LCOLDB62
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSEC8433:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE62:
	.text
.LHOTE62:
	.section .rdata,"dr"
	.align 8
.LC63:
	.ascii "wze::engine.vector.RayCast(): InitialX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC64:
	.ascii "wze::engine.vector.RayCast(): InitialY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC65:
	.ascii "wze::engine.vector.RayCast(): TerminalX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC66:
	.ascii "wze::engine.vector.RayCast(): TerminalY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC67:
	.ascii "wze::engine.vector.RayCast(): SamplingStep must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC68:
	.ascii "wze::engine.vector.RayCast(): SamplingStep must not be less than or equal to 0\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC69:
	.ascii "wze::engine.vector.RayCast(): ActorTypeWhitelist must not be NULL\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC70:
	.ascii "wze::engine.vector.RayCast(): OverlapboxTypeBlacklist must not be NULL\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB71:
	.text
.LHOTB71:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES5_
	.def	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES5_
_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES5_:
.LFB8434:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$280, %rsp
	.seh_stackalloc	280
	movaps	%xmm6, 160(%rsp)
	.seh_savexmm	%xmm6, 160
	movaps	%xmm7, 176(%rsp)
	.seh_savexmm	%xmm7, 176
	movaps	%xmm8, 192(%rsp)
	.seh_savexmm	%xmm8, 192
	movaps	%xmm9, 208(%rsp)
	.seh_savexmm	%xmm9, 208
	movaps	%xmm10, 224(%rsp)
	.seh_savexmm	%xmm10, 224
	movaps	%xmm11, 240(%rsp)
	.seh_savexmm	%xmm11, 240
	movaps	%xmm12, 256(%rsp)
	.seh_savexmm	%xmm12, 256
	.seh_endprologue
	movl	392(%rsp), %edx
	movq	416(%rsp), %rax
	movq	408(%rsp), %r14
	movq	424(%rsp), %r13
	movsd	384(%rsp), %xmm12
	movq	(%rax), %rdi
	movsd	400(%rsp), %xmm10
	movq	8(%rax), %rax
	movl	%edx, 112(%rsp)
	movq	%rcx, %rbp
	movapd	%xmm1, %xmm11
	movapd	%xmm2, %xmm9
	movw	%dx, 118(%rsp)
	movq	(%rcx), %rdx
	movapd	%xmm3, %xmm8
	movq	%rdi, 96(%rsp)
	movzwl	272(%rdx), %esi
	movq	%rax, 88(%rsp)
	movq	%rsi, 144(%rsp)
	testq	%rsi, %rsi
	jne	.L660
	movq	$0, 152(%rsp)
	xorl	%ebx, %ebx
.L661:
	ucomisd	%xmm11, %xmm11
	jp	.L757
	ucomisd	%xmm9, %xmm9
	jp	.L758
	ucomisd	%xmm8, %xmm8
	jp	.L759
	ucomisd	%xmm12, %xmm12
	jp	.L760
	ucomisd	%xmm10, %xmm10
	jp	.L761
	pxor	%xmm0, %xmm0
	comisd	%xmm10, %xmm0
	jnb	.L762
	testq	%r14, %r14
	je	.L763
	testq	%r13, %r13
	je	.L764
	ucomisd	%xmm8, %xmm11
	movl	$0, %r8d
	setnp	%cl
	cmovne	%r8d, %ecx
	ucomisd	%xmm12, %xmm9
	setnp	%al
	cmovne	%r8d, %eax
	andb	%al, %cl
	movb	%cl, 104(%rsp)
	jne	.L677
	movq	248(%rdx), %r8
	cmpq	$1, %r8
	jbe	.L711
	leaq	144(%rsp), %rax
	movl	$1, %ebx
	xorl	%edi, %edi
	movq	%rax, 120(%rsp)
	.p2align 4,,10
	.p2align 3
.L699:
	movq	256(%rdx), %rax
	leaq	0(,%rbx,8), %r12
	movq	(%rax,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L679
	movq	(%r14), %r9
	movq	208(%rcx), %r10
	xorl	%ecx, %ecx
	movq	8(%r14), %r11
	testq	%r9, %r9
	je	.L679
.L680:
	cmpq	(%r11,%rcx,8), %r10
	je	.L765
	addq	$1, %rcx
	cmpq	%rcx, %r9
	jne	.L680
	.p2align 4,,10
	.p2align 3
.L679:
	addq	$1, %rbx
	cmpq	%r8, %rbx
	jb	.L699
	movq	152(%rsp), %rbx
.L678:
	subsd	%xmm11, %xmm8
	movapd	%xmm12, %xmm0
	movapd	%xmm11, %xmm7
	movzwl	112(%rsp), %eax
	subsd	%xmm9, %xmm0
	pxor	%xmm6, %xmm6
	shrw	%ax
	comisd	%xmm12, %xmm9
	movapd	%xmm8, %xmm11
	movzwl	%ax, %eax
	mulsd	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm6
	mulsd	%xmm8, %xmm11
	subsd	%xmm6, %xmm7
	addsd	%xmm9, %xmm6
	addsd	%xmm0, %xmm11
	movapd	%xmm8, %xmm0
	sqrtsd	%xmm11, %xmm11
	divsd	%xmm11, %xmm0
	ja	.L766
	call	acos
	movapd	%xmm0, %xmm8
.L702:
	pxor	%xmm0, %xmm0
	movzwl	118(%rsp), %r13d
	comisd	%xmm0, %xmm11
	jbe	.L747
.L705:
	testq	%rdi, %rdi
	je	.L708
	movq	144(%rsp), %r12
	xorl	%esi, %esi
	jmp	.L704
	.p2align 4,,10
	.p2align 3
.L767:
	addq	$1, %rsi
	cmpq	%rdi, %rsi
	je	.L708
.L704:
	movq	0(%rbp), %rax
	leaq	264(%rax), %rcx
	cmpq	%r12, %rsi
	je	.L756
	pxor	%xmm3, %xmm3
	movq	(%rbx,%rsi,8), %rax
	movapd	%xmm6, %xmm0
	movapd	%xmm6, %xmm2
	cvtsi2sdl	%r13d, %xmm3
	movapd	%xmm7, %xmm1
	movq	%rax, 40(%rsp)
	subsd	%xmm3, %xmm0
	addsd	%xmm7, %xmm3
	movsd	%xmm0, 32(%rsp)
.LEHB20:
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE
	testb	%al, %al
	je	.L767
.L677:
	movq	%rbx, %rcx
	call	free
	movzbl	104(%rsp), %eax
	movaps	160(%rsp), %xmm6
	movaps	176(%rsp), %xmm7
	movaps	192(%rsp), %xmm8
	movaps	208(%rsp), %xmm9
	movaps	224(%rsp), %xmm10
	movaps	240(%rsp), %xmm11
	movaps	256(%rsp), %xmm12
	addq	$280, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L765:
	xorl	%ecx, %ecx
	cmpq	$0, 88(%rsp)
	movq	96(%rsp), %r9
	je	.L683
.L710:
	cmpq	%rbx, (%r9,%rcx,8)
	je	.L679
	addq	$1, %rcx
	cmpq	%rcx, 88(%rsp)
	jne	.L710
.L683:
	cmpq	%r8, %rbx
	jnb	.L754
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L685:
	movq	(%rax,%r12), %rax
	cmpq	152(%rax), %rsi
	jnb	.L679
	movq	160(%rax), %rax
	leaq	0(,%rsi,8), %r15
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L690
	movq	0(%r13), %rcx
	movq	24(%rax), %r9
	xorl	%eax, %eax
	movq	8(%r13), %r10
	testq	%rcx, %rcx
	je	.L688
.L689:
	cmpq	(%r10,%rax,8), %r9
	je	.L690
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L689
	.p2align 4,,10
	.p2align 3
.L688:
	cmpq	%rdi, 144(%rsp)
	je	.L768
.L692:
	movq	256(%rdx), %rax
	cmpq	%r8, %rbx
	jnb	.L754
	movq	(%rax,%r12), %rcx
	movq	160(%rcx), %r9
	cmpq	152(%rcx), %rsi
	jnb	.L756
	movq	(%r9,%r15), %r10
	leaq	1(%rdi), %rcx
	movq	152(%rsp), %r9
	cmpq	144(%rsp), %rdi
	jnb	.L769
	movq	%r10, (%r9,%rdi,8)
	addq	$1, %rsi
	movq	%rcx, %rdi
	jmp	.L685
	.p2align 4,,10
	.p2align 3
.L690:
	movq	256(%rdx), %rax
	addq	$1, %rsi
	cmpq	%r8, %rbx
	jb	.L685
.L754:
	movq	%rbx, %rdx
	leaq	.LC27(%rip), %rcx
	call	_Z6printfPKcz
.L666:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L768:
	movzwl	272(%rdx), %eax
	movq	120(%rsp), %rcx
	movq	%rdi, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0
.LEHE20:
	movq	0(%rbp), %rdx
	movq	248(%rdx), %r8
	jmp	.L692
	.p2align 4,,10
	.p2align 3
.L766:
	call	acos
	movsd	.LC28(%rip), %xmm8
	subsd	%xmm0, %xmm8
	jmp	.L702
	.p2align 4,,10
	.p2align 3
.L708:
	movapd	%xmm8, %xmm0
	leaq	136(%rsp), %rdx
	leaq	128(%rsp), %r8
	call	sincos
	subsd	%xmm10, %xmm11
	movsd	128(%rsp), %xmm0
	mulsd	%xmm10, %xmm0
	addsd	%xmm0, %xmm7
	movsd	136(%rsp), %xmm0
	mulsd	%xmm10, %xmm0
	addsd	%xmm0, %xmm6
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm11
	ja	.L705
.L747:
	movb	$1, 104(%rsp)
	jmp	.L677
	.p2align 4,,10
	.p2align 3
.L660:
	leaq	0(,%rsi,8), %rcx
	movq	%rdx, 104(%rsp)
	call	malloc
	movq	104(%rsp), %rdx
	testq	%rax, %rax
	movq	%rax, 152(%rsp)
	movq	%rax, %rbx
	jne	.L661
	leaq	.LC19(%rip), %rcx
	movq	%rsi, %rdx
.LEHB21:
	call	_Z6printfPKcz
.LEHE21:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L711:
	xorl	%edi, %edi
	jmp	.L678
.L756:
	movq	%rsi, %rdx
	leaq	.LC27(%rip), %rcx
.LEHB22:
	call	_Z6printfPKcz
	jmp	.L666
.L761:
	movq	88(%rsp), %rax
	movq	%r13, 72(%rsp)
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%r14, 56(%rsp)
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movq	%rax, 64(%rsp)
	movzwl	112(%rsp), %eax
	movq	%xmm11, %rdx
	leaq	.LC67(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L666
.L760:
	movq	88(%rsp), %rax
	movq	%r13, 72(%rsp)
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%r14, 56(%rsp)
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movq	%rax, 64(%rsp)
	movzwl	112(%rsp), %eax
	movq	%xmm11, %rdx
	leaq	.LC66(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L666
.L769:
	movq	%rdi, %rdx
	leaq	.LC27(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L666
.L764:
	xorl	%eax, %eax
	movq	%r14, 56(%rsp)
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%rax, 72(%rsp)
	movq	88(%rsp), %rax
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movsd	%xmm10, 48(%rsp)
	movapd	%xmm11, %xmm1
	movq	%xmm11, %rdx
	leaq	.LC70(%rip), %rcx
	movq	%rax, 64(%rsp)
	movzwl	112(%rsp), %eax
	movsd	%xmm12, 32(%rsp)
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L666
.L757:
	movq	88(%rsp), %rax
	movq	%r13, 72(%rsp)
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%r14, 56(%rsp)
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movq	%rax, 64(%rsp)
	movzwl	112(%rsp), %eax
	movq	%xmm11, %rdx
	leaq	.LC63(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L666
.L759:
	movq	88(%rsp), %rax
	movq	%r13, 72(%rsp)
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%r14, 56(%rsp)
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movq	%rax, 64(%rsp)
	movzwl	112(%rsp), %eax
	movq	%xmm11, %rdx
	leaq	.LC65(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L666
.L758:
	movq	88(%rsp), %rax
	movq	%r13, 72(%rsp)
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%r14, 56(%rsp)
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movq	%rax, 64(%rsp)
	movzwl	112(%rsp), %eax
	movq	%xmm11, %rdx
	leaq	.LC64(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L666
.L763:
	movq	88(%rsp), %rax
	xorl	%edx, %edx
	movq	%r13, 72(%rsp)
	movapd	%xmm8, %xmm3
	movq	%rdx, 56(%rsp)
	movq	%xmm8, %r9
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movq	%rax, 64(%rsp)
	movzwl	112(%rsp), %eax
	movapd	%xmm11, %xmm1
	movq	%xmm11, %rdx
	movsd	%xmm10, 48(%rsp)
	leaq	.LC69(%rip), %rcx
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L666
.L762:
	movq	88(%rsp), %rax
	movq	%r13, 72(%rsp)
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%r14, 56(%rsp)
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movq	%rax, 64(%rsp)
	movzwl	112(%rsp), %eax
	movq	%xmm11, %rdx
	leaq	.LC68(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
.LEHE22:
	jmp	.L666
.L715:
	movq	%rax, %rbx
	jmp	.L709
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8434:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8434-.LLSDACSB8434
.LLSDACSB8434:
	.uleb128 .LEHB20-.LFB8434
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L715-.LFB8434
	.uleb128 0
	.uleb128 .LEHB21-.LFB8434
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB22-.LFB8434
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L715-.LFB8434
	.uleb128 0
.LLSDACSE8434:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES5_.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES5_.cold
	.seh_stackalloc	344
	.seh_savereg	%rbx, 280
	.seh_savereg	%rsi, 288
	.seh_savereg	%rdi, 296
	.seh_savereg	%rbp, 304
	.seh_savexmm	%xmm6, 160
	.seh_savexmm	%xmm7, 176
	.seh_savereg	%r12, 312
	.seh_savereg	%r13, 320
	.seh_savereg	%r14, 328
	.seh_savereg	%r15, 336
	.seh_savexmm	%xmm8, 192
	.seh_savexmm	%xmm9, 208
	.seh_savexmm	%xmm10, 224
	.seh_savexmm	%xmm11, 240
	.seh_savexmm	%xmm12, 256
	.seh_endprologue
_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEESt16initializer_listIyES5_.cold:
.L709:
	movq	152(%rsp), %rcx
	call	free
	movq	%rbx, %rcx
.LEHB23:
	call	_Unwind_Resume
	nop
.LEHE23:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8434:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8434-.LLSDACSBC8434
.LLSDACSBC8434:
	.uleb128 .LEHB23-.LCOLDB71
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
.LLSDACSEC8434:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE71:
	.text
.LHOTE71:
	.section .rdata,"dr"
	.align 8
.LC72:
	.ascii "wze::engine.vector.RayCast(): InitialX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC73:
	.ascii "wze::engine.vector.RayCast(): InitialY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC74:
	.ascii "wze::engine.vector.RayCast(): TerminalX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC75:
	.ascii "wze::engine.vector.RayCast(): TerminalY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC76:
	.ascii "wze::engine.vector.RayCast(): SamplingStep must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC77:
	.ascii "wze::engine.vector.RayCast(): SamplingStep must not be less than or equal to 0\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC78:
	.ascii "wze::engine.vector.RayCast(): ActorIDBlacklist must not be NULL\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC79:
	.ascii "wze::engine.vector.RayCast(): OverlapboxTypeBlackList must not be NULL\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB80:
	.text
.LHOTB80:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES7_
	.def	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES7_
_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES7_:
.LFB8435:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$264, %rsp
	.seh_stackalloc	264
	movaps	%xmm6, 144(%rsp)
	.seh_savexmm	%xmm6, 144
	movaps	%xmm7, 160(%rsp)
	.seh_savexmm	%xmm7, 160
	movaps	%xmm8, 176(%rsp)
	.seh_savexmm	%xmm8, 176
	movaps	%xmm9, 192(%rsp)
	.seh_savexmm	%xmm9, 192
	movaps	%xmm10, 208(%rsp)
	.seh_savexmm	%xmm10, 208
	movaps	%xmm11, 224(%rsp)
	.seh_savexmm	%xmm11, 224
	movaps	%xmm12, 240(%rsp)
	.seh_savexmm	%xmm12, 240
	.seh_endprologue
	movl	376(%rsp), %edx
	movq	392(%rsp), %rax
	movsd	368(%rsp), %xmm12
	movq	408(%rsp), %r13
	movq	(%rax), %rdi
	movq	8(%rax), %r15
	movsd	384(%rsp), %xmm10
	movl	%edx, 96(%rsp)
	movq	%rcx, %rbp
	movapd	%xmm1, %xmm11
	movapd	%xmm2, %xmm9
	movw	%dx, 102(%rsp)
	movq	(%rcx), %rdx
	movapd	%xmm3, %xmm8
	movq	%rdi, 80(%rsp)
	movzwl	272(%rdx), %esi
	movq	%rsi, 128(%rsp)
	testq	%rsi, %rsi
	jne	.L771
	movq	$0, 136(%rsp)
	xorl	%ebx, %ebx
.L772:
	ucomisd	%xmm11, %xmm11
	jp	.L868
	ucomisd	%xmm9, %xmm9
	jp	.L869
	ucomisd	%xmm8, %xmm8
	jp	.L870
	ucomisd	%xmm12, %xmm12
	jp	.L871
	ucomisd	%xmm10, %xmm10
	jp	.L872
	pxor	%xmm0, %xmm0
	comisd	%xmm10, %xmm0
	jnb	.L873
	cmpq	$0, 400(%rsp)
	je	.L874
	testq	%r13, %r13
	je	.L875
	ucomisd	%xmm8, %xmm11
	movl	$0, %r8d
	setnp	%cl
	cmovne	%r8d, %ecx
	ucomisd	%xmm12, %xmm9
	setnp	%al
	cmovne	%r8d, %eax
	andb	%al, %cl
	movb	%cl, 88(%rsp)
	jne	.L788
	movq	248(%rdx), %r8
	cmpq	$1, %r8
	jbe	.L822
	leaq	128(%rsp), %rax
	movl	$1, %ebx
	xorl	%edi, %edi
	movq	%rax, 104(%rsp)
	jmp	.L810
	.p2align 4,,10
	.p2align 3
.L790:
	addq	$1, %rbx
	cmpq	%r8, %rbx
	jnb	.L876
.L810:
	movq	256(%rdx), %rax
	leaq	0(,%rbx,8), %r12
	movq	(%rax,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L790
	movq	208(%rcx), %r9
	movq	80(%rsp), %r10
	xorl	%ecx, %ecx
	testq	%r15, %r15
	je	.L790
	cmpq	(%r10,%rcx,8), %r9
	je	.L877
.L854:
	addq	$1, %rcx
	cmpq	%rcx, %r15
	je	.L790
	cmpq	(%r10,%rcx,8), %r9
	jne	.L854
.L877:
	movq	400(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	(%rsi), %r9
	movq	8(%rsi), %r10
	testq	%r9, %r9
	je	.L794
.L821:
	cmpq	%rbx, (%r10,%rcx,8)
	je	.L790
	addq	$1, %rcx
	cmpq	%rcx, %r9
	jne	.L821
	.p2align 4,,10
	.p2align 3
.L794:
	cmpq	%r8, %rbx
	jnb	.L865
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L796:
	movq	(%rax,%r12), %rax
	cmpq	152(%rax), %rsi
	jnb	.L790
	movq	160(%rax), %rax
	leaq	0(,%rsi,8), %r14
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L801
	movq	0(%r13), %rcx
	movq	24(%rax), %r9
	xorl	%eax, %eax
	movq	8(%r13), %r10
	testq	%rcx, %rcx
	je	.L799
.L800:
	cmpq	(%r10,%rax,8), %r9
	je	.L801
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L800
	.p2align 4,,10
	.p2align 3
.L799:
	cmpq	%rdi, 128(%rsp)
	je	.L878
.L803:
	movq	256(%rdx), %rax
	cmpq	%r8, %rbx
	jnb	.L865
	movq	(%rax,%r12), %rcx
	movq	160(%rcx), %r9
	cmpq	152(%rcx), %rsi
	jnb	.L867
	movq	(%r9,%r14), %r10
	leaq	1(%rdi), %rcx
	movq	136(%rsp), %r9
	cmpq	128(%rsp), %rdi
	jnb	.L879
	movq	%r10, (%r9,%rdi,8)
	addq	$1, %rsi
	movq	%rcx, %rdi
	jmp	.L796
	.p2align 4,,10
	.p2align 3
.L801:
	movq	256(%rdx), %rax
	addq	$1, %rsi
	cmpq	%r8, %rbx
	jb	.L796
.L865:
	movq	%rbx, %rdx
	leaq	.LC27(%rip), %rcx
.LEHB24:
	call	_Z6printfPKcz
.L777:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L876:
	movq	136(%rsp), %rbx
.L789:
	subsd	%xmm11, %xmm8
	movapd	%xmm12, %xmm0
	movapd	%xmm11, %xmm7
	movzwl	96(%rsp), %eax
	subsd	%xmm9, %xmm0
	pxor	%xmm6, %xmm6
	shrw	%ax
	comisd	%xmm12, %xmm9
	movapd	%xmm8, %xmm11
	movzwl	%ax, %eax
	mulsd	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm6
	mulsd	%xmm8, %xmm11
	subsd	%xmm6, %xmm7
	addsd	%xmm9, %xmm6
	addsd	%xmm0, %xmm11
	movapd	%xmm8, %xmm0
	sqrtsd	%xmm11, %xmm11
	divsd	%xmm11, %xmm0
	ja	.L880
	call	acos
	movapd	%xmm0, %xmm8
.L813:
	pxor	%xmm0, %xmm0
	movzwl	102(%rsp), %r13d
	comisd	%xmm0, %xmm11
	jbe	.L858
.L816:
	testq	%rdi, %rdi
	je	.L819
	movq	128(%rsp), %r12
	xorl	%esi, %esi
	jmp	.L815
	.p2align 4,,10
	.p2align 3
.L881:
	addq	$1, %rsi
	cmpq	%rsi, %rdi
	je	.L819
.L815:
	movq	0(%rbp), %rax
	leaq	264(%rax), %rcx
	cmpq	%r12, %rsi
	je	.L867
	pxor	%xmm3, %xmm3
	movq	(%rbx,%rsi,8), %rax
	movapd	%xmm6, %xmm0
	movapd	%xmm6, %xmm2
	cvtsi2sdl	%r13d, %xmm3
	movapd	%xmm7, %xmm1
	movq	%rax, 40(%rsp)
	subsd	%xmm3, %xmm0
	addsd	%xmm7, %xmm3
	movsd	%xmm0, 32(%rsp)
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE
	testb	%al, %al
	je	.L881
.L788:
	movq	%rbx, %rcx
	call	free
	movzbl	88(%rsp), %eax
	movaps	144(%rsp), %xmm6
	movaps	160(%rsp), %xmm7
	movaps	176(%rsp), %xmm8
	movaps	192(%rsp), %xmm9
	movaps	208(%rsp), %xmm10
	movaps	224(%rsp), %xmm11
	movaps	240(%rsp), %xmm12
	addq	$264, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
	.p2align 3
.L878:
	movzwl	272(%rdx), %eax
	movq	104(%rsp), %rcx
	movq	%rdi, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0
.LEHE24:
	movq	0(%rbp), %rdx
	movq	248(%rdx), %r8
	jmp	.L803
.L880:
	call	acos
	movsd	.LC28(%rip), %xmm8
	subsd	%xmm0, %xmm8
	jmp	.L813
	.p2align 4,,10
	.p2align 3
.L819:
	movapd	%xmm8, %xmm0
	leaq	120(%rsp), %rdx
	leaq	112(%rsp), %r8
	call	sincos
	movsd	112(%rsp), %xmm0
	subsd	%xmm10, %xmm11
	mulsd	%xmm10, %xmm0
	addsd	%xmm0, %xmm7
	movsd	120(%rsp), %xmm0
	mulsd	%xmm10, %xmm0
	addsd	%xmm0, %xmm6
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm11
	ja	.L816
.L858:
	movb	$1, 88(%rsp)
	jmp	.L788
.L771:
	leaq	0(,%rsi,8), %rcx
	movq	%rdx, 88(%rsp)
	call	malloc
	movq	88(%rsp), %rdx
	testq	%rax, %rax
	movq	%rax, 136(%rsp)
	movq	%rax, %rbx
	jne	.L772
	leaq	.LC19(%rip), %rcx
	movq	%rsi, %rdx
.LEHB25:
	call	_Z6printfPKcz
.LEHE25:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L822:
	xorl	%edi, %edi
	jmp	.L789
.L867:
	movq	%rsi, %rdx
	leaq	.LC27(%rip), %rcx
.LEHB26:
	call	_Z6printfPKcz
	jmp	.L777
.L872:
	movq	%r13, 72(%rsp)
	movq	400(%rsp), %rax
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%r15, 56(%rsp)
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movq	%rax, 64(%rsp)
	movzwl	96(%rsp), %eax
	movq	%xmm11, %rdx
	leaq	.LC76(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L777
.L871:
	movq	%r13, 72(%rsp)
	movq	400(%rsp), %rax
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%r15, 56(%rsp)
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movq	%rax, 64(%rsp)
	movzwl	96(%rsp), %eax
	movq	%xmm11, %rdx
	leaq	.LC75(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L777
.L879:
	movq	%rdi, %rdx
	leaq	.LC27(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L777
.L875:
	xorl	%eax, %eax
	movq	%r15, 56(%rsp)
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%rax, 72(%rsp)
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movq	400(%rsp), %rax
	movsd	%xmm10, 48(%rsp)
	movapd	%xmm11, %xmm1
	movq	%xmm11, %rdx
	leaq	.LC79(%rip), %rcx
	movq	%rax, 64(%rsp)
	movzwl	96(%rsp), %eax
	movsd	%xmm12, 32(%rsp)
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L777
.L868:
	movq	%r13, 72(%rsp)
	movq	400(%rsp), %rax
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%r15, 56(%rsp)
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movq	%rax, 64(%rsp)
	movzwl	96(%rsp), %eax
	movq	%xmm11, %rdx
	leaq	.LC72(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L777
.L870:
	movq	%r13, 72(%rsp)
	movq	400(%rsp), %rax
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%r15, 56(%rsp)
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movq	%rax, 64(%rsp)
	movzwl	96(%rsp), %eax
	movq	%xmm11, %rdx
	leaq	.LC74(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L777
.L869:
	movq	%r13, 72(%rsp)
	movq	400(%rsp), %rax
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%r15, 56(%rsp)
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movq	%rax, 64(%rsp)
	movzwl	96(%rsp), %eax
	movq	%xmm11, %rdx
	leaq	.LC73(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L777
.L874:
	movzwl	96(%rsp), %eax
	xorl	%edx, %edx
	movq	%r13, 72(%rsp)
	movapd	%xmm8, %xmm3
	movq	%rdx, 64(%rsp)
	movq	%xmm8, %r9
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movq	%r15, 56(%rsp)
	movapd	%xmm11, %xmm1
	movq	%xmm11, %rdx
	leaq	.LC78(%rip), %rcx
	movl	%eax, 40(%rsp)
	movsd	%xmm10, 48(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L777
.L873:
	movq	%r13, 72(%rsp)
	movq	400(%rsp), %rax
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%r15, 56(%rsp)
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movq	%rax, 64(%rsp)
	movzwl	96(%rsp), %eax
	movq	%xmm11, %rdx
	leaq	.LC77(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
.LEHE26:
	jmp	.L777
.L826:
	movq	%rax, %rbx
	jmp	.L820
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8435:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8435-.LLSDACSB8435
.LLSDACSB8435:
	.uleb128 .LEHB24-.LFB8435
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L826-.LFB8435
	.uleb128 0
	.uleb128 .LEHB25-.LFB8435
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB26-.LFB8435
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L826-.LFB8435
	.uleb128 0
.LLSDACSE8435:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES7_.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES7_.cold
	.seh_stackalloc	328
	.seh_savereg	%rbx, 264
	.seh_savereg	%rsi, 272
	.seh_savereg	%rdi, 280
	.seh_savereg	%rbp, 288
	.seh_savexmm	%xmm6, 144
	.seh_savexmm	%xmm7, 160
	.seh_savereg	%r12, 296
	.seh_savereg	%r13, 304
	.seh_savereg	%r14, 312
	.seh_savereg	%r15, 320
	.seh_savexmm	%xmm8, 176
	.seh_savexmm	%xmm9, 192
	.seh_savexmm	%xmm10, 208
	.seh_savexmm	%xmm11, 224
	.seh_savexmm	%xmm12, 240
	.seh_endprologue
_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyEPN3neo5arrayIyEES7_.cold:
.L820:
	movq	136(%rsp), %rcx
	call	free
	movq	%rbx, %rcx
.LEHB27:
	call	_Unwind_Resume
	nop
.LEHE27:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8435:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8435-.LLSDACSBC8435
.LLSDACSBC8435:
	.uleb128 .LEHB27-.LCOLDB80
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
.LLSDACSEC8435:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE80:
	.text
.LHOTE80:
	.section .rdata,"dr"
	.align 8
.LC81:
	.ascii "wze::engine.vector.RayCast(): InitialX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC82:
	.ascii "wze::engine.vector.RayCast(): InitialY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC83:
	.ascii "wze::engine.vector.RayCast(): TerminalX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC84:
	.ascii "wze::engine.vector.RayCast(): TerminalY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC85:
	.ascii "wze::engine.vector.RayCast(): SamplingStep must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC86:
	.ascii "wze::engine.vector.RayCast(): SamplingStep must not be less than or equal to 0\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC87:
	.ascii "wze::engine.vector.RayCast(): ActorTypeWhitelist must not be NULL\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC88:
	.ascii "wze::engine.vector.RayCast(): ActorIDBlacklist must not be NULL\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC89:
	.ascii "wze::engine.vector.RayCast(): OverlapboxTypeBlacklist must not be NULL\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB90:
	.text
.LHOTB90:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_S5_
	.def	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_S5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_S5_
_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_S5_:
.LFB8436:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$264, %rsp
	.seh_stackalloc	264
	movaps	%xmm6, 144(%rsp)
	.seh_savexmm	%xmm6, 144
	movaps	%xmm7, 160(%rsp)
	.seh_savexmm	%xmm7, 160
	movaps	%xmm8, 176(%rsp)
	.seh_savexmm	%xmm8, 176
	movaps	%xmm9, 192(%rsp)
	.seh_savexmm	%xmm9, 192
	movaps	%xmm10, 208(%rsp)
	.seh_savexmm	%xmm10, 208
	movaps	%xmm11, 224(%rsp)
	.seh_savexmm	%xmm11, 224
	movaps	%xmm12, 240(%rsp)
	.seh_savexmm	%xmm12, 240
	.seh_endprologue
	movq	(%rcx), %rdx
	movl	376(%rsp), %eax
	movq	392(%rsp), %r15
	movq	408(%rsp), %r13
	movzwl	272(%rdx), %esi
	movsd	368(%rsp), %xmm12
	movsd	384(%rsp), %xmm10
	movl	%eax, 104(%rsp)
	movq	%rcx, %r12
	movapd	%xmm1, %xmm11
	movapd	%xmm2, %xmm9
	movw	%ax, 110(%rsp)
	movapd	%xmm3, %xmm8
	movq	%rsi, 128(%rsp)
	testq	%rsi, %rsi
	jne	.L883
	movq	$0, 136(%rsp)
	xorl	%ebx, %ebx
.L884:
	ucomisd	%xmm11, %xmm11
	jp	.L981
	ucomisd	%xmm9, %xmm9
	jp	.L982
	ucomisd	%xmm8, %xmm8
	jp	.L983
	ucomisd	%xmm12, %xmm12
	jp	.L984
	ucomisd	%xmm10, %xmm10
	jp	.L985
	pxor	%xmm0, %xmm0
	comisd	%xmm10, %xmm0
	jnb	.L986
	testq	%r15, %r15
	je	.L987
	cmpq	$0, 400(%rsp)
	je	.L988
	testq	%r13, %r13
	je	.L989
	ucomisd	%xmm8, %xmm11
	movl	$0, %r8d
	setnp	%cl
	cmovne	%r8d, %ecx
	ucomisd	%xmm12, %xmm9
	setnp	%al
	cmovne	%r8d, %eax
	andb	%al, %cl
	movb	%cl, 88(%rsp)
	jne	.L901
	movq	248(%rdx), %rcx
	cmpq	$1, %rcx
	jbe	.L935
	leaq	128(%rsp), %rax
	movl	$1, %esi
	xorl	%edi, %edi
	movq	%rax, 96(%rsp)
	.p2align 4,,10
	.p2align 3
.L923:
	movq	256(%rdx), %rax
	leaq	0(,%rsi,8), %rbp
	movq	(%rax,%rsi,8), %r8
	testq	%r8, %r8
	je	.L903
	movq	(%r15), %r9
	movq	208(%r8), %r10
	xorl	%r8d, %r8d
	movq	8(%r15), %r11
	testq	%r9, %r9
	je	.L903
.L904:
	cmpq	(%r11,%r8,8), %r10
	je	.L990
	addq	$1, %r8
	cmpq	%r8, %r9
	jne	.L904
	.p2align 4,,10
	.p2align 3
.L903:
	addq	$1, %rsi
	cmpq	%rcx, %rsi
	jb	.L923
	movq	136(%rsp), %rbx
.L902:
	subsd	%xmm11, %xmm8
	movapd	%xmm12, %xmm0
	movapd	%xmm11, %xmm7
	movzwl	104(%rsp), %eax
	subsd	%xmm9, %xmm0
	pxor	%xmm6, %xmm6
	shrw	%ax
	comisd	%xmm12, %xmm9
	movapd	%xmm8, %xmm11
	movzwl	%ax, %eax
	mulsd	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm6
	mulsd	%xmm8, %xmm11
	subsd	%xmm6, %xmm7
	addsd	%xmm9, %xmm6
	addsd	%xmm0, %xmm11
	movapd	%xmm8, %xmm0
	sqrtsd	%xmm11, %xmm11
	divsd	%xmm11, %xmm0
	ja	.L991
	call	acos
	movapd	%xmm0, %xmm8
.L926:
	pxor	%xmm0, %xmm0
	movzwl	110(%rsp), %r13d
	comisd	%xmm0, %xmm11
	jbe	.L972
.L929:
	testq	%rdi, %rdi
	je	.L932
	movq	128(%rsp), %rbp
	xorl	%esi, %esi
	jmp	.L928
	.p2align 4,,10
	.p2align 3
.L992:
	addq	$1, %rsi
	cmpq	%rdi, %rsi
	je	.L932
.L928:
	movq	(%r12), %rax
	leaq	264(%rax), %rcx
	cmpq	%rbp, %rsi
	je	.L980
	pxor	%xmm3, %xmm3
	movq	(%rbx,%rsi,8), %rax
	movapd	%xmm6, %xmm0
	movapd	%xmm6, %xmm2
	cvtsi2sdl	%r13d, %xmm3
	movapd	%xmm7, %xmm1
	movq	%rax, 40(%rsp)
	subsd	%xmm3, %xmm0
	addsd	%xmm7, %xmm3
	movsd	%xmm0, 32(%rsp)
.LEHB28:
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE
	testb	%al, %al
	je	.L992
.L901:
	movq	%rbx, %rcx
	call	free
	movzbl	88(%rsp), %eax
	movaps	144(%rsp), %xmm6
	movaps	160(%rsp), %xmm7
	movaps	176(%rsp), %xmm8
	movaps	192(%rsp), %xmm9
	movaps	208(%rsp), %xmm10
	movaps	224(%rsp), %xmm11
	movaps	240(%rsp), %xmm12
	addq	$264, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L990:
	movq	400(%rsp), %rbx
	xorl	%r8d, %r8d
	movq	(%rbx), %r9
	movq	8(%rbx), %r10
	testq	%r9, %r9
	je	.L907
.L934:
	cmpq	%rsi, (%r10,%r8,8)
	je	.L903
	addq	$1, %r8
	cmpq	%r8, %r9
	jne	.L934
	.p2align 4,,10
	.p2align 3
.L907:
	cmpq	%rcx, %rsi
	jnb	.L980
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L909:
	movq	(%rax,%rbp), %rax
	cmpq	152(%rax), %rbx
	jnb	.L903
	movq	160(%rax), %rax
	leaq	0(,%rbx,8), %r14
	movq	(%rax,%rbx,8), %rax
	testq	%rax, %rax
	je	.L914
	movq	0(%r13), %r8
	movq	24(%rax), %r9
	xorl	%eax, %eax
	movq	8(%r13), %r10
	testq	%r8, %r8
	je	.L912
.L913:
	cmpq	(%r10,%rax,8), %r9
	je	.L914
	addq	$1, %rax
	cmpq	%rax, %r8
	jne	.L913
	.p2align 4,,10
	.p2align 3
.L912:
	cmpq	%rdi, 128(%rsp)
	je	.L993
.L916:
	movq	256(%rdx), %rax
	cmpq	%rcx, %rsi
	jnb	.L980
	movq	(%rax,%rbp), %r8
	movq	160(%r8), %r9
	cmpq	152(%r8), %rbx
	jnb	.L994
	movq	(%r9,%r14), %r10
	leaq	1(%rdi), %r8
	movq	136(%rsp), %r9
	cmpq	128(%rsp), %rdi
	jnb	.L995
	movq	%r10, (%r9,%rdi,8)
	addq	$1, %rbx
	movq	%r8, %rdi
	jmp	.L909
	.p2align 4,,10
	.p2align 3
.L914:
	movq	256(%rdx), %rax
	addq	$1, %rbx
	cmpq	%rcx, %rsi
	jb	.L909
.L980:
	movq	%rsi, %rdx
	leaq	.LC27(%rip), %rcx
	call	_Z6printfPKcz
.L889:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L993:
	movzwl	272(%rdx), %eax
	movq	96(%rsp), %rcx
	movq	%rdi, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0
.LEHE28:
	movq	(%r12), %rdx
	movq	248(%rdx), %rcx
	jmp	.L916
.L991:
	call	acos
	movsd	.LC28(%rip), %xmm8
	subsd	%xmm0, %xmm8
	jmp	.L926
	.p2align 4,,10
	.p2align 3
.L932:
	movapd	%xmm8, %xmm0
	leaq	120(%rsp), %rdx
	leaq	112(%rsp), %r8
	call	sincos
	movsd	112(%rsp), %xmm0
	subsd	%xmm10, %xmm11
	mulsd	%xmm10, %xmm0
	addsd	%xmm0, %xmm7
	movsd	120(%rsp), %xmm0
	mulsd	%xmm10, %xmm0
	addsd	%xmm0, %xmm6
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm11
	ja	.L929
.L972:
	movb	$1, 88(%rsp)
	jmp	.L901
.L883:
	leaq	0(,%rsi,8), %rcx
	movq	%rdx, 88(%rsp)
	call	malloc
	movq	88(%rsp), %rdx
	testq	%rax, %rax
	movq	%rax, 136(%rsp)
	movq	%rax, %rbx
	jne	.L884
	leaq	.LC19(%rip), %rcx
	movq	%rsi, %rdx
.LEHB29:
	call	_Z6printfPKcz
.LEHE29:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L935:
	xorl	%edi, %edi
	jmp	.L902
.L983:
	movq	%r13, 72(%rsp)
	movq	400(%rsp), %rax
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%r15, 56(%rsp)
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movq	%rax, 64(%rsp)
	movzwl	104(%rsp), %eax
	movq	%xmm11, %rdx
	leaq	.LC83(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
.LEHB30:
	call	_Z6printfPKcz
	jmp	.L889
.L982:
	movq	%r13, 72(%rsp)
	movq	400(%rsp), %rax
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%r15, 56(%rsp)
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movq	%rax, 64(%rsp)
	movzwl	104(%rsp), %eax
	movq	%xmm11, %rdx
	leaq	.LC82(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L889
.L981:
	movq	%r13, 72(%rsp)
	movq	400(%rsp), %rax
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%r15, 56(%rsp)
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movq	%rax, 64(%rsp)
	movzwl	104(%rsp), %eax
	movq	%xmm11, %rdx
	leaq	.LC81(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L889
.L994:
	movq	%rbx, %rdx
	leaq	.LC27(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L889
.L985:
	movq	%r13, 72(%rsp)
	movq	400(%rsp), %rax
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%r15, 56(%rsp)
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movq	%rax, 64(%rsp)
	movzwl	104(%rsp), %eax
	movq	%xmm11, %rdx
	leaq	.LC85(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L889
.L984:
	movq	%r13, 72(%rsp)
	movq	400(%rsp), %rax
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%r15, 56(%rsp)
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movq	%rax, 64(%rsp)
	movzwl	104(%rsp), %eax
	movq	%xmm11, %rdx
	leaq	.LC84(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L889
.L989:
	xorl	%eax, %eax
	movq	%r15, 56(%rsp)
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%rax, 72(%rsp)
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movq	400(%rsp), %rax
	movsd	%xmm10, 48(%rsp)
	movapd	%xmm11, %xmm1
	movq	%xmm11, %rdx
	leaq	.LC89(%rip), %rcx
	movq	%rax, 64(%rsp)
	movzwl	104(%rsp), %eax
	movsd	%xmm12, 32(%rsp)
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L889
.L988:
	movzwl	104(%rsp), %eax
	xorl	%edx, %edx
	movq	%r13, 72(%rsp)
	movapd	%xmm8, %xmm3
	movq	%rdx, 64(%rsp)
	movq	%xmm8, %r9
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movq	%r15, 56(%rsp)
	movapd	%xmm11, %xmm1
	movq	%xmm11, %rdx
	leaq	.LC88(%rip), %rcx
	movl	%eax, 40(%rsp)
	movsd	%xmm10, 48(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L889
.L987:
	movq	400(%rsp), %rax
	xorl	%ecx, %ecx
	movq	%r13, 72(%rsp)
	movapd	%xmm8, %xmm3
	movq	%rcx, 56(%rsp)
	movq	%xmm8, %r9
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movq	%rax, 64(%rsp)
	movzwl	104(%rsp), %eax
	movapd	%xmm11, %xmm1
	movq	%xmm11, %rdx
	movsd	%xmm10, 48(%rsp)
	leaq	.LC87(%rip), %rcx
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L889
.L986:
	movq	%r13, 72(%rsp)
	movq	400(%rsp), %rax
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%r15, 56(%rsp)
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movq	%rax, 64(%rsp)
	movzwl	104(%rsp), %eax
	movq	%xmm11, %rdx
	leaq	.LC86(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L889
.L995:
	movq	%rdi, %rdx
	leaq	.LC27(%rip), %rcx
	call	_Z6printfPKcz
.LEHE30:
	jmp	.L889
.L938:
	movq	%rax, %rbx
	jmp	.L933
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8436:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8436-.LLSDACSB8436
.LLSDACSB8436:
	.uleb128 .LEHB28-.LFB8436
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L938-.LFB8436
	.uleb128 0
	.uleb128 .LEHB29-.LFB8436
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB30-.LFB8436
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L938-.LFB8436
	.uleb128 0
.LLSDACSE8436:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_S5_.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_S5_.cold
	.seh_stackalloc	328
	.seh_savereg	%rbx, 264
	.seh_savereg	%rsi, 272
	.seh_savereg	%rdi, 280
	.seh_savereg	%rbp, 288
	.seh_savexmm	%xmm6, 144
	.seh_savexmm	%xmm7, 160
	.seh_savereg	%r12, 296
	.seh_savereg	%r13, 304
	.seh_savereg	%r14, 312
	.seh_savereg	%r15, 320
	.seh_savexmm	%xmm8, 176
	.seh_savexmm	%xmm9, 192
	.seh_savexmm	%xmm10, 208
	.seh_savexmm	%xmm11, 224
	.seh_savexmm	%xmm12, 240
	.seh_endprologue
_ZN3wze6engine6vector7RayCastEddddtdPN3neo5arrayIyEES5_S5_.cold:
.L933:
	movq	136(%rsp), %rcx
	call	free
	movq	%rbx, %rcx
.LEHB31:
	call	_Unwind_Resume
	nop
.LEHE31:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8436:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8436-.LLSDACSBC8436
.LLSDACSBC8436:
	.uleb128 .LEHB31-.LCOLDB90
	.uleb128 .LEHE31-.LEHB31
	.uleb128 0
	.uleb128 0
.LLSDACSEC8436:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE90:
	.text
.LHOTE90:
	.section .rdata,"dr"
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
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	acos;	.scl	2;	.type	32;	.endef
	.def	cos;	.scl	2;	.type	32;	.endef
	.def	sin;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	sincos;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
