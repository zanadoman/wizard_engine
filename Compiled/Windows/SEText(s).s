	.file	"SEText(s).cpp"
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
	.def	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6RemoveEyy.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6RemoveEyy.isra.0
_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6RemoveEyy.isra.0:
.LFB8635:
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
	.globl	_ZN4slay6engine6actors5actor5textsC2ERS0_RS2_
	.def	_ZN4slay6engine6actors5actor5textsC2ERS0_RS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor5textsC2ERS0_RS2_
_ZN4slay6engine6actors5actor5textsC2ERS0_RS2_:
.LFB8433:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	movq	%r8, 8(%rcx)
	movq	$1, 16(%rcx)
	movl	$8, %ecx
	movq	$0, 40(%rsp)
	call	malloc
	movq	%rax, 24(%rbx)
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
	.globl	_ZN4slay6engine6actors5actor5textsC1ERS0_RS2_
	.def	_ZN4slay6engine6actors5actor5textsC1ERS0_RS2_;	.scl	2;	.type	32;	.endef
	.set	_ZN4slay6engine6actors5actor5textsC1ERS0_RS2_,_ZN4slay6engine6actors5actor5textsC2ERS0_RS2_
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5textsD2Ev
	.def	_ZN4slay6engine6actors5actor5textsD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor5textsD2Ev
_ZN4slay6engine6actors5actor5textsD2Ev:
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
	movq	16(%rcx), %rax
	movq	%rcx, %rdi
	movq	24(%rcx), %rcx
	cmpq	$1, %rax
	jbe	.L34
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L37:
	movq	(%rcx,%rbx,8), %rsi
	testq	%rsi, %rsi
	je	.L35
	movq	96(%rsi), %rcx
	addq	$1, %rbx
	call	SDL_DestroyTexture
	leaq	40(%rsi), %rcx
	call	_ZN3neo6stringD1Ev
	movq	%rsi, %rcx
	movl	$104, %edx
	call	_ZdlPvy
	movq	16(%rdi), %rax
	movq	24(%rdi), %rcx
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
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8436:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8436-.LLSDACSB8436
.LLSDACSB8436:
.LLSDACSE8436:
	.text
	.seh_endproc
	.globl	_ZN4slay6engine6actors5actor5textsD1Ev
	.def	_ZN4slay6engine6actors5actor5textsD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN4slay6engine6actors5actor5textsD1Ev,_ZN4slay6engine6actors5actor5textsD2Ev
	.section .rdata,"dr"
	.align 8
.LC5:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.align 8
.LC6:
	.ascii "neo::array+=: Memory allocation failed\12Params: Elements(type, length): %ld, %ld\12\0"
	.align 8
.LC7:
	.ascii "slay::engine.actors[].texts.New(): Memory allocation failed\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB9:
	.text
.LHOTB9:
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts3NewEv
	.def	_ZN4slay6engine6actors5actor5texts3NewEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor5texts3NewEv
_ZN4slay6engine6actors5actor5texts3NewEv:
.LFB8438:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	16(%rcx), %rax
	movq	%rcx, %rsi
	cmpq	$1, %rax
	jbe	.L39
	movq	24(%rcx), %rdx
	movl	$1, %ebx
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L40:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L39
.L43:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L40
	movl	$104, %ecx
.LEHB0:
	call	_Znwy
.LEHE0:
	movdqu	(%rsi), %xmm2
	leaq	40(%rax), %rcx
	movq	%rax, %rdi
	movups	%xmm2, (%rax)
.LEHB1:
	call	_ZN3neo6stringC1Ev
.LEHE1:
	movabsq	$108367866033537024, %rax
	pxor	%xmm0, %xmm0
	xorl	%edx, %edx
	movl	$0, 16(%rdi)
	movq	%rax, 32(%rdi)
	movq	24(%rsi), %rax
	movq	$0x000000000, 24(%rdi)
	movq	$0, 56(%rdi)
	movw	%dx, 80(%rdi)
	movq	$0, 88(%rdi)
	movq	$0, 96(%rdi)
	movups	%xmm0, 64(%rdi)
	cmpq	16(%rsi), %rbx
	jnb	.L53
	movq	%rdi, (%rax,%rbx,8)
	movq	%rbx, %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L39:
	movl	$104, %ecx
.LEHB2:
	call	_Znwy
.LEHE2:
	movdqu	(%rsi), %xmm1
	leaq	40(%rax), %rcx
	movq	%rax, %rbx
	movups	%xmm1, (%rax)
.LEHB3:
	call	_ZN3neo6stringC1Ev
.LEHE3:
	movl	$0, 16(%rbx)
	pxor	%xmm0, %xmm0
	movq	24(%rsi), %rcx
	movabsq	$108367866033537024, %rax
	movq	%rax, 32(%rbx)
	xorl	%eax, %eax
	movw	%ax, 80(%rbx)
	movq	16(%rsi), %rax
	movq	$0x000000000, 24(%rbx)
	leaq	1(%rax), %rdx
	movq	$0, 56(%rbx)
	movq	%rdx, 16(%rsi)
	salq	$3, %rdx
	movq	$0, 88(%rbx)
	movq	$0, 96(%rbx)
	movups	%xmm0, 64(%rbx)
	movq	%rbx, 40(%rsp)
	call	realloc
	movq	%rax, 24(%rsi)
	testq	%rax, %rax
	je	.L54
	movq	16(%rsi), %rdx
	leaq	40(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
.LEHB4:
	call	_ZN3neo9memCopyToEPKvPvy
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	addq	$-1, %rax
	movq	%rax, %rbx
	jnc	.L55
	cmpq	$0, (%rdx,%rax,8)
	je	.L56
	movq	%rbx, %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L53:
	leaq	.LC5(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L56:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L55:
	leaq	.LC5(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L54:
	leaq	.LC6(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
.LEHE4:
	movl	$1, %ecx
	call	exit
.L50:
	movq	%rax, %rsi
	jmp	.L49
.L51:
	movq	%rax, %rbx
	jmp	.L48
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
	.uleb128 .L51-.LFB8438
	.uleb128 0
	.uleb128 .LEHB2-.LFB8438
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB8438
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L50-.LFB8438
	.uleb128 0
	.uleb128 .LEHB4-.LFB8438
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE8438:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN4slay6engine6actors5actor5texts3NewEv.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor5texts3NewEv.cold
	.seh_stackalloc	72
	.seh_savereg	%rbx, 48
	.seh_savereg	%rsi, 56
	.seh_savereg	%rdi, 64
	.seh_endprologue
_ZN4slay6engine6actors5actor5texts3NewEv.cold:
.L49:
	movq	%rbx, %rcx
	movl	$104, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB5:
	call	_Unwind_Resume
.L48:
	movq	%rdi, %rcx
	movl	$104, %edx
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
	.ascii "slay::engine.actors[].texts.Delete(): Illegal deletion of NULL Text\12Params: ID: %lld\12\0"
	.align 8
.LC11:
	.ascii "slay::engine.actors[].texts.Delete(): Text does not exists\12Params: ID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts6DeleteEy
	.def	_ZN4slay6engine6actors5actor5texts6DeleteEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor5texts6DeleteEy
_ZN4slay6engine6actors5actor5texts6DeleteEy:
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
	je	.L68
	cmpq	16(%rcx), %rdx
	jnb	.L59
	movq	24(%rcx), %rax
	movq	(%rax,%rdx,8), %rdi
	testq	%rdi, %rdi
	je	.L59
	movq	96(%rdi), %rcx
	call	SDL_DestroyTexture
	leaq	40(%rdi), %rcx
	call	_ZN3neo6stringD1Ev
	movq	%rdi, %rcx
	movl	$104, %edx
	call	_ZdlPvy
	movq	16(%rsi), %rax
	movq	24(%rsi), %rcx
	cmpq	%rax, %rbx
	jnb	.L69
	movq	$0, (%rcx,%rbx,8)
	cmpq	$0, -8(%rcx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L70
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L70:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L66:
	movq	%rdx, %r9
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L71
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L72
	cmpq	$1, %rdx
	jne	.L66
.L65:
	leaq	16(%rsi), %rcx
.LEHB6:
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L72:
	subq	%r9, %rax
	movq	%r9, %rdx
	movq	%rax, %r8
	jmp	.L65
.L59:
	leaq	.LC11(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L71:
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L68:
	leaq	.LC10(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L69:
	leaq	.LC5(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
.LEHE6:
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8439:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8439-.LLSDACSB8439
.LLSDACSB8439:
	.uleb128 .LEHB6-.LFB8439
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE8439:
	.text
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC12:
	.ascii "slay::engine.actors[].texts.Purge(): Text does not exists\12Params: Keep(length): %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts5PurgeESt16initializer_listIyE
	.def	_ZN4slay6engine6actors5actor5texts5PurgeESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor5texts5PurgeESt16initializer_listIyE
_ZN4slay6engine6actors5actor5texts5PurgeESt16initializer_listIyE:
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
	movq	16(%rcx), %r9
	movq	%rcx, %rbp
	testq	%rbx, %rbx
	je	.L74
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L77:
	movq	(%rdi,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L75
	cmpq	%r9, %rdx
	jnb	.L76
	movq	24(%rbp), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L76
.L75:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L77
.L74:
	cmpq	$1, %r9
	jbe	.L78
	movq	24(%rbp), %rdx
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L79:
	xorl	%eax, %eax
	testq	%rbx, %rbx
	jne	.L81
	jmp	.L82
	.p2align 4,,10
	.p2align 3
.L110:
	addq	$1, %rax
	cmpq	%rax, %rbx
	je	.L82
.L81:
	cmpq	%rsi, (%rdi,%rax,8)
	jne	.L110
	cmpq	%rax, %rbx
	je	.L82
.L83:
	addq	$1, %rsi
	cmpq	%r9, %rsi
	jb	.L79
	cmpq	$0, -8(%rdx,%r9,8)
	leaq	-1(%r9), %r8
	je	.L111
.L109:
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
.L82:
	movq	(%rdx,%rsi,8), %r12
	leaq	0(,%rsi,8), %r13
	testq	%r12, %r12
	je	.L84
	movq	96(%r12), %rcx
	call	SDL_DestroyTexture
	leaq	40(%r12), %rcx
	call	_ZN3neo6stringD1Ev
	movl	$104, %edx
	movq	%r12, %rcx
	call	_ZdlPvy
	movq	16(%rbp), %r9
	movq	24(%rbp), %rdx
.L84:
	cmpq	%r9, %rsi
	jnb	.L112
	movq	$0, (%rdx,%r13)
	jmp	.L83
.L111:
	movq	%r9, %r10
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L92:
	leaq	-1(%r10), %rax
	cmpq	%r9, %rax
	jnb	.L113
	cmpq	$0, (%rdx,%rax,8)
	jne	.L114
	movq	%rax, %r10
.L87:
	cmpq	$1, %r10
	jne	.L92
.L91:
	leaq	16(%rbp), %rcx
	movq	%r10, %rdx
.LEHB7:
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L78:
	testq	%r9, %r9
	jne	.L109
	leaq	.LC5(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L114:
	movq	%r9, %r8
	subq	%r10, %r8
	jmp	.L91
.L76:
	leaq	.LC12(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L113:
	leaq	.LC5(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L112:
	leaq	.LC5(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
.LEHE7:
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8440:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8440-.LLSDACSB8440
.LLSDACSB8440:
	.uleb128 .LEHB7-.LFB8440
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE8440:
	.text
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC13:
	.ascii "slay::engine.actors[].texts.Purge(): Text does not exists\12Params: Keep: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts5PurgeEPN3neo5arrayIyEE
	.def	_ZN4slay6engine6actors5actor5texts5PurgeEPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor5texts5PurgeEPN3neo5arrayIyEE
_ZN4slay6engine6actors5actor5texts5PurgeEPN3neo5arrayIyEE:
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
	movq	16(%rcx), %r9
	movq	%rdx, %rdi
	movq	(%rdx), %rdx
	movq	%rcx, %rsi
	testq	%rdx, %rdx
	je	.L116
	movq	8(%rdi), %r8
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L119:
	movq	(%r8,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L117
	cmpq	%r9, %rcx
	jnb	.L118
	movq	24(%rsi), %r10
	cmpq	$0, (%r10,%rcx,8)
	je	.L118
.L117:
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L119
.L116:
	cmpq	$1, %r9
	jbe	.L120
	movq	24(%rsi), %r10
	movl	$1, %ebx
	testq	%rdx, %rdx
	je	.L124
	.p2align 4,,10
	.p2align 3
.L129:
	movq	8(%rdi), %rcx
	xorl	%eax, %eax
	jmp	.L123
	.p2align 4,,10
	.p2align 3
.L151:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L124
.L123:
	cmpq	%rbx, (%rcx,%rax,8)
	jne	.L151
	cmpq	%rax, %rdx
	je	.L124
	addq	$1, %rbx
	cmpq	%r9, %rbx
	jnb	.L128
.L153:
	movq	(%rdi), %rdx
	testq	%rdx, %rdx
	jne	.L129
	.p2align 4,,10
	.p2align 3
.L124:
	movq	(%r10,%rbx,8), %rbp
	leaq	0(,%rbx,8), %r12
	testq	%rbp, %rbp
	je	.L126
	movq	96(%rbp), %rcx
	call	SDL_DestroyTexture
	leaq	40(%rbp), %rcx
	call	_ZN3neo6stringD1Ev
	movl	$104, %edx
	movq	%rbp, %rcx
	call	_ZdlPvy
	movq	16(%rsi), %r9
	movq	24(%rsi), %r10
.L126:
	cmpq	%r9, %rbx
	jnb	.L152
	addq	$1, %rbx
	movq	$0, (%r10,%r12)
	cmpq	%r9, %rbx
	jb	.L153
.L128:
	cmpq	$0, -8(%r10,%r9,8)
	leaq	-1(%r9), %r8
	je	.L154
.L150:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L154:
	movq	%r9, %rax
	jmp	.L130
	.p2align 4,,10
	.p2align 3
.L135:
	leaq	-1(%rax), %rdx
	cmpq	%r9, %rdx
	jnb	.L155
	cmpq	$0, (%r10,%rdx,8)
	jne	.L156
	movq	%rdx, %rax
.L130:
	cmpq	$1, %rax
	jne	.L135
.L134:
	movq	%rax, %rdx
	leaq	16(%rsi), %rcx
.LEHB8:
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L120:
	testq	%r9, %r9
	jne	.L150
	leaq	.LC5(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L156:
	movq	%r9, %r8
	subq	%rax, %r8
	jmp	.L134
.L118:
	leaq	.LC13(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L155:
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L152:
	leaq	.LC5(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
.LEHE8:
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8443:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8443-.LLSDACSB8443
.LLSDACSB8443:
	.uleb128 .LEHB8-.LFB8443
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE8443:
	.text
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC14:
	.ascii "slay::engine.actors[].texts[]: Illegal access to NULL Text\12Params: ID: %lld\12\0"
	.align 8
.LC15:
	.ascii "slay::engine.actors[].texts[]: Text does not exists\12Params: ID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5textsixEy
	.def	_ZN4slay6engine6actors5actor5textsixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor5textsixEy
_ZN4slay6engine6actors5actor5textsixEy:
.LFB8444:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testq	%rdx, %rdx
	je	.L161
	cmpq	16(%rcx), %rdx
	jnb	.L159
	movq	24(%rcx), %rax
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L159
	addq	$40, %rsp
	ret
.L159:
	leaq	.LC15(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L161:
	leaq	.LC14(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts4textC2ERS0_RS2_
	.def	_ZN4slay6engine6actors5actor5texts4textC2ERS0_RS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor5texts4textC2ERS0_RS2_
_ZN4slay6engine6actors5actor5texts4textC2ERS0_RS2_:
.LFB8446:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	leaq	40(%rcx), %rcx
	movq	%r8, -32(%rcx)
	call	_ZN3neo6stringC1Ev
	pxor	%xmm0, %xmm0
	movabsq	$108367866033537024, %rax
	movl	$0, 16(%rbx)
	movq	%rax, 32(%rbx)
	xorl	%eax, %eax
	movq	$0x000000000, 24(%rbx)
	movq	$0, 56(%rbx)
	movw	%ax, 80(%rbx)
	movq	$0, 88(%rbx)
	movq	$0, 96(%rbx)
	movups	%xmm0, 64(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.globl	_ZN4slay6engine6actors5actor5texts4textC1ERS0_RS2_
	.def	_ZN4slay6engine6actors5actor5texts4textC1ERS0_RS2_;	.scl	2;	.type	32;	.endef
	.set	_ZN4slay6engine6actors5actor5texts4textC1ERS0_RS2_,_ZN4slay6engine6actors5actor5texts4textC2ERS0_RS2_
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts4text10GetOffsetXEv
	.def	_ZN4slay6engine6actors5actor5texts4text10GetOffsetXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor5texts4text10GetOffsetXEv
_ZN4slay6engine6actors5actor5texts4text10GetOffsetXEv:
.LFB8448:
	.seh_endprologue
	movl	56(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts4text10SetOffsetXEi
	.def	_ZN4slay6engine6actors5actor5texts4text10SetOffsetXEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor5texts4text10SetOffsetXEi
_ZN4slay6engine6actors5actor5texts4text10SetOffsetXEi:
.LFB8449:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	.seh_endprologue
	pxor	%xmm0, %xmm0
	pxor	%xmm6, %xmm6
	pxor	%xmm3, %xmm3
	movq	8(%rcx), %rax
	movsd	160(%rax), %xmm2
	movsd	152(%rax), %xmm1
	cvtsi2sdl	60(%rcx), %xmm0
	movq	%rcx, %rbx
	movl	%edx, %esi
	addsd	%xmm2, %xmm0
	cvttsd2sil	%xmm0, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	cvtsi2sdl	%eax, %xmm6
	addsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	cvtsi2sdl	%eax, %xmm3
	movq	(%rcx), %rax
	movsd	%xmm6, 32(%rsp)
	leaq	552(%rax), %rcx
	movsd	%xmm3, 56(%rsp)
	call	_ZN4slay6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movsd	56(%rsp), %xmm3
	movsd	%xmm0, 64(%rbx)
	movsd	160(%rax), %xmm2
	movsd	152(%rax), %xmm1
	movq	(%rbx), %rax
	movsd	%xmm6, 32(%rsp)
	leaq	552(%rax), %rcx
	call	_ZN4slay6engine6vector5AngleEdddd
	movl	%esi, 56(%rbx)
	movl	%esi, %eax
	movsd	%xmm0, 72(%rbx)
	movaps	64(%rsp), %xmm6
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts4text10GetOffsetYEv
	.def	_ZN4slay6engine6actors5actor5texts4text10GetOffsetYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor5texts4text10GetOffsetYEv
_ZN4slay6engine6actors5actor5texts4text10GetOffsetYEv:
.LFB8450:
	.seh_endprologue
	movl	60(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts4text10SetOffsetYEi
	.def	_ZN4slay6engine6actors5actor5texts4text10SetOffsetYEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor5texts4text10SetOffsetYEi
_ZN4slay6engine6actors5actor5texts4text10SetOffsetYEi:
.LFB8451:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	.seh_endprologue
	pxor	%xmm0, %xmm0
	pxor	%xmm6, %xmm6
	pxor	%xmm3, %xmm3
	movq	8(%rcx), %rax
	movsd	160(%rax), %xmm2
	movsd	152(%rax), %xmm1
	cvtsi2sdl	%edx, %xmm0
	movq	%rcx, %rbx
	movl	%edx, %esi
	addsd	%xmm2, %xmm0
	cvttsd2sil	%xmm0, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	56(%rcx), %xmm0
	cvtsi2sdl	%eax, %xmm6
	addsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	cvtsi2sdl	%eax, %xmm3
	movq	(%rcx), %rax
	movsd	%xmm6, 32(%rsp)
	leaq	552(%rax), %rcx
	movsd	%xmm3, 56(%rsp)
	call	_ZN4slay6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movsd	56(%rsp), %xmm3
	movsd	%xmm0, 64(%rbx)
	movsd	160(%rax), %xmm2
	movsd	152(%rax), %xmm1
	movq	(%rbx), %rax
	movsd	%xmm6, 32(%rsp)
	leaq	552(%rax), %rcx
	call	_ZN4slay6engine6vector5AngleEdddd
	movl	%esi, 60(%rbx)
	movl	%esi, %eax
	movsd	%xmm0, 72(%rbx)
	movaps	64(%rsp), %xmm6
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts4textD2Ev
	.def	_ZN4slay6engine6actors5actor5texts4textD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor5texts4textD2Ev
_ZN4slay6engine6actors5actor5texts4textD2Ev:
.LFB8453:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movq	96(%rcx), %rcx
	call	SDL_DestroyTexture
	leaq	40(%rbx), %rcx
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZN3neo6stringD1Ev
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8453:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8453-.LLSDACSB8453
.LLSDACSB8453:
.LLSDACSE8453:
	.text
	.seh_endproc
	.globl	_ZN4slay6engine6actors5actor5texts4textD1Ev
	.def	_ZN4slay6engine6actors5actor5texts4textD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN4slay6engine6actors5actor5texts4textD1Ev,_ZN4slay6engine6actors5actor5texts4textD2Ev
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts4text6StringEv
	.def	_ZN4slay6engine6actors5actor5texts4text6StringEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor5texts4text6StringEv
_ZN4slay6engine6actors5actor5texts4text6StringEv:
.LFB8455:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movq	96(%rcx), %rcx
	call	SDL_DestroyTexture
	leaq	40(%rbx), %rax
	movq	$0, 96(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts4text7GetFontEv
	.def	_ZN4slay6engine6actors5actor5texts4text7GetFontEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor5texts4text7GetFontEv
_ZN4slay6engine6actors5actor5texts4text7GetFontEv:
.LFB8456:
	.seh_endprologue
	movq	88(%rcx), %rax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC16:
	.ascii "slay::engine.actors[].texts[].SetFont(): Font does not exists\12Params: ID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts4text7SetFontEy
	.def	_ZN4slay6engine6actors5actor5texts4text7SetFontEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor5texts4text7SetFontEy
_ZN4slay6engine6actors5actor5texts4text7SetFontEy:
.LFB8457:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rdx, %rax
	testq	%rdx, %rdx
	je	.L173
	movq	(%rcx), %rdx
	cmpq	600(%rdx), %rax
	jnb	.L172
	movq	608(%rdx), %rdx
	cmpq	$0, (%rdx,%rax,8)
	je	.L172
	movq	%rax, %rdx
	movq	%rdx, 88(%rcx)
	addq	$40, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L173:
	xorl	%edx, %edx
	movq	%rdx, 88(%rcx)
	addq	$40, %rsp
	ret
.L172:
	leaq	.LC16(%rip), %rcx
	movq	%rax, %rdx
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
	.def	SDL_DestroyTexture;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6stringD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6stringC1Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6vector6LengthEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6vector5AngleEdddd;	.scl	2;	.type	32;	.endef
