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
	.text
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
.LC0:
	.ascii "wze::engine.vector.Length(): InitialX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\12\0"
	.align 8
.LC1:
	.ascii "wze::engine.vector.Length(): InitialY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\12\0"
	.align 8
.LC2:
	.ascii "wze::engine.vector.Length(): TerminalX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\12\0"
	.align 8
.LC3:
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
	jp	.L21
	ucomisd	%xmm2, %xmm2
	jp	.L22
	ucomisd	%xmm3, %xmm3
	jp	.L23
	ucomisd	%xmm0, %xmm0
	jp	.L24
	subsd	%xmm1, %xmm3
	subsd	%xmm2, %xmm0
	mulsd	%xmm3, %xmm3
	mulsd	%xmm0, %xmm0
	addsd	%xmm3, %xmm0
	sqrtsd	%xmm0, %xmm0
	addq	$56, %rsp
	ret
.L21:
	movsd	%xmm0, 32(%rsp)
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	leaq	.LC0(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L24:
	movsd	%xmm0, 32(%rsp)
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	leaq	.LC3(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L23:
	movsd	%xmm0, 32(%rsp)
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	leaq	.LC2(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L22:
	movsd	%xmm0, 32(%rsp)
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	leaq	.LC1(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC4:
	.ascii "wze::engine.vector.Angle(): InitialX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\12\0"
	.align 8
.LC5:
	.ascii "wze::engine.vector.Angle(): InitialY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\12\0"
	.align 8
.LC6:
	.ascii "wze::engine.vector.Angle(): TerminalX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf\12\0"
	.align 8
.LC7:
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
	jp	.L47
	ucomisd	%xmm2, %xmm2
	jp	.L48
	ucomisd	%xmm3, %xmm3
	jp	.L49
	ucomisd	%xmm4, %xmm4
	jp	.L50
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
	ja	.L51
	call	acos
	mulsd	.LC8(%rip), %xmm0
	addq	$56, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L51:
	call	acos
	movsd	.LC8(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	.LC9(%rip), %xmm0
	subsd	%xmm1, %xmm0
	addq	$56, %rsp
	ret
.L50:
	movsd	%xmm4, 32(%rsp)
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	leaq	.LC7(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L49:
	movsd	%xmm4, 32(%rsp)
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	leaq	.LC6(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L48:
	movsd	%xmm4, 32(%rsp)
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	leaq	.LC5(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L47:
	movsd	%xmm4, 32(%rsp)
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	leaq	.LC4(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC10:
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
	jp	.L57
	mulsd	.LC11(%rip), %xmm3
	movapd	%xmm3, %xmm0
	call	cos
	mulsd	%xmm7, %xmm0
	movaps	48(%rsp), %xmm7
	addsd	%xmm6, %xmm0
	movaps	32(%rsp), %xmm6
	addq	$72, %rsp
	ret
.L57:
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	movq	%xmm1, %rdx
	leaq	.LC10(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC12:
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
	jp	.L63
	mulsd	.LC11(%rip), %xmm3
	movapd	%xmm3, %xmm0
	call	sin
	mulsd	%xmm7, %xmm0
	movaps	48(%rsp), %xmm7
	addsd	%xmm6, %xmm0
	movaps	32(%rsp), %xmm6
	addq	$72, %rsp
	ret
.L63:
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
.LC13:
	.ascii "neo::array(): Memory allocation failed\12Params: Length: %lld\12\0"
	.align 8
.LC14:
	.ascii "whe::engine.vector.RayCast(): InitialX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC15:
	.ascii "whe::engine.vector.RayCast(): InitialY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC16:
	.ascii "whe::engine.vector.RayCast(): TerminalX must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC17:
	.ascii "whe::engine.vector.RayCast(): TerminalY must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC18:
	.ascii "whe::engine.vector.RayCast(): SamplingStep must not be NaN\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC20:
	.ascii "whe::engine.vector.RayCast(): SamplingStep must not be less than or equal to 0\12Params: InitialX: %lf, InitialY: %lf, TerminalX: %lf, TerminalY: %lf, RaySize: %d, SamplingStep: %lf, ActorTypeWhiteList(length): %ld, ActorIDBlacklist(length): %ld, OverlapboxTypeBlacklist(length): %ld\12\0"
	.align 8
.LC21:
	.ascii "neo::array.Insert(): Memory allocation failed\12Params: Index: %lld, Length: %lld\12\0"
	.align 8
.LC22:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB24:
	.text
.LHOTB24:
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
	subq	$312, %rsp
	.seh_stackalloc	312
	movaps	%xmm6, 192(%rsp)
	.seh_savexmm	%xmm6, 192
	movaps	%xmm7, 208(%rsp)
	.seh_savexmm	%xmm7, 208
	movaps	%xmm8, 224(%rsp)
	.seh_savexmm	%xmm8, 224
	movaps	%xmm9, 240(%rsp)
	.seh_savexmm	%xmm9, 240
	movaps	%xmm10, 256(%rsp)
	.seh_savexmm	%xmm10, 256
	movaps	%xmm11, 272(%rsp)
	.seh_savexmm	%xmm11, 272
	movaps	%xmm12, 288(%rsp)
	.seh_savexmm	%xmm12, 288
	.seh_endprologue
	movq	440(%rsp), %rax
	movq	(%rcx), %rbx
	movl	424(%rsp), %r12d
	movsd	416(%rsp), %xmm12
	movq	(%rax), %rdx
	movq	8(%rax), %r14
	movq	448(%rsp), %rax
	movzwl	664(%rbx), %ebp
	movw	%r12w, 120(%rsp)
	movq	%rcx, %r13
	movapd	%xmm1, %xmm11
	movsd	432(%rsp), %xmm10
	movq	(%rax), %rdi
	movq	8(%rax), %rax
	movw	%bp, 122(%rsp)
	movapd	%xmm2, %xmm9
	movapd	%xmm3, %xmm8
	movq	%rax, 80(%rsp)
	movq	456(%rsp), %rax
	movq	%rdi, 104(%rsp)
	movq	(%rax), %rdi
	movq	8(%rax), %r11
	movq	%rdi, 112(%rsp)
	xorl	%edi, %edi
	testq	%rbp, %rbp
	jne	.L157
.L65:
	ucomisd	%xmm11, %xmm11
	jp	.L158
	ucomisd	%xmm9, %xmm9
	jp	.L159
	ucomisd	%xmm8, %xmm8
	jp	.L160
	ucomisd	%xmm12, %xmm12
	jp	.L161
	ucomisd	%xmm10, %xmm10
	jp	.L162
	pxor	%xmm0, %xmm0
	comisd	%xmm10, %xmm0
	jnb	.L163
	ucomisd	%xmm8, %xmm11
	movl	$0, %r8d
	setnp	%cl
	cmovne	%r8d, %ecx
	ucomisd	%xmm12, %xmm9
	setnp	%al
	cmovne	%r8d, %eax
	andb	%al, %cl
	movb	%cl, 88(%rsp)
	jne	.L79
	movq	640(%rbx), %r15
	cmpq	$1, %r15
	jbe	.L108
	movq	648(%rbx), %rax
	xorl	%esi, %esi
	movq	%rdi, %rcx
	movq	%r11, %r10
	movq	%rbp, 96(%rsp)
	movl	$1, %ebx
	movq	%r14, %rbp
	movl	%r12d, 124(%rsp)
	movq	%rax, %r14
	movq	104(%rsp), %rax
	jmp	.L96
	.p2align 4,,10
	.p2align 3
.L81:
	addq	$1, %rbx
	cmpq	%rbx, %r15
	je	.L164
.L96:
	movq	(%r14,%rbx,8), %r9
	testq	%r9, %r9
	je	.L81
	movq	208(%r9), %r11
	xorl	%r8d, %r8d
	testq	%rbp, %rbp
	je	.L81
	cmpq	(%rdx,%r8,8), %r11
	je	.L165
.L145:
	addq	$1, %r8
	cmpq	%r8, %rbp
	je	.L81
	cmpq	(%rdx,%r8,8), %r11
	jne	.L145
.L165:
	xorl	%r8d, %r8d
	cmpq	$0, 80(%rsp)
	je	.L85
.L106:
	cmpq	%rbx, (%rax,%r8,8)
	je	.L81
	addq	$1, %r8
	cmpq	%r8, 80(%rsp)
	jne	.L106
.L85:
	movq	152(%r9), %rdi
	cmpq	$1, %rdi
	jbe	.L81
	movq	160(%r9), %r9
	movq	%r15, 104(%rsp)
	movl	$1, %r12d
	movq	%rax, %r11
	movq	%r14, 136(%rsp)
	movq	112(%rsp), %r15
	movq	%r10, %r14
	movq	%rbp, %r10
	movq	%r13, 384(%rsp)
	movq	96(%rsp), %rbp
	movq	%r9, %r13
	movq	%rdx, %r9
	movq	%rbx, 128(%rsp)
	jmp	.L95
	.p2align 4,,10
	.p2align 3
.L87:
	addq	$1, %r12
	cmpq	%rdi, %r12
	je	.L166
.L95:
	movq	0(%r13,%r12,8), %rbx
	testq	%rbx, %rbx
	je	.L87
	movq	24(%rbx), %rdx
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.L89
.L88:
	cmpq	(%r15,%rax,8), %rdx
	je	.L87
	addq	$1, %rax
	cmpq	%rax, %r14
	jne	.L88
.L89:
	cmpq	%rsi, %rbp
	je	.L167
.L91:
	leaq	1(%rsi), %rax
	cmpq	%rbp, %rsi
	jnb	.L168
	addq	$1, %r12
	movq	%rbx, (%rcx,%rsi,8)
	movq	%rax, %rsi
	cmpq	%rdi, %r12
	jne	.L95
.L166:
	movq	104(%rsp), %r15
	movq	%rbp, 96(%rsp)
	movq	%r9, %rdx
	movq	%r10, %rbp
	movq	128(%rsp), %rbx
	movq	%r14, %r10
	movq	384(%rsp), %r13
	movq	%r11, %rax
	movq	136(%rsp), %r14
	addq	$1, %rbx
	cmpq	%rbx, %r15
	jne	.L96
	.p2align 4,,10
	.p2align 3
.L164:
	movq	96(%rsp), %rbp
	movl	124(%rsp), %r12d
	movq	%rcx, %rdi
.L80:
	subsd	%xmm11, %xmm8
	movapd	%xmm12, %xmm0
	shrw	%r12w
	pxor	%xmm6, %xmm6
	subsd	%xmm9, %xmm0
	movapd	%xmm11, %xmm7
	movzwl	%r12w, %eax
	cvtsi2sdl	%eax, %xmm6
	comisd	%xmm12, %xmm9
	movapd	%xmm8, %xmm11
	mulsd	%xmm0, %xmm0
	mulsd	%xmm8, %xmm11
	subsd	%xmm6, %xmm7
	addsd	%xmm9, %xmm6
	addsd	%xmm0, %xmm11
	movapd	%xmm8, %xmm0
	sqrtsd	%xmm11, %xmm11
	divsd	%xmm11, %xmm0
	ja	.L169
	call	acos
	movapd	%xmm0, %xmm8
.L99:
	pxor	%xmm0, %xmm0
	movzwl	120(%rsp), %r12d
	comisd	%xmm0, %xmm11
	jbe	.L149
.L102:
	xorl	%ebx, %ebx
	testq	%rsi, %rsi
	jne	.L101
	jmp	.L104
	.p2align 4,,10
	.p2align 3
.L171:
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	je	.L104
.L101:
	movq	0(%r13), %rax
	leaq	656(%rax), %rcx
	cmpq	%rbx, %rbp
	je	.L170
	pxor	%xmm3, %xmm3
	movq	(%rdi,%rbx,8), %rax
	movapd	%xmm6, %xmm0
	movapd	%xmm6, %xmm2
	cvtsi2sdl	%r12d, %xmm3
	movapd	%xmm7, %xmm1
	movq	%rax, 40(%rsp)
	subsd	%xmm3, %xmm0
	addsd	%xmm7, %xmm3
	movsd	%xmm0, 32(%rsp)
.LEHB0:
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE
.LEHE0:
	testb	%al, %al
	je	.L171
.L79:
	movq	%rdi, %rcx
	call	free
	movzbl	88(%rsp), %eax
	movaps	192(%rsp), %xmm6
	movaps	208(%rsp), %xmm7
	movaps	224(%rsp), %xmm8
	movaps	240(%rsp), %xmm9
	movaps	256(%rsp), %xmm10
	movaps	272(%rsp), %xmm11
	movaps	288(%rsp), %xmm12
	addq	$312, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L169:
	call	acos
	movsd	.LC23(%rip), %xmm8
	subsd	%xmm0, %xmm8
	jmp	.L99
	.p2align 4,,10
	.p2align 3
.L104:
	movapd	%xmm8, %xmm0
	leaq	184(%rsp), %rdx
	leaq	176(%rsp), %r8
	call	sincos
	subsd	%xmm10, %xmm11
	movsd	176(%rsp), %xmm0
	mulsd	%xmm10, %xmm0
	addsd	%xmm0, %xmm7
	movsd	184(%rsp), %xmm0
	mulsd	%xmm10, %xmm0
	addsd	%xmm0, %xmm6
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm11
	ja	.L102
.L149:
	movb	$1, 88(%rsp)
	jmp	.L79
.L167:
	movzwl	122(%rsp), %eax
	movq	%r11, 160(%rsp)
	movq	%r10, 152(%rsp)
	addq	$1, %rax
	movq	%r9, 144(%rsp)
	leaq	(%rax,%rbp), %r8
	movq	%rax, 168(%rsp)
	leaq	0(,%r8,8), %rdx
	movq	%r8, 96(%rsp)
	call	realloc
	movq	96(%rsp), %r8
	movq	144(%rsp), %r9
	testq	%rax, %rax
	movq	152(%rsp), %r10
	movq	160(%rsp), %r11
	movq	%rax, %rcx
	je	.L172
	testq	%r8, %r8
	jne	.L111
.L93:
	jmp	.L93
	.p2align 4,,10
	.p2align 3
.L157:
	leaq	0(,%rbp,8), %rcx
	movq	%r11, 96(%rsp)
	movq	%rdx, 88(%rsp)
	call	malloc
	movq	88(%rsp), %rdx
	movq	96(%rsp), %r11
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.L65
	leaq	.LC13(%rip), %rcx
	movq	%rbp, %rdx
.LEHB1:
	call	_Z6printfPKcz
.LEHE1:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L108:
	xorl	%esi, %esi
	jmp	.L80
.L111:
	movq	%r8, %rbp
	jmp	.L91
.L170:
	movq	%rbp, %rdx
	leaq	.LC22(%rip), %rcx
.LEHB2:
	call	_Z6printfPKcz
.L70:
	movl	$1, %ecx
	call	exit
.L159:
	movq	80(%rsp), %rax
	movq	%r11, 72(%rsp)
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%r14, 56(%rsp)
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movq	%rax, 64(%rsp)
	movzwl	%r12w, %eax
	movq	%xmm11, %rdx
	leaq	.LC15(%rip), %rcx
	movl	%eax, 40(%rsp)
	movsd	%xmm10, 48(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L70
.L158:
	movq	80(%rsp), %rax
	movq	%r11, 72(%rsp)
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%r14, 56(%rsp)
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movq	%rax, 64(%rsp)
	movzwl	%r12w, %eax
	movq	%xmm11, %rdx
	leaq	.LC14(%rip), %rcx
	movl	%eax, 40(%rsp)
	movsd	%xmm10, 48(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L70
.L161:
	movq	80(%rsp), %rax
	movq	%r11, 72(%rsp)
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%r14, 56(%rsp)
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movq	%rax, 64(%rsp)
	movzwl	%r12w, %eax
	movq	%xmm11, %rdx
	leaq	.LC17(%rip), %rcx
	movl	%eax, 40(%rsp)
	movsd	%xmm10, 48(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L70
.L160:
	movq	80(%rsp), %rax
	movq	%r11, 72(%rsp)
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%r14, 56(%rsp)
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movq	%rax, 64(%rsp)
	movzwl	%r12w, %eax
	movq	%xmm11, %rdx
	leaq	.LC16(%rip), %rcx
	movl	%eax, 40(%rsp)
	movsd	%xmm10, 48(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L70
.L163:
	movq	80(%rsp), %rax
	movq	%r11, 72(%rsp)
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%r14, 56(%rsp)
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movq	%rax, 64(%rsp)
	movzwl	%r12w, %eax
	movq	%xmm11, %rdx
	leaq	.LC20(%rip), %rcx
	movl	%eax, 40(%rsp)
	movsd	%xmm10, 48(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L70
.L162:
	movq	80(%rsp), %rax
	movq	%r11, 72(%rsp)
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movq	%r14, 56(%rsp)
	movapd	%xmm9, %xmm2
	movq	%xmm9, %r8
	movapd	%xmm11, %xmm1
	movq	%rax, 64(%rsp)
	movzwl	%r12w, %eax
	movq	%xmm11, %rdx
	leaq	.LC18(%rip), %rcx
	movl	%eax, 40(%rsp)
	movsd	%xmm10, 48(%rsp)
	movsd	%xmm12, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L70
.L168:
	movq	%rcx, %rdi
	movq	%rsi, %rdx
	leaq	.LC22(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L70
.L172:
	movq	168(%rsp), %r8
	movq	%rbp, %rdx
	leaq	.LC21(%rip), %rcx
	movq	%rax, %rdi
	call	_Z6printfPKcz
.LEHE2:
	jmp	.L70
.L115:
	movq	%rax, %rbx
	jmp	.L105
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
	.uleb128 .L115-.LFB8428
	.uleb128 0
	.uleb128 .LEHB1-.LFB8428
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB8428
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L115-.LFB8428
	.uleb128 0
.LLSDACSE8428:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_.cold
	.seh_stackalloc	376
	.seh_savereg	%rbx, 312
	.seh_savereg	%rsi, 320
	.seh_savereg	%rdi, 328
	.seh_savereg	%rbp, 336
	.seh_savexmm	%xmm6, 192
	.seh_savexmm	%xmm7, 208
	.seh_savereg	%r12, 344
	.seh_savereg	%r13, 352
	.seh_savereg	%r14, 360
	.seh_savereg	%r15, 368
	.seh_savexmm	%xmm8, 224
	.seh_savexmm	%xmm9, 240
	.seh_savexmm	%xmm10, 256
	.seh_savexmm	%xmm11, 272
	.seh_savexmm	%xmm12, 288
	.seh_endprologue
_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_.cold:
.L105:
	movq	%rdi, %rcx
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
	.uleb128 .LEHB3-.LCOLDB24
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSEC8428:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE24:
	.text
.LHOTE24:
	.section .rdata,"dr"
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
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	acos;	.scl	2;	.type	32;	.endef
	.def	cos;	.scl	2;	.type	32;	.endef
	.def	sin;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	sincos;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
