	.file	"WZEMath.cpp"
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
	.globl	_ZN3wze6engine4mathC2EPS0_
	.def	_ZN3wze6engine4mathC2EPS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine4mathC2EPS0_
_ZN3wze6engine4mathC2EPS0_:
.LFB6909:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rdx, (%rcx)
	xorl	%ecx, %ecx
	call	*__imp__time64(%rip)
	movl	%eax, %ecx
	addq	$40, %rsp
	jmp	srand
	.seh_endproc
	.globl	_ZN3wze6engine4mathC1EPS0_
	.def	_ZN3wze6engine4mathC1EPS0_;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine4mathC1EPS0_,_ZN3wze6engine4mathC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine4math6EqualsEdd
	.def	_ZN3wze6engine4math6EqualsEdd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine4math6EqualsEdd
_ZN3wze6engine4math6EqualsEdd:
.LFB6911:
	.seh_endprologue
	movsd	.LC0(%rip), %xmm2
	xorl	%eax, %eax
	movapd	%xmm0, %xmm3
	subsd	%xmm2, %xmm3
	comisd	%xmm3, %xmm1
	jb	.L4
	addsd	%xmm2, %xmm0
	comisd	%xmm1, %xmm0
	setnb	%al
.L4:
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC1:
	.ascii "wze::engine::math::IfNaN(): Fallback must not be NaN\12Params: Value: %lf, Fallback: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine4math5IfNaNEdd
	.def	_ZN3wze6engine4math5IfNaNEdd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine4math5IfNaNEdd
_ZN3wze6engine4math5IfNaNEdd:
.LFB6912:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L18
	ucomisd	%xmm0, %xmm0
	movq	%xmm1, %rdx
	movq	%xmm0, %rax
	cmovp	%rdx, %rax
	movq	%rax, %xmm1
	movapd	%xmm1, %xmm0
	addq	$40, %rsp
	ret
.L18:
	movapd	%xmm1, %xmm2
	movq	%xmm1, %r8
	movq	%xmm0, %rdx
	leaq	.LC1(%rip), %rcx
	movapd	%xmm0, %xmm1
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC2:
	.ascii "wze::engine::math::Random(): Max must not be less than or equal to Min\12Params: Min: %d, Max: %d\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine4math6RandomEii
	.def	_ZN3wze6engine4math6RandomEii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine4math6RandomEii
_ZN3wze6engine4math6RandomEii:
.LFB6913:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	%edx, %esi
	movl	%r8d, %ebx
	cmpl	%edx, %r8d
	jle	.L21
	call	rand
	subl	%esi, %ebx
	cltd
	idivl	%ebx
	leal	(%rdx,%rsi), %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L21:
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	-350469331
	.long	1058682594
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	srand;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	rand;	.scl	2;	.type	32;	.endef
