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
.LFB8639:
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
	movq	112(%rsi), %rcx
	addq	$1, %rbx
	call	SDL_DestroyTexture
	leaq	88(%rsi), %rcx
	call	_ZN3neo6stringD1Ev
	movq	%rsi, %rcx
	movl	$120, %edx
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
	.ascii "wze::engine.actors[].texts.Delete(): Illegal deletion of NULL Text\12Params: ID: %lld\12\0"
	.align 8
.LC5:
	.ascii "wze::engine.actors[].texts.Delete(): Text does not exist\12Params: ID: %lld\12\0"
	.align 8
.LC6:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
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
	je	.L49
	cmpq	16(%rcx), %rdx
	jnb	.L40
	movq	24(%rcx), %rax
	movq	(%rax,%rdx,8), %rdi
	testq	%rdi, %rdi
	je	.L40
	movq	112(%rdi), %rcx
	call	SDL_DestroyTexture
	leaq	88(%rdi), %rcx
	call	_ZN3neo6stringD1Ev
	movq	%rdi, %rcx
	movl	$120, %edx
	call	_ZdlPvy
	movq	16(%rsi), %rax
	movq	24(%rsi), %rcx
	cmpq	%rax, %rbx
	jnb	.L50
	movq	$0, (%rcx,%rbx,8)
	cmpq	$0, -8(%rcx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L51
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L51:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L47:
	movq	%rdx, %r9
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L52
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L53
	cmpq	$1, %rdx
	jne	.L47
.L46:
	leaq	16(%rsi), %rcx
.LEHB0:
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor5texts4textEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L53:
	subq	%r9, %rax
	movq	%r9, %rdx
	movq	%rax, %r8
	jmp	.L46
.L40:
	leaq	.LC5(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L52:
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L49:
	leaq	.LC4(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L50:
	leaq	.LC6(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
.LEHE0:
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
	.uleb128 .LEHB0-.LFB8439
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
.LLSDACSE8439:
	.text
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC7:
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
	je	.L55
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L58:
	movq	(%rdi,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L56
	cmpq	%rcx, %rdx
	jnb	.L57
	movq	24(%rbp), %r8
	cmpq	$0, (%r8,%rdx,8)
	je	.L57
.L56:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L58
.L55:
	cmpq	$1, %rcx
	jbe	.L59
	movq	24(%rbp), %rdx
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L60:
	xorl	%eax, %eax
	testq	%rbx, %rbx
	jne	.L62
	jmp	.L63
	.p2align 4,,10
	.p2align 3
.L91:
	addq	$1, %rax
	cmpq	%rax, %rbx
	je	.L63
.L62:
	cmpq	%rsi, (%rdi,%rax,8)
	jne	.L91
	cmpq	%rax, %rbx
	je	.L63
.L64:
	addq	$1, %rsi
	cmpq	%rcx, %rsi
	jb	.L60
	cmpq	$0, -8(%rdx,%rcx,8)
	leaq	-1(%rcx), %r8
	je	.L92
.L90:
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
.L63:
	movq	(%rdx,%rsi,8), %r12
	leaq	0(,%rsi,8), %r13
	testq	%r12, %r12
	je	.L65
	movq	112(%r12), %rcx
	call	SDL_DestroyTexture
	leaq	88(%r12), %rcx
	call	_ZN3neo6stringD1Ev
	movl	$120, %edx
	movq	%r12, %rcx
	call	_ZdlPvy
	movq	16(%rbp), %rcx
	movq	24(%rbp), %rdx
.L65:
	cmpq	%rcx, %rsi
	jnb	.L93
	movq	$0, (%rdx,%r13)
	jmp	.L64
.L92:
	movq	%rcx, %r9
	jmp	.L68
	.p2align 4,,10
	.p2align 3
.L73:
	leaq	-1(%r9), %rax
	cmpq	%rcx, %rax
	jnb	.L94
	cmpq	$0, (%rdx,%rax,8)
	jne	.L95
	movq	%rax, %r9
.L68:
	cmpq	$1, %r9
	jne	.L73
.L72:
	leaq	16(%rbp), %rcx
	movq	%r9, %rdx
.LEHB1:
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
.L59:
	testq	%rcx, %rcx
	jne	.L90
	leaq	.LC6(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L95:
	subq	%r9, %rcx
	movq	%rcx, %r8
	jmp	.L72
.L57:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L94:
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L93:
	leaq	.LC6(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
.LEHE1:
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
	.uleb128 .LEHB1-.LFB8440
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE8440:
	.text
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC8:
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
	je	.L97
	movq	8(%rsi), %r8
	xorl	%eax, %eax
	jmp	.L100
	.p2align 4,,10
	.p2align 3
.L98:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L97
.L100:
	movq	(%r8,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L98
	cmpq	%r9, %rcx
	jnb	.L99
	movq	24(%rdi), %r10
	cmpq	$0, (%r10,%rcx,8)
	jne	.L98
.L99:
	leaq	.LC8(%rip), %rcx
	movq	%rsi, %rdx
.LEHB2:
	call	_Z6printfPKcz
.LEHE2:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L97:
	cmpq	$1, %r9
	jbe	.L101
	movq	24(%rdi), %r10
	movl	$1, %ebx
	testq	%rdx, %rdx
	je	.L105
	.p2align 4,,10
	.p2align 3
.L110:
	movq	8(%rsi), %rcx
	xorl	%eax, %eax
	jmp	.L104
	.p2align 4,,10
	.p2align 3
.L132:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L105
.L104:
	cmpq	%rbx, (%rcx,%rax,8)
	jne	.L132
	cmpq	%rax, %rdx
	je	.L105
	addq	$1, %rbx
	cmpq	%r9, %rbx
	jnb	.L109
.L134:
	movq	(%rsi), %rdx
	testq	%rdx, %rdx
	jne	.L110
	.p2align 4,,10
	.p2align 3
.L105:
	movq	(%r10,%rbx,8), %rbp
	leaq	0(,%rbx,8), %r12
	testq	%rbp, %rbp
	je	.L107
	movq	112(%rbp), %rcx
	call	SDL_DestroyTexture
	leaq	88(%rbp), %rcx
	call	_ZN3neo6stringD1Ev
	movl	$120, %edx
	movq	%rbp, %rcx
	call	_ZdlPvy
	movq	16(%rdi), %r9
	movq	24(%rdi), %r10
.L107:
	cmpq	%r9, %rbx
	jnb	.L133
	addq	$1, %rbx
	movq	$0, (%r10,%r12)
	cmpq	%r9, %rbx
	jb	.L134
.L109:
	cmpq	$0, -8(%r10,%r9,8)
	leaq	-1(%r9), %r8
	je	.L135
.L131:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L135:
	movq	%r9, %rax
	jmp	.L111
	.p2align 4,,10
	.p2align 3
.L116:
	leaq	-1(%rax), %rdx
	cmpq	%r9, %rdx
	jnb	.L136
	cmpq	$0, (%r10,%rdx,8)
	jne	.L137
	movq	%rdx, %rax
.L111:
	cmpq	$1, %rax
	jne	.L116
.L115:
	movq	%rax, %rdx
	leaq	16(%rdi), %rcx
.LEHB3:
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor5texts4textEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L101:
	testq	%r9, %r9
	jne	.L131
	leaq	.LC6(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L137:
	subq	%rax, %r9
	movq	%r9, %r8
	jmp	.L115
.L136:
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L133:
	leaq	.LC6(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
.LEHE3:
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
	.uleb128 .LEHB2-.LFB8443
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB8443
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE8443:
	.text
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC9:
	.ascii "wze::engine.actors[].texts[]: Illegal access to NULL Text\12Params: ID: %lld\12\0"
	.align 8
.LC10:
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
	je	.L142
	cmpq	16(%rcx), %rdx
	jnb	.L140
	movq	24(%rcx), %rax
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L140
	addq	$40, %rsp
	ret
.L140:
	leaq	.LC10(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L142:
	leaq	.LC9(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC14:
	.ascii "wze::engine.actors[].texts[].text(): TTF_RenderText_Blended failed\12Params: String: %s\12\0"
	.align 8
.LC15:
	.ascii "wze::engine.actors[].texts[].text(): SDL_CreateTextureFromSurface failed\12Params: String: %s\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB17:
	.text
.LHOTB17:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy
	.def	_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy
_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy:
.LFB8446:
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
	movq	%rdx, (%rcx)
	leaq	88(%rcx), %rdi
	movq	%rcx, %rbx
	movq	%r9, %rsi
	movq	%r8, 8(%rcx)
	movq	%rdi, %rcx
.LEHB4:
	call	_ZN3neo6stringC1Ev
.LEHE4:
	movl	$384, %eax
	xorl	%edx, %edx
	pxor	%xmm0, %xmm0
	movw	%ax, 36(%rbx)
	movq	8(%rbx), %rax
	movq	%rdi, %rcx
	movl	$-1, 16(%rbx)
	movq	$0x000000000, 24(%rbx)
	movupd	216(%rax), %xmm2
	movzwl	250(%rax), %eax
	movw	%dx, 56(%rbx)
	leaq	32(%rsp), %rdx
	movl	$16842752, 32(%rbx)
	movq	%rax, 64(%rbx)
	leaq	56(%rsp), %rax
	movups	%xmm2, 40(%rbx)
	movups	%xmm0, 72(%rbx)
	movq	%rsi, 56(%rsp)
	movq	%rax, 32(%rsp)
	movq	$1, 40(%rsp)
.LEHB5:
	call	_ZN3neo6stringaSESt16initializer_listIPKcE
	movq	144(%rsp), %rax
	cmpq	$0, 64(%rbx)
	movq	$0, 112(%rbx)
	movq	%rax, 104(%rbx)
	jne	.L154
.L143:
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L154:
	movq	%rdi, %rcx
	call	_ZN3neo6string6LengthEv
	cmpq	$1, %rax
	jbe	.L143
	cmpq	$0, 104(%rbx)
	je	.L143
	movq	%rdi, %rcx
	call	_ZN3neo6stringclEv
	movq	(%rbx), %rcx
	movq	%rax, %rdx
	movq	104(%rbx), %rax
	movq	744(%rcx), %r8
	cmpq	736(%rcx), %rax
	jnb	.L155
	movq	(%r8,%rax,8), %rcx
	movl	$-1, %r8d
	call	TTF_RenderText_Blended
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L156
	movq	(%rbx), %rax
	movq	%rbp, %rdx
	movq	16(%rax), %rcx
	call	SDL_CreateTextureFromSurface
	movq	%rax, 112(%rbx)
	testq	%rax, %rax
	je	.L157
	movq	64(%rbx), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	16(%rbp), %xmm0
	testq	%rax, %rax
	js	.L150
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L151:
	mulsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	20(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	call	round
	movq	%rbp, %rcx
	cvttsd2sil	%xmm0, %eax
	movw	%ax, 56(%rbx)
	call	SDL_FreeSurface
	jmp	.L143
	.p2align 4,,10
	.p2align 3
.L150:
	movq	%rax, %rdx
	andl	$1, %eax
	pxor	%xmm1, %xmm1
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L151
.L157:
	movq	%rsi, %rdx
	leaq	.LC15(%rip), %rcx
	call	_Z6printfPKcz
.L148:
	movl	$1, %ecx
	call	exit
.L156:
	movq	%rsi, %rdx
	leaq	.LC14(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L148
.L155:
	movq	%rax, %rdx
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
.LEHE5:
	jmp	.L148
.L153:
	movq	%rax, %rbx
	jmp	.L152
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8446:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8446-.LLSDACSB8446
.LLSDACSB8446:
	.uleb128 .LEHB4-.LFB8446
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB8446
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L153-.LFB8446
	.uleb128 0
.LLSDACSE8446:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy.cold
	.seh_stackalloc	104
	.seh_savereg	%rbx, 72
	.seh_savereg	%rsi, 80
	.seh_savereg	%rdi, 88
	.seh_savereg	%rbp, 96
	.seh_endprologue
_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy.cold:
.L152:
	movq	%rdi, %rcx
	call	_ZN3neo6stringD1Ev
	movq	%rbx, %rcx
.LEHB6:
	call	_Unwind_Resume
	nop
.LEHE6:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8446:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8446-.LLSDACSBC8446
.LLSDACSBC8446:
	.uleb128 .LEHB6-.LCOLDB17
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSEC8446:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE17:
	.text
.LHOTE17:
	.globl	_ZN3wze6engine6actors5actor5texts4textC1EPS0_PS2_PKcy
	.def	_ZN3wze6engine6actors5actor5texts4textC1EPS0_PS2_PKcy;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor5texts4textC1EPS0_PS2_PKcy,_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy
	.section .rdata,"dr"
	.align 8
.LC18:
	.ascii "wze::engine.actors[].texts.New(): String must not be NULL\12Params: String: %p, FontID: %lld\12\0"
	.align 8
.LC19:
	.ascii "wze::engine.actors[].texts.New(): FontID does not exist\12Params: String: %s, FontID: %lld\12\0"
	.align 8
.LC20:
	.ascii "neo::array+=: Memory allocation failed\12Params: Elements(type, length): %ld, %ld\12\0"
	.align 8
.LC21:
	.ascii "wze::engine.actors[].texts.New(): Memory allocation failed\12Params: String: %s, FontID: %lld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB22:
	.text
.LHOTB22:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts3NewEPKcy
	.def	_ZN3wze6engine6actors5actor5texts3NewEPKcy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts3NewEPKcy
_ZN3wze6engine6actors5actor5texts3NewEPKcy:
.LFB8438:
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
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, %rbp
	movq	%r8, %rdi
	testq	%rdx, %rdx
	je	.L178
	testq	%r8, %r8
	jne	.L160
.L164:
	movq	16(%rsi), %rax
	cmpq	$1, %rax
	jbe	.L162
	movq	24(%rsi), %rcx
	movl	$1, %ebx
	jmp	.L168
	.p2align 4,,10
	.p2align 3
.L165:
	addq	$1, %rbx
	cmpq	%rbx, %rax
	je	.L162
.L168:
	cmpq	$0, (%rcx,%rbx,8)
	jne	.L165
	movl	$120, %ecx
.LEHB7:
	call	_Znwy
.LEHE7:
	movq	(%rsi), %rdx
	movq	%rdi, 32(%rsp)
	movq	%rbp, %r9
	movq	8(%rsi), %r8
	movq	%rax, %rcx
	movq	%rax, %r12
.LEHB8:
	call	_ZN3wze6engine6actors5actor5texts4textC1EPS0_PS2_PKcy
.LEHE8:
	movq	24(%rsi), %rax
	cmpq	16(%rsi), %rbx
	jnb	.L179
	movq	%r12, (%rax,%rbx,8)
	movq	%rbx, %rax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L162:
	movl	$120, %ecx
.LEHB9:
	call	_Znwy
.LEHE9:
	movq	(%rsi), %rdx
	movq	%rdi, 32(%rsp)
	movq	%rbp, %r9
	movq	8(%rsi), %r8
	movq	%rax, %rcx
	movq	%rax, %rbx
.LEHB10:
	call	_ZN3wze6engine6actors5actor5texts4textC1EPS0_PS2_PKcy
.LEHE10:
	movq	16(%rsi), %rax
	movq	24(%rsi), %rcx
	movq	%rbx, 56(%rsp)
	leaq	1(%rax), %rdx
	movq	%rdx, 16(%rsi)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 24(%rsi)
	testq	%rax, %rax
	je	.L180
	movq	16(%rsi), %rdx
	leaq	56(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
.LEHB11:
	call	_ZN3neo9memCopyToEPKvPvy
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	addq	$-1, %rax
	movq	%rax, %rbx
	jnc	.L181
	cmpq	$0, (%rdx,%rax,8)
	je	.L182
	movq	%rbx, %rax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L160:
	movq	(%rcx), %rax
	cmpq	736(%rax), %r8
	jnb	.L163
	movq	744(%rax), %rax
	cmpq	$0, (%rax,%r8,8)
	jne	.L164
.L163:
	leaq	.LC19(%rip), %rcx
	movq	%rdi, %r8
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L179:
	leaq	.LC6(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L178:
	leaq	.LC18(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L182:
	leaq	.LC21(%rip), %rcx
	movq	%rdi, %r8
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L181:
	leaq	.LC6(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L180:
	leaq	.LC20(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
.LEHE11:
	movl	$1, %ecx
	call	exit
.L175:
	movq	%rax, %rbx
	jmp	.L173
.L176:
	movq	%rax, %rsi
	jmp	.L174
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8438:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8438-.LLSDACSB8438
.LLSDACSB8438:
	.uleb128 .LEHB7-.LFB8438
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB8438
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L175-.LFB8438
	.uleb128 0
	.uleb128 .LEHB9-.LFB8438
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB8438
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L176-.LFB8438
	.uleb128 0
	.uleb128 .LEHB11-.LFB8438
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE8438:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine6actors5actor5texts3NewEPKcy.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts3NewEPKcy.cold
	.seh_stackalloc	104
	.seh_savereg	%rbx, 64
	.seh_savereg	%rsi, 72
	.seh_savereg	%rdi, 80
	.seh_savereg	%rbp, 88
	.seh_savereg	%r12, 96
	.seh_endprologue
_ZN3wze6engine6actors5actor5texts3NewEPKcy.cold:
.L173:
	movq	%r12, %rcx
	movl	$120, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
.LEHB12:
	call	_Unwind_Resume
.L174:
	movq	%rbx, %rcx
	movl	$120, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
	call	_Unwind_Resume
	nop
.LEHE12:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8438:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8438-.LLSDACSBC8438
.LLSDACSBC8438:
	.uleb128 .LEHB12-.LCOLDB22
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSEC8438:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE22:
	.text
.LHOTE22:
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
	movq	112(%rcx), %rcx
	call	SDL_DestroyTexture
	leaq	88(%rbx), %rcx
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
	.section .rdata,"dr"
	.align 8
.LC23:
	.ascii "wze::engine.actors[].texts[].SetX(): X must not be NaN\12Params: X: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text4SetXEd
	.def	_ZN3wze6engine6actors5actor5texts4text4SetXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts4text4SetXEd
_ZN3wze6engine6actors5actor5texts4text4SetXEd:
.LFB8452:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movq	%rcx, %rbx
	movapd	%xmm1, %xmm6
	jp	.L202
	movq	8(%rcx), %rax
	movsd	48(%rcx), %xmm0
	movsd	216(%rax), %xmm1
	movsd	224(%rax), %xmm2
	ucomisd	%xmm6, %xmm1
	jp	.L188
	jne	.L188
	ucomisd	%xmm0, %xmm2
	jp	.L188
	jne	.L188
	movq	$0x000000000, 72(%rcx)
.L196:
	pxor	%xmm0, %xmm0
	jmp	.L195
	.p2align 4,,10
	.p2align 3
.L188:
	movq	(%rbx), %rax
	movapd	%xmm6, %xmm3
	movsd	%xmm0, 32(%rsp)
	leaq	688(%rax), %rcx
	call	_ZN3wze6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movapd	%xmm0, %xmm3
	movsd	48(%rbx), %xmm0
	movsd	216(%rax), %xmm1
	movsd	224(%rax), %xmm2
	movsd	%xmm3, 72(%rbx)
	ucomisd	%xmm1, %xmm6
	jp	.L192
	jne	.L192
	ucomisd	%xmm0, %xmm2
	jp	.L192
	je	.L196
.L192:
	movq	(%rbx), %rax
	movapd	%xmm6, %xmm3
	movsd	%xmm0, 32(%rsp)
	leaq	688(%rax), %rcx
	call	_ZN3wze6engine6vector5AngleEdddd
.L195:
	movsd	%xmm0, 80(%rbx)
	movapd	%xmm6, %xmm0
	movsd	%xmm6, 40(%rbx)
	movaps	48(%rsp), %xmm6
	addq	$64, %rsp
	popq	%rbx
	ret
.L202:
	leaq	.LC23(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text4GetYEv
	.def	_ZN3wze6engine6actors5actor5texts4text4GetYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts4text4GetYEv
_ZN3wze6engine6actors5actor5texts4text4GetYEv:
.LFB8453:
	.seh_endprologue
	movsd	48(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC24:
	.ascii "wze::engine.actors[].texts[].SetY(): Y must not be NaN\12Params: Y: %lf\12\0"
	.text
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
	ucomisd	%xmm1, %xmm1
	movq	%rcx, %rbx
	movapd	%xmm1, %xmm6
	jp	.L221
	movq	8(%rcx), %rax
	movsd	40(%rcx), %xmm3
	movsd	216(%rax), %xmm1
	movsd	224(%rax), %xmm2
	ucomisd	%xmm3, %xmm1
	jp	.L207
	jne	.L207
	ucomisd	%xmm2, %xmm6
	jp	.L207
	jne	.L207
	movq	$0x000000000, 72(%rcx)
.L215:
	pxor	%xmm0, %xmm0
	jmp	.L214
	.p2align 4,,10
	.p2align 3
.L207:
	movq	(%rbx), %rax
	movsd	%xmm6, 32(%rsp)
	leaq	688(%rax), %rcx
	call	_ZN3wze6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movsd	40(%rbx), %xmm3
	movsd	216(%rax), %xmm1
	movsd	224(%rax), %xmm2
	movsd	%xmm0, 72(%rbx)
	ucomisd	%xmm3, %xmm1
	jp	.L211
	jne	.L211
	ucomisd	%xmm2, %xmm6
	jp	.L211
	je	.L215
.L211:
	movq	(%rbx), %rax
	movsd	%xmm6, 32(%rsp)
	leaq	688(%rax), %rcx
	call	_ZN3wze6engine6vector5AngleEdddd
.L214:
	movsd	%xmm0, 80(%rbx)
	movapd	%xmm6, %xmm0
	movsd	%xmm6, 48(%rbx)
	movaps	48(%rsp), %xmm6
	addq	$64, %rsp
	popq	%rbx
	ret
.L221:
	leaq	.LC24(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text8GetWidthEv
	.def	_ZN3wze6engine6actors5actor5texts4text8GetWidthEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts4text8GetWidthEv
_ZN3wze6engine6actors5actor5texts4text8GetWidthEv:
.LFB8455:
	.seh_endprologue
	movzwl	56(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text9GetHeightEv
	.def	_ZN3wze6engine6actors5actor5texts4text9GetHeightEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts4text9GetHeightEv
_ZN3wze6engine6actors5actor5texts4text9GetHeightEv:
.LFB8456:
	.seh_endprologue
	movzwl	64(%rcx), %eax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC25:
	.ascii "wze::engine.actors[].texts[].SetHeight(): TTF_RenderText_Blended failed\12Params: Height: %d\12\0"
	.align 8
.LC26:
	.ascii "wze::engine.actors[].texts[].SetHeight(): SDL_CreateTextureFromSurface failed\12Params: Height: %d\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text9SetHeightEt
	.def	_ZN3wze6engine6actors5actor5texts4text9SetHeightEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts4text9SetHeightEt
_ZN3wze6engine6actors5actor5texts4text9SetHeightEt:
.LFB8457:
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
	xorl	%eax, %eax
	movw	%ax, 56(%rcx)
	movq	%rcx, %rsi
	movq	112(%rcx), %rcx
	movl	%edx, %ebx
	movl	%edx, %edi
	call	SDL_DestroyTexture
	movq	$0, 112(%rsi)
	testw	%bx, %bx
	jne	.L231
.L226:
	movzwl	%bx, %ebx
	movl	%edi, %eax
	movq	%rbx, 64(%rsi)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L231:
	leaq	88(%rsi), %rbp
	movq	%rbp, %rcx
	call	_ZN3neo6string6LengthEv
	cmpq	$1, %rax
	jbe	.L226
	cmpq	$0, 104(%rsi)
	je	.L226
	movq	%rbp, %rcx
	call	_ZN3neo6stringclEv
	movq	(%rsi), %rcx
	movq	%rax, %rdx
	movq	104(%rsi), %rax
	movq	744(%rcx), %r8
	cmpq	736(%rcx), %rax
	jnb	.L232
	movq	(%r8,%rax,8), %rcx
	movl	$-1, %r8d
	call	TTF_RenderText_Blended
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L233
	movq	(%rsi), %rax
	movq	%rbp, %rdx
	movq	16(%rax), %rcx
	call	SDL_CreateTextureFromSurface
	movq	%rax, 112(%rsi)
	testq	%rax, %rax
	je	.L234
	movzwl	%bx, %eax
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	cvtsi2sdl	16(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	20(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	call	round
	movq	%rbp, %rcx
	cvttsd2sil	%xmm0, %eax
	movw	%ax, 56(%rsi)
	call	SDL_FreeSurface
	jmp	.L226
.L232:
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L234:
	leaq	.LC26(%rip), %rcx
	movzwl	%bx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L233:
	leaq	.LC25(%rip), %rcx
	movzwl	%bx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text9GetStringEv
	.def	_ZN3wze6engine6actors5actor5texts4text9GetStringEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts4text9GetStringEv
_ZN3wze6engine6actors5actor5texts4text9GetStringEv:
.LFB8458:
	.seh_endprologue
	addq	$88, %rcx
	jmp	_ZN3neo6stringclEv
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC27:
	.ascii "wze::engine.actors[].texts[].SetString(): String must not be NULL\12Params: String: %p\12\0"
	.align 8
.LC28:
	.ascii "wze::engine.actors[].texts[].SetString(): TTF_RenderText_Blended failed\12Params: String: %s\12\0"
	.align 8
.LC29:
	.ascii "wze::engine.actors[].texts[].SetString(): SDL_CreateTextureFromSurface failed\12Params: String: %s\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text9SetStringEPKc
	.def	_ZN3wze6engine6actors5actor5texts4text9SetStringEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts4text9SetStringEPKc
_ZN3wze6engine6actors5actor5texts4text9SetStringEPKc:
.LFB8459:
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
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	testq	%rdx, %rdx
	je	.L246
	leaq	88(%rcx), %rdi
	movq	%rdx, 56(%rsp)
	leaq	56(%rsp), %rax
	leaq	32(%rsp), %rdx
	movq	%rdi, %rcx
	movq	%rax, 32(%rsp)
	movq	$1, 40(%rsp)
	call	_ZN3neo6stringaSESt16initializer_listIPKcE
	xorl	%eax, %eax
	movq	112(%rbx), %rcx
	movw	%ax, 56(%rbx)
	call	SDL_DestroyTexture
	cmpq	$0, 64(%rbx)
	movq	$0, 112(%rbx)
	je	.L239
	movq	%rdi, %rcx
	call	_ZN3neo6string6LengthEv
	cmpq	$1, %rax
	jbe	.L239
	cmpq	$0, 104(%rbx)
	jne	.L247
.L239:
	movq	%rdi, %rcx
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	jmp	_ZN3neo6stringclEv
	.p2align 4,,10
	.p2align 3
.L247:
	movq	%rdi, %rcx
	call	_ZN3neo6stringclEv
	movq	(%rbx), %rcx
	movq	%rax, %rdx
	movq	104(%rbx), %rax
	movq	744(%rcx), %r8
	cmpq	736(%rcx), %rax
	jnb	.L248
	movq	(%r8,%rax,8), %rcx
	movl	$-1, %r8d
	call	TTF_RenderText_Blended
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L249
	movq	(%rbx), %rax
	movq	%rbp, %rdx
	movq	16(%rax), %rcx
	call	SDL_CreateTextureFromSurface
	movq	%rax, 112(%rbx)
	testq	%rax, %rax
	je	.L250
	movq	64(%rbx), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	16(%rbp), %xmm0
	testq	%rax, %rax
	js	.L244
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L245:
	mulsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	20(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	call	round
	movq	%rbp, %rcx
	cvttsd2sil	%xmm0, %eax
	movw	%ax, 56(%rbx)
	call	SDL_FreeSurface
	jmp	.L239
	.p2align 4,,10
	.p2align 3
.L244:
	movq	%rax, %rdx
	andl	$1, %eax
	pxor	%xmm1, %xmm1
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L245
.L246:
	leaq	.LC27(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L248:
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L250:
	leaq	.LC29(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L249:
	leaq	.LC28(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text7GetFontEv
	.def	_ZN3wze6engine6actors5actor5texts4text7GetFontEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts4text7GetFontEv
_ZN3wze6engine6actors5actor5texts4text7GetFontEv:
.LFB8460:
	.seh_endprologue
	movq	104(%rcx), %rax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC30:
	.ascii "wze::engine.actors[].texts[].SetFont(): Font does not exist\12Params: ID: %lld\12\0"
	.align 8
.LC31:
	.ascii "wze::engine.actors[].texts[].SetFont(): TTF_RenderText_Blended failed\12Params: ID: %lld\12\0"
	.align 8
.LC32:
	.ascii "wze::engine.actors[].texts[].SetFont(): SDL_CreateTextureFromSurface failed\12Params: ID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text7SetFontEy
	.def	_ZN3wze6engine6actors5actor5texts4text7SetFontEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts4text7SetFontEy
_ZN3wze6engine6actors5actor5texts4text7SetFontEy:
.LFB8461:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	testq	%rdx, %rdx
	je	.L253
	movq	(%rcx), %rax
	cmpq	736(%rax), %rdx
	jnb	.L254
	movq	744(%rax), %rax
	cmpq	$0, (%rax,%rdx,8)
	je	.L254
.L253:
	xorl	%eax, %eax
	movq	112(%rbx), %rcx
	movw	%ax, 56(%rbx)
	call	SDL_DestroyTexture
	cmpq	$0, 64(%rbx)
	movq	$0, 112(%rbx)
	jne	.L272
.L256:
	movq	%rsi, %rax
	movq	%rsi, 104(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L272:
	leaq	88(%rbx), %rdi
	movq	%rdi, %rcx
	call	_ZN3neo6string6LengthEv
	cmpq	$1, %rax
	jbe	.L256
	testq	%rsi, %rsi
	je	.L256
	movq	%rdi, %rcx
	call	_ZN3neo6stringclEv
	movq	%rax, %rdx
	movq	(%rbx), %rax
	movq	744(%rax), %rcx
	cmpq	736(%rax), %rsi
	jnb	.L273
	movq	(%rcx,%rsi,8), %rcx
	movl	$-1, %r8d
	call	TTF_RenderText_Blended
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L274
	movq	(%rbx), %rax
	movq	%rdi, %rdx
	movq	16(%rax), %rcx
	call	SDL_CreateTextureFromSurface
	movq	%rax, 112(%rbx)
	testq	%rax, %rax
	je	.L275
	movq	64(%rbx), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	16(%rdi), %xmm0
	testq	%rax, %rax
	js	.L261
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L262:
	mulsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	20(%rdi), %xmm1
	divsd	%xmm1, %xmm0
	call	round
	movq	%rdi, %rcx
	cvttsd2sil	%xmm0, %eax
	movw	%ax, 56(%rbx)
	call	SDL_FreeSurface
	jmp	.L256
	.p2align 4,,10
	.p2align 3
.L261:
	movq	%rax, %rdx
	andl	$1, %eax
	pxor	%xmm1, %xmm1
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L262
.L254:
	leaq	.LC30(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L273:
	leaq	.LC6(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L275:
	leaq	.LC32(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L274:
	leaq	.LC31(%rip), %rcx
	movq	%rsi, %rdx
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
	.def	_ZN3neo6stringC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6stringaSESt16initializer_listIPKcE;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6string6LengthEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6stringclEv;	.scl	2;	.type	32;	.endef
	.def	TTF_RenderText_Blended;	.scl	2;	.type	32;	.endef
	.def	SDL_CreateTextureFromSurface;	.scl	2;	.type	32;	.endef
	.def	round;	.scl	2;	.type	32;	.endef
	.def	SDL_FreeSurface;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector6LengthEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector5AngleEdddd;	.scl	2;	.type	32;	.endef
