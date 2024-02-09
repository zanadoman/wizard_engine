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
	jp	.L83
	mulsd	.LC13(%rip), %xmm3
	movapd	%xmm3, %xmm0
	call	cos
	mulsd	%xmm7, %xmm0
	movaps	48(%rsp), %xmm7
	addsd	%xmm6, %xmm0
	movaps	32(%rsp), %xmm6
	addq	$72, %rsp
	ret
.L83:
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	movq	%xmm1, %rdx
	leaq	.LC12(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC14:
	.ascii "wze::engine.vector.TerminalY(): InitialY must not be NaN\12Params: InitialY: %lf, Length: %lf, Angle: %lf\12\0"
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
	jp	.L89
	mulsd	.LC13(%rip), %xmm3
	movapd	%xmm3, %xmm0
	call	sin
	mulsd	%xmm7, %xmm0
	movaps	48(%rsp), %xmm7
	addsd	%xmm6, %xmm0
	movaps	32(%rsp), %xmm6
	addq	$72, %rsp
	ret
.L89:
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	movq	%xmm1, %rdx
	leaq	.LC14(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC15:
	.ascii "neo::array(): Memory allocation failed\12Params: Length: %lld\12\0"
	.align 8
.LC16:
	.ascii "wze::engine.vector.RayCast(): InitialX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC17:
	.ascii "wze::engine.vector.RayCast(): InitialY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC18:
	.ascii "wze::engine.vector.RayCast(): TerminalX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC19:
	.ascii "wze::engine.vector.RayCast(): TerminalY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC20:
	.ascii "wze::engine.vector.RayCast(): SamplingStep must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC22:
	.ascii "wze::engine.vector.RayCast(): SamplingStep must not be less than or equal to 0\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC23:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB25:
	.text
.LHOTB25:
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
	movzwl	608(%r8), %esi
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
	jne	.L91
	movq	$0, 152(%rsp)
	xorl	%ebx, %ebx
.L92:
	ucomisd	%xmm11, %xmm11
	jp	.L184
	ucomisd	%xmm9, %xmm9
	jp	.L185
	ucomisd	%xmm8, %xmm8
	jp	.L186
	ucomisd	%xmm12, %xmm12
	jp	.L187
	ucomisd	%xmm10, %xmm10
	jp	.L188
	pxor	%xmm0, %xmm0
	comisd	%xmm10, %xmm0
	jnb	.L189
	ucomisd	%xmm8, %xmm11
	movl	$0, %ecx
	setnp	%dl
	cmovne	%ecx, %edx
	ucomisd	%xmm12, %xmm9
	setnp	%al
	cmovne	%ecx, %eax
	andb	%al, %dl
	movb	%dl, 104(%rsp)
	jne	.L106
	movq	584(%r8), %rcx
	cmpq	$1, %rcx
	jbe	.L140
	movl	$1, %ebx
	xorl	%edi, %edi
	jmp	.L128
	.p2align 4,,10
	.p2align 3
.L108:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jnb	.L190
.L128:
	movq	592(%r8), %rax
	leaq	0(,%rbx,8), %r12
	movq	(%rax,%rbx,8), %rdx
	testq	%rdx, %rdx
	je	.L108
	movq	208(%rdx), %r9
	xorl	%edx, %edx
	testq	%r13, %r13
	je	.L108
	cmpq	(%r14,%rdx,8), %r9
	je	.L191
.L170:
	addq	$1, %rdx
	cmpq	%rdx, %r13
	je	.L108
	cmpq	(%r14,%rdx,8), %r9
	jne	.L170
.L191:
	xorl	%edx, %edx
	cmpq	$0, 88(%rsp)
	movq	112(%rsp), %r9
	je	.L112
.L139:
	cmpq	%rbx, (%r9,%rdx,8)
	je	.L108
	addq	$1, %rdx
	cmpq	%rdx, 88(%rsp)
	jne	.L139
.L112:
	cmpq	%rcx, %rbx
	jnb	.L183
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L114:
	movq	(%rax,%r12), %rax
	cmpq	152(%rax), %rsi
	jnb	.L108
	movq	160(%rax), %rax
	leaq	0(,%rsi,8), %r15
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	jne	.L115
.L119:
	movq	592(%r8), %rax
	addq	$1, %rsi
	cmpq	%rcx, %rbx
	jb	.L114
.L183:
	movq	%rbx, %rdx
	leaq	.LC23(%rip), %rcx
.LEHB0:
	call	_Z6printfPKcz
	jmp	.L97
	.p2align 4,,10
	.p2align 3
.L190:
	movq	152(%rsp), %rbx
.L107:
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
	ja	.L192
	call	acos
	movapd	%xmm0, %xmm8
.L131:
	pxor	%xmm0, %xmm0
	movzwl	126(%rsp), %r13d
	comisd	%xmm0, %xmm11
	jbe	.L174
.L134:
	testq	%rdi, %rdi
	je	.L137
	movq	144(%rsp), %r12
	xorl	%esi, %esi
	jmp	.L133
	.p2align 4,,10
	.p2align 3
.L194:
	addq	$1, %rsi
	cmpq	%rdi, %rsi
	je	.L137
.L133:
	movq	0(%rbp), %rax
	leaq	600(%rax), %rcx
	cmpq	%rsi, %r12
	je	.L193
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
	je	.L194
.L106:
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
.L192:
	call	acos
	movsd	.LC24(%rip), %xmm8
	subsd	%xmm0, %xmm8
	jmp	.L131
	.p2align 4,,10
	.p2align 3
.L115:
	movq	24(%rax), %rdx
	xorl	%eax, %eax
	cmpq	$0, 80(%rsp)
	movq	96(%rsp), %r9
	je	.L118
.L117:
	cmpq	(%r9,%rax,8), %rdx
	je	.L119
	addq	$1, %rax
	cmpq	%rax, 80(%rsp)
	jne	.L117
.L118:
	cmpq	%rdi, 144(%rsp)
	je	.L195
.L121:
	movq	592(%r8), %rax
	cmpq	%rcx, %rbx
	jnb	.L183
	movq	(%rax,%r12), %rdx
	movq	160(%rdx), %r9
	cmpq	152(%rdx), %rsi
	jnb	.L196
	movq	(%r9,%r15), %r10
	leaq	1(%rdi), %rdx
	movq	152(%rsp), %r9
	cmpq	144(%rsp), %rdi
	jnb	.L197
	movq	%r10, (%r9,%rdi,8)
	addq	$1, %rsi
	movq	%rdx, %rdi
	jmp	.L114
	.p2align 4,,10
	.p2align 3
.L137:
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
	ja	.L134
.L174:
	movb	$1, 104(%rsp)
	jmp	.L106
.L195:
	movzwl	608(%r8), %eax
	leaq	144(%rsp), %rcx
	movq	%rdi, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0
.LEHE0:
	movq	0(%rbp), %r8
	movq	584(%r8), %rcx
	jmp	.L121
.L91:
	leaq	0(,%rsi,8), %rcx
	movq	%r8, 104(%rsp)
	call	malloc
	movq	104(%rsp), %r8
	testq	%rax, %rax
	movq	%rax, 152(%rsp)
	movq	%rax, %rbx
	jne	.L92
	leaq	.LC15(%rip), %rcx
	movq	%rsi, %rdx
.LEHB1:
	call	_Z6printfPKcz
.LEHE1:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L140:
	xorl	%edi, %edi
	jmp	.L107
.L193:
	movq	%r12, %rdx
	leaq	.LC23(%rip), %rcx
.LEHB2:
	call	_Z6printfPKcz
.L97:
	movl	$1, %ecx
	call	exit
.L197:
	movq	%rdi, %rdx
	leaq	.LC23(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L97
.L186:
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
	leaq	.LC18(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 64(%rsp)
	movzwl	120(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L97
.L187:
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
	leaq	.LC19(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 64(%rsp)
	movzwl	120(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L97
.L185:
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
	leaq	.LC17(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 64(%rsp)
	movzwl	120(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L97
.L184:
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
	leaq	.LC16(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 64(%rsp)
	movzwl	120(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L97
.L189:
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
	jmp	.L97
.L188:
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
	jmp	.L97
.L196:
	movq	%rsi, %rdx
	leaq	.LC23(%rip), %rcx
	call	_Z6printfPKcz
.LEHE2:
	jmp	.L97
.L146:
	movq	%rax, %rbx
	jmp	.L138
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
	.uleb128 .L146-.LFB8428
	.uleb128 0
	.uleb128 .LEHB1-.LFB8428
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB8428
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L146-.LFB8428
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
.L138:
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
	.uleb128 .LEHB3-.LCOLDB25
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSEC8428:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE25:
	.text
.LHOTE25:
	.section .rdata,"dr"
	.align 8
.LC26:
	.ascii "wze::engine.vector.RayCast(): InitialX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC27:
	.ascii "wze::engine.vector.RayCast(): InitialY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC28:
	.ascii "wze::engine.vector.RayCast(): TerminalX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC29:
	.ascii "wze::engine.vector.RayCast(): TerminalY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC30:
	.ascii "wze::engine.vector.RayCast(): SamplingStep must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC31:
	.ascii "wze::engine.vector.RayCast(): SamplingStep must not be less than or equal to 0\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC32:
	.ascii "wze::engine.vector.RayCast(): ActorTypeWhiteList must not be NULL\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB33:
	.text
.LHOTB33:
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
	movzwl	608(%rdx), %esi
	movq	8(%rax), %r15
	movq	%rdi, 96(%rsp)
	movq	%rsi, 144(%rsp)
	testq	%rsi, %rsi
	jne	.L199
	movq	$0, 152(%rsp)
	xorl	%ebx, %ebx
.L200:
	ucomisd	%xmm11, %xmm11
	jp	.L293
	ucomisd	%xmm9, %xmm9
	jp	.L294
	ucomisd	%xmm8, %xmm8
	jp	.L295
	ucomisd	%xmm12, %xmm12
	jp	.L296
	ucomisd	%xmm10, %xmm10
	jp	.L297
	pxor	%xmm0, %xmm0
	comisd	%xmm10, %xmm0
	jnb	.L298
	testq	%r13, %r13
	je	.L299
	ucomisd	%xmm8, %xmm11
	movl	$0, %r8d
	setnp	%cl
	cmovne	%r8d, %ecx
	ucomisd	%xmm12, %xmm9
	setnp	%al
	cmovne	%r8d, %eax
	andb	%al, %cl
	movb	%cl, 112(%rsp)
	jne	.L215
	movq	584(%rdx), %r8
	cmpq	$1, %r8
	jbe	.L249
	movl	$1, %ebx
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L237:
	movq	592(%rdx), %rax
	leaq	0(,%rbx,8), %r12
	movq	(%rax,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L217
	movq	0(%r13), %r9
	movq	208(%rcx), %r10
	xorl	%ecx, %ecx
	movq	8(%r13), %r11
	testq	%r9, %r9
	je	.L217
.L218:
	cmpq	(%r11,%rcx,8), %r10
	je	.L300
	addq	$1, %rcx
	cmpq	%rcx, %r9
	jne	.L218
	.p2align 4,,10
	.p2align 3
.L217:
	addq	$1, %rbx
	cmpq	%r8, %rbx
	jb	.L237
	movq	152(%rsp), %rbx
.L216:
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
	ja	.L301
	call	acos
	movapd	%xmm0, %xmm8
.L240:
	pxor	%xmm0, %xmm0
	movzwl	126(%rsp), %r13d
	comisd	%xmm0, %xmm11
	jbe	.L284
.L243:
	testq	%rdi, %rdi
	je	.L246
	movq	144(%rsp), %r12
	xorl	%esi, %esi
	jmp	.L242
	.p2align 4,,10
	.p2align 3
.L303:
	addq	$1, %rsi
	cmpq	%rdi, %rsi
	je	.L246
.L242:
	movq	0(%rbp), %rax
	leaq	600(%rax), %rcx
	cmpq	%rsi, %r12
	je	.L302
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
	je	.L303
.L215:
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
.L300:
	xorl	%ecx, %ecx
	cmpq	$0, 88(%rsp)
	movq	104(%rsp), %r9
	je	.L221
.L248:
	cmpq	(%r9,%rcx,8), %rbx
	je	.L217
	addq	$1, %rcx
	cmpq	%rcx, 88(%rsp)
	jne	.L248
.L221:
	cmpq	%r8, %rbx
	jnb	.L292
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L223:
	movq	(%rax,%r12), %rax
	cmpq	152(%rax), %rsi
	jnb	.L217
	movq	160(%rax), %rax
	leaq	0(,%rsi,8), %r14
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	jne	.L224
.L228:
	movq	592(%rdx), %rax
	addq	$1, %rsi
	cmpq	%r8, %rbx
	jb	.L223
.L292:
	movq	%rbx, %rdx
	leaq	.LC23(%rip), %rcx
	call	_Z6printfPKcz
.L205:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L224:
	movq	24(%rax), %rcx
	movq	96(%rsp), %r9
	xorl	%eax, %eax
	testq	%r15, %r15
	je	.L227
.L226:
	cmpq	(%r9,%rax,8), %rcx
	je	.L228
	addq	$1, %rax
	cmpq	%rax, %r15
	jne	.L226
.L227:
	cmpq	%rdi, 144(%rsp)
	je	.L304
.L230:
	movq	592(%rdx), %rax
	cmpq	%r8, %rbx
	jnb	.L292
	movq	(%rax,%r12), %rcx
	movq	160(%rcx), %r9
	cmpq	152(%rcx), %rsi
	jnb	.L305
	movq	(%r9,%r14), %r10
	leaq	1(%rdi), %rcx
	movq	152(%rsp), %r9
	cmpq	144(%rsp), %rdi
	jnb	.L306
	movq	%r10, (%r9,%rdi,8)
	addq	$1, %rsi
	movq	%rcx, %rdi
	jmp	.L223
	.p2align 4,,10
	.p2align 3
.L304:
	movzwl	608(%rdx), %eax
	leaq	144(%rsp), %rcx
	movq	%rdi, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0
.LEHE4:
	movq	0(%rbp), %rdx
	movq	584(%rdx), %r8
	jmp	.L230
.L301:
	call	acos
	movsd	.LC24(%rip), %xmm8
	subsd	%xmm0, %xmm8
	jmp	.L240
	.p2align 4,,10
	.p2align 3
.L246:
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
	ja	.L243
.L284:
	movb	$1, 112(%rsp)
	jmp	.L215
.L199:
	leaq	0(,%rsi,8), %rcx
	movq	%rdx, 112(%rsp)
	call	malloc
	movq	112(%rsp), %rdx
	testq	%rax, %rax
	movq	%rax, 152(%rsp)
	movq	%rax, %rbx
	jne	.L200
	leaq	.LC15(%rip), %rcx
	movq	%rsi, %rdx
.LEHB5:
	call	_Z6printfPKcz
.LEHE5:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L249:
	xorl	%edi, %edi
	jmp	.L216
.L302:
	movq	%r12, %rdx
	leaq	.LC23(%rip), %rcx
.LEHB6:
	call	_Z6printfPKcz
	jmp	.L205
.L297:
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
	jmp	.L205
.L296:
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
	leaq	.LC29(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L205
.L295:
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
	leaq	.LC28(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L205
.L294:
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
	leaq	.LC27(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L205
.L293:
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
	leaq	.LC26(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L205
.L305:
	movq	%rsi, %rdx
	leaq	.LC23(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L205
.L306:
	movq	%rdi, %rdx
	leaq	.LC23(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L205
.L299:
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
	leaq	.LC32(%rip), %rcx
	movq	%rax, 56(%rsp)
	movzwl	120(%rsp), %eax
	movsd	%xmm12, 32(%rsp)
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L205
.L298:
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
.LEHE6:
	jmp	.L205
.L254:
	movq	%rax, %rbx
	jmp	.L247
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
	.uleb128 .L254-.LFB8430
	.uleb128 0
	.uleb128 .LEHB5-.LFB8430
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB8430
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L254-.LFB8430
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
.L247:
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
	.uleb128 .LEHB7-.LCOLDB33
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSEC8430:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE33:
	.text
.LHOTE33:
	.section .rdata,"dr"
	.align 8
.LC34:
	.ascii "wze::engine.vector.RayCast(): InitialX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC35:
	.ascii "wze::engine.vector.RayCast(): InitialY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC36:
	.ascii "wze::engine.vector.RayCast(): TerminalX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC37:
	.ascii "wze::engine.vector.RayCast(): TerminalY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC38:
	.ascii "wze::engine.vector.RayCast(): SamplingStep must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC39:
	.ascii "wze::engine.vector.RayCast(): SamplingStep must not be less than or equal to 0\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC40:
	.ascii "wze::engine.vector.RayCast(): ActorIDBlacklist must not be NULL\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB41:
	.text
.LHOTB41:
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
	movzwl	608(%rdx), %esi
	movq	%rdi, 88(%rsp)
	movq	(%rax), %r15
	movq	8(%rax), %r14
	movq	%rsi, 128(%rsp)
	testq	%rsi, %rsi
	jne	.L308
	movq	$0, 136(%rsp)
	xorl	%ebx, %ebx
.L309:
	ucomisd	%xmm11, %xmm11
	jp	.L404
	ucomisd	%xmm9, %xmm9
	jp	.L405
	ucomisd	%xmm8, %xmm8
	jp	.L406
	ucomisd	%xmm12, %xmm12
	jp	.L407
	ucomisd	%xmm10, %xmm10
	jp	.L408
	pxor	%xmm0, %xmm0
	comisd	%xmm10, %xmm0
	jnb	.L409
	cmpq	$0, 400(%rsp)
	je	.L410
	ucomisd	%xmm8, %xmm11
	movl	$0, %r8d
	setnp	%cl
	cmovne	%r8d, %ecx
	ucomisd	%xmm12, %xmm9
	setnp	%al
	cmovne	%r8d, %eax
	andb	%al, %cl
	movb	%cl, 96(%rsp)
	jne	.L324
	movq	584(%rdx), %r8
	cmpq	$1, %r8
	jbe	.L358
	movl	$1, %ebx
	xorl	%edi, %edi
	jmp	.L346
	.p2align 4,,10
	.p2align 3
.L326:
	addq	$1, %rbx
	cmpq	%r8, %rbx
	jnb	.L411
.L346:
	movq	592(%rdx), %rax
	leaq	0(,%rbx,8), %r12
	movq	(%rax,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L326
	movq	208(%rcx), %r9
	xorl	%ecx, %ecx
	cmpq	$0, 80(%rsp)
	movq	88(%rsp), %r10
	je	.L326
	cmpq	(%r10,%rcx,8), %r9
	je	.L412
.L389:
	addq	$1, %rcx
	cmpq	%rcx, 80(%rsp)
	je	.L326
	cmpq	(%r10,%rcx,8), %r9
	jne	.L389
.L412:
	movq	400(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	(%rsi), %r9
	movq	8(%rsi), %r10
	testq	%r9, %r9
	je	.L330
.L357:
	cmpq	%rbx, (%r10,%rcx,8)
	je	.L326
	addq	$1, %rcx
	cmpq	%rcx, %r9
	jne	.L357
	.p2align 4,,10
	.p2align 3
.L330:
	cmpq	%r8, %rbx
	jnb	.L401
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L332:
	movq	(%rax,%r12), %rax
	cmpq	152(%rax), %rsi
	jnb	.L326
	movq	160(%rax), %rax
	leaq	0(,%rsi,8), %r13
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	jne	.L333
.L337:
	movq	592(%rdx), %rax
	addq	$1, %rsi
	cmpq	%r8, %rbx
	jb	.L332
.L401:
	movq	%rbx, %rdx
	leaq	.LC23(%rip), %rcx
.LEHB8:
	call	_Z6printfPKcz
.L314:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L333:
	movq	24(%rax), %rcx
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.L336
.L335:
	cmpq	(%r15,%rax,8), %rcx
	je	.L337
	addq	$1, %rax
	cmpq	%rax, %r14
	jne	.L335
.L336:
	cmpq	%rdi, 128(%rsp)
	je	.L413
.L339:
	movq	592(%rdx), %rax
	cmpq	%r8, %rbx
	jnb	.L401
	movq	(%rax,%r12), %rcx
	movq	160(%rcx), %r9
	cmpq	152(%rcx), %rsi
	jnb	.L403
	movq	(%r9,%r13), %r10
	leaq	1(%rdi), %rcx
	movq	136(%rsp), %r9
	cmpq	128(%rsp), %rdi
	jnb	.L414
	movq	%r10, (%r9,%rdi,8)
	addq	$1, %rsi
	movq	%rcx, %rdi
	jmp	.L332
	.p2align 4,,10
	.p2align 3
.L411:
	movq	136(%rsp), %rbx
.L325:
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
	ja	.L415
	call	acos
	movapd	%xmm0, %xmm8
.L349:
	pxor	%xmm0, %xmm0
	movzwl	110(%rsp), %r13d
	comisd	%xmm0, %xmm11
	jbe	.L393
.L352:
	testq	%rdi, %rdi
	je	.L355
	movq	128(%rsp), %r12
	xorl	%esi, %esi
	jmp	.L351
	.p2align 4,,10
	.p2align 3
.L416:
	addq	$1, %rsi
	cmpq	%rdi, %rsi
	je	.L355
.L351:
	movq	0(%rbp), %rax
	leaq	600(%rax), %rcx
	cmpq	%r12, %rsi
	je	.L403
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
	je	.L416
.L324:
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
.L413:
	movzwl	608(%rdx), %eax
	leaq	128(%rsp), %rcx
	movq	%rdi, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0
.LEHE8:
	movq	0(%rbp), %rdx
	movq	584(%rdx), %r8
	jmp	.L339
.L415:
	call	acos
	movsd	.LC24(%rip), %xmm8
	subsd	%xmm0, %xmm8
	jmp	.L349
	.p2align 4,,10
	.p2align 3
.L355:
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
	ja	.L352
.L393:
	movb	$1, 96(%rsp)
	jmp	.L324
.L308:
	leaq	0(,%rsi,8), %rcx
	movq	%rdx, 96(%rsp)
	call	malloc
	movq	96(%rsp), %rdx
	testq	%rax, %rax
	movq	%rax, 136(%rsp)
	movq	%rax, %rbx
	jne	.L309
	leaq	.LC15(%rip), %rcx
	movq	%rsi, %rdx
.LEHB9:
	call	_Z6printfPKcz
.LEHE9:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L358:
	xorl	%edi, %edi
	jmp	.L325
.L403:
	movq	%rsi, %rdx
	leaq	.LC23(%rip), %rcx
.LEHB10:
	call	_Z6printfPKcz
	jmp	.L314
.L414:
	movq	%rdi, %rdx
	leaq	.LC23(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L314
.L406:
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
	leaq	.LC36(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 56(%rsp)
	movzwl	104(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L314
.L408:
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
	jmp	.L314
.L407:
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
	leaq	.LC37(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 56(%rsp)
	movzwl	104(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L314
.L405:
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
	leaq	.LC35(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 56(%rsp)
	movzwl	104(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L314
.L404:
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
	leaq	.LC34(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 56(%rsp)
	movzwl	104(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L314
.L410:
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
	leaq	.LC40(%rip), %rcx
	movq	%rax, 56(%rsp)
	movzwl	104(%rsp), %eax
	movsd	%xmm12, 32(%rsp)
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L314
.L409:
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
.LEHE10:
	jmp	.L314
.L363:
	movq	%rax, %rbx
	jmp	.L356
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
	.uleb128 .L363-.LFB8431
	.uleb128 0
	.uleb128 .LEHB9-.LFB8431
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB8431
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L363-.LFB8431
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
.L356:
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
	.uleb128 .LEHB11-.LCOLDB41
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSEC8431:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE41:
	.text
.LHOTE41:
	.section .rdata,"dr"
	.align 8
.LC42:
	.ascii "wze::engine.vector.RayCast(): InitialX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC43:
	.ascii "wze::engine.vector.RayCast(): InitialY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC44:
	.ascii "wze::engine.vector.RayCast(): TerminalX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC45:
	.ascii "wze::engine.vector.RayCast(): TerminalY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC46:
	.ascii "wze::engine.vector.RayCast(): SamplingStep must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC47:
	.ascii "wze::engine.vector.RayCast(): SamplingStep must not be less than or equal to 0\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC48:
	.ascii "wze::engine.vector.RayCast(): OverlapboxTypeBlacklist must not be NULL\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB49:
	.text
.LHOTB49:
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
	movzwl	608(%r8), %esi
	movq	%rbx, 104(%rsp)
	movq	%rax, 88(%rsp)
	movq	%rsi, 144(%rsp)
	testq	%rsi, %rsi
	jne	.L418
	movq	$0, 152(%rsp)
	xorl	%ebx, %ebx
.L419:
	ucomisd	%xmm11, %xmm11
	jp	.L514
	ucomisd	%xmm9, %xmm9
	jp	.L515
	ucomisd	%xmm8, %xmm8
	jp	.L516
	ucomisd	%xmm12, %xmm12
	jp	.L517
	ucomisd	%xmm10, %xmm10
	jp	.L518
	pxor	%xmm0, %xmm0
	comisd	%xmm10, %xmm0
	jnb	.L519
	cmpq	$0, 424(%rsp)
	je	.L520
	ucomisd	%xmm8, %xmm11
	movl	$0, %ecx
	setnp	%dl
	cmovne	%ecx, %edx
	ucomisd	%xmm12, %xmm9
	setnp	%al
	cmovne	%ecx, %eax
	andb	%al, %dl
	movb	%dl, 96(%rsp)
	jne	.L434
	movq	584(%r8), %rcx
	cmpq	$1, %rcx
	jbe	.L468
	movl	$1, %ebx
	xorl	%esi, %esi
	jmp	.L456
	.p2align 4,,10
	.p2align 3
.L436:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jnb	.L521
.L456:
	movq	592(%r8), %rax
	leaq	0(,%rbx,8), %r12
	movq	(%rax,%rbx,8), %rdx
	testq	%rdx, %rdx
	je	.L436
	movq	208(%rdx), %r9
	xorl	%edx, %edx
	testq	%r13, %r13
	je	.L436
	cmpq	(%r14,%rdx,8), %r9
	je	.L522
.L499:
	addq	$1, %rdx
	cmpq	%rdx, %r13
	je	.L436
	cmpq	(%r14,%rdx,8), %r9
	jne	.L499
.L522:
	xorl	%edx, %edx
	cmpq	$0, 88(%rsp)
	movq	104(%rsp), %r9
	je	.L440
.L467:
	cmpq	%rbx, (%r9,%rdx,8)
	je	.L436
	addq	$1, %rdx
	cmpq	%rdx, 88(%rsp)
	jne	.L467
.L440:
	cmpq	%rcx, %rbx
	jnb	.L511
	leaq	144(%rsp), %rdx
	movl	$1, %edi
	movq	%rdx, 120(%rsp)
	.p2align 4,,10
	.p2align 3
.L442:
	movq	(%rax,%r12), %rax
	cmpq	152(%rax), %rdi
	jnb	.L436
	movq	160(%rax), %rax
	leaq	0(,%rdi,8), %r15
	movq	(%rax,%rdi,8), %rax
	testq	%rax, %rax
	je	.L447
	movq	24(%rax), %r9
	movq	424(%rsp), %rax
	movq	(%rax), %rdx
	movq	8(%rax), %r10
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.L445
.L446:
	cmpq	(%r10,%rax,8), %r9
	je	.L447
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L446
	.p2align 4,,10
	.p2align 3
.L445:
	cmpq	%rsi, 144(%rsp)
	je	.L523
.L449:
	movq	592(%r8), %rax
	cmpq	%rcx, %rbx
	jnb	.L511
	movq	(%rax,%r12), %rdx
	movq	160(%rdx), %r9
	cmpq	152(%rdx), %rdi
	jnb	.L513
	movq	(%r9,%r15), %r10
	leaq	1(%rsi), %rdx
	movq	152(%rsp), %r9
	cmpq	144(%rsp), %rsi
	jnb	.L524
	movq	%r10, (%r9,%rsi,8)
	addq	$1, %rdi
	movq	%rdx, %rsi
	jmp	.L442
	.p2align 4,,10
	.p2align 3
.L521:
	movq	152(%rsp), %rbx
.L435:
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
	ja	.L525
	call	acos
	movapd	%xmm0, %xmm8
.L459:
	pxor	%xmm0, %xmm0
	movzwl	118(%rsp), %r13d
	comisd	%xmm0, %xmm11
	jbe	.L503
.L462:
	testq	%rsi, %rsi
	je	.L465
	movq	144(%rsp), %r12
	xorl	%edi, %edi
	jmp	.L461
	.p2align 4,,10
	.p2align 3
.L526:
	addq	$1, %rdi
	cmpq	%rsi, %rdi
	je	.L465
.L461:
	movq	0(%rbp), %rax
	leaq	600(%rax), %rcx
	cmpq	%r12, %rdi
	je	.L513
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
	je	.L526
.L434:
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
.L525:
	call	acos
	movsd	.LC24(%rip), %xmm8
	subsd	%xmm0, %xmm8
	jmp	.L459
	.p2align 4,,10
	.p2align 3
.L447:
	movq	592(%r8), %rax
	addq	$1, %rdi
	cmpq	%rcx, %rbx
	jb	.L442
.L511:
	movq	%rbx, %rdx
	leaq	.LC23(%rip), %rcx
	call	_Z6printfPKcz
.L424:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L465:
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
	ja	.L462
.L503:
	movb	$1, 96(%rsp)
	jmp	.L434
	.p2align 4,,10
	.p2align 3
.L523:
	movzwl	608(%r8), %eax
	movq	120(%rsp), %rcx
	movq	%rsi, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0
.LEHE12:
	movq	0(%rbp), %r8
	movq	584(%r8), %rcx
	jmp	.L449
.L418:
	leaq	0(,%rsi,8), %rcx
	movq	%r8, 96(%rsp)
	call	malloc
	movq	96(%rsp), %r8
	testq	%rax, %rax
	movq	%rax, 152(%rsp)
	movq	%rax, %rbx
	jne	.L419
	leaq	.LC15(%rip), %rcx
	movq	%rsi, %rdx
.LEHB13:
	call	_Z6printfPKcz
.LEHE13:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L468:
	xorl	%esi, %esi
	jmp	.L435
.L513:
	movq	%rdi, %rdx
	leaq	.LC23(%rip), %rcx
.LEHB14:
	call	_Z6printfPKcz
	jmp	.L424
.L514:
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
	leaq	.LC42(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 64(%rsp)
	movzwl	112(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L424
.L516:
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
	leaq	.LC44(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 64(%rsp)
	movzwl	112(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L424
.L524:
	movq	%rsi, %rdx
	leaq	.LC23(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L424
.L519:
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
	jmp	.L424
.L518:
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
	jmp	.L424
.L517:
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
	leaq	.LC45(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 64(%rsp)
	movzwl	112(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L424
.L515:
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
	leaq	.LC43(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 64(%rsp)
	movzwl	112(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L424
.L520:
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
	leaq	.LC48(%rip), %rcx
	movq	%rax, 64(%rsp)
	movzwl	112(%rsp), %eax
	movsd	%xmm12, 32(%rsp)
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
.LEHE14:
	jmp	.L424
.L473:
	movq	%rax, %rbx
	jmp	.L466
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
	.uleb128 .L473-.LFB8432
	.uleb128 0
	.uleb128 .LEHB13-.LFB8432
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB8432
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L473-.LFB8432
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
.L466:
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
	.uleb128 .LEHB15-.LCOLDB49
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSEC8432:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE49:
	.text
.LHOTE49:
	.section .rdata,"dr"
	.align 8
.LC50:
	.ascii "wze::engine.vector.RayCast(): InitialX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC51:
	.ascii "wze::engine.vector.RayCast(): InitialY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC52:
	.ascii "wze::engine.vector.RayCast(): TerminalX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC53:
	.ascii "wze::engine.vector.RayCast(): TerminalY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC54:
	.ascii "wze::engine.vector.RayCast(): SamplingStep must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC55:
	.ascii "wze::engine.vector.RayCast(): SamplingStep must not be less than or equal to 0\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC56:
	.ascii "wze::engine.vector.RayCast(): ActorTypeWhitelist must not be NULL\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC57:
	.ascii "wze::engine.vector.RayCast(): ActorIDBlacklist must not be NULL\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist(length): %ld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB58:
	.text
.LHOTB58:
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
	movzwl	608(%rdx), %esi
	movq	%rsi, 128(%rsp)
	testq	%rsi, %rsi
	jne	.L528
	movq	$0, 136(%rsp)
	xorl	%ebx, %ebx
.L529:
	ucomisd	%xmm11, %xmm11
	jp	.L625
	ucomisd	%xmm9, %xmm9
	jp	.L626
	ucomisd	%xmm8, %xmm8
	jp	.L627
	ucomisd	%xmm12, %xmm12
	jp	.L628
	ucomisd	%xmm10, %xmm10
	jp	.L629
	pxor	%xmm0, %xmm0
	comisd	%xmm10, %xmm0
	jnb	.L630
	cmpq	$0, 392(%rsp)
	je	.L631
	cmpq	$0, 400(%rsp)
	je	.L632
	ucomisd	%xmm8, %xmm11
	movl	$0, %r8d
	setnp	%cl
	cmovne	%r8d, %ecx
	ucomisd	%xmm12, %xmm9
	setnp	%al
	cmovne	%r8d, %eax
	andb	%al, %cl
	movb	%cl, 88(%rsp)
	jne	.L545
	movq	584(%rdx), %rcx
	cmpq	$1, %rcx
	jbe	.L579
	leaq	128(%rsp), %rax
	movl	$1, %esi
	xorl	%edi, %edi
	movq	%rax, 104(%rsp)
	.p2align 4,,10
	.p2align 3
.L567:
	movq	592(%rdx), %rax
	leaq	0(,%rsi,8), %rbp
	movq	(%rax,%rsi,8), %r8
	testq	%r8, %r8
	je	.L547
	movq	392(%rsp), %rbx
	movq	208(%r8), %r10
	xorl	%r8d, %r8d
	movq	(%rbx), %r9
	movq	8(%rbx), %r11
	testq	%r9, %r9
	je	.L547
.L548:
	cmpq	(%r11,%r8,8), %r10
	je	.L633
	addq	$1, %r8
	cmpq	%r8, %r9
	jne	.L548
	.p2align 4,,10
	.p2align 3
.L547:
	addq	$1, %rsi
	cmpq	%rcx, %rsi
	jb	.L567
	movq	136(%rsp), %rbx
.L546:
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
	ja	.L634
	call	acos
	movapd	%xmm0, %xmm8
.L570:
	pxor	%xmm0, %xmm0
	movzwl	102(%rsp), %r13d
	comisd	%xmm0, %xmm11
	jbe	.L615
.L573:
	testq	%rdi, %rdi
	je	.L576
	movq	128(%rsp), %rbp
	xorl	%esi, %esi
	jmp	.L572
	.p2align 4,,10
	.p2align 3
.L635:
	addq	$1, %rsi
	cmpq	%rdi, %rsi
	je	.L576
.L572:
	movq	(%r12), %rax
	leaq	600(%rax), %rcx
	cmpq	%rbp, %rsi
	je	.L624
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
	je	.L635
.L545:
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
.L633:
	movq	400(%rsp), %rbx
	xorl	%r8d, %r8d
	movq	(%rbx), %r9
	movq	8(%rbx), %r10
	testq	%r9, %r9
	je	.L551
.L578:
	cmpq	%rsi, (%r10,%r8,8)
	je	.L547
	addq	$1, %r8
	cmpq	%r8, %r9
	jne	.L578
	.p2align 4,,10
	.p2align 3
.L551:
	cmpq	%rcx, %rsi
	jnb	.L624
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L553:
	movq	(%rax,%rbp), %rax
	cmpq	152(%rax), %rbx
	jnb	.L547
	movq	160(%rax), %rax
	leaq	0(,%rbx,8), %r13
	movq	(%rax,%rbx,8), %rax
	testq	%rax, %rax
	jne	.L554
.L558:
	movq	592(%rdx), %rax
	addq	$1, %rbx
	cmpq	%rcx, %rsi
	jb	.L553
.L624:
	movq	%rsi, %rdx
	leaq	.LC23(%rip), %rcx
	call	_Z6printfPKcz
.L534:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L554:
	movq	24(%rax), %r8
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.L557
.L556:
	cmpq	(%r15,%rax,8), %r8
	je	.L558
	addq	$1, %rax
	cmpq	%rax, %r14
	jne	.L556
.L557:
	cmpq	128(%rsp), %rdi
	je	.L636
.L560:
	movq	592(%rdx), %rax
	cmpq	%rcx, %rsi
	jnb	.L624
	movq	(%rax,%rbp), %r8
	movq	160(%r8), %r9
	cmpq	152(%r8), %rbx
	jnb	.L637
	movq	(%r9,%r13), %r10
	leaq	1(%rdi), %r8
	movq	136(%rsp), %r9
	cmpq	128(%rsp), %rdi
	jnb	.L638
	movq	%r10, (%r9,%rdi,8)
	addq	$1, %rbx
	movq	%r8, %rdi
	jmp	.L553
	.p2align 4,,10
	.p2align 3
.L636:
	movzwl	608(%rdx), %eax
	movq	104(%rsp), %rcx
	movq	%rdi, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0
.LEHE16:
	movq	(%r12), %rdx
	movq	584(%rdx), %rcx
	jmp	.L560
.L634:
	call	acos
	movsd	.LC24(%rip), %xmm8
	subsd	%xmm0, %xmm8
	jmp	.L570
.L576:
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
	ja	.L573
.L615:
	movb	$1, 88(%rsp)
	jmp	.L545
.L528:
	leaq	0(,%rsi,8), %rcx
	movq	%rdx, 88(%rsp)
	call	malloc
	movq	88(%rsp), %rdx
	testq	%rax, %rax
	movq	%rax, 136(%rsp)
	movq	%rax, %rbx
	jne	.L529
	leaq	.LC15(%rip), %rcx
	movq	%rsi, %rdx
.LEHB17:
	call	_Z6printfPKcz
.LEHE17:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L579:
	xorl	%edi, %edi
	jmp	.L546
.L638:
	movq	%rdi, %rdx
	leaq	.LC23(%rip), %rcx
.LEHB18:
	call	_Z6printfPKcz
	jmp	.L534
.L631:
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
	leaq	.LC56(%rip), %rcx
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L534
.L630:
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
	jmp	.L534
.L629:
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
	jmp	.L534
.L626:
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
	leaq	.LC51(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 56(%rsp)
	movzwl	96(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L534
.L632:
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
	leaq	.LC57(%rip), %rcx
	movq	%rax, 56(%rsp)
	movzwl	96(%rsp), %eax
	movsd	%xmm12, 32(%rsp)
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L534
.L628:
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
	leaq	.LC53(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 56(%rsp)
	movzwl	96(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L534
.L637:
	movq	%rbx, %rdx
	leaq	.LC23(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L534
.L625:
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
	leaq	.LC50(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 56(%rsp)
	movzwl	96(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L534
.L627:
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
	leaq	.LC52(%rip), %rcx
	movsd	%xmm12, 32(%rsp)
	movq	%rax, 56(%rsp)
	movzwl	96(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
.LEHE18:
	jmp	.L534
.L583:
	movq	%rax, %rbx
	jmp	.L577
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
	.uleb128 .L583-.LFB8433
	.uleb128 0
	.uleb128 .LEHB17-.LFB8433
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB18-.LFB8433
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L583-.LFB8433
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
.L577:
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
	.uleb128 .LEHB19-.LCOLDB58
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSEC8433:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE58:
	.text
.LHOTE58:
	.section .rdata,"dr"
	.align 8
.LC59:
	.ascii "wze::engine.vector.RayCast(): InitialX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC60:
	.ascii "wze::engine.vector.RayCast(): InitialY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC61:
	.ascii "wze::engine.vector.RayCast(): TerminalX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC62:
	.ascii "wze::engine.vector.RayCast(): TerminalY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC63:
	.ascii "wze::engine.vector.RayCast(): SamplingStep must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC64:
	.ascii "wze::engine.vector.RayCast(): SamplingStep must not be less than or equal to 0\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC65:
	.ascii "wze::engine.vector.RayCast(): ActorTypeWhitelist must not be NULL\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC66:
	.ascii "wze::engine.vector.RayCast(): OverlapboxTypeBlacklist must not be NULL\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist: %p\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB67:
	.text
.LHOTB67:
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
	movzwl	608(%rdx), %esi
	movq	%rax, 88(%rsp)
	movq	%rsi, 144(%rsp)
	testq	%rsi, %rsi
	jne	.L640
	movq	$0, 152(%rsp)
	xorl	%ebx, %ebx
.L641:
	ucomisd	%xmm11, %xmm11
	jp	.L737
	ucomisd	%xmm9, %xmm9
	jp	.L738
	ucomisd	%xmm8, %xmm8
	jp	.L739
	ucomisd	%xmm12, %xmm12
	jp	.L740
	ucomisd	%xmm10, %xmm10
	jp	.L741
	pxor	%xmm0, %xmm0
	comisd	%xmm10, %xmm0
	jnb	.L742
	testq	%r14, %r14
	je	.L743
	testq	%r13, %r13
	je	.L744
	ucomisd	%xmm8, %xmm11
	movl	$0, %r8d
	setnp	%cl
	cmovne	%r8d, %ecx
	ucomisd	%xmm12, %xmm9
	setnp	%al
	cmovne	%r8d, %eax
	andb	%al, %cl
	movb	%cl, 104(%rsp)
	jne	.L657
	movq	584(%rdx), %r8
	cmpq	$1, %r8
	jbe	.L691
	leaq	144(%rsp), %rax
	movl	$1, %ebx
	xorl	%edi, %edi
	movq	%rax, 120(%rsp)
	.p2align 4,,10
	.p2align 3
.L679:
	movq	592(%rdx), %rax
	leaq	0(,%rbx,8), %r12
	movq	(%rax,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L659
	movq	(%r14), %r9
	movq	208(%rcx), %r10
	xorl	%ecx, %ecx
	movq	8(%r14), %r11
	testq	%r9, %r9
	je	.L659
.L660:
	cmpq	(%r11,%rcx,8), %r10
	je	.L745
	addq	$1, %rcx
	cmpq	%rcx, %r9
	jne	.L660
	.p2align 4,,10
	.p2align 3
.L659:
	addq	$1, %rbx
	cmpq	%r8, %rbx
	jb	.L679
	movq	152(%rsp), %rbx
.L658:
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
	ja	.L746
	call	acos
	movapd	%xmm0, %xmm8
.L682:
	pxor	%xmm0, %xmm0
	movzwl	118(%rsp), %r13d
	comisd	%xmm0, %xmm11
	jbe	.L727
.L685:
	testq	%rdi, %rdi
	je	.L688
	movq	144(%rsp), %r12
	xorl	%esi, %esi
	jmp	.L684
	.p2align 4,,10
	.p2align 3
.L747:
	addq	$1, %rsi
	cmpq	%rdi, %rsi
	je	.L688
.L684:
	movq	0(%rbp), %rax
	leaq	600(%rax), %rcx
	cmpq	%r12, %rsi
	je	.L736
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
	je	.L747
.L657:
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
.L745:
	xorl	%ecx, %ecx
	cmpq	$0, 88(%rsp)
	movq	96(%rsp), %r9
	je	.L663
.L690:
	cmpq	%rbx, (%r9,%rcx,8)
	je	.L659
	addq	$1, %rcx
	cmpq	%rcx, 88(%rsp)
	jne	.L690
.L663:
	cmpq	%r8, %rbx
	jnb	.L734
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L665:
	movq	(%rax,%r12), %rax
	cmpq	152(%rax), %rsi
	jnb	.L659
	movq	160(%rax), %rax
	leaq	0(,%rsi,8), %r15
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L670
	movq	0(%r13), %rcx
	movq	24(%rax), %r9
	xorl	%eax, %eax
	movq	8(%r13), %r10
	testq	%rcx, %rcx
	je	.L668
.L669:
	cmpq	(%r10,%rax,8), %r9
	je	.L670
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L669
	.p2align 4,,10
	.p2align 3
.L668:
	cmpq	%rdi, 144(%rsp)
	je	.L748
.L672:
	movq	592(%rdx), %rax
	cmpq	%r8, %rbx
	jnb	.L734
	movq	(%rax,%r12), %rcx
	movq	160(%rcx), %r9
	cmpq	152(%rcx), %rsi
	jnb	.L736
	movq	(%r9,%r15), %r10
	leaq	1(%rdi), %rcx
	movq	152(%rsp), %r9
	cmpq	144(%rsp), %rdi
	jnb	.L749
	movq	%r10, (%r9,%rdi,8)
	addq	$1, %rsi
	movq	%rcx, %rdi
	jmp	.L665
	.p2align 4,,10
	.p2align 3
.L670:
	movq	592(%rdx), %rax
	addq	$1, %rsi
	cmpq	%r8, %rbx
	jb	.L665
.L734:
	movq	%rbx, %rdx
	leaq	.LC23(%rip), %rcx
	call	_Z6printfPKcz
.L646:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L748:
	movzwl	608(%rdx), %eax
	movq	120(%rsp), %rcx
	movq	%rdi, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0
.LEHE20:
	movq	0(%rbp), %rdx
	movq	584(%rdx), %r8
	jmp	.L672
	.p2align 4,,10
	.p2align 3
.L746:
	call	acos
	movsd	.LC24(%rip), %xmm8
	subsd	%xmm0, %xmm8
	jmp	.L682
	.p2align 4,,10
	.p2align 3
.L688:
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
	ja	.L685
.L727:
	movb	$1, 104(%rsp)
	jmp	.L657
	.p2align 4,,10
	.p2align 3
.L640:
	leaq	0(,%rsi,8), %rcx
	movq	%rdx, 104(%rsp)
	call	malloc
	movq	104(%rsp), %rdx
	testq	%rax, %rax
	movq	%rax, 152(%rsp)
	movq	%rax, %rbx
	jne	.L641
	leaq	.LC15(%rip), %rcx
	movq	%rsi, %rdx
.LEHB21:
	call	_Z6printfPKcz
.LEHE21:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L691:
	xorl	%edi, %edi
	jmp	.L658
.L736:
	movq	%rsi, %rdx
	leaq	.LC23(%rip), %rcx
.LEHB22:
	call	_Z6printfPKcz
	jmp	.L646
.L741:
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
	jmp	.L646
.L740:
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
	leaq	.LC62(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L646
.L749:
	movq	%rdi, %rdx
	leaq	.LC23(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L646
.L744:
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
	leaq	.LC66(%rip), %rcx
	movq	%rax, 64(%rsp)
	movzwl	112(%rsp), %eax
	movsd	%xmm12, 32(%rsp)
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L646
.L737:
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
	leaq	.LC59(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L646
.L739:
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
	leaq	.LC61(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L646
.L738:
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
	leaq	.LC60(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L646
.L743:
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
	leaq	.LC65(%rip), %rcx
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L646
.L742:
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
.LEHE22:
	jmp	.L646
.L695:
	movq	%rax, %rbx
	jmp	.L689
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
	.uleb128 .L695-.LFB8434
	.uleb128 0
	.uleb128 .LEHB21-.LFB8434
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB22-.LFB8434
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L695-.LFB8434
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
.L689:
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
	.uleb128 .LEHB23-.LCOLDB67
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
.LLSDACSEC8434:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE67:
	.text
.LHOTE67:
	.section .rdata,"dr"
	.align 8
.LC68:
	.ascii "wze::engine.vector.RayCast(): InitialX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist): %p, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC69:
	.ascii "wze::engine.vector.RayCast(): InitialY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC70:
	.ascii "wze::engine.vector.RayCast(): TerminalX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC71:
	.ascii "wze::engine.vector.RayCast(): TerminalY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC72:
	.ascii "wze::engine.vector.RayCast(): SamplingStep must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC73:
	.ascii "wze::engine.vector.RayCast(): SamplingStep must not be less than or equal to 0\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC74:
	.ascii "wze::engine.vector.RayCast(): ActorIDBlacklist must not be NULL\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC75:
	.ascii "wze::engine.vector.RayCast(): OverlapboxTypeBlackList must not be NULL\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB76:
	.text
.LHOTB76:
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
	movzwl	608(%rdx), %esi
	movq	%rsi, 128(%rsp)
	testq	%rsi, %rsi
	jne	.L751
	movq	$0, 136(%rsp)
	xorl	%ebx, %ebx
.L752:
	ucomisd	%xmm11, %xmm11
	jp	.L848
	ucomisd	%xmm9, %xmm9
	jp	.L849
	ucomisd	%xmm8, %xmm8
	jp	.L850
	ucomisd	%xmm12, %xmm12
	jp	.L851
	ucomisd	%xmm10, %xmm10
	jp	.L852
	pxor	%xmm0, %xmm0
	comisd	%xmm10, %xmm0
	jnb	.L853
	cmpq	$0, 400(%rsp)
	je	.L854
	testq	%r13, %r13
	je	.L855
	ucomisd	%xmm8, %xmm11
	movl	$0, %r8d
	setnp	%cl
	cmovne	%r8d, %ecx
	ucomisd	%xmm12, %xmm9
	setnp	%al
	cmovne	%r8d, %eax
	andb	%al, %cl
	movb	%cl, 88(%rsp)
	jne	.L768
	movq	584(%rdx), %r8
	cmpq	$1, %r8
	jbe	.L802
	leaq	128(%rsp), %rax
	movl	$1, %ebx
	xorl	%edi, %edi
	movq	%rax, 104(%rsp)
	jmp	.L790
	.p2align 4,,10
	.p2align 3
.L770:
	addq	$1, %rbx
	cmpq	%r8, %rbx
	jnb	.L856
.L790:
	movq	592(%rdx), %rax
	leaq	0(,%rbx,8), %r12
	movq	(%rax,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L770
	movq	208(%rcx), %r9
	movq	80(%rsp), %r10
	xorl	%ecx, %ecx
	testq	%r15, %r15
	je	.L770
	cmpq	(%r10,%rcx,8), %r9
	je	.L857
.L834:
	addq	$1, %rcx
	cmpq	%rcx, %r15
	je	.L770
	cmpq	(%r10,%rcx,8), %r9
	jne	.L834
.L857:
	movq	400(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	(%rsi), %r9
	movq	8(%rsi), %r10
	testq	%r9, %r9
	je	.L774
.L801:
	cmpq	%rbx, (%r10,%rcx,8)
	je	.L770
	addq	$1, %rcx
	cmpq	%rcx, %r9
	jne	.L801
	.p2align 4,,10
	.p2align 3
.L774:
	cmpq	%r8, %rbx
	jnb	.L845
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L776:
	movq	(%rax,%r12), %rax
	cmpq	152(%rax), %rsi
	jnb	.L770
	movq	160(%rax), %rax
	leaq	0(,%rsi,8), %r14
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L781
	movq	0(%r13), %rcx
	movq	24(%rax), %r9
	xorl	%eax, %eax
	movq	8(%r13), %r10
	testq	%rcx, %rcx
	je	.L779
.L780:
	cmpq	(%r10,%rax,8), %r9
	je	.L781
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L780
	.p2align 4,,10
	.p2align 3
.L779:
	cmpq	%rdi, 128(%rsp)
	je	.L858
.L783:
	movq	592(%rdx), %rax
	cmpq	%r8, %rbx
	jnb	.L845
	movq	(%rax,%r12), %rcx
	movq	160(%rcx), %r9
	cmpq	152(%rcx), %rsi
	jnb	.L847
	movq	(%r9,%r14), %r10
	leaq	1(%rdi), %rcx
	movq	136(%rsp), %r9
	cmpq	128(%rsp), %rdi
	jnb	.L859
	movq	%r10, (%r9,%rdi,8)
	addq	$1, %rsi
	movq	%rcx, %rdi
	jmp	.L776
	.p2align 4,,10
	.p2align 3
.L781:
	movq	592(%rdx), %rax
	addq	$1, %rsi
	cmpq	%r8, %rbx
	jb	.L776
.L845:
	movq	%rbx, %rdx
	leaq	.LC23(%rip), %rcx
.LEHB24:
	call	_Z6printfPKcz
.L757:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L856:
	movq	136(%rsp), %rbx
.L769:
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
	ja	.L860
	call	acos
	movapd	%xmm0, %xmm8
.L793:
	pxor	%xmm0, %xmm0
	movzwl	102(%rsp), %r13d
	comisd	%xmm0, %xmm11
	jbe	.L838
.L796:
	testq	%rdi, %rdi
	je	.L799
	movq	128(%rsp), %r12
	xorl	%esi, %esi
	jmp	.L795
	.p2align 4,,10
	.p2align 3
.L861:
	addq	$1, %rsi
	cmpq	%rsi, %rdi
	je	.L799
.L795:
	movq	0(%rbp), %rax
	leaq	600(%rax), %rcx
	cmpq	%r12, %rsi
	je	.L847
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
	je	.L861
.L768:
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
.L858:
	movzwl	608(%rdx), %eax
	movq	104(%rsp), %rcx
	movq	%rdi, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0
.LEHE24:
	movq	0(%rbp), %rdx
	movq	584(%rdx), %r8
	jmp	.L783
.L860:
	call	acos
	movsd	.LC24(%rip), %xmm8
	subsd	%xmm0, %xmm8
	jmp	.L793
	.p2align 4,,10
	.p2align 3
.L799:
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
	ja	.L796
.L838:
	movb	$1, 88(%rsp)
	jmp	.L768
.L751:
	leaq	0(,%rsi,8), %rcx
	movq	%rdx, 88(%rsp)
	call	malloc
	movq	88(%rsp), %rdx
	testq	%rax, %rax
	movq	%rax, 136(%rsp)
	movq	%rax, %rbx
	jne	.L752
	leaq	.LC15(%rip), %rcx
	movq	%rsi, %rdx
.LEHB25:
	call	_Z6printfPKcz
.LEHE25:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L802:
	xorl	%edi, %edi
	jmp	.L769
.L847:
	movq	%rsi, %rdx
	leaq	.LC23(%rip), %rcx
.LEHB26:
	call	_Z6printfPKcz
	jmp	.L757
.L852:
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
	jmp	.L757
.L851:
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
	leaq	.LC71(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L757
.L859:
	movq	%rdi, %rdx
	leaq	.LC23(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L757
.L855:
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
	leaq	.LC75(%rip), %rcx
	movq	%rax, 64(%rsp)
	movzwl	96(%rsp), %eax
	movsd	%xmm12, 32(%rsp)
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L757
.L848:
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
	leaq	.LC68(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L757
.L850:
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
	leaq	.LC70(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L757
.L849:
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
	leaq	.LC69(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L757
.L854:
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
	leaq	.LC74(%rip), %rcx
	movl	%eax, 40(%rsp)
	movsd	%xmm10, 48(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L757
.L853:
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
.LEHE26:
	jmp	.L757
.L806:
	movq	%rax, %rbx
	jmp	.L800
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
	.uleb128 .L806-.LFB8435
	.uleb128 0
	.uleb128 .LEHB25-.LFB8435
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB26-.LFB8435
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L806-.LFB8435
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
.L800:
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
	.uleb128 .LEHB27-.LCOLDB76
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
.LLSDACSEC8435:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE76:
	.text
.LHOTE76:
	.section .rdata,"dr"
	.align 8
.LC77:
	.ascii "wze::engine.vector.RayCast(): InitialX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC78:
	.ascii "wze::engine.vector.RayCast(): InitialY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC79:
	.ascii "wze::engine.vector.RayCast(): TerminalX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC80:
	.ascii "wze::engine.vector.RayCast(): TerminalY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC81:
	.ascii "wze::engine.vector.RayCast(): SamplingStep must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC82:
	.ascii "wze::engine.vector.RayCast(): SamplingStep must not be less than or equal to 0\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC83:
	.ascii "wze::engine.vector.RayCast(): ActorTypeWhitelist must not be NULL\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC84:
	.ascii "wze::engine.vector.RayCast(): ActorIDBlacklist must not be NULL\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\12\0"
	.align 8
.LC85:
	.ascii "wze::engine.vector.RayCast(): OverlapboxTypeBlacklist must not be NULL\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList: %p, ActorIDBlacklist: %p, OverlapboxTypeBlacklist: %p\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB86:
	.text
.LHOTB86:
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
	movzwl	608(%rdx), %esi
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
	jne	.L863
	movq	$0, 136(%rsp)
	xorl	%ebx, %ebx
.L864:
	ucomisd	%xmm11, %xmm11
	jp	.L961
	ucomisd	%xmm9, %xmm9
	jp	.L962
	ucomisd	%xmm8, %xmm8
	jp	.L963
	ucomisd	%xmm12, %xmm12
	jp	.L964
	ucomisd	%xmm10, %xmm10
	jp	.L965
	pxor	%xmm0, %xmm0
	comisd	%xmm10, %xmm0
	jnb	.L966
	testq	%r15, %r15
	je	.L967
	cmpq	$0, 400(%rsp)
	je	.L968
	testq	%r13, %r13
	je	.L969
	ucomisd	%xmm8, %xmm11
	movl	$0, %r8d
	setnp	%cl
	cmovne	%r8d, %ecx
	ucomisd	%xmm12, %xmm9
	setnp	%al
	cmovne	%r8d, %eax
	andb	%al, %cl
	movb	%cl, 88(%rsp)
	jne	.L881
	movq	584(%rdx), %rcx
	cmpq	$1, %rcx
	jbe	.L915
	leaq	128(%rsp), %rax
	movl	$1, %esi
	xorl	%edi, %edi
	movq	%rax, 96(%rsp)
	.p2align 4,,10
	.p2align 3
.L903:
	movq	592(%rdx), %rax
	leaq	0(,%rsi,8), %rbp
	movq	(%rax,%rsi,8), %r8
	testq	%r8, %r8
	je	.L883
	movq	(%r15), %r9
	movq	208(%r8), %r10
	xorl	%r8d, %r8d
	movq	8(%r15), %r11
	testq	%r9, %r9
	je	.L883
.L884:
	cmpq	(%r11,%r8,8), %r10
	je	.L970
	addq	$1, %r8
	cmpq	%r8, %r9
	jne	.L884
	.p2align 4,,10
	.p2align 3
.L883:
	addq	$1, %rsi
	cmpq	%rcx, %rsi
	jb	.L903
	movq	136(%rsp), %rbx
.L882:
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
	ja	.L971
	call	acos
	movapd	%xmm0, %xmm8
.L906:
	pxor	%xmm0, %xmm0
	movzwl	110(%rsp), %r13d
	comisd	%xmm0, %xmm11
	jbe	.L952
.L909:
	testq	%rdi, %rdi
	je	.L912
	movq	128(%rsp), %rbp
	xorl	%esi, %esi
	jmp	.L908
	.p2align 4,,10
	.p2align 3
.L972:
	addq	$1, %rsi
	cmpq	%rdi, %rsi
	je	.L912
.L908:
	movq	(%r12), %rax
	leaq	600(%rax), %rcx
	cmpq	%rbp, %rsi
	je	.L960
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
	je	.L972
.L881:
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
.L970:
	movq	400(%rsp), %rbx
	xorl	%r8d, %r8d
	movq	(%rbx), %r9
	movq	8(%rbx), %r10
	testq	%r9, %r9
	je	.L887
.L914:
	cmpq	%rsi, (%r10,%r8,8)
	je	.L883
	addq	$1, %r8
	cmpq	%r8, %r9
	jne	.L914
	.p2align 4,,10
	.p2align 3
.L887:
	cmpq	%rcx, %rsi
	jnb	.L960
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L889:
	movq	(%rax,%rbp), %rax
	cmpq	152(%rax), %rbx
	jnb	.L883
	movq	160(%rax), %rax
	leaq	0(,%rbx,8), %r14
	movq	(%rax,%rbx,8), %rax
	testq	%rax, %rax
	je	.L894
	movq	0(%r13), %r8
	movq	24(%rax), %r9
	xorl	%eax, %eax
	movq	8(%r13), %r10
	testq	%r8, %r8
	je	.L892
.L893:
	cmpq	(%r10,%rax,8), %r9
	je	.L894
	addq	$1, %rax
	cmpq	%rax, %r8
	jne	.L893
	.p2align 4,,10
	.p2align 3
.L892:
	cmpq	%rdi, 128(%rsp)
	je	.L973
.L896:
	movq	592(%rdx), %rax
	cmpq	%rcx, %rsi
	jnb	.L960
	movq	(%rax,%rbp), %r8
	movq	160(%r8), %r9
	cmpq	152(%r8), %rbx
	jnb	.L974
	movq	(%r9,%r14), %r10
	leaq	1(%rdi), %r8
	movq	136(%rsp), %r9
	cmpq	128(%rsp), %rdi
	jnb	.L975
	movq	%r10, (%r9,%rdi,8)
	addq	$1, %rbx
	movq	%r8, %rdi
	jmp	.L889
	.p2align 4,,10
	.p2align 3
.L894:
	movq	592(%rdx), %rax
	addq	$1, %rbx
	cmpq	%rcx, %rsi
	jb	.L889
.L960:
	movq	%rsi, %rdx
	leaq	.LC23(%rip), %rcx
	call	_Z6printfPKcz
.L869:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L973:
	movzwl	608(%rdx), %eax
	movq	96(%rsp), %rcx
	movq	%rdi, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6InsertEyy.isra.0
.LEHE28:
	movq	(%r12), %rdx
	movq	584(%rdx), %rcx
	jmp	.L896
.L971:
	call	acos
	movsd	.LC24(%rip), %xmm8
	subsd	%xmm0, %xmm8
	jmp	.L906
	.p2align 4,,10
	.p2align 3
.L912:
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
	ja	.L909
.L952:
	movb	$1, 88(%rsp)
	jmp	.L881
.L863:
	leaq	0(,%rsi,8), %rcx
	movq	%rdx, 88(%rsp)
	call	malloc
	movq	88(%rsp), %rdx
	testq	%rax, %rax
	movq	%rax, 136(%rsp)
	movq	%rax, %rbx
	jne	.L864
	leaq	.LC15(%rip), %rcx
	movq	%rsi, %rdx
.LEHB29:
	call	_Z6printfPKcz
.LEHE29:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L915:
	xorl	%edi, %edi
	jmp	.L882
.L963:
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
	leaq	.LC79(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
.LEHB30:
	call	_Z6printfPKcz
	jmp	.L869
.L962:
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
	leaq	.LC78(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L869
.L961:
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
	leaq	.LC77(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L869
.L974:
	movq	%rbx, %rdx
	leaq	.LC23(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L869
.L965:
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
	jmp	.L869
.L964:
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
	leaq	.LC80(%rip), %rcx
	movsd	%xmm10, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L869
.L969:
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
	leaq	.LC85(%rip), %rcx
	movq	%rax, 64(%rsp)
	movzwl	104(%rsp), %eax
	movsd	%xmm12, 32(%rsp)
	movl	%eax, 40(%rsp)
	call	_Z6printfPKcz
	jmp	.L869
.L968:
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
	leaq	.LC84(%rip), %rcx
	movl	%eax, 40(%rsp)
	movsd	%xmm10, 48(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L869
.L967:
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
	leaq	.LC83(%rip), %rcx
	movl	%eax, 40(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L869
.L966:
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
	jmp	.L869
.L975:
	movq	%rdi, %rdx
	leaq	.LC23(%rip), %rcx
	call	_Z6printfPKcz
.LEHE30:
	jmp	.L869
.L918:
	movq	%rax, %rbx
	jmp	.L913
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
	.uleb128 .L918-.LFB8436
	.uleb128 0
	.uleb128 .LEHB29-.LFB8436
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB30-.LFB8436
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L918-.LFB8436
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
.L913:
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
	.uleb128 .LEHB31-.LCOLDB86
	.uleb128 .LEHE31-.LEHB31
	.uleb128 0
	.uleb128 0
.LLSDACSEC8436:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE86:
	.text
.LHOTE86:
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
.LC13:
	.long	-1571644103
	.long	1066524486
	.align 8
.LC24:
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
