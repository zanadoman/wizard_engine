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
.LFB8620:
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
.LFB8433:
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
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actorsD2Ev
	.def	_ZN3wze6engine6actorsD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actorsD2Ev
_ZN3wze6engine6actorsD2Ev:
.LFB8436:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	8(%rcx), %rax
	movq	%rcx, %rdi
	movq	16(%rcx), %rcx
	cmpq	$1, %rax
	jbe	.L34
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L37:
	movq	(%rcx,%rbx,8), %rsi
	testq	%rsi, %rsi
	je	.L35
	movq	%rsi, %rcx
	addq	$1, %rbx
	call	_ZN3wze6engine6actors5actorD1Ev
	movq	%rsi, %rcx
	movl	$304, %edx
	call	_ZdlPvy
	movq	8(%rdi), %rax
	movq	16(%rdi), %rcx
	cmpq	%rax, %rbx
	jb	.L37
.L34:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	free
	.p2align 4,,10
	.p2align 3
.L35:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L37
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	free
	.seh_endproc
	.globl	_ZN3wze6engine6actorsD1Ev
	.def	_ZN3wze6engine6actorsD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actorsD1Ev,_ZN3wze6engine6actorsD2Ev
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
	.globl	_ZN3wze6engine6actors3NewEyddttd
	.def	_ZN3wze6engine6actors3NewEyddttd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors3NewEyddttd
_ZN3wze6engine6actors3NewEyddttd:
.LFB8438:
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
	subq	$136, %rsp
	.seh_stackalloc	136
	movaps	%xmm6, 80(%rsp)
	.seh_savexmm	%xmm6, 80
	movaps	%xmm7, 96(%rsp)
	.seh_savexmm	%xmm7, 96
	movaps	%xmm8, 112(%rsp)
	.seh_savexmm	%xmm8, 112
	.seh_endprologue
	movsd	240(%rsp), %xmm8
	movzwl	224(%rsp), %ebp
	movzwl	232(%rsp), %r12d
	ucomisd	%xmm2, %xmm2
	movq	%rcx, %rsi
	movapd	%xmm2, %xmm6
	movq	%rdx, %rdi
	movapd	%xmm3, %xmm7
	jp	.L67
	ucomisd	%xmm3, %xmm3
	jp	.L68
	ucomisd	%xmm8, %xmm8
	jp	.L69
	pxor	%xmm0, %xmm0
	comisd	%xmm8, %xmm0
	ja	.L45
	movq	8(%rcx), %rax
	cmpq	$1, %rax
	jbe	.L47
	movq	16(%rcx), %rcx
	movl	$1, %ebx
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L48:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L47
.L51:
	cmpq	$0, (%rcx,%rbx,8)
	jne	.L48
	movl	$304, %ecx
.LEHB0:
	call	_Znwy
.LEHE0:
	movq	(%rsi), %rdx
	movl	%r12d, 48(%rsp)
	movq	%rdi, %r8
	movl	%ebp, 40(%rsp)
	movapd	%xmm6, %xmm3
	movq	%rax, %rcx
	movq	%rax, %r13
	movsd	%xmm8, 56(%rsp)
	movsd	%xmm7, 32(%rsp)
.LEHB1:
	call	_ZN3wze6engine6actors5actorC1EPS0_yddttd
.LEHE1:
	movq	16(%rsi), %rax
	cmpq	8(%rsi), %rbx
	jnb	.L70
	movq	%r13, (%rax,%rbx,8)
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L47:
	movl	$304, %ecx
.LEHB2:
	call	_Znwy
.LEHE2:
	movq	(%rsi), %rdx
	movl	%r12d, 48(%rsp)
	movq	%rdi, %r8
	movl	%ebp, 40(%rsp)
	movapd	%xmm6, %xmm3
	movq	%rax, %rcx
	movq	%rax, %rbx
	movsd	%xmm8, 56(%rsp)
	movsd	%xmm7, 32(%rsp)
.LEHB3:
	call	_ZN3wze6engine6actors5actorC1EPS0_yddttd
.LEHE3:
	movq	8(%rsi), %rax
	movq	16(%rsi), %rcx
	movq	%rbx, 72(%rsp)
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rsi)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 16(%rsi)
	testq	%rax, %rax
	je	.L71
	movq	8(%rsi), %rdx
	leaq	72(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
.LEHB4:
	call	_ZN3neo9memCopyToEPKvPvy
	movq	8(%rsi), %rax
	movq	16(%rsi), %rdx
	addq	$-1, %rax
	movq	%rax, %rbx
	jnc	.L72
	cmpq	$0, (%rdx,%rax,8)
	je	.L73
.L38:
	movaps	80(%rsp), %xmm6
	movaps	96(%rsp), %xmm7
	movq	%rbx, %rax
	movaps	112(%rsp), %xmm8
	addq	$136, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L70:
	leaq	.LC9(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L45:
	movl	%r12d, 40(%rsp)
	leaq	.LC8(%rip), %rcx
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	movl	%ebp, 32(%rsp)
	movsd	%xmm8, 48(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L69:
	movl	%r12d, 40(%rsp)
	leaq	.LC6(%rip), %rcx
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	movl	%ebp, 32(%rsp)
	movsd	%xmm8, 48(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L68:
	movl	%r12d, 40(%rsp)
	leaq	.LC5(%rip), %rcx
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	movl	%ebp, 32(%rsp)
	movsd	%xmm8, 48(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L67:
	movl	%r12d, 40(%rsp)
	leaq	.LC4(%rip), %rcx
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	movl	%ebp, 32(%rsp)
	movsd	%xmm8, 48(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L73:
	movl	%r12d, 40(%rsp)
	movapd	%xmm7, %xmm3
	movapd	%xmm6, %xmm2
	movq	%rdi, %rdx
	movl	%ebp, 32(%rsp)
	movq	%xmm7, %r9
	movq	%xmm6, %r8
	leaq	.LC11(%rip), %rcx
	movsd	%xmm8, 48(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L72:
	leaq	.LC9(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L71:
	leaq	.LC10(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
.LEHE4:
	movl	$1, %ecx
	call	exit
.L58:
	movq	%rax, %rsi
	jmp	.L57
.L59:
	movq	%rax, %rbx
	jmp	.L56
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8438:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8438-.LLSDACSB8438
.LLSDACSB8438:
	.uleb128 .LEHB0-.LFB8438
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8438
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L59-.LFB8438
	.uleb128 0
	.uleb128 .LEHB2-.LFB8438
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB8438
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L58-.LFB8438
	.uleb128 0
	.uleb128 .LEHB4-.LFB8438
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE8438:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine6actors3NewEyddttd.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors3NewEyddttd.cold
	.seh_stackalloc	184
	.seh_savereg	%rbx, 136
	.seh_savereg	%rsi, 144
	.seh_savereg	%rdi, 152
	.seh_savereg	%rbp, 160
	.seh_savexmm	%xmm6, 80
	.seh_savexmm	%xmm7, 96
	.seh_savereg	%r12, 168
	.seh_savereg	%r13, 176
	.seh_savexmm	%xmm8, 112
	.seh_endprologue
_ZN3wze6engine6actors3NewEyddttd.cold:
.L57:
	movq	%rbx, %rcx
	movl	$304, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB5:
	call	_Unwind_Resume
.L56:
	movq	%r13, %rcx
	movl	$304, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
	nop
.LEHE5:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8438:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8438-.LLSDACSBC8438
.LLSDACSBC8438:
	.uleb128 .LEHB5-.LCOLDB12
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC8438:
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
.LFB8439:
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
	je	.L85
	cmpq	8(%rcx), %rdx
	jnb	.L76
	movq	16(%rcx), %rax
	movq	(%rax,%rdx,8), %rdi
	testq	%rdi, %rdi
	je	.L76
	movq	%rdi, %rcx
	call	_ZN3wze6engine6actors5actorD1Ev
	movq	%rdi, %rcx
	movl	$304, %edx
	call	_ZdlPvy
	movq	8(%rsi), %rax
	movq	16(%rsi), %rcx
	cmpq	%rax, %rbx
	jnb	.L86
	movq	$0, (%rcx,%rbx,8)
	cmpq	$0, -8(%rcx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L87
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L87:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L83:
	movq	%rdx, %r9
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L88
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L89
	cmpq	$1, %rdx
	jne	.L83
.L82:
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
.L89:
	subq	%r9, %rax
	movq	%r9, %rdx
	movq	%rax, %r8
	jmp	.L82
.L76:
	leaq	.LC14(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L88:
	leaq	.LC9(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L85:
	leaq	.LC13(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L86:
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
.LFB8440:
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
	movq	8(%rdx), %rbx
	movq	(%rdx), %rdi
	movq	%rcx, %rbp
	movq	8(%rcx), %rcx
	testq	%rbx, %rbx
	je	.L91
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L94:
	movq	(%rdi,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L92
	cmpq	%rcx, %rdx
	jnb	.L93
	movq	16(%rbp), %r8
	cmpq	$0, (%r8,%rdx,8)
	je	.L93
.L92:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L94
.L91:
	cmpq	$1, %rcx
	jbe	.L95
	movq	16(%rbp), %rdx
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L96:
	xorl	%eax, %eax
	testq	%rbx, %rbx
	jne	.L98
	jmp	.L99
	.p2align 4,,10
	.p2align 3
.L127:
	addq	$1, %rax
	cmpq	%rax, %rbx
	je	.L99
.L98:
	cmpq	%rsi, (%rdi,%rax,8)
	jne	.L127
	cmpq	%rax, %rbx
	je	.L99
.L100:
	addq	$1, %rsi
	cmpq	%rcx, %rsi
	jb	.L96
	cmpq	$0, -8(%rdx,%rcx,8)
	leaq	-1(%rcx), %r8
	je	.L128
.L126:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
	.p2align 3
.L99:
	movq	(%rdx,%rsi,8), %r12
	leaq	0(,%rsi,8), %r13
	testq	%r12, %r12
	je	.L101
	movq	%r12, %rcx
	call	_ZN3wze6engine6actors5actorD1Ev
	movl	$304, %edx
	movq	%r12, %rcx
	call	_ZdlPvy
	movq	8(%rbp), %rcx
	movq	16(%rbp), %rdx
.L101:
	cmpq	%rcx, %rsi
	jnb	.L129
	movq	$0, (%rdx,%r13)
	jmp	.L100
.L128:
	movq	%rcx, %r9
	jmp	.L104
	.p2align 4,,10
	.p2align 3
.L109:
	leaq	-1(%r9), %rax
	cmpq	%rcx, %rax
	jnb	.L130
	cmpq	$0, (%rdx,%rax,8)
	jne	.L131
	movq	%rax, %r9
.L104:
	cmpq	$1, %r9
	jne	.L109
.L108:
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
.L95:
	testq	%rcx, %rcx
	jne	.L126
	leaq	.LC9(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L131:
	subq	%r9, %rcx
	movq	%rcx, %r8
	jmp	.L108
.L93:
	leaq	.LC15(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L130:
	leaq	.LC9(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L129:
	leaq	.LC9(%rip), %rcx
	movq	%rsi, %rdx
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
.LFB8443:
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
	movq	8(%rcx), %r9
	movq	%rdx, %rsi
	movq	(%rdx), %rdx
	movq	%rcx, %rdi
	testq	%rdx, %rdx
	je	.L133
	movq	8(%rsi), %r8
	xorl	%eax, %eax
	jmp	.L136
	.p2align 4,,10
	.p2align 3
.L134:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L133
.L136:
	movq	(%r8,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L134
	cmpq	%r9, %rcx
	jnb	.L135
	movq	16(%rdi), %r10
	cmpq	$0, (%r10,%rcx,8)
	jne	.L134
.L135:
	leaq	.LC16(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L133:
	cmpq	$1, %r9
	jbe	.L137
	movq	16(%rdi), %r10
	movl	$1, %ebx
	testq	%rdx, %rdx
	je	.L141
	.p2align 4,,10
	.p2align 3
.L146:
	movq	8(%rsi), %rcx
	xorl	%eax, %eax
	jmp	.L140
	.p2align 4,,10
	.p2align 3
.L168:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L141
.L140:
	cmpq	%rbx, (%rcx,%rax,8)
	jne	.L168
	cmpq	%rax, %rdx
	je	.L141
	addq	$1, %rbx
	cmpq	%r9, %rbx
	jnb	.L145
.L170:
	movq	(%rsi), %rdx
	testq	%rdx, %rdx
	jne	.L146
	.p2align 4,,10
	.p2align 3
.L141:
	movq	(%r10,%rbx,8), %rbp
	leaq	0(,%rbx,8), %r12
	testq	%rbp, %rbp
	je	.L143
	movq	%rbp, %rcx
	call	_ZN3wze6engine6actors5actorD1Ev
	movl	$304, %edx
	movq	%rbp, %rcx
	call	_ZdlPvy
	movq	8(%rdi), %r9
	movq	16(%rdi), %r10
.L143:
	cmpq	%r9, %rbx
	jnb	.L169
	addq	$1, %rbx
	movq	$0, (%r10,%r12)
	cmpq	%r9, %rbx
	jb	.L170
.L145:
	cmpq	$0, -8(%r10,%r9,8)
	leaq	-1(%r9), %r8
	je	.L171
.L167:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L171:
	movq	%r9, %rax
	jmp	.L147
	.p2align 4,,10
	.p2align 3
.L152:
	leaq	-1(%rax), %rdx
	cmpq	%r9, %rdx
	jnb	.L172
	cmpq	$0, (%r10,%rdx,8)
	jne	.L173
	movq	%rdx, %rax
.L147:
	cmpq	$1, %rax
	jne	.L152
.L151:
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
.L137:
	testq	%r9, %r9
	jne	.L167
	leaq	.LC9(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L173:
	subq	%rax, %r9
	movq	%r9, %r8
	jmp	.L151
.L172:
	leaq	.LC9(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L169:
	leaq	.LC9(%rip), %rcx
	movq	%rbx, %rdx
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
.LFB8444:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testq	%rdx, %rdx
	je	.L178
	cmpq	8(%rcx), %rdx
	jnb	.L176
	movq	16(%rcx), %rax
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L176
	addq	$40, %rsp
	ret
.L176:
	leaq	.LC18(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L178:
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
	.def	_ZN3wze6engine6actors5actorD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actorC1EPS0_yddttd;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
