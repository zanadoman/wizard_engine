	.file	"WZEFlipbook(s).cpp"
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
	.def	_ZN3neo5arrayIPN3wze6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo5arrayIPN3wze6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0
_ZN3neo5arrayIPN3wze6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0:
.LFB6950:
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
	.globl	_ZN3wze6engine6actors5actor9flipbooksC2EPS0_PS2_
	.def	_ZN3wze6engine6actors5actor9flipbooksC2EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooksC2EPS0_PS2_
_ZN3wze6engine6actors5actor9flipbooksC2EPS0_PS2_:
.LFB6896:
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
	.globl	_ZN3wze6engine6actors5actor9flipbooksC1EPS0_PS2_
	.def	_ZN3wze6engine6actors5actor9flipbooksC1EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor9flipbooksC1EPS0_PS2_,_ZN3wze6engine6actors5actor9flipbooksC2EPS0_PS2_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooksD2Ev
	.def	_ZN3wze6engine6actors5actor9flipbooksD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooksD2Ev
_ZN3wze6engine6actors5actor9flipbooksD2Ev:
.LFB6899:
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
	testq	%rcx, %rcx
	je	.L36
	call	_ZdaPv
.L36:
	movq	%rsi, %rcx
	movl	$120, %edx
	call	_ZdlPvy
	movq	16(%rdi), %rax
	movq	24(%rdi), %rcx
.L35:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L37
.L34:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	free
	.seh_endproc
	.globl	_ZN3wze6engine6actors5actor9flipbooksD1Ev
	.def	_ZN3wze6engine6actors5actor9flipbooksD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor9flipbooksD1Ev,_ZN3wze6engine6actors5actor9flipbooksD2Ev
	.section .rdata,"dr"
	.align 8
.LC4:
	.ascii "wze::engine.actors[].flipbooks.New(): Delay must not be 0\12Params: Delay: %d, TextureIDs(length): %ld\12\0"
	.align 8
.LC5:
	.ascii "wze::engine.actors[].flipbooks.New(): At least two Textures are required\12Params: Delay: %d, TextureIDs(length): %ld\12\0"
	.align 8
.LC6:
	.ascii "wze::engine.actors[].flipbooks.New(): Texture does not exist\12Params: Delay: %d, TextureIDs(length): %ld\12\0"
	.align 8
.LC9:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.align 8
.LC10:
	.ascii "neo::array+=: Memory allocation failed\12Params: Elements(type, length): %ld, %ld\12\0"
	.align 8
.LC11:
	.ascii "wze::engine.actors[].flipbooks.New(): Memory allocation failed\12Params: TextureIDs(length): %ld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB13:
	.text
.LHOTB13:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE
	.def	_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE
_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE:
.LFB6901:
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
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	(%r8), %rdi
	movq	8(%r8), %rsi
	movq	%rcx, %rbp
	movl	%edx, %r13d
	testl	%edx, %edx
	je	.L79
	cmpq	$1, %rsi
	jbe	.L80
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L47:
	movq	(%rdi,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L48
	movq	0(%rbp), %rcx
	cmpq	352(%rcx), %rdx
	jnb	.L49
	movq	360(%rcx), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L49
.L48:
	addq	$1, %rax
	cmpq	%rax, %rsi
	jne	.L47
	movq	16(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L50
	movq	24(%rbp), %rdx
	movl	$1, %ebx
	jmp	.L56
	.p2align 4,,10
	.p2align 3
.L51:
	addq	$1, %rbx
	cmpq	%rbx, %rax
	je	.L50
.L56:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L51
	movl	$120, %ecx
.LEHB0:
	call	_Znwy
.LEHE0:
	movdqu	0(%rbp), %xmm3
	pxor	%xmm0, %xmm0
	movabsq	$283124260995072, %rcx
	movq	%rax, %r12
	movq	8(%rbp), %rax
	movl	$-1, 20(%r12)
	movl	256(%rax), %edx
	movupd	224(%rax), %xmm4
	movq	%rsi, %rax
	movq	$0x000000000, 24(%r12)
	shrq	$60, %rax
	movq	%rcx, 32(%r12)
	movl	%edx, 16(%r12)
	movq	%rbx, 40(%r12)
	movl	%r13d, 80(%r12)
	movq	$0, 88(%r12)
	movl	$0, 96(%r12)
	movq	%rsi, 104(%r12)
	movups	%xmm3, (%r12)
	movups	%xmm4, 48(%r12)
	movups	%xmm0, 64(%r12)
	jne	.L52
	salq	$3, %rsi
	movq	%rsi, %rcx
.LEHB1:
	call	_Znay
.LEHE1:
	movq	%rax, 112(%r12)
	movq	%rax, %rcx
	movq	%rsi, %r8
	movq	%rdi, %rdx
	call	memcpy
	movq	24(%rbp), %rax
	cmpq	16(%rbp), %rbx
	jnb	.L81
	movq	%r12, (%rax,%rbx,8)
	movq	%r12, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
	.p2align 3
.L50:
	movl	$120, %ecx
.LEHB2:
	call	_Znwy
.LEHE2:
	movq	16(%rbp), %rdx
	movdqu	0(%rbp), %xmm1
	pxor	%xmm0, %xmm0
	movq	%rax, %rbx
	movq	8(%rbp), %rax
	movl	$-1, 20(%rbx)
	movl	256(%rax), %ecx
	movupd	224(%rax), %xmm2
	movq	%rsi, %rax
	movq	%rdx, 40(%rbx)
	shrq	$60, %rax
	movq	$0x000000000, 24(%rbx)
	movl	%ecx, 16(%rbx)
	movabsq	$283124260995072, %rcx
	movq	%rcx, 32(%rbx)
	movl	%r13d, 80(%rbx)
	movq	$0, 88(%rbx)
	movl	$0, 96(%rbx)
	movq	%rsi, 104(%rbx)
	movups	%xmm1, (%rbx)
	movups	%xmm2, 48(%rbx)
	movups	%xmm0, 64(%rbx)
	jne	.L57
	leaq	0(,%rsi,8), %r12
	movq	%r12, %rcx
.LEHB3:
	call	_Znay
.LEHE3:
	movq	%rax, 112(%rbx)
	movq	%rax, %rcx
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
	je	.L82
	movq	16(%rbp), %rdx
	leaq	40(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
.LEHB4:
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	leaq	-1(%rax), %rcx
	testq	%rax, %rax
	je	.L83
	movq	(%rdx,%rcx,8), %r12
	testq	%r12, %r12
	je	.L84
	movq	%r12, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L49:
	leaq	.LC6(%rip), %rcx
	movq	%rsi, %r8
	movl	%r13d, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L80:
	leaq	.LC5(%rip), %rcx
	movq	%rsi, %r8
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L79:
	leaq	.LC4(%rip), %rcx
	movq	%rsi, %r8
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L84:
	leaq	.LC11(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L83:
	leaq	.LC9(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L82:
	leaq	.LC10(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L81:
	leaq	.LC9(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
.LEHE4:
	movl	$1, %ecx
	call	exit
	nop
.L75:
	jmp	.L76
.L73:
	jmp	.L74
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6901:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6901-.LLSDACSB6901
.LLSDACSB6901:
	.uleb128 .LEHB0-.LFB6901
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB6901
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L73-.LFB6901
	.uleb128 0
	.uleb128 .LEHB2-.LFB6901
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB6901
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L75-.LFB6901
	.uleb128 0
	.uleb128 .LEHB4-.LFB6901
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE6901:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE.cold
	.seh_stackalloc	104
	.seh_savereg	%rbx, 56
	.seh_savereg	%rsi, 64
	.seh_savereg	%rdi, 72
	.seh_savereg	%rbp, 80
	.seh_savereg	%r12, 88
	.seh_savereg	%r13, 96
	.seh_endprologue
_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE.cold:
.L57:
.LEHB5:
	call	__cxa_throw_bad_array_new_length
.LEHE5:
.L52:
.LEHB6:
	call	__cxa_throw_bad_array_new_length
.LEHE6:
.L67:
.L76:
	movq	%rax, %rsi
	movq	%rbx, %rcx
	movl	$120, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB7:
	call	_Unwind_Resume
.L66:
.L74:
	movq	%rax, %rbx
	movq	%r12, %rcx
	movl	$120, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
	nop
.LEHE7:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC6901:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6901-.LLSDACSBC6901
.LLSDACSBC6901:
	.uleb128 .LEHB5-.LCOLDB13
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L67-.LCOLDB13
	.uleb128 0
	.uleb128 .LEHB6-.LCOLDB13
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L66-.LCOLDB13
	.uleb128 0
	.uleb128 .LEHB7-.LCOLDB13
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSEC6901:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE13:
	.text
.LHOTE13:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks6DeleteEy
	.def	_ZN3wze6engine6actors5actor9flipbooks6DeleteEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks6DeleteEy
_ZN3wze6engine6actors5actor9flipbooks6DeleteEy:
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
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	cmpq	16(%rcx), %rdx
	jb	.L108
.L87:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L108:
	movq	24(%rcx), %rax
	movq	(%rax,%rdx,8), %rdi
	testq	%rdi, %rdi
	je	.L87
	movq	112(%rdi), %rcx
	testq	%rcx, %rcx
	je	.L89
	call	_ZdaPv
.L89:
	movq	%rdi, %rcx
	movl	$120, %edx
	call	_ZdlPvy
	movq	16(%rbx), %rax
	movq	24(%rbx), %rcx
	cmpq	%rax, %rsi
	jnb	.L109
	movq	$0, (%rcx,%rsi,8)
	cmpq	$0, -8(%rcx,%rax,8)
	leaq	-1(%rax), %r8
	jne	.L87
	cmpq	$1, %rax
	je	.L87
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L94:
	movq	%rdx, %r9
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L110
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L111
	cmpq	$1, %rdx
	jne	.L94
.L93:
	leaq	16(%rbx), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L111:
	subq	%r9, %rax
	movq	%r9, %rdx
	movq	%rax, %r8
	jmp	.L93
.L110:
	leaq	.LC9(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L109:
	leaq	.LC9(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE
	.def	_ZN3wze6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE
_ZN3wze6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE:
.LFB6906:
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
	jbe	.L113
	movq	24(%rcx), %rcx
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L121:
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L115
.L114:
	cmpq	%rbx, (%rdi,%rax,8)
	je	.L116
	addq	$1, %rax
	cmpq	%rsi, %rax
	jne	.L114
.L115:
	movq	(%rcx,%rbx,8), %rbp
	leaq	0(,%rbx,8), %r13
	testq	%rbp, %rbp
	je	.L118
	movq	112(%rbp), %rcx
	testq	%rcx, %rcx
	je	.L119
	call	_ZdaPv
.L119:
	movl	$120, %edx
	movq	%rbp, %rcx
	call	_ZdlPvy
	movq	16(%r12), %rdx
	movq	24(%r12), %rcx
.L118:
	cmpq	%rdx, %rbx
	jnb	.L142
	movq	$0, (%rcx,%r13)
.L116:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L121
	cmpq	$0, -8(%rcx,%rdx,8)
	leaq	-1(%rdx), %r8
	je	.L143
.L141:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L143:
	movq	%rdx, %r9
	jmp	.L122
	.p2align 4,,10
	.p2align 3
.L127:
	leaq	-1(%r9), %rax
	cmpq	%rdx, %rax
	jnb	.L144
	cmpq	$0, (%rcx,%rax,8)
	jne	.L145
	movq	%rax, %r9
.L122:
	cmpq	$1, %r9
	jne	.L127
.L126:
	leaq	16(%r12), %rcx
	movq	%r9, %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L113:
	testq	%rdx, %rdx
	jne	.L141
	leaq	.LC9(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L145:
	subq	%r9, %rdx
	movq	%rdx, %r8
	jmp	.L126
.L144:
	leaq	.LC9(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L142:
	leaq	.LC9(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC14:
	.ascii "wze::engine.actors[].flipbooks.Purge(): KeepFlipbookIDs must not be NULL\12Params: KeepFlipbookIDs: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE
	.def	_ZN3wze6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE
_ZN3wze6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE:
.LFB6907:
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
	je	.L147
	movq	16(%rcx), %rcx
	cmpq	$1, %rcx
	jbe	.L180
	movq	24(%rbp), %r9
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L157:
	movq	(%rsi), %rdx
	movq	8(%rsi), %r8
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.L150
.L151:
	cmpq	(%r8,%rax,8), %rbx
	je	.L152
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L151
	.p2align 4,,10
	.p2align 3
.L150:
	movq	(%r9,%rbx,8), %rdi
	leaq	0(,%rbx,8), %r12
	testq	%rdi, %rdi
	je	.L154
	movq	112(%rdi), %rcx
	testq	%rcx, %rcx
	je	.L155
	call	_ZdaPv
.L155:
	movq	%rdi, %rcx
	movl	$120, %edx
	call	_ZdlPvy
	movq	16(%rbp), %rcx
	movq	24(%rbp), %r9
.L154:
	cmpq	%rcx, %rbx
	jnb	.L181
	movq	$0, (%r9,%r12)
.L152:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jb	.L157
	cmpq	$0, -8(%r9,%rcx,8)
	leaq	-1(%rcx), %r8
	je	.L182
.L179:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L182:
	movq	%rcx, %rax
	jmp	.L158
	.p2align 4,,10
	.p2align 3
.L163:
	leaq	-1(%rax), %rdx
	cmpq	%rcx, %rdx
	jnb	.L183
	cmpq	$0, (%r9,%rdx,8)
	jne	.L184
	movq	%rdx, %rax
.L158:
	cmpq	$1, %rax
	jne	.L163
.L162:
	movq	%rax, %rdx
	leaq	16(%rbp), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L180:
	testq	%rcx, %rcx
	jne	.L179
	leaq	.LC9(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L184:
	subq	%rax, %rcx
	movq	%rcx, %r8
	jmp	.L162
.L183:
	leaq	.LC9(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L147:
	leaq	.LC14(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L181:
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
	.ascii "wze::engine.actors[].flipbooks[]: Illegal access to NULL Flipbook\12Params: FlipbookID: %lld\12\0"
	.align 8
.LC16:
	.ascii "wze::engine.actors[].flipbooks[]: Flipbook does not exist\12Params: FlipbookID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooksixEy
	.def	_ZN3wze6engine6actors5actor9flipbooksixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooksixEy
_ZN3wze6engine6actors5actor9flipbooksixEy:
.LFB6908:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testq	%rdx, %rdx
	je	.L189
	cmpq	16(%rcx), %rdx
	jnb	.L187
	movq	24(%rcx), %rax
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L187
	addq	$40, %rsp
	ret
.L187:
	leaq	.LC16(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L189:
	leaq	.LC15(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB17:
	.text
.LHOTB17:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE
_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE:
.LFB6910:
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
	pxor	%xmm0, %xmm0
	movupd	224(%r8), %xmm1
	movq	120(%rsp), %rax
	movq	8(%rax), %rsi
	movq	(%rax), %rbp
	movl	256(%r8), %eax
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	movl	%eax, 16(%rcx)
	movabsq	$283124260995072, %rax
	movq	%rax, 32(%rcx)
	movl	112(%rsp), %eax
	movq	%r8, 8(%rcx)
	movl	%eax, 80(%rcx)
	movq	%rsi, %rax
	shrq	$60, %rax
	movl	$-1, 20(%rcx)
	movq	$0x000000000, 24(%rcx)
	movq	%r9, 40(%rcx)
	movq	$0, 88(%rcx)
	movl	$0, 96(%rcx)
	movq	%rsi, 104(%rcx)
	movups	%xmm1, 48(%rcx)
	movups	%xmm0, 64(%rcx)
	jne	.L191
	leaq	0(,%rsi,8), %rdi
	movq	%rdi, %rcx
	call	_Znay
	movq	%rax, 112(%rbx)
	movq	%rax, %rcx
	testq	%rsi, %rsi
	je	.L195
	movq	%rdi, %r8
	movq	%rbp, %rdx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	jmp	memcpy
	.p2align 4,,10
	.p2align 3
.L195:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE.cold
	.seh_stackalloc	72
	.seh_savereg	%rbx, 40
	.seh_savereg	%rsi, 48
	.seh_savereg	%rdi, 56
	.seh_savereg	%rbp, 64
	.seh_endprologue
_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE.cold:
.L191:
	call	__cxa_throw_bad_array_new_length
	nop
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE17:
	.text
.LHOTE17:
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_yjSt16initializer_listIyE
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_yjSt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_yjSt16initializer_listIyE,_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB18:
	.text
.LHOTB18:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE
_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE:
.LFB6913:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	256(%r8), %eax
	movq	104(%rsp), %rsi
	movupd	224(%r8), %xmm0
	movl	%eax, 16(%rcx)
	movq	%rcx, %rbx
	movabsq	$283124260995072, %rax
	movq	%rax, 32(%rcx)
	movl	96(%rsp), %eax
	movups	%xmm0, 48(%rcx)
	pxor	%xmm0, %xmm0
	movl	%eax, 80(%rcx)
	movq	%rdx, (%rcx)
	movq	%r8, 8(%rcx)
	movl	$-1, 20(%rcx)
	movq	$0x000000000, 24(%rcx)
	movq	%r9, 40(%rcx)
	movq	$0, 88(%rcx)
	movl	$0, 96(%rcx)
	movups	%xmm0, 64(%rcx)
	movq	(%rsi), %rcx
	movq	%rcx, %rax
	movq	%rcx, 104(%rbx)
	shrq	$60, %rax
	jne	.L197
	salq	$3, %rcx
	call	_Znay
	movq	(%rsi), %r9
	movq	%rax, 112(%rbx)
	testq	%r9, %r9
	je	.L196
	leaq	-1(%r9), %rdx
	movq	8(%rsi), %rcx
	cmpq	$2, %rdx
	jbe	.L206
	leaq	8(%rcx), %r8
	xorl	%edx, %edx
	cmpq	%r8, %rax
	jne	.L213
	.p2align 4,,10
	.p2align 3
.L204:
	movq	(%rcx,%rdx,8), %r8
	movq	%r8, (%rax,%rdx,8)
	addq	$1, %rdx
	cmpq	%rdx, %r9
	jne	.L204
.L196:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L213:
	movq	%r9, %r8
	shrq	%r8
	salq	$4, %r8
	.p2align 4,,10
	.p2align 3
.L200:
	movdqu	(%rcx,%rdx), %xmm1
	movups	%xmm1, (%rax,%rdx)
	addq	$16, %rdx
	cmpq	%rdx, %r8
	jne	.L200
	movq	%r9, %rdx
	andq	$-2, %rdx
	andl	$1, %r9d
	je	.L196
	movq	(%rcx,%rdx,8), %rcx
	movq	%rcx, (%rax,%rdx,8)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L206:
	xorl	%edx, %edx
	jmp	.L204
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE.cold
	.seh_stackalloc	56
	.seh_savereg	%rbx, 40
	.seh_savereg	%rsi, 48
	.seh_endprologue
_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE.cold:
.L197:
	call	__cxa_throw_bad_array_new_length
	nop
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE18:
	.text
.LHOTE18:
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_yjPN3neo5arrayIyEE
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_yjPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_yjPN3neo5arrayIyEE,_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE
	.section .rdata,"dr"
	.align 8
.LC19:
	.ascii "wze::engine.actors[].flipbooks.New(): Delay must not be 0\12Params: Delay: %d, TextureIDs: %p\12\0"
	.align 8
.LC20:
	.ascii "wze::engine.actors[].flipbooks.New(): TextureIDs must not be NULL\12Params: Delay: %d, TextureIDs: %p\12\0"
	.align 8
.LC21:
	.ascii "wze::engine.actors[].flipbooks.New(): At least two Textures are required\12Params: Delay: %d, TextureIDs: %p\12\0"
	.align 8
.LC22:
	.ascii "wze::engine.actors[].flipbooks.New(): Texture does not exist\12Params: Delay: %d, TextureIDs: %p\12\0"
	.align 8
.LC23:
	.ascii "wze::engine.actors[].flipbooks.New(): Memory allocation failed\12Params: Delay: %d, TextureIDs: %p\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB24:
	.text
.LHOTB24:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE
	.def	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE
_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE:
.LFB6904:
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
	movl	%edx, %ebp
	movq	%r8, %rdi
	testl	%edx, %edx
	je	.L239
	testq	%r8, %r8
	je	.L240
	movq	(%r8), %rcx
	cmpq	$1, %rcx
	jbe	.L241
	movq	8(%r8), %r9
	xorl	%eax, %eax
	jmp	.L220
	.p2align 4,,10
	.p2align 3
.L218:
	addq	$1, %rax
	cmpq	%rax, %rcx
	je	.L242
.L220:
	movq	(%r9,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L218
	movq	(%rsi), %r8
	cmpq	352(%r8), %rdx
	jnb	.L219
	movq	360(%r8), %r8
	cmpq	$0, (%r8,%rdx,8)
	jne	.L218
.L219:
	leaq	.LC22(%rip), %rcx
	movq	%rdi, %r8
	movl	%ebp, %edx
.LEHB8:
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L242:
	movq	16(%rsi), %rax
	cmpq	$1, %rax
	jbe	.L221
	movq	24(%rsi), %rdx
	movl	$1, %ebx
	jmp	.L225
	.p2align 4,,10
	.p2align 3
.L222:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L221
.L225:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L222
	movl	$120, %ecx
	call	_Znwy
.LEHE8:
	movq	(%rsi), %rdx
	movq	%rdi, 40(%rsp)
	movq	%rbx, %r9
	movl	%ebp, 32(%rsp)
	movq	8(%rsi), %r8
	movq	%rax, %rcx
	movq	%rax, %r12
.LEHB9:
	call	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_yjPN3neo5arrayIyEE
.LEHE9:
	movq	24(%rsi), %rax
	cmpq	16(%rsi), %rbx
	jnb	.L243
	movq	%r12, (%rax,%rbx,8)
.L214:
	movq	%r12, %rax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L221:
	movl	$120, %ecx
.LEHB10:
	call	_Znwy
.LEHE10:
	movq	(%rsi), %rdx
	movq	%rdi, 40(%rsp)
	movl	%ebp, 32(%rsp)
	movq	16(%rsi), %r9
	movq	%rax, %rcx
	movq	%rax, %rbx
	movq	8(%rsi), %r8
.LEHB11:
	call	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_yjPN3neo5arrayIyEE
.LEHE11:
	movq	16(%rsi), %rax
	movq	24(%rsi), %rcx
	movq	%rbx, 56(%rsp)
	leaq	1(%rax), %rdx
	movq	%rdx, 16(%rsi)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 24(%rsi)
	testq	%rax, %rax
	je	.L244
	movq	16(%rsi), %rdx
	leaq	56(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
.LEHB12:
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	leaq	-1(%rax), %rcx
	testq	%rax, %rax
	je	.L245
	movq	(%rdx,%rcx,8), %r12
	testq	%r12, %r12
	jne	.L214
	leaq	.LC23(%rip), %rcx
	movq	%rdi, %r8
	movl	%ebp, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L244:
	leaq	.LC10(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L245:
	leaq	.LC9(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L241:
	leaq	.LC21(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L240:
	leaq	.LC20(%rip), %rcx
	xorl	%r8d, %r8d
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L239:
	leaq	.LC19(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L243:
	leaq	.LC9(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
.LEHE12:
	movl	$1, %ecx
	call	exit
.L233:
	movq	%rax, %rsi
	jmp	.L231
.L232:
	movq	%rax, %rbx
	jmp	.L230
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6904:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6904-.LLSDACSB6904
.LLSDACSB6904:
	.uleb128 .LEHB8-.LFB6904
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB6904
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L232-.LFB6904
	.uleb128 0
	.uleb128 .LEHB10-.LFB6904
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB6904
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L233-.LFB6904
	.uleb128 0
	.uleb128 .LEHB12-.LFB6904
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE6904:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE.cold
	.seh_stackalloc	104
	.seh_savereg	%rbx, 64
	.seh_savereg	%rsi, 72
	.seh_savereg	%rdi, 80
	.seh_savereg	%rbp, 88
	.seh_savereg	%r12, 96
	.seh_endprologue
_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE.cold:
.L231:
	movq	%rbx, %rcx
	movl	$120, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB13:
	call	_Unwind_Resume
.L230:
	movq	%r12, %rcx
	movl	$120, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
	nop
.LEHE13:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC6904:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6904-.LLSDACSBC6904
.LLSDACSBC6904:
	.uleb128 .LEHB13-.LCOLDB24
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSEC6904:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE24:
	.text
.LHOTE24:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbookD2Ev
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbookD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbookD2Ev
_ZN3wze6engine6actors5actor9flipbooks8flipbookD2Ev:
.LFB6916:
	.seh_endprologue
	movq	112(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L246
	jmp	_ZdaPv
	.p2align 4,,10
	.p2align 3
.L246:
	ret
	.seh_endproc
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbookD1Ev
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbookD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor9flipbooks8flipbookD1Ev,_ZN3wze6engine6actors5actor9flipbooks8flipbookD2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook5GetIDEv
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbook5GetIDEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbook5GetIDEv
_ZN3wze6engine6actors5actor9flipbooks8flipbook5GetIDEv:
.LFB6918:
	.seh_endprologue
	movq	40(%rcx), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetXEv
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetXEv
_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetXEv:
.LFB6919:
	.seh_endprologue
	movsd	48(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC25:
	.ascii "wze::engine.actors[].flipbooks[].SetX(): X must not be NaN\12Params: X: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetXEd
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetXEd
_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetXEd:
.LFB6920:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movq	%rcx, %rbx
	movapd	%xmm1, %xmm6
	jp	.L267
	movq	8(%rcx), %rax
	movsd	56(%rcx), %xmm3
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	ucomisd	%xmm6, %xmm0
	jp	.L253
	jne	.L253
	ucomisd	%xmm3, %xmm1
	jp	.L253
	jne	.L253
	movq	$0x000000000, 64(%rcx)
.L261:
	pxor	%xmm0, %xmm0
	jmp	.L260
	.p2align 4,,10
	.p2align 3
.L253:
	movapd	%xmm6, %xmm2
	call	_ZN3wze6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movsd	56(%rbx), %xmm3
	movapd	%xmm0, %xmm2
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	movsd	%xmm2, 64(%rbx)
	ucomisd	%xmm0, %xmm6
	jp	.L257
	jne	.L257
	ucomisd	%xmm3, %xmm1
	jp	.L257
	je	.L261
.L257:
	movapd	%xmm6, %xmm2
	call	_ZN3wze6engine6vector5AngleEdddd
.L260:
	movsd	%xmm0, 72(%rbx)
	movapd	%xmm6, %xmm0
	movsd	%xmm6, 48(%rbx)
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	ret
.L267:
	leaq	.LC25(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetYEv
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetYEv
_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetYEv:
.LFB6921:
	.seh_endprologue
	movsd	56(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC26:
	.ascii "wze::engine.actors[].flipbooks[].SetY(): Y must not be NaN\12Params: Y: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd
_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd:
.LFB6922:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movq	%rcx, %rbx
	movapd	%xmm1, %xmm6
	jp	.L286
	movq	8(%rcx), %rax
	movsd	48(%rcx), %xmm2
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	ucomisd	%xmm2, %xmm0
	jp	.L272
	jne	.L272
	ucomisd	%xmm1, %xmm6
	jp	.L272
	jne	.L272
	movq	$0x000000000, 64(%rcx)
.L280:
	pxor	%xmm0, %xmm0
	jmp	.L279
	.p2align 4,,10
	.p2align 3
.L272:
	movapd	%xmm6, %xmm3
	call	_ZN3wze6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movsd	48(%rbx), %xmm2
	movapd	%xmm0, %xmm3
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	movsd	%xmm3, 64(%rbx)
	ucomisd	%xmm2, %xmm0
	jp	.L276
	jne	.L276
	ucomisd	%xmm1, %xmm6
	jp	.L276
	je	.L280
.L276:
	movapd	%xmm6, %xmm3
	call	_ZN3wze6engine6vector5AngleEdddd
.L279:
	movsd	%xmm0, 72(%rbx)
	movapd	%xmm6, %xmm0
	movsd	%xmm6, 56(%rbx)
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	ret
.L286:
	leaq	.LC26(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetOffsetLengthEv
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetOffsetLengthEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetOffsetLengthEv
_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetOffsetLengthEv:
.LFB6923:
	.seh_endprologue
	movsd	64(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC27:
	.ascii "wze::engine.actors[].flipbooks[].SetOffsetLength(): OffsetLength must not be NaN\12Params: OffsetLength: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook15SetOffsetLengthEd
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbook15SetOffsetLengthEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbook15SetOffsetLengthEd
_ZN3wze6engine6actors5actor9flipbooks8flipbook15SetOffsetLengthEd:
.LFB6924:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movq	%rcx, %rbx
	movapd	%xmm1, %xmm6
	jp	.L293
	movq	8(%rcx), %rax
	movsd	72(%rcx), %xmm2
	movsd	224(%rax), %xmm0
	call	_ZN3wze6engine6vector9TerminalXEddd
	movq	8(%rbx), %rax
	movsd	72(%rbx), %xmm2
	movapd	%xmm6, %xmm1
	movsd	%xmm0, 48(%rbx)
	movsd	232(%rax), %xmm0
	call	_ZN3wze6engine6vector9TerminalYEddd
	unpcklpd	%xmm6, %xmm0
	movups	%xmm0, 56(%rbx)
	movapd	%xmm6, %xmm0
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	ret
.L293:
	leaq	.LC27(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook14GetOffsetAngleEv
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbook14GetOffsetAngleEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbook14GetOffsetAngleEv
_ZN3wze6engine6actors5actor9flipbooks8flipbook14GetOffsetAngleEv:
.LFB6925:
	.seh_endprologue
	movsd	72(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC28:
	.ascii "wze::engine.actors[].flipbooks[].SetOffsetAngle(): OffsetAngle must not be NaN\12Params: OffsetAngle %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook14SetOffsetAngleEd
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbook14SetOffsetAngleEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbook14SetOffsetAngleEd
_ZN3wze6engine6actors5actor9flipbooks8flipbook14SetOffsetAngleEd:
.LFB6926:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movq	%rcx, %rbx
	movapd	%xmm1, %xmm6
	jp	.L300
	movq	8(%rcx), %rax
	movapd	%xmm1, %xmm2
	movsd	64(%rcx), %xmm1
	movsd	224(%rax), %xmm0
	call	_ZN3wze6engine6vector9TerminalXEddd
	movq	8(%rbx), %rax
	movsd	64(%rbx), %xmm1
	movapd	%xmm6, %xmm2
	movsd	%xmm0, 48(%rbx)
	movsd	232(%rax), %xmm0
	call	_ZN3wze6engine6vector9TerminalYEddd
	movsd	%xmm6, 72(%rbx)
	movsd	%xmm0, 56(%rbx)
	movapd	%xmm6, %xmm0
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	ret
.L300:
	leaq	.LC28(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook8GetDelayEv
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbook8GetDelayEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbook8GetDelayEv
_ZN3wze6engine6actors5actor9flipbooks8flipbook8GetDelayEv:
.LFB6927:
	.seh_endprologue
	movl	80(%rcx), %eax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC29:
	.ascii "wze::engine.actors[].flipbooks[].SetDelay(): Delay must not be 0\12Params: Delay: %d\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook8SetDelayEj
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbook8SetDelayEj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbook8SetDelayEj
_ZN3wze6engine6actors5actor9flipbooks8flipbook8SetDelayEj:
.LFB6928:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	%edx, %eax
	testl	%edx, %edx
	je	.L304
	movl	%edx, 80(%rcx)
	addq	$40, %rsp
	ret
.L304:
	leaq	.LC29(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook9IsPlayingEv
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbook9IsPlayingEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbook9IsPlayingEv
_ZN3wze6engine6actors5actor9flipbooks8flipbook9IsPlayingEv:
.LFB6929:
	.seh_endprologue
	xorl	%eax, %eax
	cmpb	$0, 39(%rcx)
	jne	.L305
	movzbl	38(%rcx), %eax
	testb	%al, %al
	je	.L308
.L305:
	ret
	.p2align 4,,10
	.p2align 3
.L308:
	movq	104(%rcx), %rax
	subq	$1, %rax
	cmpq	88(%rcx), %rax
	setne	%al
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetCurrentFrameEv
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetCurrentFrameEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetCurrentFrameEv
_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetCurrentFrameEv:
.LFB6930:
	.seh_endprologue
	movq	88(%rcx), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook5ResetEv
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbook5ResetEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbook5ResetEv
_ZN3wze6engine6actors5actor9flipbooks8flipbook5ResetEv:
.LFB6931:
	.seh_endprologue
	xorl	%eax, %eax
	movq	$0, 88(%rcx)
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6memory6CopyToEPKvPvy;	.scl	2;	.type	32;	.endef
	.def	_ZdaPv;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_Znay;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	__cxa_throw_bad_array_new_length;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector6LengthEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector5AngleEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector9TerminalXEddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector9TerminalYEddd;	.scl	2;	.type	32;	.endef
