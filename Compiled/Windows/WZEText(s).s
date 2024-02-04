	.file	"WZEText(s).cpp"
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
	.def	_ZN3neo5arrayIPN3wze6engine6actors5actor5texts4textEE6RemoveEyy.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo5arrayIPN3wze6engine6actors5actor5texts4textEE6RemoveEyy.isra.0
_ZN3neo5arrayIPN3wze6engine6actors5actor5texts4textEE6RemoveEyy.isra.0:
.LFB8637:
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
	.globl	_ZN3wze6engine6actors5actor5textsC2EPS0_PS2_
	.def	_ZN3wze6engine6actors5actor5textsC2EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5textsC2EPS0_PS2_
_ZN3wze6engine6actors5actor5textsC2EPS0_PS2_:
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
	.globl	_ZN3wze6engine6actors5actor5textsC1EPS0_PS2_
	.def	_ZN3wze6engine6actors5actor5textsC1EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor5textsC1EPS0_PS2_,_ZN3wze6engine6actors5actor5textsC2EPS0_PS2_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5textsD2Ev
	.def	_ZN3wze6engine6actors5actor5textsD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5textsD2Ev
_ZN3wze6engine6actors5actor5textsD2Ev:
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
	movq	104(%rsi), %rcx
	addq	$1, %rbx
	call	SDL_DestroyTexture
	leaq	80(%rsi), %rcx
	call	_ZN3neo6stringD1Ev
	movq	%rsi, %rcx
	movl	$112, %edx
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
	.globl	_ZN3wze6engine6actors5actor5textsD1Ev
	.def	_ZN3wze6engine6actors5actor5textsD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor5textsD1Ev,_ZN3wze6engine6actors5actor5textsD2Ev
	.section .rdata,"dr"
	.align 8
.LC4:
	.ascii "wze::engine.actors[].texts.New(): String must not be NULL\12Params: String: %p, FontID: %lld\12\0"
	.align 8
.LC5:
	.ascii "wze::engine.actors[].texts.New(): FontID does not exist\12Params: String: %s, FontID: %lld\12\0"
	.align 8
.LC9:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.align 8
.LC10:
	.ascii "neo::array+=: Memory allocation failed\12Params: Elements(type, length): %ld, %ld\12\0"
	.align 8
.LC11:
	.ascii "wze::engine.actors[].texts.New(): Memory allocation failed\12Params: String: %s, FontID: %lld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB13:
	.text
.LHOTB13:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts3NewEPKcy
	.def	_ZN3wze6engine6actors5actor5texts3NewEPKcy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts3NewEPKcy
_ZN3wze6engine6actors5actor5texts3NewEPKcy:
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
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, %r12
	movq	%r8, %rbp
	testq	%rdx, %rdx
	je	.L66
	testq	%r8, %r8
	jne	.L40
.L44:
	movq	16(%rsi), %rax
	cmpq	$1, %rax
	jbe	.L42
	movq	24(%rsi), %rdx
	movl	$1, %ebx
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L45:
	addq	$1, %rbx
	cmpq	%rbx, %rax
	je	.L42
.L51:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L45
	movl	$112, %ecx
.LEHB0:
	call	_Znwy
.LEHE0:
	movdqu	(%rsi), %xmm3
	leaq	80(%rax), %r13
	movq	%rax, %rdi
	movups	%xmm3, (%rax)
	movq	%r13, %rcx
.LEHB1:
	call	_ZN3neo6stringC1Ev
.LEHE1:
	movq	8(%rdi), %rax
	movl	$384, %r8d
	xorl	%r9d, %r9d
	movq	%r13, %rcx
	pxor	%xmm0, %xmm0
	movzwl	170(%rax), %edx
	movl	$-1, 18(%rdi)
	movq	$0x000000000, 24(%rdi)
	movw	%dx, 16(%rdi)
	leaq	32(%rsp), %rdx
	movw	%r8w, 36(%rdi)
	movupd	152(%rax), %xmm4
	leaq	56(%rsp), %rax
	movl	$16842752, 32(%rdi)
	movw	%r9w, 56(%rdi)
	movups	%xmm4, 40(%rdi)
	movups	%xmm0, 64(%rdi)
	movq	%r12, 56(%rsp)
	movq	%rax, 32(%rsp)
	movq	$1, 40(%rsp)
.LEHB2:
	call	_ZN3neo6stringaSESt16initializer_listIPKcE
.LEHE2:
	movq	%rbp, 96(%rdi)
	movq	24(%rsi), %rax
	movq	$0, 104(%rdi)
	cmpq	16(%rsi), %rbx
	jnb	.L67
	movq	%rdi, (%rax,%rbx,8)
	movq	%rbx, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
	.p2align 3
.L42:
	movl	$112, %ecx
.LEHB3:
	call	_Znwy
.LEHE3:
	movdqu	(%rsi), %xmm1
	leaq	80(%rax), %r13
	movq	%rax, %rbx
	movups	%xmm1, (%rax)
	movq	%r13, %rcx
.LEHB4:
	call	_ZN3neo6stringC1Ev
.LEHE4:
	movq	8(%rbx), %rax
	xorl	%ecx, %ecx
	pxor	%xmm0, %xmm0
	leaq	56(%rsp), %rdi
	movzwl	170(%rax), %edx
	movl	$-1, 18(%rbx)
	movq	$0x000000000, 24(%rbx)
	movw	%dx, 16(%rbx)
	movl	$384, %edx
	movw	%dx, 36(%rbx)
	movupd	152(%rax), %xmm2
	leaq	32(%rsp), %rdx
	movw	%cx, 56(%rbx)
	movq	%r13, %rcx
	movl	$16842752, 32(%rbx)
	movups	%xmm2, 40(%rbx)
	movups	%xmm0, 64(%rbx)
	movq	%r12, 56(%rsp)
	movq	%rdi, 32(%rsp)
	movq	$1, 40(%rsp)
.LEHB5:
	call	_ZN3neo6stringaSESt16initializer_listIPKcE
.LEHE5:
	movq	16(%rsi), %rax
	movq	24(%rsi), %rcx
	movq	%rbp, 96(%rbx)
	movq	$0, 104(%rbx)
	leaq	1(%rax), %rdx
	movq	%rbx, 56(%rsp)
	movq	%rdx, 16(%rsi)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 24(%rsi)
	testq	%rax, %rax
	je	.L68
	movq	16(%rsi), %rdx
	movl	$8, %r8d
	movq	%rdi, %rcx
	leaq	-8(%rax,%rdx,8), %rdx
.LEHB6:
	call	_ZN3neo9memCopyToEPKvPvy
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	addq	$-1, %rax
	movq	%rax, %rbx
	jnc	.L69
	cmpq	$0, (%rdx,%rax,8)
	je	.L70
	movq	%rbx, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
	.p2align 3
.L40:
	movq	(%rcx), %rax
	cmpq	600(%rax), %r8
	jnb	.L43
	movq	608(%rax), %rax
	cmpq	$0, (%rax,%r8,8)
	jne	.L44
.L43:
	leaq	.LC5(%rip), %rcx
	movq	%rbp, %r8
	movq	%r12, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L67:
	leaq	.LC9(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L70:
	leaq	.LC11(%rip), %rcx
	movq	%rbp, %r8
	movq	%r12, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L69:
	leaq	.LC9(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L66:
	leaq	.LC4(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L68:
	leaq	.LC10(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
.LEHE6:
	movl	$1, %ecx
	call	exit
.L59:
	movq	%rax, %rbx
	jmp	.L49
.L62:
	movq	%rax, %rsi
	jmp	.L54
.L61:
	movq	%rax, %rbx
	jmp	.L48
.L60:
	movq	%rax, %rsi
	jmp	.L55
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
	.uleb128 .L61-.LFB8438
	.uleb128 0
	.uleb128 .LEHB3-.LFB8438
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB8438
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L60-.LFB8438
	.uleb128 0
	.uleb128 .LEHB5-.LFB8438
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L62-.LFB8438
	.uleb128 0
	.uleb128 .LEHB6-.LFB8438
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE8438:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine6actors5actor5texts3NewEPKcy.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts3NewEPKcy.cold
	.seh_stackalloc	120
	.seh_savereg	%rbx, 72
	.seh_savereg	%rsi, 80
	.seh_savereg	%rdi, 88
	.seh_savereg	%rbp, 96
	.seh_savereg	%r12, 104
	.seh_savereg	%r13, 112
	.seh_endprologue
_ZN3wze6engine6actors5actor5texts3NewEPKcy.cold:
.L48:
	movq	%r13, %rcx
	call	_ZN3neo6stringD1Ev
.L49:
	movq	%rdi, %rcx
	movl	$112, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
.LEHB7:
	call	_Unwind_Resume
.L54:
	movq	%r13, %rcx
	call	_ZN3neo6stringD1Ev
.L55:
	movq	%rbx, %rcx
	movl	$112, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
	call	_Unwind_Resume
	nop
.LEHE7:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8438:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8438-.LLSDACSBC8438
.LLSDACSBC8438:
	.uleb128 .LEHB7-.LCOLDB13
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSEC8438:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE13:
	.text
.LHOTE13:
	.section .rdata,"dr"
	.align 8
.LC14:
	.ascii "wze::engine.actors[].texts.Delete(): Illegal deletion of NULL Text\12Params: ID: %lld\12\0"
	.align 8
.LC15:
	.ascii "wze::engine.actors[].texts.Delete(): Text does not exist\12Params: ID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts6DeleteEy
	.def	_ZN3wze6engine6actors5actor5texts6DeleteEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts6DeleteEy
_ZN3wze6engine6actors5actor5texts6DeleteEy:
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
	je	.L82
	cmpq	16(%rcx), %rdx
	jnb	.L73
	movq	24(%rcx), %rax
	movq	(%rax,%rdx,8), %rdi
	testq	%rdi, %rdi
	je	.L73
	movq	104(%rdi), %rcx
	call	SDL_DestroyTexture
	leaq	80(%rdi), %rcx
	call	_ZN3neo6stringD1Ev
	movq	%rdi, %rcx
	movl	$112, %edx
	call	_ZdlPvy
	movq	16(%rsi), %rax
	movq	24(%rsi), %rcx
	cmpq	%rax, %rbx
	jnb	.L83
	movq	$0, (%rcx,%rbx,8)
	cmpq	$0, -8(%rcx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L84
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L84:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L80:
	movq	%rdx, %r9
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L85
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L86
	cmpq	$1, %rdx
	jne	.L80
.L79:
	leaq	16(%rsi), %rcx
.LEHB8:
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor5texts4textEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L86:
	subq	%r9, %rax
	movq	%r9, %rdx
	movq	%rax, %r8
	jmp	.L79
.L73:
	leaq	.LC15(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L85:
	leaq	.LC9(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L82:
	leaq	.LC14(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L83:
	leaq	.LC9(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
.LEHE8:
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
	.uleb128 .LEHB8-.LFB8439
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE8439:
	.text
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC16:
	.ascii "wze::engine.actors[].texts.Purge(): Text does not exist\12Params: Keep(length): %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts5PurgeESt16initializer_listIyE
	.def	_ZN3wze6engine6actors5actor5texts5PurgeESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts5PurgeESt16initializer_listIyE
_ZN3wze6engine6actors5actor5texts5PurgeESt16initializer_listIyE:
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
	movq	16(%rcx), %rcx
	testq	%rbx, %rbx
	je	.L88
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L91:
	movq	(%rdi,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L89
	cmpq	%rcx, %rdx
	jnb	.L90
	movq	24(%rbp), %r8
	cmpq	$0, (%r8,%rdx,8)
	je	.L90
.L89:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L91
.L88:
	cmpq	$1, %rcx
	jbe	.L92
	movq	24(%rbp), %rdx
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L93:
	xorl	%eax, %eax
	testq	%rbx, %rbx
	jne	.L95
	jmp	.L96
	.p2align 4,,10
	.p2align 3
.L124:
	addq	$1, %rax
	cmpq	%rax, %rbx
	je	.L96
.L95:
	cmpq	%rsi, (%rdi,%rax,8)
	jne	.L124
	cmpq	%rax, %rbx
	je	.L96
.L97:
	addq	$1, %rsi
	cmpq	%rcx, %rsi
	jb	.L93
	cmpq	$0, -8(%rdx,%rcx,8)
	leaq	-1(%rcx), %r8
	je	.L125
.L123:
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
.L96:
	movq	(%rdx,%rsi,8), %r12
	leaq	0(,%rsi,8), %r13
	testq	%r12, %r12
	je	.L98
	movq	104(%r12), %rcx
	call	SDL_DestroyTexture
	leaq	80(%r12), %rcx
	call	_ZN3neo6stringD1Ev
	movl	$112, %edx
	movq	%r12, %rcx
	call	_ZdlPvy
	movq	16(%rbp), %rcx
	movq	24(%rbp), %rdx
.L98:
	cmpq	%rcx, %rsi
	jnb	.L126
	movq	$0, (%rdx,%r13)
	jmp	.L97
.L125:
	movq	%rcx, %r9
	jmp	.L101
	.p2align 4,,10
	.p2align 3
.L106:
	leaq	-1(%r9), %rax
	cmpq	%rcx, %rax
	jnb	.L127
	cmpq	$0, (%rdx,%rax,8)
	jne	.L128
	movq	%rax, %r9
.L101:
	cmpq	$1, %r9
	jne	.L106
.L105:
	leaq	16(%rbp), %rcx
	movq	%r9, %rdx
.LEHB9:
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor5texts4textEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L92:
	testq	%rcx, %rcx
	jne	.L123
	leaq	.LC9(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L128:
	subq	%r9, %rcx
	movq	%rcx, %r8
	jmp	.L105
.L90:
	leaq	.LC16(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L127:
	leaq	.LC9(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L126:
	leaq	.LC9(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
.LEHE9:
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
	.uleb128 .LEHB9-.LFB8440
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE8440:
	.text
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC17:
	.ascii "wze::engine.actors[].texts.Purge(): Text does not exist\12Params: Keep: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts5PurgeEPN3neo5arrayIyEE
	.def	_ZN3wze6engine6actors5actor5texts5PurgeEPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts5PurgeEPN3neo5arrayIyEE
_ZN3wze6engine6actors5actor5texts5PurgeEPN3neo5arrayIyEE:
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
	movq	%rdx, %rsi
	movq	(%rdx), %rdx
	movq	%rcx, %rdi
	testq	%rdx, %rdx
	je	.L130
	movq	8(%rsi), %r8
	xorl	%eax, %eax
	jmp	.L133
	.p2align 4,,10
	.p2align 3
.L131:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L130
.L133:
	movq	(%r8,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L131
	cmpq	%r9, %rcx
	jnb	.L132
	movq	24(%rdi), %r10
	cmpq	$0, (%r10,%rcx,8)
	jne	.L131
.L132:
	leaq	.LC17(%rip), %rcx
	movq	%rsi, %rdx
.LEHB10:
	call	_Z6printfPKcz
.LEHE10:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L130:
	cmpq	$1, %r9
	jbe	.L134
	movq	24(%rdi), %r10
	movl	$1, %ebx
	testq	%rdx, %rdx
	je	.L138
	.p2align 4,,10
	.p2align 3
.L143:
	movq	8(%rsi), %rcx
	xorl	%eax, %eax
	jmp	.L137
	.p2align 4,,10
	.p2align 3
.L165:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L138
.L137:
	cmpq	%rbx, (%rcx,%rax,8)
	jne	.L165
	cmpq	%rax, %rdx
	je	.L138
	addq	$1, %rbx
	cmpq	%r9, %rbx
	jnb	.L142
.L167:
	movq	(%rsi), %rdx
	testq	%rdx, %rdx
	jne	.L143
	.p2align 4,,10
	.p2align 3
.L138:
	movq	(%r10,%rbx,8), %rbp
	leaq	0(,%rbx,8), %r12
	testq	%rbp, %rbp
	je	.L140
	movq	104(%rbp), %rcx
	call	SDL_DestroyTexture
	leaq	80(%rbp), %rcx
	call	_ZN3neo6stringD1Ev
	movl	$112, %edx
	movq	%rbp, %rcx
	call	_ZdlPvy
	movq	16(%rdi), %r9
	movq	24(%rdi), %r10
.L140:
	cmpq	%r9, %rbx
	jnb	.L166
	addq	$1, %rbx
	movq	$0, (%r10,%r12)
	cmpq	%r9, %rbx
	jb	.L167
.L142:
	cmpq	$0, -8(%r10,%r9,8)
	leaq	-1(%r9), %r8
	je	.L168
.L164:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L168:
	movq	%r9, %rax
	jmp	.L144
	.p2align 4,,10
	.p2align 3
.L149:
	leaq	-1(%rax), %rdx
	cmpq	%r9, %rdx
	jnb	.L169
	cmpq	$0, (%r10,%rdx,8)
	jne	.L170
	movq	%rdx, %rax
.L144:
	cmpq	$1, %rax
	jne	.L149
.L148:
	movq	%rax, %rdx
	leaq	16(%rdi), %rcx
.LEHB11:
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor5texts4textEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L134:
	testq	%r9, %r9
	jne	.L164
	leaq	.LC9(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L170:
	subq	%rax, %r9
	movq	%r9, %r8
	jmp	.L148
.L169:
	leaq	.LC9(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L166:
	leaq	.LC9(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
.LEHE11:
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
	.uleb128 .LEHB10-.LFB8443
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB8443
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE8443:
	.text
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC18:
	.ascii "wze::engine.actors[].texts[]: Illegal access to NULL Text\12Params: ID: %lld\12\0"
	.align 8
.LC19:
	.ascii "wze::engine.actors[].texts[]: Text does not exist\12Params: ID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5textsixEy
	.def	_ZN3wze6engine6actors5actor5textsixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5textsixEy
_ZN3wze6engine6actors5actor5textsixEy:
.LFB8444:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testq	%rdx, %rdx
	je	.L175
	cmpq	16(%rcx), %rdx
	jnb	.L173
	movq	24(%rcx), %rax
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L173
	addq	$40, %rsp
	ret
.L173:
	leaq	.LC19(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L175:
	leaq	.LC18(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB20:
	.text
.LHOTB20:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy
	.def	_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy
_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy:
.LFB8446:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rdx, (%rcx)
	leaq	80(%rcx), %rdi
	movq	%rcx, %rbx
	movq	%r9, %rsi
	movq	%r8, 8(%rcx)
	movq	%rdi, %rcx
.LEHB12:
	call	_ZN3neo6stringC1Ev
.LEHE12:
	movq	8(%rbx), %rax
	xorl	%ecx, %ecx
	movq	%rsi, 56(%rsp)
	movzwl	170(%rax), %edx
	movl	$-1, 18(%rbx)
	movq	$0x000000000, 24(%rbx)
	movw	%dx, 16(%rbx)
	movl	$384, %edx
	movw	%dx, 36(%rbx)
	movupd	152(%rax), %xmm0
	leaq	32(%rsp), %rdx
	leaq	56(%rsp), %rax
	movw	%cx, 56(%rbx)
	movq	%rdi, %rcx
	movl	$16842752, 32(%rbx)
	movups	%xmm0, 40(%rbx)
	pxor	%xmm0, %xmm0
	movups	%xmm0, 64(%rbx)
	movq	%rax, 32(%rsp)
	movq	$1, 40(%rsp)
.LEHB13:
	call	_ZN3neo6stringaSESt16initializer_listIPKcE
.LEHE13:
	movq	128(%rsp), %rax
	movq	$0, 104(%rbx)
	movq	%rax, 96(%rbx)
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L178:
	movq	%rax, %rbx
	jmp	.L177
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8446:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8446-.LLSDACSB8446
.LLSDACSB8446:
	.uleb128 .LEHB12-.LFB8446
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB8446
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L178-.LFB8446
	.uleb128 0
.LLSDACSE8446:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy.cold
	.seh_stackalloc	88
	.seh_savereg	%rbx, 64
	.seh_savereg	%rsi, 72
	.seh_savereg	%rdi, 80
	.seh_endprologue
_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy.cold:
.L177:
	movq	%rdi, %rcx
	call	_ZN3neo6stringD1Ev
	movq	%rbx, %rcx
.LEHB14:
	call	_Unwind_Resume
	nop
.LEHE14:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8446:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8446-.LLSDACSBC8446
.LLSDACSBC8446:
	.uleb128 .LEHB14-.LCOLDB20
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSEC8446:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE20:
	.text
.LHOTE20:
	.globl	_ZN3wze6engine6actors5actor5texts4textC1EPS0_PS2_PKcy
	.def	_ZN3wze6engine6actors5actor5texts4textC1EPS0_PS2_PKcy;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor5texts4textC1EPS0_PS2_PKcy,_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4textD2Ev
	.def	_ZN3wze6engine6actors5actor5texts4textD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts4textD2Ev
_ZN3wze6engine6actors5actor5texts4textD2Ev:
.LFB8449:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movq	104(%rcx), %rcx
	call	SDL_DestroyTexture
	leaq	80(%rbx), %rcx
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZN3neo6stringD1Ev
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8449:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8449-.LLSDACSB8449
.LLSDACSB8449:
.LLSDACSE8449:
	.text
	.seh_endproc
	.globl	_ZN3wze6engine6actors5actor5texts4textD1Ev
	.def	_ZN3wze6engine6actors5actor5texts4textD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor5texts4textD1Ev,_ZN3wze6engine6actors5actor5texts4textD2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text4GetXEv
	.def	_ZN3wze6engine6actors5actor5texts4text4GetXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts4text4GetXEv
_ZN3wze6engine6actors5actor5texts4text4GetXEv:
.LFB8451:
	.seh_endprologue
	movsd	40(%rcx), %xmm0
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text4SetXEd
	.def	_ZN3wze6engine6actors5actor5texts4text4SetXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts4text4SetXEd
_ZN3wze6engine6actors5actor5texts4text4SetXEd:
.LFB8452:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	8(%rcx), %rax
	movsd	160(%rax), %xmm2
	movq	%rcx, %rbx
	movapd	%xmm1, %xmm3
	movsd	152(%rax), %xmm1
	movq	(%rcx), %rax
	movsd	48(%rbx), %xmm0
	movsd	%xmm3, 72(%rsp)
	leaq	552(%rax), %rcx
	movsd	%xmm0, 32(%rsp)
	call	_ZN3wze6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movsd	72(%rsp), %xmm3
	movsd	%xmm0, 64(%rbx)
	movsd	48(%rbx), %xmm0
	movsd	160(%rax), %xmm2
	movsd	152(%rax), %xmm1
	movq	(%rbx), %rax
	movsd	%xmm0, 32(%rsp)
	leaq	552(%rax), %rcx
	call	_ZN3wze6engine6vector5AngleEdddd
	movsd	72(%rsp), %xmm3
	movsd	%xmm0, 72(%rbx)
	movapd	%xmm3, %xmm0
	movsd	%xmm3, 40(%rbx)
	addq	$48, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text4GetYEv
	.def	_ZN3wze6engine6actors5actor5texts4text4GetYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts4text4GetYEv
_ZN3wze6engine6actors5actor5texts4text4GetYEv:
.LFB8636:
	.seh_endprologue
	movsd	40(%rcx), %xmm0
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text4SetYEd
	.def	_ZN3wze6engine6actors5actor5texts4text4SetYEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts4text4SetYEd
_ZN3wze6engine6actors5actor5texts4text4SetYEd:
.LFB8454:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	movq	8(%rcx), %rax
	movsd	160(%rax), %xmm2
	movq	%rcx, %rbx
	movapd	%xmm1, %xmm6
	movsd	152(%rax), %xmm1
	movq	(%rcx), %rax
	movsd	%xmm6, 32(%rsp)
	movsd	40(%rbx), %xmm3
	leaq	552(%rax), %rcx
	call	_ZN3wze6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movsd	%xmm0, 64(%rbx)
	movsd	160(%rax), %xmm2
	movsd	152(%rax), %xmm1
	movq	(%rbx), %rax
	movsd	%xmm6, 32(%rsp)
	movsd	40(%rbx), %xmm3
	leaq	552(%rax), %rcx
	call	_ZN3wze6engine6vector5AngleEdddd
	movsd	%xmm6, 48(%rbx)
	movsd	%xmm0, 72(%rbx)
	movapd	%xmm6, %xmm0
	movaps	48(%rsp), %xmm6
	addq	$64, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text9GetStringEv
	.def	_ZN3wze6engine6actors5actor5texts4text9GetStringEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts4text9GetStringEv
_ZN3wze6engine6actors5actor5texts4text9GetStringEv:
.LFB8455:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movq	104(%rcx), %rcx
	call	SDL_DestroyTexture
	leaq	80(%rbx), %rax
	movq	$0, 104(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text7GetFontEv
	.def	_ZN3wze6engine6actors5actor5texts4text7GetFontEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts4text7GetFontEv
_ZN3wze6engine6actors5actor5texts4text7GetFontEv:
.LFB8456:
	.seh_endprologue
	movq	96(%rcx), %rax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC21:
	.ascii "wze::engine.actors[].texts[].SetFont(): Font does not exist\12Params: ID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text7SetFontEy
	.def	_ZN3wze6engine6actors5actor5texts4text7SetFontEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts4text7SetFontEy
_ZN3wze6engine6actors5actor5texts4text7SetFontEy:
.LFB8457:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rdx, %rax
	testq	%rdx, %rdx
	je	.L188
	movq	(%rcx), %rdx
	cmpq	600(%rdx), %rax
	jnb	.L189
	movq	608(%rdx), %rdx
	cmpq	$0, (%rdx,%rax,8)
	je	.L189
.L188:
	movq	%rax, 96(%rcx)
	addq	$40, %rsp
	ret
.L189:
	leaq	.LC21(%rip), %rcx
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
	.def	_ZN3neo6stringaSESt16initializer_listIPKcE;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector6LengthEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector5AngleEdddd;	.scl	2;	.type	32;	.endef
