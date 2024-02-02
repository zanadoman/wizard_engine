	.file	"SEActors.cpp"
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
	.def	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6RemoveEyy.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6RemoveEyy.isra.0
_ZN3neo5arrayIPN4slay6engine6actors5actorEE6RemoveEyy.isra.0:
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
	.globl	_ZN4slay6engine6actorsC2EPS0_
	.def	_ZN4slay6engine6actorsC2EPS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actorsC2EPS0_
_ZN4slay6engine6actorsC2EPS0_:
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
	.globl	_ZN4slay6engine6actorsC1EPS0_
	.def	_ZN4slay6engine6actorsC1EPS0_;	.scl	2;	.type	32;	.endef
	.set	_ZN4slay6engine6actorsC1EPS0_,_ZN4slay6engine6actorsC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actorsD2Ev
	.def	_ZN4slay6engine6actorsD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actorsD2Ev
_ZN4slay6engine6actorsD2Ev:
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
	call	_ZN4slay6engine6actors5actorD1Ev
	movq	%rsi, %rcx
	movl	$232, %edx
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
	.globl	_ZN4slay6engine6actorsD1Ev
	.def	_ZN4slay6engine6actorsD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN4slay6engine6actorsD1Ev,_ZN4slay6engine6actorsD2Ev
	.section .rdata,"dr"
	.align 8
.LC5:
	.ascii "slay::engine.actors.New(): Layer must not be less than 0\12Params: Type: %lld, X: %lf, Y: %lf, Width: %d, Height: %d, Layer: %lf\12\0"
	.align 8
.LC6:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.align 8
.LC7:
	.ascii "neo::array+=: Memory allocation failed\12Params: Elements(type, length): %ld, %ld\12\0"
	.align 8
.LC8:
	.ascii "slay::engine.actors.New(): Memory allocation failed\12Params: Type: %lld, X: %lf, Y: %lf, Width: %d, Height: %d, Layer: %lf\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB9:
	.text
.LHOTB9:
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors3NewEyddttd
	.def	_ZN4slay6engine6actors3NewEyddttd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors3NewEyddttd
_ZN4slay6engine6actors3NewEyddttd:
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
	pxor	%xmm0, %xmm0
	movsd	240(%rsp), %xmm8
	movzwl	224(%rsp), %ebp
	movzwl	232(%rsp), %r12d
	comisd	%xmm8, %xmm0
	movq	%rcx, %rsi
	movapd	%xmm2, %xmm6
	movapd	%xmm3, %xmm7
	movq	%rdx, %rdi
	ja	.L39
	movq	8(%rcx), %rax
	cmpq	$1, %rax
	jbe	.L41
	movq	16(%rcx), %rcx
	movl	$1, %ebx
	jmp	.L45
	.p2align 4,,10
	.p2align 3
.L42:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L41
.L45:
	cmpq	$0, (%rcx,%rbx,8)
	jne	.L42
	movl	$232, %ecx
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
	call	_ZN4slay6engine6actors5actorC1EPS0_yddttd
.LEHE1:
	movq	16(%rsi), %rax
	cmpq	8(%rsi), %rbx
	jnb	.L55
	movq	%r13, (%rax,%rbx,8)
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L41:
	movl	$232, %ecx
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
	call	_ZN4slay6engine6actors5actorC1EPS0_yddttd
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
	je	.L56
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
	jnc	.L57
	cmpq	$0, (%rdx,%rax,8)
	je	.L58
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
.L55:
	leaq	.LC6(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L39:
	movl	%r12d, 40(%rsp)
	leaq	.LC5(%rip), %rcx
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	movl	%ebp, 32(%rsp)
	movsd	%xmm8, 48(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L58:
	movl	%r12d, 40(%rsp)
	movapd	%xmm7, %xmm3
	movapd	%xmm6, %xmm2
	movq	%rdi, %rdx
	movl	%ebp, 32(%rsp)
	movq	%xmm7, %r9
	movq	%xmm6, %r8
	leaq	.LC8(%rip), %rcx
	movsd	%xmm8, 48(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L57:
	leaq	.LC6(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L56:
	leaq	.LC7(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
.LEHE4:
	movl	$1, %ecx
	call	exit
.L52:
	movq	%rax, %rsi
	jmp	.L51
.L53:
	movq	%rax, %rbx
	jmp	.L50
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
	.uleb128 .L53-.LFB8438
	.uleb128 0
	.uleb128 .LEHB2-.LFB8438
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB8438
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L52-.LFB8438
	.uleb128 0
	.uleb128 .LEHB4-.LFB8438
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE8438:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN4slay6engine6actors3NewEyddttd.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors3NewEyddttd.cold
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
_ZN4slay6engine6actors3NewEyddttd.cold:
.L51:
	movq	%rbx, %rcx
	movl	$232, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB5:
	call	_Unwind_Resume
.L50:
	movq	%r13, %rcx
	movl	$232, %edx
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
	.uleb128 .LEHB5-.LCOLDB9
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC8438:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE9:
	.text
.LHOTE9:
	.section .rdata,"dr"
	.align 8
.LC10:
	.ascii "slay::engine.actors.Delete(): Illegal deletion of NULL Actor\12Params: ID: %lld\12\0"
	.align 8
.LC11:
	.ascii "slay::engine.actors.Delete(): Actor does not exist\12Params: ID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors6DeleteEy
	.def	_ZN4slay6engine6actors6DeleteEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors6DeleteEy
_ZN4slay6engine6actors6DeleteEy:
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
	je	.L70
	cmpq	8(%rcx), %rdx
	jnb	.L61
	movq	16(%rcx), %rax
	movq	(%rax,%rdx,8), %rdi
	testq	%rdi, %rdi
	je	.L61
	movq	%rdi, %rcx
	call	_ZN4slay6engine6actors5actorD1Ev
	movq	%rdi, %rcx
	movl	$232, %edx
	call	_ZdlPvy
	movq	8(%rsi), %rax
	movq	16(%rsi), %rcx
	cmpq	%rax, %rbx
	jnb	.L71
	movq	$0, (%rcx,%rbx,8)
	cmpq	$0, -8(%rcx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L72
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L72:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L68:
	movq	%rdx, %r9
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L73
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L74
	cmpq	$1, %rdx
	jne	.L68
.L67:
	leaq	8(%rsi), %rcx
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L74:
	subq	%r9, %rax
	movq	%r9, %rdx
	movq	%rax, %r8
	jmp	.L67
.L61:
	leaq	.LC11(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L73:
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L70:
	leaq	.LC10(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L71:
	leaq	.LC6(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC12:
	.ascii "slay::engine.actors.Purge(): Actor does not exist\12Params: Keep(length): %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5PurgeESt16initializer_listIyE
	.def	_ZN4slay6engine6actors5PurgeESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5PurgeESt16initializer_listIyE
_ZN4slay6engine6actors5PurgeESt16initializer_listIyE:
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
	movq	8(%rcx), %r9
	movq	%rcx, %rbp
	testq	%rbx, %rbx
	je	.L76
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L79:
	movq	(%rdi,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L77
	cmpq	%r9, %rdx
	jnb	.L78
	movq	16(%rbp), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L78
.L77:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L79
.L76:
	cmpq	$1, %r9
	jbe	.L80
	movq	16(%rbp), %rdx
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L81:
	xorl	%eax, %eax
	testq	%rbx, %rbx
	jne	.L83
	jmp	.L84
	.p2align 4,,10
	.p2align 3
.L112:
	addq	$1, %rax
	cmpq	%rax, %rbx
	je	.L84
.L83:
	cmpq	%rsi, (%rdi,%rax,8)
	jne	.L112
	cmpq	%rax, %rbx
	je	.L84
.L85:
	addq	$1, %rsi
	cmpq	%r9, %rsi
	jb	.L81
	cmpq	$0, -8(%rdx,%r9,8)
	leaq	-1(%r9), %r8
	je	.L113
.L111:
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
.L84:
	movq	(%rdx,%rsi,8), %r12
	leaq	0(,%rsi,8), %r13
	testq	%r12, %r12
	je	.L86
	movq	%r12, %rcx
	call	_ZN4slay6engine6actors5actorD1Ev
	movl	$232, %edx
	movq	%r12, %rcx
	call	_ZdlPvy
	movq	8(%rbp), %r9
	movq	16(%rbp), %rdx
.L86:
	cmpq	%r9, %rsi
	jnb	.L114
	movq	$0, (%rdx,%r13)
	jmp	.L85
.L113:
	movq	%r9, %r10
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L94:
	leaq	-1(%r10), %rax
	cmpq	%r9, %rax
	jnb	.L115
	cmpq	$0, (%rdx,%rax,8)
	jne	.L116
	movq	%rax, %r10
.L89:
	cmpq	$1, %r10
	jne	.L94
.L93:
	leaq	8(%rbp), %rcx
	movq	%r10, %rdx
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L80:
	testq	%r9, %r9
	jne	.L111
	leaq	.LC6(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L116:
	movq	%r9, %r8
	subq	%r10, %r8
	jmp	.L93
.L78:
	leaq	.LC12(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L115:
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L114:
	leaq	.LC6(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC13:
	.ascii "slay::engine.actors.Purge(): Actor does not exist\12Params: Keep: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5PurgeEPN3neo5arrayIyEE
	.def	_ZN4slay6engine6actors5PurgeEPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5PurgeEPN3neo5arrayIyEE
_ZN4slay6engine6actors5PurgeEPN3neo5arrayIyEE:
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
	movq	%rdx, %rdi
	movq	(%rdx), %rdx
	movq	%rcx, %rsi
	testq	%rdx, %rdx
	je	.L118
	movq	8(%rdi), %r8
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L121:
	movq	(%r8,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L119
	cmpq	%r9, %rcx
	jnb	.L120
	movq	16(%rsi), %r10
	cmpq	$0, (%r10,%rcx,8)
	je	.L120
.L119:
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L121
.L118:
	cmpq	$1, %r9
	jbe	.L122
	movq	16(%rsi), %r10
	movl	$1, %ebx
	testq	%rdx, %rdx
	je	.L126
	.p2align 4,,10
	.p2align 3
.L131:
	movq	8(%rdi), %rcx
	xorl	%eax, %eax
	jmp	.L125
	.p2align 4,,10
	.p2align 3
.L153:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L126
.L125:
	cmpq	%rbx, (%rcx,%rax,8)
	jne	.L153
	cmpq	%rax, %rdx
	je	.L126
	addq	$1, %rbx
	cmpq	%r9, %rbx
	jnb	.L130
.L155:
	movq	(%rdi), %rdx
	testq	%rdx, %rdx
	jne	.L131
	.p2align 4,,10
	.p2align 3
.L126:
	movq	(%r10,%rbx,8), %rbp
	leaq	0(,%rbx,8), %r12
	testq	%rbp, %rbp
	je	.L128
	movq	%rbp, %rcx
	call	_ZN4slay6engine6actors5actorD1Ev
	movl	$232, %edx
	movq	%rbp, %rcx
	call	_ZdlPvy
	movq	8(%rsi), %r9
	movq	16(%rsi), %r10
.L128:
	cmpq	%r9, %rbx
	jnb	.L154
	addq	$1, %rbx
	movq	$0, (%r10,%r12)
	cmpq	%r9, %rbx
	jb	.L155
.L130:
	cmpq	$0, -8(%r10,%r9,8)
	leaq	-1(%r9), %r8
	je	.L156
.L152:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L156:
	movq	%r9, %rax
	jmp	.L132
	.p2align 4,,10
	.p2align 3
.L137:
	leaq	-1(%rax), %rdx
	cmpq	%r9, %rdx
	jnb	.L157
	cmpq	$0, (%r10,%rdx,8)
	jne	.L158
	movq	%rdx, %rax
.L132:
	cmpq	$1, %rax
	jne	.L137
.L136:
	movq	%rax, %rdx
	leaq	8(%rsi), %rcx
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L122:
	testq	%r9, %r9
	jne	.L152
	leaq	.LC6(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L158:
	movq	%r9, %r8
	subq	%rax, %r8
	jmp	.L136
.L120:
	leaq	.LC13(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L157:
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L154:
	leaq	.LC6(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC14:
	.ascii "slay::engine.actors[]: Illegal access to NULL Actor\0"
	.align 8
.LC15:
	.ascii "slay::engine.actors[]: Actor does not exist\12Params: ID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actorsixEy
	.def	_ZN4slay6engine6actorsixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actorsixEy
_ZN4slay6engine6actorsixEy:
.LFB8444:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testq	%rdx, %rdx
	je	.L163
	cmpq	8(%rcx), %rdx
	jnb	.L161
	movq	16(%rcx), %rax
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L161
	addq	$40, %rsp
	ret
.L161:
	leaq	.LC15(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L163:
	leaq	.LC14(%rip), %rcx
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
	.def	_ZN4slay6engine6actors5actorD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6actors5actorC1EPS0_yddttd;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
