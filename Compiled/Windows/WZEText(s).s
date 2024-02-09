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
.LFB8632:
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
.LFB8422:
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
.LFB8425:
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
	movq	120(%rsi), %rcx
	addq	$1, %rbx
	call	SDL_DestroyTexture
	leaq	88(%rsi), %rcx
	call	_ZN3neo6stringD1Ev
	movq	%rsi, %rcx
	movl	$128, %edx
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
.LLSDA8425:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8425-.LLSDACSB8425
.LLSDACSB8425:
.LLSDACSE8425:
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
.LFB8428:
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
	movq	120(%rdi), %rcx
	call	SDL_DestroyTexture
	leaq	88(%rdi), %rcx
	call	_ZN3neo6stringD1Ev
	movq	%rdi, %rcx
	movl	$128, %edx
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
.LLSDA8428:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8428-.LLSDACSB8428
.LLSDACSB8428:
	.uleb128 .LEHB0-.LFB8428
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
.LLSDACSE8428:
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
.LFB8429:
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
	movq	16(%rcx), %rcx
	testq	%rsi, %rsi
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
	cmpq	%rax, %rsi
	jne	.L58
.L55:
	cmpq	$1, %rcx
	jbe	.L59
	movq	24(%rbp), %rdx
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L60:
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L61
.L67:
	cmpq	%rbx, (%rdi,%rax,8)
	je	.L62
	addq	$1, %rax
	cmpq	%rax, %rsi
	jne	.L67
.L61:
	movq	(%rdx,%rbx,8), %r12
	leaq	0(,%rbx,8), %r13
	testq	%r12, %r12
	je	.L64
	movq	120(%r12), %rcx
	call	SDL_DestroyTexture
	leaq	88(%r12), %rcx
	call	_ZN3neo6stringD1Ev
	movl	$128, %edx
	movq	%r12, %rcx
	call	_ZdlPvy
	movq	16(%rbp), %rcx
	movq	24(%rbp), %rdx
.L64:
	cmpq	%rcx, %rbx
	jnb	.L91
	movq	$0, (%rdx,%r13)
.L62:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
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
.L92:
	movq	%rcx, %r9
	jmp	.L68
	.p2align 4,,10
	.p2align 3
.L73:
	leaq	-1(%r9), %rax
	cmpq	%rcx, %rax
	jnb	.L93
	cmpq	$0, (%rdx,%rax,8)
	jne	.L94
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
.L94:
	subq	%r9, %rcx
	movq	%rcx, %r8
	jmp	.L72
.L57:
	leaq	.LC7(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L93:
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L91:
	leaq	.LC6(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
.LEHE1:
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8429:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8429-.LLSDACSB8429
.LLSDACSB8429:
	.uleb128 .LEHB1-.LFB8429
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE8429:
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
.LFB8432:
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
	movq	16(%rdi), %r9
	testq	%rcx, %rcx
	je	.L96
	movq	8(%rdx), %r8
	xorl	%eax, %eax
	jmp	.L99
	.p2align 4,,10
	.p2align 3
.L97:
	addq	$1, %rax
	cmpq	%rax, %rcx
	je	.L96
.L99:
	movq	(%r8,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L97
	cmpq	%r9, %rdx
	jnb	.L98
	movq	24(%rdi), %r10
	cmpq	$0, (%r10,%rdx,8)
	jne	.L97
.L98:
	leaq	.LC8(%rip), %rcx
	movq	%rsi, %rdx
.LEHB2:
	call	_Z6printfPKcz
.LEHE2:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L96:
	cmpq	$1, %r9
	jbe	.L100
	movq	24(%rdi), %r10
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L108:
	movq	8(%rsi), %rdx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.L101
.L102:
	cmpq	%rbx, (%rdx,%rax,8)
	je	.L103
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L102
	.p2align 4,,10
	.p2align 3
.L101:
	movq	(%r10,%rbx,8), %rbp
	leaq	0(,%rbx,8), %r12
	testq	%rbp, %rbp
	je	.L105
	movq	120(%rbp), %rcx
	call	SDL_DestroyTexture
	leaq	88(%rbp), %rcx
	call	_ZN3neo6stringD1Ev
	movl	$128, %edx
	movq	%rbp, %rcx
	call	_ZdlPvy
	movq	16(%rdi), %r9
	movq	24(%rdi), %r10
.L105:
	cmpq	%r9, %rbx
	jnb	.L133
	movq	$0, (%r10,%r12)
.L103:
	addq	$1, %rbx
	cmpq	%r9, %rbx
	jnb	.L107
	movq	(%rsi), %rcx
	jmp	.L108
	.p2align 4,,10
	.p2align 3
.L107:
	cmpq	$0, -8(%r10,%r9,8)
	leaq	-1(%r9), %r8
	je	.L134
.L132:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L134:
	movq	%r9, %rax
	jmp	.L109
	.p2align 4,,10
	.p2align 3
.L114:
	leaq	-1(%rax), %rdx
	cmpq	%r9, %rdx
	jnb	.L135
	cmpq	$0, (%r10,%rdx,8)
	jne	.L136
	movq	%rdx, %rax
.L109:
	cmpq	$1, %rax
	jne	.L114
.L113:
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
.L100:
	testq	%r9, %r9
	jne	.L132
	leaq	.LC6(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L136:
	subq	%rax, %r9
	movq	%r9, %r8
	jmp	.L113
.L133:
	leaq	.LC6(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L135:
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
.LEHE3:
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8432:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8432-.LLSDACSB8432
.LLSDACSB8432:
	.uleb128 .LEHB2-.LFB8432
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB8432
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE8432:
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
.LFB8433:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testq	%rdx, %rdx
	je	.L141
	cmpq	16(%rcx), %rdx
	jnb	.L139
	movq	24(%rcx), %rax
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L139
	addq	$40, %rsp
	ret
.L139:
	leaq	.LC10(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L141:
	leaq	.LC9(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC14:
	.ascii "wze::engine.actors[].texts[].text(): TTF_RenderUTF8_Blended failed\12Params: String: %s\12\0"
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
.LFB8435:
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
	movq	144(%rsp), %rbp
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
	cmpq	$0, 64(%rbx)
	movq	%rbp, 104(%rbx)
	movl	$0, 112(%rbx)
	movq	$0, 120(%rbx)
	je	.L142
	testq	%rbp, %rbp
	jne	.L157
.L142:
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L157:
	movq	%rdi, %rcx
	call	_ZN3neo6string6LengthEv
	cmpq	$1, %rax
	jbe	.L142
	movq	%rdi, %rcx
	call	_ZN3neo6stringclEv
	movq	(%rbx), %rcx
	movq	%rax, %rdx
	movq	104(%rbx), %rax
	movq	712(%rcx), %r8
	cmpq	704(%rcx), %rax
	jnb	.L158
	movq	(%r8,%rax,8), %rcx
	movl	$-1, %r8d
	call	TTF_RenderUTF8_Blended
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L159
	movq	(%rbx), %rax
	movq	%rbp, %rdx
	movq	16(%rax), %rcx
	call	SDL_CreateTextureFromSurface
	movq	%rax, 120(%rbx)
	testq	%rax, %rax
	je	.L160
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
	jmp	.L142
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
.L160:
	movq	%rsi, %rdx
	leaq	.LC15(%rip), %rcx
	call	_Z6printfPKcz
.L148:
	movl	$1, %ecx
	call	exit
.L159:
	movq	%rsi, %rdx
	leaq	.LC14(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L148
.L158:
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
.LLSDA8435:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8435-.LLSDACSB8435
.LLSDACSB8435:
	.uleb128 .LEHB4-.LFB8435
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB8435
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L153-.LFB8435
	.uleb128 0
.LLSDACSE8435:
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
.LLSDAC8435:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8435-.LLSDACSBC8435
.LLSDACSBC8435:
	.uleb128 .LEHB6-.LCOLDB17
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSEC8435:
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
.LFB8427:
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
	je	.L181
	testq	%r8, %r8
	jne	.L163
.L167:
	movq	16(%rsi), %rax
	cmpq	$1, %rax
	jbe	.L165
	movq	24(%rsi), %rcx
	movl	$1, %ebx
	jmp	.L171
	.p2align 4,,10
	.p2align 3
.L168:
	addq	$1, %rbx
	cmpq	%rbx, %rax
	je	.L165
.L171:
	cmpq	$0, (%rcx,%rbx,8)
	jne	.L168
	movl	$128, %ecx
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
	jnb	.L182
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
.L165:
	movl	$128, %ecx
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
	je	.L183
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
	jnc	.L184
	cmpq	$0, (%rdx,%rax,8)
	je	.L185
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
.L163:
	movq	(%rcx), %rax
	cmpq	704(%rax), %r8
	jnb	.L166
	movq	712(%rax), %rax
	cmpq	$0, (%rax,%r8,8)
	jne	.L167
.L166:
	leaq	.LC19(%rip), %rcx
	movq	%rdi, %r8
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L182:
	leaq	.LC6(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L181:
	leaq	.LC18(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L185:
	leaq	.LC21(%rip), %rcx
	movq	%rdi, %r8
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L184:
	leaq	.LC6(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L183:
	leaq	.LC20(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
.LEHE11:
	movl	$1, %ecx
	call	exit
.L178:
	movq	%rax, %rbx
	jmp	.L176
.L179:
	movq	%rax, %rsi
	jmp	.L177
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8427:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8427-.LLSDACSB8427
.LLSDACSB8427:
	.uleb128 .LEHB7-.LFB8427
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB8427
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L178-.LFB8427
	.uleb128 0
	.uleb128 .LEHB9-.LFB8427
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB8427
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L179-.LFB8427
	.uleb128 0
	.uleb128 .LEHB11-.LFB8427
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE8427:
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
.L176:
	movq	%r12, %rcx
	movl	$128, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
.LEHB12:
	call	_Unwind_Resume
.L177:
	movq	%rbx, %rcx
	movl	$128, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
	call	_Unwind_Resume
	nop
.LEHE12:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8427:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8427-.LLSDACSBC8427
.LLSDACSBC8427:
	.uleb128 .LEHB12-.LCOLDB22
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSEC8427:
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
.LFB8438:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movq	120(%rcx), %rcx
	call	SDL_DestroyTexture
	leaq	88(%rbx), %rcx
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZN3neo6stringD1Ev
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8438:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8438-.LLSDACSB8438
.LLSDACSB8438:
.LLSDACSE8438:
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
.LFB8440:
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
.LFB8441:
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
	jp	.L205
	movq	8(%rcx), %rax
	movsd	48(%rcx), %xmm0
	movsd	216(%rax), %xmm1
	movsd	224(%rax), %xmm2
	ucomisd	%xmm6, %xmm1
	jp	.L191
	jne	.L191
	ucomisd	%xmm0, %xmm2
	jp	.L191
	jne	.L191
	movq	$0x000000000, 72(%rcx)
.L199:
	pxor	%xmm0, %xmm0
	jmp	.L198
	.p2align 4,,10
	.p2align 3
.L191:
	movq	(%rbx), %rax
	movapd	%xmm6, %xmm3
	movsd	%xmm0, 32(%rsp)
	leaq	632(%rax), %rcx
	call	_ZN3wze6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movapd	%xmm0, %xmm3
	movsd	48(%rbx), %xmm0
	movsd	216(%rax), %xmm1
	movsd	224(%rax), %xmm2
	movsd	%xmm3, 72(%rbx)
	ucomisd	%xmm1, %xmm6
	jp	.L195
	jne	.L195
	ucomisd	%xmm0, %xmm2
	jp	.L195
	je	.L199
.L195:
	movq	(%rbx), %rax
	movapd	%xmm6, %xmm3
	movsd	%xmm0, 32(%rsp)
	leaq	632(%rax), %rcx
	call	_ZN3wze6engine6vector5AngleEdddd
.L198:
	movsd	%xmm0, 80(%rbx)
	movapd	%xmm6, %xmm0
	movsd	%xmm6, 40(%rbx)
	movaps	48(%rsp), %xmm6
	addq	$64, %rsp
	popq	%rbx
	ret
.L205:
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
.LFB8442:
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
.LFB8443:
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
	jp	.L224
	movq	8(%rcx), %rax
	movsd	40(%rcx), %xmm3
	movsd	216(%rax), %xmm1
	movsd	224(%rax), %xmm2
	ucomisd	%xmm3, %xmm1
	jp	.L210
	jne	.L210
	ucomisd	%xmm2, %xmm6
	jp	.L210
	jne	.L210
	movq	$0x000000000, 72(%rcx)
.L218:
	pxor	%xmm0, %xmm0
	jmp	.L217
	.p2align 4,,10
	.p2align 3
.L210:
	movq	(%rbx), %rax
	movsd	%xmm6, 32(%rsp)
	leaq	632(%rax), %rcx
	call	_ZN3wze6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movsd	40(%rbx), %xmm3
	movsd	216(%rax), %xmm1
	movsd	224(%rax), %xmm2
	movsd	%xmm0, 72(%rbx)
	ucomisd	%xmm3, %xmm1
	jp	.L214
	jne	.L214
	ucomisd	%xmm2, %xmm6
	jp	.L214
	je	.L218
.L214:
	movq	(%rbx), %rax
	movsd	%xmm6, 32(%rsp)
	leaq	632(%rax), %rcx
	call	_ZN3wze6engine6vector5AngleEdddd
.L217:
	movsd	%xmm0, 80(%rbx)
	movapd	%xmm6, %xmm0
	movsd	%xmm6, 48(%rbx)
	movaps	48(%rsp), %xmm6
	addq	$64, %rsp
	popq	%rbx
	ret
.L224:
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
.LFB8444:
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
.LFB8445:
	.seh_endprologue
	movzwl	64(%rcx), %eax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC25:
	.ascii "wze::engine.actors[].texts[].SetHeight(): TTF_RenderUTF8_Blended failed\12Params: Height: %d\12\0"
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
.LFB8446:
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
	movq	%rcx, %rbx
	movl	%edx, %esi
	movl	%edx, %ebp
	movzwl	%dx, %edi
	cmpq	%rdi, 64(%rcx)
	je	.L228
	cmpq	$0, 104(%rcx)
	je	.L228
	testw	%dx, %dx
	jne	.L244
.L228:
	xorl	%edx, %edx
	movq	120(%rbx), %rcx
	movw	%dx, 56(%rbx)
	call	SDL_DestroyTexture
	movq	$0, 120(%rbx)
.L231:
	movl	%ebp, %eax
	movq	%rdi, 64(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L244:
	leaq	88(%rcx), %r12
	movq	%r12, %rcx
	call	_ZN3neo6string6LengthEv
	cmpq	$1, %rax
	jbe	.L228
	movl	112(%rbx), %edx
	testl	%edx, %edx
	jne	.L245
.L230:
	movq	%r12, %rcx
	call	_ZN3neo6stringclEv
	movq	(%rbx), %rcx
	movq	%rax, %rdx
	movq	104(%rbx), %rax
	movq	712(%rcx), %r8
	cmpq	704(%rcx), %rax
	jnb	.L243
	movq	(%r8,%rax,8), %rcx
	movl	$-1, %r8d
	call	TTF_RenderUTF8_Blended
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L246
	movq	(%rbx), %rax
	movq	%r12, %rdx
	movq	16(%rax), %rcx
	call	SDL_CreateTextureFromSurface
	movq	%rax, 120(%rbx)
	testq	%rax, %rax
	je	.L247
	pxor	%xmm0, %xmm0
	movzwl	%si, %esi
	pxor	%xmm1, %xmm1
	cvtsi2sdl	16(%r12), %xmm0
	cvtsi2sdl	%esi, %xmm1
	mulsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	20(%r12), %xmm1
	divsd	%xmm1, %xmm0
	call	round
	movq	%r12, %rcx
	cvttsd2sil	%xmm0, %eax
	movw	%ax, 56(%rbx)
	call	SDL_FreeSurface
	movl	112(%rbx), %eax
	testl	%eax, %eax
	je	.L231
	movq	(%rbx), %rax
	movq	104(%rbx), %rdx
	movq	712(%rax), %rcx
	cmpq	704(%rax), %rdx
	jnb	.L248
	movq	(%rcx,%rdx,8), %rcx
	xorl	%edx, %edx
	call	TTF_SetFontStyle
	jmp	.L231
	.p2align 4,,10
	.p2align 3
.L245:
	movq	(%rbx), %rcx
	movq	104(%rbx), %rax
	movq	712(%rcx), %r8
	cmpq	704(%rcx), %rax
	jnb	.L243
	movq	(%r8,%rax,8), %rcx
	call	TTF_SetFontStyle
	jmp	.L230
.L247:
	leaq	.LC26(%rip), %rcx
	movzwl	%si, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L246:
	leaq	.LC25(%rip), %rcx
	movzwl	%si, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L243:
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L248:
	leaq	.LC6(%rip), %rcx
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
.LFB8447:
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
	.ascii "wze::engine.actors[].texts[].SetString(): TTF_RenderUTF8_Blended failed\12Params: String: %s\12\0"
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
.LFB8448:
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
	je	.L267
	leaq	88(%rcx), %rdi
	movq	%rdi, %rcx
	call	_ZN3neo6stringneEPKc
	testb	%al, %al
	je	.L252
	cmpq	$0, 104(%rbx)
	jne	.L268
.L252:
	xorl	%edx, %edx
	movq	120(%rbx), %rcx
	movw	%dx, 56(%rbx)
	call	SDL_DestroyTexture
	movq	$0, 120(%rbx)
.L255:
	leaq	56(%rsp), %rax
	leaq	32(%rsp), %rdx
	movq	%rdi, %rcx
	movq	%rsi, 56(%rsp)
	movq	%rax, 32(%rsp)
	movq	$1, 40(%rsp)
	call	_ZN3neo6stringaSESt16initializer_listIPKcE
	movq	%rax, %rcx
	call	_ZN3neo6stringclEv
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L268:
	cmpq	$0, 64(%rbx)
	je	.L252
	movq	%rsi, %rcx
	call	_ZN3neo9strLengthEPKc
	cmpq	$1, %rax
	jbe	.L252
	movl	112(%rbx), %edx
	testl	%edx, %edx
	jne	.L269
.L254:
	movq	%rdi, %rcx
	call	_ZN3neo6stringclEv
	movq	(%rbx), %rcx
	movq	%rax, %rdx
	movq	104(%rbx), %rax
	movq	712(%rcx), %r8
	cmpq	704(%rcx), %rax
	jnb	.L266
	movq	(%r8,%rax,8), %rcx
	movl	$-1, %r8d
	call	TTF_RenderUTF8_Blended
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L270
	movq	(%rbx), %rax
	movq	%rbp, %rdx
	movq	16(%rax), %rcx
	call	SDL_CreateTextureFromSurface
	movq	%rax, 120(%rbx)
	testq	%rax, %rax
	je	.L271
	movq	64(%rbx), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	16(%rbp), %xmm0
	testq	%rax, %rax
	js	.L260
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L261:
	mulsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	20(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	call	round
	movq	%rbp, %rcx
	cvttsd2sil	%xmm0, %eax
	movw	%ax, 56(%rbx)
	call	SDL_FreeSurface
	movl	112(%rbx), %eax
	testl	%eax, %eax
	je	.L255
	movq	(%rbx), %rax
	movq	104(%rbx), %rdx
	movq	712(%rax), %rcx
	cmpq	704(%rax), %rdx
	jnb	.L272
	movq	(%rcx,%rdx,8), %rcx
	xorl	%edx, %edx
	call	TTF_SetFontStyle
	jmp	.L255
	.p2align 4,,10
	.p2align 3
.L260:
	movq	%rax, %rdx
	andl	$1, %eax
	pxor	%xmm1, %xmm1
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L261
	.p2align 4,,10
	.p2align 3
.L269:
	movq	(%rbx), %rcx
	movq	104(%rbx), %rax
	movq	712(%rcx), %r8
	cmpq	704(%rcx), %rax
	jnb	.L266
	movq	(%r8,%rax,8), %rcx
	call	TTF_SetFontStyle
	jmp	.L254
.L267:
	leaq	.LC27(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L271:
	leaq	.LC29(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L272:
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L270:
	leaq	.LC28(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L266:
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rdx
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
.LFB8449:
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
	.ascii "wze::engine.actors[].texts[].SetFont(): TTF_RenderUTF8_Blended failed\12Params: ID: %lld\12\0"
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
.LFB8450:
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
	je	.L279
	movq	(%rcx), %rax
	cmpq	704(%rax), %rdx
	jnb	.L277
	movq	712(%rax), %rax
	cmpq	$0, (%rax,%rdx,8)
	je	.L277
	cmpq	104(%rcx), %rdx
	je	.L279
	cmpq	$0, 64(%rcx)
	jne	.L290
.L279:
	xorl	%edx, %edx
	movq	120(%rbx), %rcx
	movw	%dx, 56(%rbx)
	call	SDL_DestroyTexture
	movq	$0, 120(%rbx)
.L276:
	movq	%rsi, %rax
	movq	%rsi, 104(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L290:
	leaq	88(%rcx), %rdi
	movq	%rdi, %rcx
	call	_ZN3neo6string6LengthEv
	cmpq	$1, %rax
	jbe	.L279
	movl	112(%rbx), %edx
	testl	%edx, %edx
	jne	.L291
.L280:
	movq	%rdi, %rcx
	call	_ZN3neo6stringclEv
	movq	%rax, %rdx
	movq	(%rbx), %rax
	movq	712(%rax), %rcx
	cmpq	704(%rax), %rsi
	jnb	.L282
	movq	(%rcx,%rsi,8), %rcx
	movl	$-1, %r8d
	call	TTF_RenderUTF8_Blended
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L292
	movq	(%rbx), %rax
	movq	%rdi, %rdx
	movq	16(%rax), %rcx
	call	SDL_CreateTextureFromSurface
	movq	%rax, 120(%rbx)
	testq	%rax, %rax
	je	.L293
	movq	64(%rbx), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	16(%rdi), %xmm0
	testq	%rax, %rax
	js	.L285
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L286:
	mulsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	20(%rdi), %xmm1
	divsd	%xmm1, %xmm0
	call	round
	movq	%rdi, %rcx
	cvttsd2sil	%xmm0, %eax
	movw	%ax, 56(%rbx)
	call	SDL_FreeSurface
	movl	112(%rbx), %eax
	testl	%eax, %eax
	je	.L276
	movq	(%rbx), %rax
	movq	712(%rax), %rdx
	cmpq	704(%rax), %rsi
	jnb	.L282
	movq	(%rdx,%rsi,8), %rcx
	xorl	%edx, %edx
	call	TTF_SetFontStyle
	jmp	.L276
	.p2align 4,,10
	.p2align 3
.L285:
	movq	%rax, %rdx
	andl	$1, %eax
	pxor	%xmm1, %xmm1
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L286
.L277:
	leaq	.LC30(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L291:
	movq	(%rbx), %rax
	movq	712(%rax), %rcx
	cmpq	704(%rax), %rsi
	jnb	.L282
	movq	(%rcx,%rsi,8), %rcx
	call	TTF_SetFontStyle
	jmp	.L280
.L282:
	leaq	.LC6(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L293:
	leaq	.LC32(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L292:
	leaq	.LC31(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text12GetFontStyleEv
	.def	_ZN3wze6engine6actors5actor5texts4text12GetFontStyleEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts4text12GetFontStyleEv
_ZN3wze6engine6actors5actor5texts4text12GetFontStyleEv:
.LFB8451:
	.seh_endprologue
	movl	112(%rcx), %eax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC33:
	.ascii "wze::engine.actors[].texts[].SetFont(): TTF_RenderUTF8_Blended failed\12Params: FontStyle: %d\12\0"
	.align 8
.LC34:
	.ascii "wze::engine.actors[].texts[].SetFont(): SDL_CreateTextureFromSurface failed\12Params: FontStyle: %d\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text12SetFontStyleENS_5styleE
	.def	_ZN3wze6engine6actors5actor5texts4text12SetFontStyleENS_5styleE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts4text12SetFontStyleENS_5styleE
_ZN3wze6engine6actors5actor5texts4text12SetFontStyleENS_5styleE:
.LFB8452:
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
	movl	%edx, %esi
	cmpl	%edx, 112(%rcx)
	je	.L296
	cmpq	$0, 104(%rcx)
	jne	.L308
.L296:
	xorl	%edx, %edx
	movq	120(%rbx), %rcx
	movw	%dx, 56(%rbx)
	call	SDL_DestroyTexture
	movq	$0, 120(%rbx)
.L299:
	movl	%esi, %eax
	movl	%esi, 112(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L308:
	cmpq	$0, 64(%rcx)
	je	.L296
	leaq	88(%rcx), %rdi
	movq	%rdi, %rcx
	call	_ZN3neo6string6LengthEv
	cmpq	$1, %rax
	jbe	.L296
	testl	%esi, %esi
	jne	.L309
.L298:
	movq	%rdi, %rcx
	call	_ZN3neo6stringclEv
	movq	(%rbx), %rcx
	movq	%rax, %rdx
	movq	104(%rbx), %rax
	movq	712(%rcx), %r8
	cmpq	704(%rcx), %rax
	jnb	.L310
	movq	(%r8,%rax,8), %rcx
	movl	$-1, %r8d
	call	TTF_RenderUTF8_Blended
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L311
	movq	(%rbx), %rax
	movq	%rdi, %rdx
	movq	16(%rax), %rcx
	call	SDL_CreateTextureFromSurface
	movq	%rax, 120(%rbx)
	testq	%rax, %rax
	je	.L312
	movq	64(%rbx), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	16(%rdi), %xmm0
	testq	%rax, %rax
	js	.L304
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L305:
	mulsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	20(%rdi), %xmm1
	divsd	%xmm1, %xmm0
	call	round
	movq	%rdi, %rcx
	cvttsd2sil	%xmm0, %eax
	movw	%ax, 56(%rbx)
	call	SDL_FreeSurface
	movl	112(%rbx), %eax
	testl	%eax, %eax
	je	.L299
	movq	(%rbx), %rax
	movq	104(%rbx), %rdx
	movq	712(%rax), %rcx
	cmpq	704(%rax), %rdx
	jnb	.L307
	movq	(%rcx,%rdx,8), %rcx
	xorl	%edx, %edx
	call	TTF_SetFontStyle
	jmp	.L299
	.p2align 4,,10
	.p2align 3
.L304:
	movq	%rax, %rdx
	andl	$1, %eax
	pxor	%xmm1, %xmm1
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L305
	.p2align 4,,10
	.p2align 3
.L309:
	movq	(%rbx), %rax
	movq	104(%rbx), %rdx
	movq	712(%rax), %rcx
	cmpq	704(%rax), %rdx
	jnb	.L307
	movq	(%rcx,%rdx,8), %rcx
	movl	%esi, %edx
	call	TTF_SetFontStyle
	jmp	.L298
.L310:
	movq	%rax, %rdx
.L307:
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L312:
	leaq	.LC34(%rip), %rcx
	movl	%esi, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L311:
	leaq	.LC33(%rip), %rcx
	movl	%esi, %edx
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
	.def	TTF_RenderUTF8_Blended;	.scl	2;	.type	32;	.endef
	.def	SDL_CreateTextureFromSurface;	.scl	2;	.type	32;	.endef
	.def	round;	.scl	2;	.type	32;	.endef
	.def	SDL_FreeSurface;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector6LengthEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector5AngleEdddd;	.scl	2;	.type	32;	.endef
	.def	TTF_SetFontStyle;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6stringneEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo9strLengthEPKc;	.scl	2;	.type	32;	.endef
