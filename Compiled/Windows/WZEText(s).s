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
.LFB8630:
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
	call	_ZN3neo6memory6CopyToEPKvPvy
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
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	cmpq	16(%rcx), %rdx
	jb	.L57
.L40:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L57:
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
	movq	16(%rbx), %rax
	movq	24(%rbx), %rcx
	cmpq	%rax, %rsi
	jnb	.L58
	movq	$0, (%rcx,%rsi,8)
	cmpq	$0, -8(%rcx,%rax,8)
	leaq	-1(%rax), %r8
	jne	.L40
	cmpq	$1, %rax
	je	.L40
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L46:
	movq	%rdx, %r9
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L59
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L60
	cmpq	$1, %rdx
	jne	.L46
.L45:
	leaq	16(%rbx), %rcx
.LEHB0:
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor5texts4textEE6RemoveEyy.isra.0
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L60:
	subq	%r9, %rax
	movq	%r9, %rdx
	movq	%rax, %r8
	jmp	.L45
.L59:
	leaq	.LC4(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L58:
	leaq	.LC4(%rip), %rcx
	movq	%rsi, %rdx
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
	movq	(%rdx), %rdi
	movq	8(%rdx), %rsi
	movq	16(%rcx), %rdx
	movq	%rcx, %r12
	cmpq	$1, %rdx
	jbe	.L62
	movq	24(%rcx), %rcx
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L69:
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L64
.L63:
	cmpq	%rbx, (%rdi,%rax,8)
	je	.L65
	addq	$1, %rax
	cmpq	%rsi, %rax
	jne	.L63
.L64:
	movq	(%rcx,%rbx,8), %rbp
	leaq	0(,%rbx,8), %r13
	testq	%rbp, %rbp
	je	.L67
	movq	120(%rbp), %rcx
	call	SDL_DestroyTexture
	leaq	88(%rbp), %rcx
	call	_ZN3neo6stringD1Ev
	movl	$128, %edx
	movq	%rbp, %rcx
	call	_ZdlPvy
	movq	16(%r12), %rdx
	movq	24(%r12), %rcx
.L67:
	cmpq	%rdx, %rbx
	jnb	.L87
	movq	$0, (%rcx,%r13)
.L65:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L69
	cmpq	$0, -8(%rcx,%rdx,8)
	leaq	-1(%rdx), %r8
	je	.L88
.L86:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L88:
	movq	%rdx, %r9
	jmp	.L70
	.p2align 4,,10
	.p2align 3
.L75:
	leaq	-1(%r9), %rax
	cmpq	%rdx, %rax
	jnb	.L89
	cmpq	$0, (%rcx,%rax,8)
	jne	.L90
	movq	%rax, %r9
.L70:
	cmpq	$1, %r9
	jne	.L75
.L74:
	leaq	16(%r12), %rcx
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
.L62:
	testq	%rdx, %rdx
	jne	.L86
	leaq	.LC4(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L90:
	subq	%r9, %rdx
	movq	%rdx, %r8
	jmp	.L74
.L89:
	leaq	.LC4(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L87:
	leaq	.LC4(%rip), %rcx
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
.LC5:
	.ascii "wze::engine.actors[].texts.Purge(): KeepTextIDs must not be NULL\12Params: KeepTextIDs: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts5PurgeEPN3neo5arrayIyEE
	.def	_ZN3wze6engine6actors5actor5texts5PurgeEPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts5PurgeEPN3neo5arrayIyEE
_ZN3wze6engine6actors5actor5texts5PurgeEPN3neo5arrayIyEE:
.LFB8430:
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
	movq	%rcx, %rbp
	movq	%rdx, %rsi
	testq	%rdx, %rdx
	je	.L92
	movq	16(%rcx), %rcx
	cmpq	$1, %rcx
	jbe	.L121
	movq	24(%rbp), %r9
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L101:
	movq	(%rsi), %rdx
	movq	8(%rsi), %r8
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.L95
.L96:
	cmpq	(%r8,%rax,8), %rbx
	je	.L97
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L96
	.p2align 4,,10
	.p2align 3
.L95:
	movq	(%r9,%rbx,8), %rdi
	leaq	0(,%rbx,8), %r12
	testq	%rdi, %rdi
	je	.L99
	movq	120(%rdi), %rcx
	call	SDL_DestroyTexture
	leaq	88(%rdi), %rcx
	call	_ZN3neo6stringD1Ev
	movq	%rdi, %rcx
	movl	$128, %edx
	call	_ZdlPvy
	movq	16(%rbp), %rcx
	movq	24(%rbp), %r9
.L99:
	cmpq	%rcx, %rbx
	jnb	.L122
	movq	$0, (%r9,%r12)
.L97:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jb	.L101
	cmpq	$0, -8(%r9,%rcx,8)
	leaq	-1(%rcx), %r8
	je	.L123
.L120:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L123:
	movq	%rcx, %rax
	jmp	.L102
	.p2align 4,,10
	.p2align 3
.L107:
	leaq	-1(%rax), %rdx
	cmpq	%rcx, %rdx
	jnb	.L124
	cmpq	$0, (%r9,%rdx,8)
	jne	.L125
	movq	%rdx, %rax
.L102:
	cmpq	$1, %rax
	jne	.L107
.L106:
	movq	%rax, %rdx
	leaq	16(%rbp), %rcx
.LEHB2:
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor5texts4textEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L121:
	testq	%rcx, %rcx
	jne	.L120
	leaq	.LC4(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L125:
	subq	%rax, %rcx
	movq	%rcx, %r8
	jmp	.L106
.L124:
	leaq	.LC4(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L92:
	leaq	.LC5(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L122:
	leaq	.LC4(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
.LEHE2:
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8430:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8430-.LLSDACSB8430
.LLSDACSB8430:
	.uleb128 .LEHB2-.LFB8430
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE8430:
	.text
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC6:
	.ascii "wze::engine.actors[].texts[]: Illegal access to NULL Text\12Params: TextID: %lld\12\0"
	.align 8
.LC7:
	.ascii "wze::engine.actors[].texts[]: Text does not exist\12Params: TextID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5textsixEy
	.def	_ZN3wze6engine6actors5actor5textsixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5textsixEy
_ZN3wze6engine6actors5actor5textsixEy:
.LFB8431:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testq	%rdx, %rdx
	je	.L130
	cmpq	16(%rcx), %rdx
	jnb	.L128
	movq	24(%rcx), %rax
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L128
	addq	$40, %rsp
	ret
.L128:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L130:
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC11:
	.ascii "wze::engine.actors[].texts[].text(): TTF_RenderUTF8_Blended failed\12Params: String: %s\12\0"
	.align 8
.LC12:
	.ascii "wze::engine.actors[].texts[].text(): SDL_CreateTextureFromSurface failed\12Params: String: %s\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB14:
	.text
.LHOTB14:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy
	.def	_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy
_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy:
.LFB8433:
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
.LEHB3:
	call	_ZN3neo6stringC1Ev
.LEHE3:
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
.LEHB4:
	call	_ZN3neo6stringaSESt16initializer_listIPKcE
	movq	%rbp, 104(%rbx)
	movl	$0, 112(%rbx)
	movq	$0, 120(%rbx)
	testq	%rbp, %rbp
	je	.L131
	cmpq	$0, 64(%rbx)
	jne	.L142
.L131:
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L142:
	movq	%rdi, %rcx
	call	_ZN3neo6string6LengthEv
	cmpq	$1, %rax
	jbe	.L131
	movq	%rdi, %rcx
	call	_ZN3neo6stringclEv
	movq	(%rbx), %rcx
	movq	%rax, %rdx
	movq	104(%rbx), %rax
	movq	376(%rcx), %r8
	cmpq	368(%rcx), %rax
	jnb	.L143
	movq	(%r8,%rax,8), %rcx
	movl	$-1, %r8d
	call	TTF_RenderUTF8_Blended
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L144
	movq	(%rbx), %rax
	movq	%rbp, %rdx
	movq	16(%rax), %rcx
	call	SDL_CreateTextureFromSurface
	movq	%rax, 120(%rbx)
	testq	%rax, %rax
	je	.L145
	movq	64(%rbx), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	16(%rbp), %xmm0
	testq	%rax, %rax
	js	.L138
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L139:
	mulsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	20(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	call	round
	movq	%rbp, %rcx
	cvttsd2sil	%xmm0, %eax
	movw	%ax, 56(%rbx)
	call	SDL_FreeSurface
	jmp	.L131
	.p2align 4,,10
	.p2align 3
.L138:
	movq	%rax, %rdx
	andl	$1, %eax
	pxor	%xmm1, %xmm1
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L139
.L145:
	movq	%rsi, %rdx
	leaq	.LC12(%rip), %rcx
	call	_Z6printfPKcz
.L136:
	movl	$1, %ecx
	call	exit
.L144:
	movq	%rsi, %rdx
	leaq	.LC11(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L136
.L143:
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rcx
	call	_Z6printfPKcz
.LEHE4:
	jmp	.L136
.L141:
	movq	%rax, %rbx
	jmp	.L140
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8433:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8433-.LLSDACSB8433
.LLSDACSB8433:
	.uleb128 .LEHB3-.LFB8433
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB8433
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L141-.LFB8433
	.uleb128 0
.LLSDACSE8433:
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
.L140:
	movq	%rdi, %rcx
	call	_ZN3neo6stringD1Ev
	movq	%rbx, %rcx
.LEHB5:
	call	_Unwind_Resume
	nop
.LEHE5:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8433:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8433-.LLSDACSBC8433
.LLSDACSBC8433:
	.uleb128 .LEHB5-.LCOLDB14
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC8433:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE14:
	.text
.LHOTE14:
	.globl	_ZN3wze6engine6actors5actor5texts4textC1EPS0_PS2_PKcy
	.def	_ZN3wze6engine6actors5actor5texts4textC1EPS0_PS2_PKcy;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor5texts4textC1EPS0_PS2_PKcy,_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy
	.section .rdata,"dr"
	.align 8
.LC15:
	.ascii "wze::engine.actors[].texts.New(): String must not be NULL\12Params: String: %p, FontID: %lld\12\0"
	.align 8
.LC16:
	.ascii "wze::engine.actors[].texts.New(): FontID does not exist\12Params: String: %s, FontID: %lld\12\0"
	.align 8
.LC17:
	.ascii "neo::array+=: Memory allocation failed\12Params: Elements(type, length): %ld, %ld\12\0"
	.align 8
.LC18:
	.ascii "wze::engine.actors[].texts.New(): Memory allocation failed\12Params: String: %s, FontID: %lld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB19:
	.text
.LHOTB19:
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
	je	.L166
	testq	%r8, %r8
	jne	.L148
.L152:
	movq	16(%rsi), %rax
	cmpq	$1, %rax
	jbe	.L150
	movq	24(%rsi), %rcx
	movl	$1, %ebx
	jmp	.L156
	.p2align 4,,10
	.p2align 3
.L153:
	addq	$1, %rbx
	cmpq	%rbx, %rax
	je	.L150
.L156:
	cmpq	$0, (%rcx,%rbx,8)
	jne	.L153
	movl	$128, %ecx
.LEHB6:
	call	_Znwy
.LEHE6:
	movq	(%rsi), %rdx
	movq	%rdi, 32(%rsp)
	movq	%rbp, %r9
	movq	8(%rsi), %r8
	movq	%rax, %rcx
	movq	%rax, %r12
.LEHB7:
	call	_ZN3wze6engine6actors5actor5texts4textC1EPS0_PS2_PKcy
.LEHE7:
	movq	24(%rsi), %rax
	cmpq	16(%rsi), %rbx
	jnb	.L167
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
.L150:
	movl	$128, %ecx
.LEHB8:
	call	_Znwy
.LEHE8:
	movq	(%rsi), %rdx
	movq	%rdi, 32(%rsp)
	movq	%rbp, %r9
	movq	8(%rsi), %r8
	movq	%rax, %rcx
	movq	%rax, %rbx
.LEHB9:
	call	_ZN3wze6engine6actors5actor5texts4textC1EPS0_PS2_PKcy
.LEHE9:
	movq	16(%rsi), %rax
	movq	24(%rsi), %rcx
	movq	%rbx, 56(%rsp)
	leaq	1(%rax), %rdx
	movq	%rdx, 16(%rsi)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 24(%rsi)
	testq	%rax, %rax
	je	.L168
	movq	16(%rsi), %rdx
	leaq	56(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
.LEHB10:
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	addq	$-1, %rax
	movq	%rax, %rbx
	jnc	.L169
	cmpq	$0, (%rdx,%rax,8)
	je	.L170
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
.L148:
	movq	(%rcx), %rax
	cmpq	368(%rax), %r8
	jnb	.L151
	movq	376(%rax), %rax
	cmpq	$0, (%rax,%r8,8)
	jne	.L152
.L151:
	leaq	.LC16(%rip), %rcx
	movq	%rdi, %r8
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L167:
	leaq	.LC4(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L166:
	leaq	.LC15(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L170:
	leaq	.LC18(%rip), %rcx
	movq	%rdi, %r8
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L169:
	leaq	.LC4(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L168:
	leaq	.LC17(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
.LEHE10:
	movl	$1, %ecx
	call	exit
.L163:
	movq	%rax, %rbx
	jmp	.L161
.L164:
	movq	%rax, %rsi
	jmp	.L162
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8427:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8427-.LLSDACSB8427
.LLSDACSB8427:
	.uleb128 .LEHB6-.LFB8427
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB8427
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L163-.LFB8427
	.uleb128 0
	.uleb128 .LEHB8-.LFB8427
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB8427
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L164-.LFB8427
	.uleb128 0
	.uleb128 .LEHB10-.LFB8427
	.uleb128 .LEHE10-.LEHB10
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
.L161:
	movq	%r12, %rcx
	movl	$128, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
.LEHB11:
	call	_Unwind_Resume
.L162:
	movq	%rbx, %rcx
	movl	$128, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
	call	_Unwind_Resume
	nop
.LEHE11:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8427:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8427-.LLSDACSBC8427
.LLSDACSBC8427:
	.uleb128 .LEHB11-.LCOLDB19
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSEC8427:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE19:
	.text
.LHOTE19:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4textD2Ev
	.def	_ZN3wze6engine6actors5actor5texts4textD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts4textD2Ev
_ZN3wze6engine6actors5actor5texts4textD2Ev:
.LFB8436:
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
.LLSDA8436:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8436-.LLSDACSB8436
.LLSDACSB8436:
.LLSDACSE8436:
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
.LFB8438:
	.seh_endprologue
	movsd	40(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC20:
	.ascii "wze::engine.actors[].texts[].SetX(): X must not be NaN\12Params: X: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text4SetXEd
	.def	_ZN3wze6engine6actors5actor5texts4text4SetXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts4text4SetXEd
_ZN3wze6engine6actors5actor5texts4text4SetXEd:
.LFB8439:
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
	jp	.L190
	movq	8(%rcx), %rax
	movsd	48(%rcx), %xmm0
	movsd	216(%rax), %xmm1
	movsd	224(%rax), %xmm2
	ucomisd	%xmm6, %xmm1
	jp	.L176
	jne	.L176
	ucomisd	%xmm0, %xmm2
	jp	.L176
	jne	.L176
	movq	$0x000000000, 72(%rcx)
.L184:
	pxor	%xmm0, %xmm0
	jmp	.L183
	.p2align 4,,10
	.p2align 3
.L176:
	movq	(%rbx), %rax
	movapd	%xmm6, %xmm3
	movsd	%xmm0, 32(%rsp)
	leaq	296(%rax), %rcx
	call	_ZN3wze6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movapd	%xmm0, %xmm3
	movsd	48(%rbx), %xmm0
	movsd	216(%rax), %xmm1
	movsd	224(%rax), %xmm2
	movsd	%xmm3, 72(%rbx)
	ucomisd	%xmm1, %xmm6
	jp	.L180
	jne	.L180
	ucomisd	%xmm0, %xmm2
	jp	.L180
	je	.L184
.L180:
	movq	(%rbx), %rax
	movapd	%xmm6, %xmm3
	movsd	%xmm0, 32(%rsp)
	leaq	296(%rax), %rcx
	call	_ZN3wze6engine6vector5AngleEdddd
.L183:
	movsd	%xmm0, 80(%rbx)
	movapd	%xmm6, %xmm0
	movsd	%xmm6, 40(%rbx)
	movaps	48(%rsp), %xmm6
	addq	$64, %rsp
	popq	%rbx
	ret
.L190:
	leaq	.LC20(%rip), %rcx
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
.LFB8440:
	.seh_endprologue
	movsd	48(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC21:
	.ascii "wze::engine.actors[].texts[].SetY(): Y must not be NaN\12Params: Y: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text4SetYEd
	.def	_ZN3wze6engine6actors5actor5texts4text4SetYEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts4text4SetYEd
_ZN3wze6engine6actors5actor5texts4text4SetYEd:
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
	jp	.L209
	movq	8(%rcx), %rax
	movsd	40(%rcx), %xmm3
	movsd	216(%rax), %xmm1
	movsd	224(%rax), %xmm2
	ucomisd	%xmm3, %xmm1
	jp	.L195
	jne	.L195
	ucomisd	%xmm2, %xmm6
	jp	.L195
	jne	.L195
	movq	$0x000000000, 72(%rcx)
.L203:
	pxor	%xmm0, %xmm0
	jmp	.L202
	.p2align 4,,10
	.p2align 3
.L195:
	movq	(%rbx), %rax
	movsd	%xmm6, 32(%rsp)
	leaq	296(%rax), %rcx
	call	_ZN3wze6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movsd	40(%rbx), %xmm3
	movsd	216(%rax), %xmm1
	movsd	224(%rax), %xmm2
	movsd	%xmm0, 72(%rbx)
	ucomisd	%xmm3, %xmm1
	jp	.L199
	jne	.L199
	ucomisd	%xmm2, %xmm6
	jp	.L199
	je	.L203
.L199:
	movq	(%rbx), %rax
	movsd	%xmm6, 32(%rsp)
	leaq	296(%rax), %rcx
	call	_ZN3wze6engine6vector5AngleEdddd
.L202:
	movsd	%xmm0, 80(%rbx)
	movapd	%xmm6, %xmm0
	movsd	%xmm6, 48(%rbx)
	movaps	48(%rsp), %xmm6
	addq	$64, %rsp
	popq	%rbx
	ret
.L209:
	leaq	.LC21(%rip), %rcx
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
.LFB8442:
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
.LFB8443:
	.seh_endprologue
	movzwl	64(%rcx), %eax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC22:
	.ascii "wze::engine.actors[].texts[].SetHeight(): TTF_RenderUTF8_Blended failed\12Params: Height: %d\12\0"
	.align 8
.LC23:
	.ascii "wze::engine.actors[].texts[].SetHeight(): SDL_CreateTextureFromSurface failed\12Params: Height: %d\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text9SetHeightEt
	.def	_ZN3wze6engine6actors5actor5texts4text9SetHeightEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts4text9SetHeightEt
_ZN3wze6engine6actors5actor5texts4text9SetHeightEt:
.LFB8444:
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
	je	.L213
	cmpq	$0, 104(%rcx)
	je	.L213
	testw	%dx, %dx
	jne	.L229
.L213:
	xorl	%edx, %edx
	movq	120(%rbx), %rcx
	movw	%dx, 56(%rbx)
	call	SDL_DestroyTexture
	movq	$0, 120(%rbx)
.L216:
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
.L229:
	leaq	88(%rcx), %r12
	movq	%r12, %rcx
	call	_ZN3neo6string6LengthEv
	cmpq	$1, %rax
	jbe	.L213
	movl	112(%rbx), %edx
	testl	%edx, %edx
	jne	.L230
.L215:
	movq	%r12, %rcx
	call	_ZN3neo6stringclEv
	movq	(%rbx), %rcx
	movq	%rax, %rdx
	movq	104(%rbx), %rax
	movq	376(%rcx), %r8
	cmpq	368(%rcx), %rax
	jnb	.L228
	movq	(%r8,%rax,8), %rcx
	movl	$-1, %r8d
	call	TTF_RenderUTF8_Blended
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L231
	movq	(%rbx), %rax
	movq	%r12, %rdx
	movq	16(%rax), %rcx
	call	SDL_CreateTextureFromSurface
	movq	%rax, 120(%rbx)
	testq	%rax, %rax
	je	.L232
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
	je	.L216
	movq	(%rbx), %rax
	movq	104(%rbx), %rdx
	movq	376(%rax), %rcx
	cmpq	368(%rax), %rdx
	jnb	.L233
	movq	(%rcx,%rdx,8), %rcx
	xorl	%edx, %edx
	call	TTF_SetFontStyle
	jmp	.L216
	.p2align 4,,10
	.p2align 3
.L230:
	movq	(%rbx), %rcx
	movq	104(%rbx), %rax
	movq	376(%rcx), %r8
	cmpq	368(%rcx), %rax
	jnb	.L228
	movq	(%r8,%rax,8), %rcx
	call	TTF_SetFontStyle
	jmp	.L215
.L232:
	leaq	.LC23(%rip), %rcx
	movzwl	%si, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L231:
	leaq	.LC22(%rip), %rcx
	movzwl	%si, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L228:
	leaq	.LC4(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L233:
	leaq	.LC4(%rip), %rcx
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
.LFB8445:
	.seh_endprologue
	addq	$88, %rcx
	jmp	_ZN3neo6stringclEv
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC24:
	.ascii "wze::engine.actors[].texts[].SetString(): String must not be NULL\12Params: String: %p\12\0"
	.align 8
.LC25:
	.ascii "wze::engine.actors[].texts[].SetString(): TTF_RenderUTF8_Blended failed\12Params: String: %s\12\0"
	.align 8
.LC26:
	.ascii "wze::engine.actors[].texts[].SetString(): SDL_CreateTextureFromSurface failed\12Params: String: %s\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text9SetStringEPKc
	.def	_ZN3wze6engine6actors5actor5texts4text9SetStringEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts4text9SetStringEPKc
_ZN3wze6engine6actors5actor5texts4text9SetStringEPKc:
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
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	testq	%rdx, %rdx
	je	.L253
	leaq	88(%rcx), %rdi
	movq	%rdi, %rcx
	call	_ZN3neo6stringneEPKc
	testb	%al, %al
	je	.L237
	cmpq	$0, 104(%rbx)
	jne	.L254
.L237:
	xorl	%edx, %edx
	movq	120(%rbx), %rcx
	movw	%dx, 56(%rbx)
	call	SDL_DestroyTexture
	movq	$0, 120(%rbx)
.L240:
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
.L254:
	cmpq	$0, 64(%rbx)
	je	.L237
	movq	%rsi, %rcx
	call	_ZN3neo6string13LiteralLengthEPKc
	cmpq	$1, %rax
	jbe	.L237
	movq	(%rbx), %rax
	movl	112(%rbx), %ecx
	movq	104(%rbx), %rdx
	movq	368(%rax), %r8
	testl	%ecx, %ecx
	jne	.L255
.L239:
	movq	376(%rax), %rcx
	cmpq	368(%rax), %rdx
	jnb	.L252
	movq	(%rcx,%rdx,8), %rcx
	movl	$-1, %r8d
	movq	%rsi, %rdx
	call	TTF_RenderUTF8_Blended
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L256
	movq	(%rbx), %rax
	movq	%rbp, %rdx
	movq	16(%rax), %rcx
	call	SDL_CreateTextureFromSurface
	movq	%rax, 120(%rbx)
	testq	%rax, %rax
	je	.L257
	movq	64(%rbx), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	16(%rbp), %xmm0
	testq	%rax, %rax
	js	.L245
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L246:
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
	je	.L240
	movq	(%rbx), %rax
	movq	104(%rbx), %rdx
	movq	376(%rax), %rcx
	cmpq	368(%rax), %rdx
	jnb	.L252
	movq	(%rcx,%rdx,8), %rcx
	xorl	%edx, %edx
	call	TTF_SetFontStyle
	jmp	.L240
	.p2align 4,,10
	.p2align 3
.L245:
	movq	%rax, %rdx
	andl	$1, %eax
	pxor	%xmm1, %xmm1
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L246
	.p2align 4,,10
	.p2align 3
.L255:
	movq	376(%rax), %rax
	cmpq	%r8, %rdx
	jnb	.L252
	movq	(%rax,%rdx,8), %rax
	movl	%ecx, %edx
	movq	%rax, %rcx
	call	TTF_SetFontStyle
	movq	(%rbx), %rax
	movq	104(%rbx), %rdx
	jmp	.L239
.L253:
	leaq	.LC24(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L257:
	leaq	.LC26(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L256:
	leaq	.LC25(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L252:
	leaq	.LC4(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text9GetFontIDEv
	.def	_ZN3wze6engine6actors5actor5texts4text9GetFontIDEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts4text9GetFontIDEv
_ZN3wze6engine6actors5actor5texts4text9GetFontIDEv:
.LFB8447:
	.seh_endprologue
	movq	104(%rcx), %rax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC27:
	.ascii "wze::engine.actors[].texts[].SetFontID(): Font does not exist\12Params: FontID: %lld\12\0"
	.align 8
.LC28:
	.ascii "wze::engine.actors[].texts[].SetFontID(): TTF_RenderUTF8_Blended failed\12Params: FontID: %lld\12\0"
	.align 8
.LC29:
	.ascii "wze::engine.actors[].texts[].SetFontID(): SDL_CreateTextureFromSurface failed\12Params: FontID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text9SetFontIDEy
	.def	_ZN3wze6engine6actors5actor5texts4text9SetFontIDEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts4text9SetFontIDEy
_ZN3wze6engine6actors5actor5texts4text9SetFontIDEy:
.LFB8448:
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
	je	.L264
	movq	(%rcx), %rax
	cmpq	368(%rax), %rdx
	jnb	.L262
	movq	376(%rax), %rax
	cmpq	$0, (%rax,%rdx,8)
	je	.L262
	cmpq	104(%rcx), %rdx
	je	.L264
	cmpq	$0, 64(%rcx)
	jne	.L275
.L264:
	xorl	%edx, %edx
	movq	120(%rbx), %rcx
	movw	%dx, 56(%rbx)
	call	SDL_DestroyTexture
	movq	$0, 120(%rbx)
.L261:
	movq	%rsi, %rax
	movq	%rsi, 104(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L275:
	leaq	88(%rcx), %rdi
	movq	%rdi, %rcx
	call	_ZN3neo6string6LengthEv
	cmpq	$1, %rax
	jbe	.L264
	movl	112(%rbx), %edx
	testl	%edx, %edx
	jne	.L276
.L265:
	movq	%rdi, %rcx
	call	_ZN3neo6stringclEv
	movq	%rax, %rdx
	movq	(%rbx), %rax
	movq	376(%rax), %rcx
	cmpq	368(%rax), %rsi
	jnb	.L267
	movq	(%rcx,%rsi,8), %rcx
	movl	$-1, %r8d
	call	TTF_RenderUTF8_Blended
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L277
	movq	(%rbx), %rax
	movq	%rdi, %rdx
	movq	16(%rax), %rcx
	call	SDL_CreateTextureFromSurface
	movq	%rax, 120(%rbx)
	testq	%rax, %rax
	je	.L278
	movq	64(%rbx), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	16(%rdi), %xmm0
	testq	%rax, %rax
	js	.L270
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L271:
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
	je	.L261
	movq	(%rbx), %rax
	movq	376(%rax), %rdx
	cmpq	368(%rax), %rsi
	jnb	.L267
	movq	(%rdx,%rsi,8), %rcx
	xorl	%edx, %edx
	call	TTF_SetFontStyle
	jmp	.L261
	.p2align 4,,10
	.p2align 3
.L270:
	movq	%rax, %rdx
	andl	$1, %eax
	pxor	%xmm1, %xmm1
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L271
.L262:
	leaq	.LC27(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L276:
	movq	(%rbx), %rax
	movq	376(%rax), %rcx
	cmpq	368(%rax), %rsi
	jnb	.L267
	movq	(%rcx,%rsi,8), %rcx
	call	TTF_SetFontStyle
	jmp	.L265
.L267:
	leaq	.LC4(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L278:
	leaq	.LC29(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L277:
	leaq	.LC28(%rip), %rcx
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
.LFB8449:
	.seh_endprologue
	movl	112(%rcx), %eax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC30:
	.ascii "wze::engine.actors[].texts[].SetFont(): TTF_RenderUTF8_Blended failed\12Params: FontStyle: %d\12\0"
	.align 8
.LC31:
	.ascii "wze::engine.actors[].texts[].SetFont(): SDL_CreateTextureFromSurface failed\12Params: FontStyle: %d\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text12SetFontStyleENS_5styleE
	.def	_ZN3wze6engine6actors5actor5texts4text12SetFontStyleENS_5styleE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5texts4text12SetFontStyleENS_5styleE
_ZN3wze6engine6actors5actor5texts4text12SetFontStyleENS_5styleE:
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
	movl	%edx, %esi
	cmpl	%edx, 112(%rcx)
	je	.L281
	cmpq	$0, 104(%rcx)
	jne	.L296
.L281:
	xorl	%eax, %eax
	movq	120(%rbx), %rcx
	movw	%ax, 56(%rbx)
	call	SDL_DestroyTexture
	movq	$0, 120(%rbx)
.L284:
	movl	%esi, %eax
	movl	%esi, 112(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L296:
	cmpq	$0, 64(%rcx)
	je	.L281
	leaq	88(%rcx), %rdi
	movq	%rdi, %rcx
	call	_ZN3neo6string6LengthEv
	cmpq	$1, %rax
	jbe	.L281
	testl	%esi, %esi
	jne	.L297
.L283:
	movq	%rdi, %rcx
	call	_ZN3neo6stringclEv
	movq	(%rbx), %rcx
	movq	%rax, %rdx
	movq	104(%rbx), %rax
	movq	376(%rcx), %r8
	cmpq	368(%rcx), %rax
	jnb	.L298
	movq	(%r8,%rax,8), %rcx
	movl	$-1, %r8d
	call	TTF_RenderUTF8_Blended
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L299
	movq	(%rbx), %rax
	movq	%rdi, %rdx
	movq	16(%rax), %rcx
	call	SDL_CreateTextureFromSurface
	movq	%rax, 120(%rbx)
	testq	%rax, %rax
	je	.L300
	movq	64(%rbx), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	16(%rdi), %xmm0
	testq	%rax, %rax
	js	.L289
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L290:
	mulsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	20(%rdi), %xmm1
	divsd	%xmm1, %xmm0
	call	round
	movq	%rdi, %rcx
	cvttsd2sil	%xmm0, %eax
	movw	%ax, 56(%rbx)
	call	SDL_FreeSurface
	testl	%esi, %esi
	je	.L284
	movq	(%rbx), %rax
	movq	104(%rbx), %rdx
	movq	376(%rax), %rcx
	cmpq	368(%rax), %rdx
	jnb	.L295
	movq	(%rcx,%rdx,8), %rcx
	xorl	%edx, %edx
	call	TTF_SetFontStyle
	jmp	.L284
	.p2align 4,,10
	.p2align 3
.L289:
	movq	%rax, %rdx
	andl	$1, %eax
	pxor	%xmm1, %xmm1
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L290
	.p2align 4,,10
	.p2align 3
.L297:
	movq	(%rbx), %rax
	movq	104(%rbx), %rdx
	movq	376(%rax), %rcx
	cmpq	368(%rax), %rdx
	jnb	.L295
	movq	(%rcx,%rdx,8), %rcx
	movl	%esi, %edx
	call	TTF_SetFontStyle
	jmp	.L283
.L298:
	movq	%rax, %rdx
.L295:
	leaq	.LC4(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L300:
	leaq	.LC31(%rip), %rcx
	movl	%esi, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L299:
	leaq	.LC30(%rip), %rcx
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
	.def	_ZN3neo6memory6CopyToEPKvPvy;	.scl	2;	.type	32;	.endef
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
	.def	_ZN3neo6string13LiteralLengthEPKc;	.scl	2;	.type	32;	.endef
