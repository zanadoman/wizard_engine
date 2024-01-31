	.file	"SEFlipbook(s).cpp"
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
	.def	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0
_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0:
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
	.globl	_ZN4slay6engine6actors5actor9flipbooksC2ERS0_RS2_
	.def	_ZN4slay6engine6actors5actor9flipbooksC2ERS0_RS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooksC2ERS0_RS2_
_ZN4slay6engine6actors5actor9flipbooksC2ERS0_RS2_:
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
	.globl	_ZN4slay6engine6actors5actor9flipbooksC1ERS0_RS2_
	.def	_ZN4slay6engine6actors5actor9flipbooksC1ERS0_RS2_;	.scl	2;	.type	32;	.endef
	.set	_ZN4slay6engine6actors5actor9flipbooksC1ERS0_RS2_,_ZN4slay6engine6actors5actor9flipbooksC2ERS0_RS2_
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooksD2Ev
	.def	_ZN4slay6engine6actors5actor9flipbooksD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooksD2Ev
_ZN4slay6engine6actors5actor9flipbooksD2Ev:
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
	call	free
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
	.seh_endproc
	.globl	_ZN4slay6engine6actors5actor9flipbooksD1Ev
	.def	_ZN4slay6engine6actors5actor9flipbooksD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN4slay6engine6actors5actor9flipbooksD1Ev,_ZN4slay6engine6actors5actor9flipbooksD2Ev
	.section .rdata,"dr"
	.align 8
.LC4:
	.ascii "slay::engine.actors[].flipbooks.New(): At least two Textures are required\12Params: TextureIDs(length): %ld\12\0"
	.align 8
.LC5:
	.ascii "slay::engine.actors[].flipbooks.New(): Texture does not exists\12Params: TextureIDs(length): %ld\12\0"
	.align 8
.LC7:
	.ascii "slay::engine.actors[].flipbooks.flipbook(): Memory allocation failed\12Params: Engine: %p, Actor: %p, TextureIDs(length): %ld\12\0"
	.align 8
.LC8:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.align 8
.LC9:
	.ascii "neo::array+=: Memory allocation failed\12Params: Elements(type, length): %ld, %ld\12\0"
	.align 8
.LC10:
	.ascii "slay::engine.actors[].flipbooks.New(): Memory allocation failed\12Params: TextureIDs(length): %ld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB12:
	.text
.LHOTB12:
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks3NewESt16initializer_listIyE
	.def	_ZN4slay6engine6actors5actor9flipbooks3NewESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooks3NewESt16initializer_listIyE
_ZN4slay6engine6actors5actor9flipbooks3NewESt16initializer_listIyE:
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
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	movq	8(%rdx), %rsi
	movq	(%rdx), %rdi
	movq	%rcx, %rbp
	cmpq	$1, %rsi
	jbe	.L65
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L39:
	movq	(%rdi,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L40
	movq	0(%rbp), %rcx
	cmpq	568(%rcx), %rdx
	jnb	.L41
	movq	576(%rcx), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L41
.L40:
	addq	$1, %rax
	cmpq	%rax, %rsi
	jne	.L39
	movq	16(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L42
	movq	24(%rbp), %rdx
	movl	$1, %ebx
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L43:
	addq	$1, %rbx
	cmpq	%rbx, %rax
	je	.L42
.L47:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L43
	movl	$104, %ecx
	leaq	0(,%rsi,8), %r12
.LEHB0:
	call	_Znwy
	movdqu	0(%rbp), %xmm6
	xorl	%edx, %edx
	pxor	%xmm0, %xmm0
	movw	%dx, 16(%rax)
	movq	%rax, %r13
	movq	%r12, %rcx
	movl	$0, 18(%rax)
	movq	$0x000000000, 24(%rax)
	movups	%xmm6, (%rax)
	movabsq	$-9151314442833559552, %rax
	movq	%rax, 32(%r13)
	movb	$1, 40(%r13)
	movl	$1, 44(%r13)
	movq	$0, 48(%r13)
	movq	$0, 72(%r13)
	movl	$0, 80(%r13)
	movq	%rsi, 88(%r13)
	movups	%xmm0, 56(%r13)
	call	malloc
	movq	%rax, 96(%r13)
	movq	%rax, %rcx
	testq	%rax, %rax
	je	.L66
	movq	%r12, %r8
	movq	%rdi, %rdx
	call	memcpy
	movq	24(%rbp), %rax
	cmpq	16(%rbp), %rbx
	jnb	.L67
	movq	%r13, (%rax,%rbx,8)
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L42:
	movl	$104, %ecx
	leaq	0(,%rsi,8), %r12
	call	_Znwy
	movdqu	0(%rbp), %xmm6
	pxor	%xmm0, %xmm0
	movq	%r12, %rcx
	movq	%rax, %rbx
	movups	%xmm6, (%rax)
	xorl	%eax, %eax
	movw	%ax, 16(%rbx)
	movabsq	$-9151314442833559552, %rax
	movl	$0, 18(%rbx)
	movq	$0x000000000, 24(%rbx)
	movq	%rax, 32(%rbx)
	movb	$1, 40(%rbx)
	movl	$1, 44(%rbx)
	movq	$0, 48(%rbx)
	movq	$0, 72(%rbx)
	movl	$0, 80(%rbx)
	movq	%rsi, 88(%rbx)
	movups	%xmm0, 56(%rbx)
	call	malloc
	movq	%rax, 96(%rbx)
	movq	%rax, %rcx
	testq	%rax, %rax
	je	.L68
	movq	%r12, %r8
	movq	%rdi, %rdx
	call	memcpy
	movq	16(%rbp), %rax
	movq	24(%rbp), %rcx
	movq	%rbx, 40(%rsp)
	leaq	1(%rax), %rdx
	movq	%rdx, 16(%rbp)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 24(%rbp)
	testq	%rax, %rax
	je	.L69
	movq	16(%rbp), %rdx
	leaq	40(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo9memCopyToEPKvPvy
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	addq	$-1, %rax
	movq	%rax, %rbx
	jnc	.L70
	cmpq	$0, (%rdx,%rax,8)
	je	.L71
.L38:
	movaps	48(%rsp), %xmm6
	movq	%rbx, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L41:
	leaq	.LC5(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L65:
	leaq	.LC4(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L71:
	leaq	.LC10(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L70:
	leaq	.LC8(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L69:
	leaq	.LC9(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
.LEHE0:
	movl	$1, %ecx
	call	exit
.L68:
	movhlps	%xmm6, %xmm2
	movq	%xmm6, %rdx
	movq	%rsi, %r9
	movq	%xmm2, %r8
	leaq	.LC7(%rip), %rcx
.LEHB1:
	call	_Z6printfPKcz
.LEHE1:
.L64:
	movl	$1, %ecx
	call	exit
.L66:
	movhlps	%xmm6, %xmm1
	movq	%xmm6, %rdx
	movq	%rsi, %r9
	movq	%xmm1, %r8
	leaq	.LC7(%rip), %rcx
.LEHB2:
	call	_Z6printfPKcz
.LEHE2:
	jmp	.L64
.L67:
	movq	%rbx, %rdx
	leaq	.LC8(%rip), %rcx
.LEHB3:
	call	_Z6printfPKcz
.LEHE3:
	jmp	.L64
.L58:
	movq	%rax, %rsi
	jmp	.L55
.L57:
	movq	%rax, %rbx
	jmp	.L54
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
	.uleb128 .L58-.LFB8438
	.uleb128 0
	.uleb128 .LEHB2-.LFB8438
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L57-.LFB8438
	.uleb128 0
	.uleb128 .LEHB3-.LFB8438
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE8438:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN4slay6engine6actors5actor9flipbooks3NewESt16initializer_listIyE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooks3NewESt16initializer_listIyE.cold
	.seh_stackalloc	120
	.seh_savereg	%rbx, 72
	.seh_savereg	%rsi, 80
	.seh_savereg	%rdi, 88
	.seh_savereg	%rbp, 96
	.seh_savexmm	%xmm6, 48
	.seh_savereg	%r12, 104
	.seh_savereg	%r13, 112
	.seh_endprologue
_ZN4slay6engine6actors5actor9flipbooks3NewESt16initializer_listIyE.cold:
.L55:
	movq	%rbx, %rcx
	movl	$104, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB4:
	call	_Unwind_Resume
.L54:
	movq	%r13, %rcx
	movl	$104, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
	nop
.LEHE4:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8438:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8438-.LLSDACSBC8438
.LLSDACSBC8438:
	.uleb128 .LEHB4-.LCOLDB12
	.uleb128 .LEHE4-.LEHB4
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
	.ascii "slay::engine.actors[].flipbooks.Delete(): Illegal deletion of NULL Flipbook\12Params: ID: %lld\12\0"
	.align 8
.LC14:
	.ascii "slay::engine.actors[].flipbooks.Delete(): Flipbook does not exists\12Params: ID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks6DeleteEy
	.def	_ZN4slay6engine6actors5actor9flipbooks6DeleteEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooks6DeleteEy
_ZN4slay6engine6actors5actor9flipbooks6DeleteEy:
.LFB8442:
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
	je	.L83
	cmpq	16(%rcx), %rdx
	jnb	.L74
	movq	24(%rcx), %rax
	movq	(%rax,%rdx,8), %rdi
	testq	%rdi, %rdi
	je	.L74
	movq	96(%rdi), %rcx
	call	free
	movq	%rdi, %rcx
	movl	$104, %edx
	call	_ZdlPvy
	movq	16(%rsi), %rax
	movq	24(%rsi), %rcx
	cmpq	%rax, %rbx
	jnb	.L84
	movq	$0, (%rcx,%rbx,8)
	cmpq	$0, -8(%rcx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L85
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L85:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L81:
	movq	%rdx, %r9
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L86
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L87
	cmpq	$1, %rdx
	jne	.L81
.L80:
	leaq	16(%rsi), %rcx
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L87:
	subq	%r9, %rax
	movq	%r9, %rdx
	movq	%rax, %r8
	jmp	.L80
.L74:
	leaq	.LC14(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L86:
	leaq	.LC8(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L83:
	leaq	.LC13(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L84:
	leaq	.LC8(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC15:
	.ascii "slay::engine.actors[].flipbooks.Purge(): Flipbook does not exists\12Params: Keep(length): %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE
	.def	_ZN4slay6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE
_ZN4slay6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE:
.LFB8443:
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
	je	.L89
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L92:
	movq	(%rdi,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L90
	cmpq	%r9, %rdx
	jnb	.L91
	movq	24(%rbp), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L91
.L90:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L92
.L89:
	cmpq	$1, %r9
	jbe	.L93
	movq	24(%rbp), %rdx
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L94:
	xorl	%eax, %eax
	testq	%rbx, %rbx
	jne	.L96
	jmp	.L97
	.p2align 4,,10
	.p2align 3
.L125:
	addq	$1, %rax
	cmpq	%rax, %rbx
	je	.L97
.L96:
	cmpq	%rsi, (%rdi,%rax,8)
	jne	.L125
	cmpq	%rax, %rbx
	je	.L97
.L98:
	addq	$1, %rsi
	cmpq	%r9, %rsi
	jb	.L94
	cmpq	$0, -8(%rdx,%r9,8)
	leaq	-1(%r9), %r8
	je	.L126
.L124:
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
.L97:
	movq	(%rdx,%rsi,8), %r12
	leaq	0(,%rsi,8), %r13
	testq	%r12, %r12
	je	.L99
	movq	96(%r12), %rcx
	call	free
	movl	$104, %edx
	movq	%r12, %rcx
	call	_ZdlPvy
	movq	16(%rbp), %r9
	movq	24(%rbp), %rdx
.L99:
	cmpq	%r9, %rsi
	jnb	.L127
	movq	$0, (%rdx,%r13)
	jmp	.L98
.L126:
	movq	%r9, %r10
	jmp	.L102
	.p2align 4,,10
	.p2align 3
.L107:
	leaq	-1(%r10), %rax
	cmpq	%r9, %rax
	jnb	.L128
	cmpq	$0, (%rdx,%rax,8)
	jne	.L129
	movq	%rax, %r10
.L102:
	cmpq	$1, %r10
	jne	.L107
.L106:
	leaq	16(%rbp), %rcx
	movq	%r10, %rdx
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L93:
	testq	%r9, %r9
	jne	.L124
	leaq	.LC8(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L129:
	movq	%r9, %r8
	subq	%r10, %r8
	jmp	.L106
.L91:
	leaq	.LC15(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L128:
	leaq	.LC8(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L127:
	leaq	.LC8(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC16:
	.ascii "slay::engine.actors[].flipbooks.Purge(): Flipbook does not exists\12Params: Keep: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE
	.def	_ZN4slay6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE
_ZN4slay6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE:
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
	movq	16(%rcx), %r9
	movq	%rdx, %rdi
	movq	(%rdx), %rdx
	movq	%rcx, %rsi
	testq	%rdx, %rdx
	je	.L131
	movq	8(%rdi), %r8
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L134:
	movq	(%r8,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L132
	cmpq	%r9, %rcx
	jnb	.L133
	movq	24(%rsi), %r10
	cmpq	$0, (%r10,%rcx,8)
	je	.L133
.L132:
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L134
.L131:
	cmpq	$1, %r9
	jbe	.L135
	movq	24(%rsi), %r10
	movl	$1, %ebx
	testq	%rdx, %rdx
	je	.L139
	.p2align 4,,10
	.p2align 3
.L144:
	movq	8(%rdi), %rcx
	xorl	%eax, %eax
	jmp	.L138
	.p2align 4,,10
	.p2align 3
.L166:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L139
.L138:
	cmpq	%rbx, (%rcx,%rax,8)
	jne	.L166
	cmpq	%rax, %rdx
	je	.L139
	addq	$1, %rbx
	cmpq	%r9, %rbx
	jnb	.L143
.L168:
	movq	(%rdi), %rdx
	testq	%rdx, %rdx
	jne	.L144
	.p2align 4,,10
	.p2align 3
.L139:
	movq	(%r10,%rbx,8), %rbp
	leaq	0(,%rbx,8), %r12
	testq	%rbp, %rbp
	je	.L141
	movq	96(%rbp), %rcx
	call	free
	movl	$104, %edx
	movq	%rbp, %rcx
	call	_ZdlPvy
	movq	16(%rsi), %r9
	movq	24(%rsi), %r10
.L141:
	cmpq	%r9, %rbx
	jnb	.L167
	addq	$1, %rbx
	movq	$0, (%r10,%r12)
	cmpq	%r9, %rbx
	jb	.L168
.L143:
	cmpq	$0, -8(%r10,%r9,8)
	leaq	-1(%r9), %r8
	je	.L169
.L165:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L169:
	movq	%r9, %rax
	jmp	.L145
	.p2align 4,,10
	.p2align 3
.L150:
	leaq	-1(%rax), %rdx
	cmpq	%r9, %rdx
	jnb	.L170
	cmpq	$0, (%r10,%rdx,8)
	jne	.L171
	movq	%rdx, %rax
.L145:
	cmpq	$1, %rax
	jne	.L150
.L149:
	movq	%rax, %rdx
	leaq	16(%rsi), %rcx
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L135:
	testq	%r9, %r9
	jne	.L165
	leaq	.LC8(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L171:
	movq	%r9, %r8
	subq	%rax, %r8
	jmp	.L149
.L133:
	leaq	.LC16(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L170:
	leaq	.LC8(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L167:
	leaq	.LC8(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC17:
	.ascii "slay::engine.actors[].flipbooks[]: Illegal access to NULL Flipbook\12Params: ID: %lld\12\0"
	.align 8
.LC18:
	.ascii "slay::engine.actors[].flipbooks[]: Flipbook does not exists\12Params: ID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooksixEy
	.def	_ZN4slay6engine6actors5actor9flipbooksixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooksixEy
_ZN4slay6engine6actors5actor9flipbooksixEy:
.LFB8445:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testq	%rdx, %rdx
	je	.L176
	cmpq	16(%rcx), %rdx
	jnb	.L174
	movq	24(%rcx), %rax
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L174
	addq	$40, %rsp
	ret
.L174:
	leaq	.LC18(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L176:
	leaq	.LC17(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbookC2ERS0_RS2_St16initializer_listIyE
	.def	_ZN4slay6engine6actors5actor9flipbooks8flipbookC2ERS0_RS2_St16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooks8flipbookC2ERS0_RS2_St16initializer_listIyE
_ZN4slay6engine6actors5actor9flipbooks8flipbookC2ERS0_RS2_St16initializer_listIyE:
.LFB8447:
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
	xorl	%eax, %eax
	pxor	%xmm0, %xmm0
	movq	8(%r9), %rbp
	movq	(%r9), %r13
	leaq	0(,%rbp,8), %r12
	movw	%ax, 16(%rcx)
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	movq	%r8, %rdi
	movabsq	$-9151314442833559552, %rax
	movq	%rdx, (%rcx)
	movq	%r8, 8(%rcx)
	movl	$0, 18(%rcx)
	movq	$0x000000000, 24(%rcx)
	movq	%rax, 32(%rcx)
	movb	$1, 40(%rcx)
	movl	$1, 44(%rcx)
	movq	$0, 48(%rcx)
	movq	$0, 72(%rcx)
	movl	$0, 80(%rcx)
	movq	%rbp, 88(%rcx)
	movups	%xmm0, 56(%rcx)
	movq	%r12, %rcx
	call	malloc
	movq	%rax, 96(%rbx)
	movq	%rax, %rcx
	testq	%rax, %rax
	je	.L178
	testq	%rbp, %rbp
	je	.L182
	movq	%r12, %r8
	movq	%r13, %rdx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	jmp	memcpy
	.p2align 4,,10
	.p2align 3
.L182:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L178:
	leaq	.LC7(%rip), %rcx
	movq	%rbp, %r9
	movq	%rdi, %r8
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1ERS0_RS2_St16initializer_listIyE
	.def	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1ERS0_RS2_St16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.set	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1ERS0_RS2_St16initializer_listIyE,_ZN4slay6engine6actors5actor9flipbooks8flipbookC2ERS0_RS2_St16initializer_listIyE
	.section .rdata,"dr"
	.align 8
.LC19:
	.ascii "slay::engine.actors[].flipbooks.flipbook(): Memory allocation failed\12Params: Engine: %p, Actor: %p, TextureIDs(length): %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbookC2ERS0_RS2_PN3neo5arrayIyEE
	.def	_ZN4slay6engine6actors5actor9flipbooks8flipbookC2ERS0_RS2_PN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooks8flipbookC2ERS0_RS2_PN3neo5arrayIyEE
_ZN4slay6engine6actors5actor9flipbooks8flipbookC2ERS0_RS2_PN3neo5arrayIyEE:
.LFB8450:
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
	xorl	%eax, %eax
	pxor	%xmm0, %xmm0
	movq	(%r9), %rsi
	movw	%ax, 16(%rcx)
	movq	%rcx, %rbx
	movq	%rdx, %rbp
	movq	%r8, %r12
	movabsq	$-9151314442833559552, %rax
	movq	%rdx, (%rcx)
	movq	%r9, %rdi
	movq	%r8, 8(%rcx)
	movl	$0, 18(%rcx)
	movq	$0x000000000, 24(%rcx)
	movq	%rax, 32(%rcx)
	movb	$1, 40(%rcx)
	movl	$1, 44(%rcx)
	movq	$0, 48(%rcx)
	movq	$0, 72(%rcx)
	movl	$0, 80(%rcx)
	movq	%rsi, 88(%rcx)
	movups	%xmm0, 56(%rcx)
	leaq	0(,%rsi,8), %rcx
	call	malloc
	movq	%rax, 96(%rbx)
	movq	%rax, %rcx
	testq	%rax, %rax
	je	.L184
	testq	%rsi, %rsi
	je	.L183
	leaq	-1(%rsi), %rax
	movq	8(%rdi), %rdx
	cmpq	$2, %rax
	jbe	.L193
	leaq	8(%rdx), %r8
	xorl	%eax, %eax
	cmpq	%r8, %rcx
	jne	.L200
	.p2align 4,,10
	.p2align 3
.L191:
	movq	(%rdx,%rax,8), %r8
	movq	%r8, (%rcx,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %rsi
	jne	.L191
.L183:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L200:
	movq	%rsi, %r8
	shrq	%r8
	salq	$4, %r8
	.p2align 4,,10
	.p2align 3
.L187:
	movdqu	(%rdx,%rax), %xmm1
	movups	%xmm1, (%rcx,%rax)
	addq	$16, %rax
	cmpq	%rax, %r8
	jne	.L187
	movq	%rsi, %rax
	andq	$-2, %rax
	andl	$1, %esi
	je	.L183
	movq	(%rdx,%rax,8), %rdx
	movq	%rdx, (%rcx,%rax,8)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L193:
	xorl	%eax, %eax
	jmp	.L191
.L184:
	leaq	.LC19(%rip), %rcx
	movq	%rsi, %r9
	movq	%r12, %r8
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1ERS0_RS2_PN3neo5arrayIyEE
	.def	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1ERS0_RS2_PN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.set	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1ERS0_RS2_PN3neo5arrayIyEE,_ZN4slay6engine6actors5actor9flipbooks8flipbookC2ERS0_RS2_PN3neo5arrayIyEE
	.section .rdata,"dr"
	.align 8
.LC20:
	.ascii "slay::engine.actors[].flipbooks.New(): At least two Textures are required\12Params: TextureIDs(length): %lld\12\0"
	.align 8
.LC21:
	.ascii "slay::engine.actors[].flipbooks.New(): Texture does not exists\12Params: TextureIDs(length): %lld\12\0"
	.align 8
.LC22:
	.ascii "slay::engine.actors[].flipbooks.New(): Memory allocation failed\12Params: TextureIDs(length): %lld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB23:
	.text
.LHOTB23:
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks3NewEPN3neo5arrayIyEE
	.def	_ZN4slay6engine6actors5actor9flipbooks3NewEPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooks3NewEPN3neo5arrayIyEE
_ZN4slay6engine6actors5actor9flipbooks3NewEPN3neo5arrayIyEE:
.LFB8441:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	(%rdx), %r8
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	cmpq	$1, %r8
	jbe	.L224
	movq	8(%rdx), %r10
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L205:
	movq	(%r10,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L203
	movq	(%rsi), %rcx
	cmpq	568(%rcx), %rdx
	jnb	.L204
	movq	576(%rcx), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L204
.L203:
	addq	$1, %rax
	cmpq	%rax, %r8
	jne	.L205
	movq	16(%rsi), %rax
	cmpq	$1, %rax
	jbe	.L206
	movq	24(%rsi), %rdx
	movl	$1, %ebx
	jmp	.L210
	.p2align 4,,10
	.p2align 3
.L207:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L206
.L210:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L207
	movl	$104, %ecx
.LEHB5:
	call	_Znwy
.LEHE5:
	movq	(%rsi), %rdx
	movq	8(%rsi), %r8
	movq	%rdi, %r9
	movq	%rax, %rcx
	movq	%rax, %rbp
.LEHB6:
	call	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1ERS0_RS2_PN3neo5arrayIyEE
.LEHE6:
	movq	24(%rsi), %rax
	cmpq	16(%rsi), %rbx
	jnb	.L225
	movq	%rbp, (%rax,%rbx,8)
.L201:
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L206:
	movl	$104, %ecx
.LEHB7:
	call	_Znwy
.LEHE7:
	movq	(%rsi), %rdx
	movq	8(%rsi), %r8
	movq	%rdi, %r9
	movq	%rax, %rcx
	movq	%rax, %rbx
.LEHB8:
	call	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1ERS0_RS2_PN3neo5arrayIyEE
.LEHE8:
	movq	16(%rsi), %rax
	movq	24(%rsi), %rcx
	movq	%rbx, 40(%rsp)
	leaq	1(%rax), %rdx
	movq	%rdx, 16(%rsi)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 24(%rsi)
	testq	%rax, %rax
	je	.L226
	movq	16(%rsi), %rdx
	leaq	40(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
.LEHB9:
	call	_ZN3neo9memCopyToEPKvPvy
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	addq	$-1, %rax
	movq	%rax, %rbx
	jnc	.L227
	cmpq	$0, (%rdx,%rax,8)
	jne	.L201
	movq	(%rdi), %rdx
	leaq	.LC22(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L204:
	leaq	.LC21(%rip), %rcx
	movq	%r8, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L224:
	leaq	.LC20(%rip), %rcx
	movq	%r8, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L225:
	leaq	.LC8(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L226:
	leaq	.LC9(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L227:
	leaq	.LC8(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
.LEHE9:
	movl	$1, %ecx
	call	exit
.L217:
	movq	%rax, %rbx
	jmp	.L215
.L218:
	movq	%rax, %rsi
	jmp	.L216
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8441:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8441-.LLSDACSB8441
.LLSDACSB8441:
	.uleb128 .LEHB5-.LFB8441
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB8441
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L217-.LFB8441
	.uleb128 0
	.uleb128 .LEHB7-.LFB8441
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB8441
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L218-.LFB8441
	.uleb128 0
	.uleb128 .LEHB9-.LFB8441
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE8441:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN4slay6engine6actors5actor9flipbooks3NewEPN3neo5arrayIyEE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooks3NewEPN3neo5arrayIyEE.cold
	.seh_stackalloc	88
	.seh_savereg	%rbx, 56
	.seh_savereg	%rsi, 64
	.seh_savereg	%rdi, 72
	.seh_savereg	%rbp, 80
	.seh_endprologue
_ZN4slay6engine6actors5actor9flipbooks3NewEPN3neo5arrayIyEE.cold:
.L215:
	movq	%rbp, %rcx
	movl	$104, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
.LEHB10:
	call	_Unwind_Resume
.L216:
	movq	%rbx, %rcx
	movl	$104, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
	call	_Unwind_Resume
	nop
.LEHE10:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8441:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8441-.LLSDACSBC8441
.LLSDACSBC8441:
	.uleb128 .LEHB10-.LCOLDB23
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSEC8441:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE23:
	.text
.LHOTE23:
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbookD2Ev
	.def	_ZN4slay6engine6actors5actor9flipbooks8flipbookD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooks8flipbookD2Ev
_ZN4slay6engine6actors5actor9flipbooks8flipbookD2Ev:
.LFB8453:
	.seh_endprologue
	movq	96(%rcx), %rcx
	jmp	free
	.seh_endproc
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbookD1Ev
	.def	_ZN4slay6engine6actors5actor9flipbooks8flipbookD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN4slay6engine6actors5actor9flipbooks8flipbookD1Ev,_ZN4slay6engine6actors5actor9flipbooks8flipbookD2Ev
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbook10GetOffsetXEv
	.def	_ZN4slay6engine6actors5actor9flipbooks8flipbook10GetOffsetXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooks8flipbook10GetOffsetXEv
_ZN4slay6engine6actors5actor9flipbooks8flipbook10GetOffsetXEv:
.LFB8455:
	.seh_endprologue
	movl	48(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbook8GetDelayEv
	.def	_ZN4slay6engine6actors5actor9flipbooks8flipbook8GetDelayEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooks8flipbook8GetDelayEv
_ZN4slay6engine6actors5actor9flipbooks8flipbook8GetDelayEv:
.LFB8456:
	.seh_endprologue
	movl	44(%rcx), %eax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC24:
	.ascii "slay::engine.actors[].flipbooks[].SetDelay(): Delay must not be 0\12Params: Delay: %d\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbook8SetDelayEj
	.def	_ZN4slay6engine6actors5actor9flipbooks8flipbook8SetDelayEj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooks8flipbook8SetDelayEj
_ZN4slay6engine6actors5actor9flipbooks8flipbook8SetDelayEj:
.LFB8457:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	%edx, %eax
	testl	%edx, %edx
	je	.L233
	movl	%edx, 44(%rcx)
	addq	$40, %rsp
	ret
.L233:
	leaq	.LC24(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbook10SetOffsetXEi
	.def	_ZN4slay6engine6actors5actor9flipbooks8flipbook10SetOffsetXEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooks8flipbook10SetOffsetXEi
_ZN4slay6engine6actors5actor9flipbooks8flipbook10SetOffsetXEi:
.LFB8458:
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
	cvtsi2sdl	52(%rcx), %xmm0
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
	movsd	%xmm0, 56(%rbx)
	movsd	160(%rax), %xmm2
	movsd	152(%rax), %xmm1
	movq	(%rbx), %rax
	movsd	%xmm6, 32(%rsp)
	leaq	552(%rax), %rcx
	call	_ZN4slay6engine6vector5AngleEdddd
	movl	%esi, 48(%rbx)
	movl	%esi, %eax
	movsd	%xmm0, 64(%rbx)
	movaps	64(%rsp), %xmm6
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbook10GetOffsetYEv
	.def	_ZN4slay6engine6actors5actor9flipbooks8flipbook10GetOffsetYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooks8flipbook10GetOffsetYEv
_ZN4slay6engine6actors5actor9flipbooks8flipbook10GetOffsetYEv:
.LFB8459:
	.seh_endprologue
	movl	52(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbook10SetOffsetYEi
	.def	_ZN4slay6engine6actors5actor9flipbooks8flipbook10SetOffsetYEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooks8flipbook10SetOffsetYEi
_ZN4slay6engine6actors5actor9flipbooks8flipbook10SetOffsetYEi:
.LFB8460:
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
	cvtsi2sdl	48(%rcx), %xmm0
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
	movsd	%xmm0, 56(%rbx)
	movsd	160(%rax), %xmm2
	movsd	152(%rax), %xmm1
	movq	(%rbx), %rax
	movsd	%xmm6, 32(%rsp)
	leaq	552(%rax), %rcx
	call	_ZN4slay6engine6vector5AngleEdddd
	movl	%esi, 52(%rbx)
	movl	%esi, %eax
	movsd	%xmm0, 64(%rbx)
	movaps	64(%rsp), %xmm6
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbook5ResetEv
	.def	_ZN4slay6engine6actors5actor9flipbooks8flipbook5ResetEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooks8flipbook5ResetEv
_ZN4slay6engine6actors5actor9flipbooks8flipbook5ResetEv:
.LFB8461:
	.seh_endprologue
	xorl	%eax, %eax
	movq	$0, 72(%rcx)
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo9memCopyToEPKvPvy;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6vector6LengthEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6vector5AngleEdddd;	.scl	2;	.type	32;	.endef
