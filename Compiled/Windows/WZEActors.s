	.file	"WZEActors.cpp"
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
	.ascii "neo::array.Remove(): Index out of range\12Params: Index: %lld, Length: %lld\12\0"
	.align 8
.LC1:
	.ascii "neo::array.Remove(): Length out of range\12Params: Index: %lld, Length: %lld\12\0"
	.align 8
.LC2:
	.ascii "neo::array.Remove(): Memory allocation failed\12Params: Index: %lld, Length: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.def	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6RemoveEyy.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6RemoveEyy.isra.0
_ZN3neo5arrayIPN3wze6engine6actors5actorEE6RemoveEyy.isra.0:
.LFB6905:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rdx, %rsi
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%r8, %rbx
	cmpq	%rdx, %rsi
	jnb	.L26
	leaq	(%rsi,%r8), %rax
	cmpq	%rax, %rdx
	jb	.L27
	testq	%r8, %r8
	je	.L3
	movq	%rdx, %r8
	subq	%rbx, %r8
	movq	%r8, (%rcx)
	movq	8(%rcx), %rcx
	je	.L7
	cmpq	%r8, %rsi
	jnb	.L14
	movq	%r8, %r10
	subq	%rsi, %r10
	leaq	-1(%r10), %r9
	cmpq	$2, %r9
	jbe	.L11
	leaq	0(,%rsi,8), %r9
	leaq	8(,%rax,8), %r11
	cmpq	%r9, %r11
	jne	.L28
.L11:
	movq	%rbx, %r9
	leaq	(%rcx,%rax,8), %rax
	leaq	(%rcx,%rdx,8), %r10
	negq	%r9
	salq	$3, %r9
	.p2align 4,,10
	.p2align 3
.L16:
	movq	(%rax), %rdx
	addq	$8, %rax
	movq	%rdx, -8(%rax,%r9)
	cmpq	%rax, %r10
	jne	.L16
	.p2align 4,,10
	.p2align 3
.L14:
	leaq	0(,%r8,8), %rdx
	call	realloc
	movq	%rax, 8(%rdi)
	testq	%rax, %rax
	je	.L29
.L3:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L28:
	leaq	(%rcx,%r9), %rdx
	movq	%r10, %r9
	leaq	-8(%rcx,%r11), %r11
	xorl	%eax, %eax
	shrq	%r9
	salq	$4, %r9
	.p2align 4,,10
	.p2align 3
.L12:
	movdqu	(%r11,%rax), %xmm0
	movups	%xmm0, (%rdx,%rax)
	addq	$16, %rax
	cmpq	%r9, %rax
	jne	.L12
	movq	%r10, %rax
	andq	$-2, %rax
	addq	%rsi, %rax
	andl	$1, %r10d
	je	.L14
	leaq	(%rbx,%rax), %rdx
	movq	(%rcx,%rdx,8), %rdx
	movq	%rdx, (%rcx,%rax,8)
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L7:
	call	free
	movq	$0, 8(%rdi)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L26:
	leaq	.LC0(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L27:
	leaq	.LC1(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L29:
	leaq	.LC2(%rip), %rcx
	movq	%rbx, %r8
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC3:
	.ascii "neo::array(): Memory allocation failed\12Params: Elements(size, length): %ld, %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actorsC2EPS0_
	.def	_ZN3wze6engine6actorsC2EPS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actorsC2EPS0_
_ZN3wze6engine6actorsC2EPS0_:
.LFB6880:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	movq	$1, 8(%rcx)
	movl	$8, %ecx
	movq	$0, 40(%rsp)
	call	malloc
	movq	%rax, 16(%rbx)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L32
	leaq	40(%rsp), %rcx
	movl	$8, %r8d
	call	_ZN3neo9memCopyToEPKvPvy
	nop
	addq	$48, %rsp
	popq	%rbx
	ret
.L32:
	leaq	.LC3(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.globl	_ZN3wze6engine6actorsC1EPS0_
	.def	_ZN3wze6engine6actorsC1EPS0_;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actorsC1EPS0_,_ZN3wze6engine6actorsC2EPS0_
	.section .rdata,"dr"
	.align 8
.LC4:
	.ascii "wze::engine.actors.New(): X must not be NaN\12Params: Type: %lld, X: %lf, Y: %lf, Width: %d, Height: %d, Layer: %lf\12\0"
	.align 8
.LC5:
	.ascii "wze::engine.actors.New(): Y must not be NaN\12Params: Type: %lld, X: %lf, Y: %lf, Width: %d, Height: %d, Layer: %lf\12\0"
	.align 8
.LC6:
	.ascii "wze::engine.actors.New(): Layer must not be NaN\12Params: Type: %lld, X: %lf, Y: %lf, Width: %d, Height: %d, Layer: %lf\12\0"
	.align 8
.LC8:
	.ascii "wze::engine.actors.New(): Layer must not be less than 0\12Params: Type: %lld, X: %lf, Y: %lf, Width: %d, Height: %d, Layer: %lf\12\0"
	.align 8
.LC9:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.align 8
.LC10:
	.ascii "neo::array+=: Memory allocation failed\12Params: Elements(type, length): %ld, %ld\12\0"
	.align 8
.LC11:
	.ascii "wze::engine.actors.New(): Memory allocation failed\12Params: Type: %lld, X: %lf, Y: %lf, Width: %d, Height: %d, Layer: %lf\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB12:
	.text
.LHOTB12:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors3NewEPvyddttd
	.def	_ZN3wze6engine6actors3NewEPvyddttd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors3NewEPvyddttd
_ZN3wze6engine6actors3NewEPvyddttd:
.LFB6882:
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
	subq	$144, %rsp
	.seh_stackalloc	144
	movaps	%xmm6, 96(%rsp)
	.seh_savexmm	%xmm6, 96
	movaps	%xmm7, 112(%rsp)
	.seh_savexmm	%xmm7, 112
	movaps	%xmm8, 128(%rsp)
	.seh_savexmm	%xmm8, 128
	.seh_endprologue
	movsd	240(%rsp), %xmm8
	movsd	264(%rsp), %xmm7
	movzwl	256(%rsp), %r13d
	movzwl	248(%rsp), %r12d
	ucomisd	%xmm3, %xmm3
	movq	%rcx, %rsi
	movq	%rdx, %rbp
	movq	%r8, %rdi
	movapd	%xmm3, %xmm6
	jp	.L62
	ucomisd	%xmm8, %xmm8
	jp	.L63
	ucomisd	%xmm7, %xmm7
	jp	.L64
	pxor	%xmm0, %xmm0
	comisd	%xmm7, %xmm0
	ja	.L40
	movq	8(%rcx), %rax
	cmpq	$1, %rax
	jbe	.L42
	movq	16(%rcx), %rcx
	movl	$1, %ebx
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L43:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L42
.L46:
	cmpq	$0, (%rcx,%rbx,8)
	jne	.L43
	movl	$320, %ecx
.LEHB0:
	call	_Znwy
.LEHE0:
	movq	(%rsi), %rdx
	movl	%r13d, 56(%rsp)
	movq	%rdi, %r9
	movl	%r12d, 48(%rsp)
	movq	%rbp, %r8
	movq	%rax, %rcx
	movq	%rax, %r14
	movsd	%xmm7, 64(%rsp)
	movsd	%xmm8, 40(%rsp)
	movsd	%xmm6, 32(%rsp)
.LEHB1:
	call	_ZN3wze6engine6actors5actorC1EPS0_Pvyddttd
.LEHE1:
	movq	16(%rsi), %rax
	cmpq	8(%rsi), %rbx
	jnb	.L65
	movq	%r14, (%rax,%rbx,8)
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L42:
	movl	$320, %ecx
.LEHB2:
	call	_Znwy
.LEHE2:
	movq	(%rsi), %rdx
	movl	%r13d, 56(%rsp)
	movq	%rdi, %r9
	movl	%r12d, 48(%rsp)
	movq	%rbp, %r8
	movq	%rax, %rcx
	movq	%rax, %rbx
	movsd	%xmm7, 64(%rsp)
	movsd	%xmm8, 40(%rsp)
	movsd	%xmm6, 32(%rsp)
.LEHB3:
	call	_ZN3wze6engine6actors5actorC1EPS0_Pvyddttd
.LEHE3:
	movq	8(%rsi), %rax
	movq	16(%rsi), %rcx
	movq	%rbx, 88(%rsp)
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rsi)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 16(%rsi)
	testq	%rax, %rax
	je	.L66
	movq	8(%rsi), %rdx
	leaq	88(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
.LEHB4:
	call	_ZN3neo9memCopyToEPKvPvy
	movq	8(%rsi), %rax
	movq	16(%rsi), %rdx
	addq	$-1, %rax
	movq	%rax, %rbx
	jnc	.L67
	cmpq	$0, (%rdx,%rax,8)
	je	.L68
.L33:
	movaps	96(%rsp), %xmm6
	movaps	112(%rsp), %xmm7
	movq	%rbx, %rax
	movaps	128(%rsp), %xmm8
	addq	$144, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.L65:
	leaq	.LC9(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L40:
	movl	%r13d, 40(%rsp)
	leaq	.LC8(%rip), %rcx
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movl	%r12d, 32(%rsp)
	movapd	%xmm6, %xmm2
	movq	%xmm6, %r8
	movq	%rdi, %rdx
	movsd	%xmm7, 48(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L64:
	movl	%r13d, 40(%rsp)
	leaq	.LC6(%rip), %rcx
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movl	%r12d, 32(%rsp)
	movapd	%xmm6, %xmm2
	movq	%xmm6, %r8
	movq	%rdi, %rdx
	movsd	%xmm7, 48(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L63:
	movl	%r13d, 40(%rsp)
	leaq	.LC5(%rip), %rcx
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movl	%r12d, 32(%rsp)
	movapd	%xmm6, %xmm2
	movq	%xmm6, %r8
	movq	%rdi, %rdx
	movsd	%xmm7, 48(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L62:
	movl	%r13d, 40(%rsp)
	leaq	.LC4(%rip), %rcx
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movl	%r12d, 32(%rsp)
	movapd	%xmm6, %xmm2
	movq	%xmm6, %r8
	movq	%rdi, %rdx
	movsd	%xmm7, 48(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L68:
	movl	%r13d, 40(%rsp)
	leaq	.LC11(%rip), %rcx
	movapd	%xmm8, %xmm3
	movq	%xmm8, %r9
	movl	%r12d, 32(%rsp)
	movapd	%xmm6, %xmm2
	movq	%xmm6, %r8
	movq	%rdi, %rdx
	movsd	%xmm7, 48(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L67:
	leaq	.LC9(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L66:
	leaq	.LC10(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
.LEHE4:
	movl	$1, %ecx
	call	exit
.L53:
	movq	%rax, %rsi
	jmp	.L52
.L54:
	movq	%rax, %rbx
	jmp	.L51
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6882:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6882-.LLSDACSB6882
.LLSDACSB6882:
	.uleb128 .LEHB0-.LFB6882
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB6882
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L54-.LFB6882
	.uleb128 0
	.uleb128 .LEHB2-.LFB6882
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB6882
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L53-.LFB6882
	.uleb128 0
	.uleb128 .LEHB4-.LFB6882
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE6882:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine6actors3NewEPvyddttd.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors3NewEPvyddttd.cold
	.seh_stackalloc	200
	.seh_savereg	%rbx, 144
	.seh_savereg	%rsi, 152
	.seh_savereg	%rdi, 160
	.seh_savereg	%rbp, 168
	.seh_savexmm	%xmm6, 96
	.seh_savexmm	%xmm7, 112
	.seh_savereg	%r12, 176
	.seh_savereg	%r13, 184
	.seh_savereg	%r14, 192
	.seh_savexmm	%xmm8, 128
	.seh_endprologue
_ZN3wze6engine6actors3NewEPvyddttd.cold:
.L52:
	movq	%rbx, %rcx
	movl	$320, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB5:
	call	_Unwind_Resume
.L51:
	movq	%r14, %rcx
	movl	$320, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
	nop
.LEHE5:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC6882:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6882-.LLSDACSBC6882
.LLSDACSBC6882:
	.uleb128 .LEHB5-.LCOLDB12
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC6882:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE12:
	.text
.LHOTE12:
	.section .rdata,"dr"
	.align 8
.LC13:
	.ascii "wze::engine.actors.Delete(): Illegal deletion of NULL Actor\12Params: ID: %lld\12\0"
	.align 8
.LC14:
	.ascii "wze::engine.actors.Delete(): Actor does not exist\12Params: ID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors6DeleteEy
	.def	_ZN3wze6engine6actors6DeleteEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors6DeleteEy
_ZN3wze6engine6actors6DeleteEy:
.LFB6883:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, %rbx
	testq	%rdx, %rdx
	je	.L80
	cmpq	8(%rcx), %rdx
	jnb	.L71
	movq	16(%rcx), %rax
	movq	(%rax,%rdx,8), %rdi
	testq	%rdi, %rdi
	je	.L71
	movq	%rdi, %rcx
	call	_ZN3wze6engine6actors5actorD1Ev
	movq	%rdi, %rcx
	movl	$320, %edx
	call	_ZdlPvy
	movq	8(%rsi), %rax
	movq	16(%rsi), %rcx
	cmpq	%rax, %rbx
	jnb	.L81
	movq	$0, (%rcx,%rbx,8)
	cmpq	$0, -8(%rcx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L82
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L82:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L78:
	movq	%rdx, %r9
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L83
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L84
	cmpq	$1, %rdx
	jne	.L78
.L77:
	leaq	8(%rsi), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L84:
	subq	%r9, %rax
	movq	%r9, %rdx
	movq	%rax, %r8
	jmp	.L77
.L71:
	leaq	.LC14(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L83:
	leaq	.LC9(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L80:
	leaq	.LC13(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L81:
	leaq	.LC9(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC15:
	.ascii "wze::engine.actors.Purge(): Actor does not exist\12Params: Keep(length): %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5PurgeESt16initializer_listIyE
	.def	_ZN3wze6engine6actors5PurgeESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5PurgeESt16initializer_listIyE
_ZN3wze6engine6actors5PurgeESt16initializer_listIyE:
.LFB6884:
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
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	8(%rdx), %rsi
	movq	(%rdx), %rdi
	movq	%rcx, %rbp
	movq	8(%rcx), %rcx
	testq	%rsi, %rsi
	je	.L86
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L89:
	movq	(%rdi,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L87
	cmpq	%rcx, %rdx
	jnb	.L88
	movq	16(%rbp), %r8
	cmpq	$0, (%r8,%rdx,8)
	je	.L88
.L87:
	addq	$1, %rax
	cmpq	%rax, %rsi
	jne	.L89
.L86:
	cmpq	$1, %rcx
	jbe	.L90
	movq	16(%rbp), %rdx
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L91:
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L92
.L98:
	cmpq	%rbx, (%rdi,%rax,8)
	je	.L93
	addq	$1, %rax
	cmpq	%rax, %rsi
	jne	.L98
.L92:
	movq	(%rdx,%rbx,8), %r12
	leaq	0(,%rbx,8), %r13
	testq	%r12, %r12
	je	.L95
	movq	%r12, %rcx
	call	_ZN3wze6engine6actors5actorD1Ev
	movl	$320, %edx
	movq	%r12, %rcx
	call	_ZdlPvy
	movq	8(%rbp), %rcx
	movq	16(%rbp), %rdx
.L95:
	cmpq	%rcx, %rbx
	jnb	.L122
	movq	$0, (%rdx,%r13)
.L93:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jb	.L91
	cmpq	$0, -8(%rdx,%rcx,8)
	leaq	-1(%rcx), %r8
	je	.L123
.L121:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L123:
	movq	%rcx, %r9
	jmp	.L99
	.p2align 4,,10
	.p2align 3
.L104:
	leaq	-1(%r9), %rax
	cmpq	%rcx, %rax
	jnb	.L124
	cmpq	$0, (%rdx,%rax,8)
	jne	.L125
	movq	%rax, %r9
.L99:
	cmpq	$1, %r9
	jne	.L104
.L103:
	leaq	8(%rbp), %rcx
	movq	%r9, %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L90:
	testq	%rcx, %rcx
	jne	.L121
	leaq	.LC9(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L125:
	subq	%r9, %rcx
	movq	%rcx, %r8
	jmp	.L103
.L88:
	leaq	.LC15(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L124:
	leaq	.LC9(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L122:
	leaq	.LC9(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC16:
	.ascii "wze::engine.actors.Purge(): Actor does not exist\12Params: Keep: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5PurgeEPN3neo5arrayIyEE
	.def	_ZN3wze6engine6actors5PurgeEPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5PurgeEPN3neo5arrayIyEE
_ZN3wze6engine6actors5PurgeEPN3neo5arrayIyEE:
.LFB6887:
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
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rdi
	movq	(%rdx), %rcx
	movq	%rdx, %rsi
	movq	8(%rdi), %r9
	testq	%rcx, %rcx
	je	.L127
	movq	8(%rdx), %r8
	xorl	%eax, %eax
	jmp	.L130
	.p2align 4,,10
	.p2align 3
.L128:
	addq	$1, %rax
	cmpq	%rax, %rcx
	je	.L127
.L130:
	movq	(%r8,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L128
	cmpq	%r9, %rdx
	jnb	.L129
	movq	16(%rdi), %r10
	cmpq	$0, (%r10,%rdx,8)
	jne	.L128
.L129:
	leaq	.LC16(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L127:
	cmpq	$1, %r9
	jbe	.L131
	movq	16(%rdi), %r10
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L139:
	movq	8(%rsi), %rdx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.L132
.L133:
	cmpq	%rbx, (%rdx,%rax,8)
	je	.L134
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L133
	.p2align 4,,10
	.p2align 3
.L132:
	movq	(%r10,%rbx,8), %rbp
	leaq	0(,%rbx,8), %r12
	testq	%rbp, %rbp
	je	.L136
	movq	%rbp, %rcx
	call	_ZN3wze6engine6actors5actorD1Ev
	movl	$320, %edx
	movq	%rbp, %rcx
	call	_ZdlPvy
	movq	8(%rdi), %r9
	movq	16(%rdi), %r10
.L136:
	cmpq	%r9, %rbx
	jnb	.L164
	movq	$0, (%r10,%r12)
.L134:
	addq	$1, %rbx
	cmpq	%r9, %rbx
	jnb	.L138
	movq	(%rsi), %rcx
	jmp	.L139
	.p2align 4,,10
	.p2align 3
.L138:
	cmpq	$0, -8(%r10,%r9,8)
	leaq	-1(%r9), %r8
	je	.L165
.L163:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L165:
	movq	%r9, %rax
	jmp	.L140
	.p2align 4,,10
	.p2align 3
.L145:
	leaq	-1(%rax), %rdx
	cmpq	%r9, %rdx
	jnb	.L166
	cmpq	$0, (%r10,%rdx,8)
	jne	.L167
	movq	%rdx, %rax
.L140:
	cmpq	$1, %rax
	jne	.L145
.L144:
	movq	%rax, %rdx
	leaq	8(%rdi), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L131:
	testq	%r9, %r9
	jne	.L163
	leaq	.LC9(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L167:
	subq	%rax, %r9
	movq	%r9, %r8
	jmp	.L144
.L164:
	leaq	.LC9(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L166:
	leaq	.LC9(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC17:
	.ascii "wze::engine.actors[]: Illegal access to NULL Actor\0"
	.align 8
.LC18:
	.ascii "wze::engine.actors[]: Actor does not exist\12Params: ID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actorsixEy
	.def	_ZN3wze6engine6actorsixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actorsixEy
_ZN3wze6engine6actorsixEy:
.LFB6888:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testq	%rdx, %rdx
	je	.L172
	cmpq	8(%rcx), %rdx
	jnb	.L170
	movq	16(%rcx), %rax
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L170
	addq	$40, %rsp
	ret
.L170:
	leaq	.LC18(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L172:
	leaq	.LC17(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo9memCopyToEPKvPvy;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actorC1EPS0_Pvyddttd;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actorD1Ev;	.scl	2;	.type	32;	.endef
