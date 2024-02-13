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
	.def	_ZN3neo5arrayIPN3wze6engine6actors5actor9textboxes7textboxEE6RemoveEyy.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo5arrayIPN3wze6engine6actors5actor9textboxes7textboxEE6RemoveEyy.isra.0
_ZN3neo5arrayIPN3wze6engine6actors5actor9textboxes7textboxEE6RemoveEyy.isra.0:
.LFB8647:
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
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.align 8
.LC4:
	.ascii "wze::engine.actors[].textboxes[].UpdateTexture(): TTF_RenderUTF8_Blended failed\12\0"
	.align 8
.LC5:
	.ascii "wze::engine.actors[].textboxes[].UpdateTexture(): SDL_CreateTextureFromSurface failed\12\0"
	.text
	.align 2
	.p2align 4
	.def	_ZN3wze6engine6actors5actor9textboxes7textbox13UpdateTextureEv.part.0.constprop.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9textboxes7textbox13UpdateTextureEv.part.0.constprop.0
_ZN3wze6engine6actors5actor9textboxes7textbox13UpdateTextureEv.part.0.constprop.0:
.LFB8648:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	leaq	96(%rcx), %rsi
	movq	%rcx, %rbx
	movq	%rsi, %rcx
	call	_ZN3neo6string6LengthEv
	cmpq	$1, %rax
	jbe	.L30
	movq	112(%rbx), %rdx
	testq	%rdx, %rdx
	je	.L30
	movl	120(%rbx), %eax
	testl	%eax, %eax
	jne	.L49
.L34:
	movq	%rsi, %rcx
	call	_ZN3neo6stringclEv
	movq	(%rbx), %rcx
	movq	%rax, %rdx
	movq	112(%rbx), %rax
	movq	368(%rcx), %r8
	cmpq	360(%rcx), %rax
	jnb	.L50
	movq	(%r8,%rax,8), %rcx
	movl	$-1, %r8d
	call	TTF_RenderUTF8_Blended
	movq	%rax, %rsi
	testq	%rax, %rax
	je	.L51
	movq	(%rbx), %rax
	movq	%rsi, %rdx
	movq	16(%rax), %rcx
	call	SDL_CreateTextureFromSurface
	movq	%rax, 128(%rbx)
	testq	%rax, %rax
	je	.L52
	movq	72(%rbx), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	16(%rsi), %xmm0
	testq	%rax, %rax
	js	.L39
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L40:
	mulsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	20(%rsi), %xmm1
	divsd	%xmm1, %xmm0
	call	round
	movq	%rsi, %rcx
	cvttsd2sil	%xmm0, %eax
	movw	%ax, 64(%rbx)
	call	SDL_FreeSurface
	movl	120(%rbx), %eax
	testl	%eax, %eax
	je	.L30
	movq	(%rbx), %rax
	movq	112(%rbx), %rdx
	movq	368(%rax), %rcx
	cmpq	360(%rax), %rdx
	jnb	.L48
	movq	(%rcx,%rdx,8), %rcx
	xorl	%edx, %edx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	jmp	TTF_SetFontStyle
	.p2align 4,,10
	.p2align 3
.L30:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L39:
	movq	%rax, %rdx
	andl	$1, %eax
	pxor	%xmm1, %xmm1
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L49:
	movq	(%rbx), %rcx
	movq	368(%rcx), %r8
	cmpq	360(%rcx), %rdx
	jnb	.L48
	movq	(%r8,%rdx,8), %rcx
	movl	%eax, %edx
	call	TTF_SetFontStyle
	jmp	.L34
.L50:
	movq	%rax, %rdx
.L48:
	leaq	.LC3(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L51:
	leaq	.LC4(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L52:
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC6:
	.ascii "neo::array(): Memory allocation failed\12Params: Elements(size, length): %ld, %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxesC2EPS0_PS2_
	.def	_ZN3wze6engine6actors5actor9textboxesC2EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9textboxesC2EPS0_PS2_
_ZN3wze6engine6actors5actor9textboxesC2EPS0_PS2_:
.LFB8432:
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
	je	.L55
	leaq	40(%rsp), %rcx
	movl	$8, %r8d
	call	_ZN3neo6memory6CopyToEPKvPvy
	nop
	addq	$48, %rsp
	popq	%rbx
	ret
.L55:
	leaq	.LC6(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.globl	_ZN3wze6engine6actors5actor9textboxesC1EPS0_PS2_
	.def	_ZN3wze6engine6actors5actor9textboxesC1EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor9textboxesC1EPS0_PS2_,_ZN3wze6engine6actors5actor9textboxesC2EPS0_PS2_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxesD2Ev
	.def	_ZN3wze6engine6actors5actor9textboxesD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9textboxesD2Ev
_ZN3wze6engine6actors5actor9textboxesD2Ev:
.LFB8435:
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
	jbe	.L57
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L60:
	movq	(%rcx,%rbx,8), %rsi
	testq	%rsi, %rsi
	je	.L58
	movq	128(%rsi), %rcx
	addq	$1, %rbx
	call	SDL_DestroyTexture
	leaq	96(%rsi), %rcx
	call	_ZN3neo6stringD1Ev
	movq	%rsi, %rcx
	movl	$136, %edx
	call	_ZdlPvy
	movq	16(%rdi), %rax
	movq	24(%rdi), %rcx
	cmpq	%rax, %rbx
	jb	.L60
.L57:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	free
	.p2align 4,,10
	.p2align 3
.L58:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L60
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	free
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8435:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8435-.LLSDACSB8435
.LLSDACSB8435:
.LLSDACSE8435:
	.text
	.seh_endproc
	.globl	_ZN3wze6engine6actors5actor9textboxesD1Ev
	.def	_ZN3wze6engine6actors5actor9textboxesD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor9textboxesD1Ev,_ZN3wze6engine6actors5actor9textboxesD2Ev
	.section .rdata,"dr"
	.align 8
.LC7:
	.ascii "wze::engine.actors[].textboxes.New(): Literal must not be NULL\12Params: Literal: %p, FontID: %lld\12\0"
	.align 8
.LC8:
	.ascii "wze::engine.actors[].textboxes.New(): Font does not exist\12Params: Literal: %s, FontID: %lld\12\0"
	.align 8
.LC12:
	.ascii "neo::array+=: Memory allocation failed\12Params: Elements(type, length): %ld, %ld\12\0"
	.align 8
.LC13:
	.ascii "wze::engine.actors[].textboxes.New(): Memory allocation failed\12Params: Literal: %s, FontID: %lld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB15:
	.text
.LHOTB15:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes3NewEPKcy
	.def	_ZN3wze6engine6actors5actor9textboxes3NewEPKcy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9textboxes3NewEPKcy
_ZN3wze6engine6actors5actor9textboxes3NewEPKcy:
.LFB8437:
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
	movq	%rcx, %rdi
	movq	%rdx, %r12
	movq	%r8, %rbp
	testq	%rdx, %rdx
	je	.L93
	testq	%r8, %r8
	jne	.L63
.L67:
	movq	16(%rdi), %rax
	cmpq	$1, %rax
	jbe	.L65
	movq	24(%rdi), %rdx
	movl	$1, %ebx
	jmp	.L76
	.p2align 4,,10
	.p2align 3
.L68:
	addq	$1, %rbx
	cmpq	%rbx, %rax
	je	.L65
.L76:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L68
	movl	$136, %ecx
.LEHB0:
	call	_Znwy
.LEHE0:
	movdqu	(%rdi), %xmm3
	leaq	96(%rax), %r13
	movq	%rax, %rsi
	movups	%xmm3, (%rax)
	movq	%r13, %rcx
.LEHB1:
	call	_ZN3neo6stringC1Ev
.LEHE1:
	movq	8(%rsi), %rax
	movl	$384, %r9d
	xorl	%r10d, %r10d
	movq	%r13, %rcx
	movl	$-1, 16(%rsi)
	pxor	%xmm0, %xmm0
	leaq	32(%rsp), %rdx
	movw	%r9w, 36(%rsi)
	movq	$0x000000000, 24(%rsi)
	movupd	224(%rax), %xmm4
	movzwl	258(%rax), %eax
	movl	$16842752, 32(%rsi)
	movq	%rbx, 40(%rsi)
	movq	%rax, 72(%rsi)
	leaq	56(%rsp), %rax
	movw	%r10w, 64(%rsi)
	movups	%xmm4, 48(%rsi)
	movups	%xmm0, 80(%rsi)
	movq	%r12, 56(%rsp)
	movq	%rax, 32(%rsp)
	movq	$1, 40(%rsp)
.LEHB2:
	call	_ZN3neo6stringaSESt16initializer_listIPKcE
	xorl	%r8d, %r8d
	movq	%rbp, 112(%rsi)
	xorl	%ecx, %ecx
	movl	$0, 120(%rsi)
	movq	$0, 128(%rsi)
	movw	%r8w, 64(%rsi)
	call	SDL_DestroyTexture
.LEHE2:
	movq	$0, 128(%rsi)
	cmpq	$0, 72(%rsi)
	jne	.L69
.L72:
	movq	24(%rdi), %rax
	cmpq	16(%rdi), %rbx
	jnb	.L94
	movq	%rsi, (%rax,%rbx,8)
	movq	%rsi, %rax
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
.L65:
	movl	$136, %ecx
.LEHB3:
	call	_Znwy
.LEHE3:
	movdqu	(%rdi), %xmm1
	movq	16(%rdi), %rsi
	leaq	96(%rax), %r13
	movq	%rax, %rbx
	movups	%xmm1, (%rax)
	movq	%r13, %rcx
.LEHB4:
	call	_ZN3neo6stringC1Ev
.LEHE4:
	movq	8(%rbx), %rax
	movl	$384, %edx
	xorl	%ecx, %ecx
	movq	%rsi, 40(%rbx)
	movw	%dx, 36(%rbx)
	pxor	%xmm0, %xmm0
	leaq	56(%rsp), %rsi
	leaq	32(%rsp), %rdx
	movl	$-1, 16(%rbx)
	movq	$0x000000000, 24(%rbx)
	movupd	224(%rax), %xmm2
	movzwl	258(%rax), %eax
	movw	%cx, 64(%rbx)
	movq	%r13, %rcx
	movl	$16842752, 32(%rbx)
	movq	%rax, 72(%rbx)
	movups	%xmm2, 48(%rbx)
	movups	%xmm0, 80(%rbx)
	movq	%r12, 56(%rsp)
	movq	%rsi, 32(%rsp)
	movq	$1, 40(%rsp)
.LEHB5:
	call	_ZN3neo6stringaSESt16initializer_listIPKcE
	xorl	%eax, %eax
	movq	%rbp, 112(%rbx)
	xorl	%ecx, %ecx
	movl	$0, 120(%rbx)
	movq	$0, 128(%rbx)
	movw	%ax, 64(%rbx)
	call	SDL_DestroyTexture
.LEHE5:
	movq	$0, 128(%rbx)
	cmpq	$0, 72(%rbx)
	jne	.L77
.L80:
	movq	16(%rdi), %rax
	movq	24(%rdi), %rcx
	movq	%rbx, 56(%rsp)
	leaq	1(%rax), %rdx
	movq	%rdx, 16(%rdi)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 24(%rdi)
	testq	%rax, %rax
	je	.L95
	movq	16(%rdi), %rdx
	movq	%rsi, %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
.LEHB6:
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	16(%rdi), %rax
	movq	24(%rdi), %rdx
	leaq	-1(%rax), %rcx
	testq	%rax, %rax
	je	.L96
	movq	(%rdx,%rcx,8), %rsi
	testq	%rsi, %rsi
	je	.L97
	movq	%rsi, %rax
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
.L63:
	movq	(%rcx), %rax
	cmpq	360(%rax), %r8
	jnb	.L66
	movq	368(%rax), %rax
	cmpq	$0, (%rax,%r8,8)
	jne	.L67
.L66:
	leaq	.LC8(%rip), %rcx
	movq	%rbp, %r8
	movq	%r12, %rdx
	call	_Z6printfPKcz
.LEHE6:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L77:
	movq	%rbx, %rcx
.LEHB7:
	call	_ZN3wze6engine6actors5actor9textboxes7textbox13UpdateTextureEv.part.0.constprop.0
.LEHE7:
	jmp	.L80
	.p2align 4,,10
	.p2align 3
.L69:
	movq	%rsi, %rcx
.LEHB8:
	call	_ZN3wze6engine6actors5actor9textboxes7textbox13UpdateTextureEv.part.0.constprop.0
.LEHE8:
	jmp	.L72
.L94:
	leaq	.LC3(%rip), %rcx
	movq	%rbx, %rdx
.LEHB9:
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L93:
	leaq	.LC7(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L97:
	leaq	.LC13(%rip), %rcx
	movq	%rbp, %r8
	movq	%r12, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L96:
	leaq	.LC3(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L95:
	leaq	.LC12(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
.LEHE9:
	movl	$1, %ecx
	call	exit
.L87:
	movq	%rax, %rsi
	jmp	.L82
.L88:
	movq	%rax, %rbx
	jmp	.L73
.L89:
	movq	%rax, %rsi
	jmp	.L81
.L86:
	movq	%rax, %rbx
	jmp	.L74
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8437:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8437-.LLSDACSB8437
.LLSDACSB8437:
	.uleb128 .LEHB0-.LFB8437
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8437
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L86-.LFB8437
	.uleb128 0
	.uleb128 .LEHB2-.LFB8437
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L88-.LFB8437
	.uleb128 0
	.uleb128 .LEHB3-.LFB8437
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB8437
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L87-.LFB8437
	.uleb128 0
	.uleb128 .LEHB5-.LFB8437
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L89-.LFB8437
	.uleb128 0
	.uleb128 .LEHB6-.LFB8437
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB8437
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L89-.LFB8437
	.uleb128 0
	.uleb128 .LEHB8-.LFB8437
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L88-.LFB8437
	.uleb128 0
	.uleb128 .LEHB9-.LFB8437
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE8437:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine6actors5actor9textboxes3NewEPKcy.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9textboxes3NewEPKcy.cold
	.seh_stackalloc	120
	.seh_savereg	%rbx, 72
	.seh_savereg	%rsi, 80
	.seh_savereg	%rdi, 88
	.seh_savereg	%rbp, 96
	.seh_savereg	%r12, 104
	.seh_savereg	%r13, 112
	.seh_endprologue
_ZN3wze6engine6actors5actor9textboxes3NewEPKcy.cold:
.L81:
	movq	%r13, %rcx
	call	_ZN3neo6stringD1Ev
.L82:
	movq	%rbx, %rcx
	movl	$136, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB10:
	call	_Unwind_Resume
.L73:
	movq	%r13, %rcx
	call	_ZN3neo6stringD1Ev
.L74:
	movq	%rsi, %rcx
	movl	$136, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
	nop
.LEHE10:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8437:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8437-.LLSDACSBC8437
.LLSDACSBC8437:
	.uleb128 .LEHB10-.LCOLDB15
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSEC8437:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE15:
	.text
.LHOTE15:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes6DeleteEy
	.def	_ZN3wze6engine6actors5actor9textboxes6DeleteEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9textboxes6DeleteEy
_ZN3wze6engine6actors5actor9textboxes6DeleteEy:
.LFB8438:
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
	jb	.L117
.L100:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L117:
	movq	24(%rcx), %rax
	movq	(%rax,%rdx,8), %rdi
	testq	%rdi, %rdi
	je	.L100
	movq	128(%rdi), %rcx
	call	SDL_DestroyTexture
	leaq	96(%rdi), %rcx
	call	_ZN3neo6stringD1Ev
	movq	%rdi, %rcx
	movl	$136, %edx
	call	_ZdlPvy
	movq	16(%rbx), %rax
	movq	24(%rbx), %rcx
	cmpq	%rax, %rsi
	jnb	.L118
	movq	$0, (%rcx,%rsi,8)
	cmpq	$0, -8(%rcx,%rax,8)
	leaq	-1(%rax), %r8
	jne	.L100
	cmpq	$1, %rax
	je	.L100
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L106:
	movq	%rdx, %r9
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L119
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L120
	cmpq	$1, %rdx
	jne	.L106
.L105:
	leaq	16(%rbx), %rcx
.LEHB11:
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor9textboxes7textboxEE6RemoveEyy.isra.0
	jmp	.L100
	.p2align 4,,10
	.p2align 3
.L120:
	subq	%r9, %rax
	movq	%r9, %rdx
	movq	%rax, %r8
	jmp	.L105
.L119:
	leaq	.LC3(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L118:
	leaq	.LC3(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
.LEHE11:
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8438:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8438-.LLSDACSB8438
.LLSDACSB8438:
	.uleb128 .LEHB11-.LFB8438
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE8438:
	.text
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes5PurgeESt16initializer_listIyE
	.def	_ZN3wze6engine6actors5actor9textboxes5PurgeESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9textboxes5PurgeESt16initializer_listIyE
_ZN3wze6engine6actors5actor9textboxes5PurgeESt16initializer_listIyE:
.LFB8439:
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
	jbe	.L122
	movq	24(%rcx), %rcx
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L129:
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L124
.L123:
	cmpq	%rbx, (%rdi,%rax,8)
	je	.L125
	addq	$1, %rax
	cmpq	%rsi, %rax
	jne	.L123
.L124:
	movq	(%rcx,%rbx,8), %rbp
	leaq	0(,%rbx,8), %r13
	testq	%rbp, %rbp
	je	.L127
	movq	128(%rbp), %rcx
	call	SDL_DestroyTexture
	leaq	96(%rbp), %rcx
	call	_ZN3neo6stringD1Ev
	movl	$136, %edx
	movq	%rbp, %rcx
	call	_ZdlPvy
	movq	16(%r12), %rdx
	movq	24(%r12), %rcx
.L127:
	cmpq	%rdx, %rbx
	jnb	.L147
	movq	$0, (%rcx,%r13)
.L125:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L129
	cmpq	$0, -8(%rcx,%rdx,8)
	leaq	-1(%rdx), %r8
	je	.L148
.L146:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L148:
	movq	%rdx, %r9
	jmp	.L130
	.p2align 4,,10
	.p2align 3
.L135:
	leaq	-1(%r9), %rax
	cmpq	%rdx, %rax
	jnb	.L149
	cmpq	$0, (%rcx,%rax,8)
	jne	.L150
	movq	%rax, %r9
.L130:
	cmpq	$1, %r9
	jne	.L135
.L134:
	leaq	16(%r12), %rcx
	movq	%r9, %rdx
.LEHB12:
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor9textboxes7textboxEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L122:
	testq	%rdx, %rdx
	jne	.L146
	leaq	.LC3(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L150:
	subq	%r9, %rdx
	movq	%rdx, %r8
	jmp	.L134
.L149:
	leaq	.LC3(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L147:
	leaq	.LC3(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
.LEHE12:
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
	.uleb128 .LEHB12-.LFB8439
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE8439:
	.text
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC16:
	.ascii "wze::engine.actors[].textboxes.Purge(): KeepTextboxIDs must not be NULL\12Params: KeepTextboxIDs: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes5PurgeEPN3neo5arrayIyEE
	.def	_ZN3wze6engine6actors5actor9textboxes5PurgeEPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9textboxes5PurgeEPN3neo5arrayIyEE
_ZN3wze6engine6actors5actor9textboxes5PurgeEPN3neo5arrayIyEE:
.LFB8440:
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
	je	.L152
	movq	16(%rcx), %rcx
	cmpq	$1, %rcx
	jbe	.L181
	movq	24(%rbp), %r9
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L161:
	movq	(%rsi), %rdx
	movq	8(%rsi), %r8
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.L155
.L156:
	cmpq	(%r8,%rax,8), %rbx
	je	.L157
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L156
	.p2align 4,,10
	.p2align 3
.L155:
	movq	(%r9,%rbx,8), %rdi
	leaq	0(,%rbx,8), %r12
	testq	%rdi, %rdi
	je	.L159
	movq	128(%rdi), %rcx
	call	SDL_DestroyTexture
	leaq	96(%rdi), %rcx
	call	_ZN3neo6stringD1Ev
	movq	%rdi, %rcx
	movl	$136, %edx
	call	_ZdlPvy
	movq	16(%rbp), %rcx
	movq	24(%rbp), %r9
.L159:
	cmpq	%rcx, %rbx
	jnb	.L182
	movq	$0, (%r9,%r12)
.L157:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jb	.L161
	cmpq	$0, -8(%r9,%rcx,8)
	leaq	-1(%rcx), %r8
	je	.L183
.L180:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L183:
	movq	%rcx, %rax
	jmp	.L162
	.p2align 4,,10
	.p2align 3
.L167:
	leaq	-1(%rax), %rdx
	cmpq	%rcx, %rdx
	jnb	.L184
	cmpq	$0, (%r9,%rdx,8)
	jne	.L185
	movq	%rdx, %rax
.L162:
	cmpq	$1, %rax
	jne	.L167
.L166:
	movq	%rax, %rdx
	leaq	16(%rbp), %rcx
.LEHB13:
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor9textboxes7textboxEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L181:
	testq	%rcx, %rcx
	jne	.L180
	leaq	.LC3(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L185:
	subq	%rax, %rcx
	movq	%rcx, %r8
	jmp	.L166
.L184:
	leaq	.LC3(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L152:
	leaq	.LC16(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L182:
	leaq	.LC3(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
.LEHE13:
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
	.uleb128 .LEHB13-.LFB8440
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSE8440:
	.text
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC17:
	.ascii "wze::engine.actors[].textboxes[]: Illegal access to NULL Textbox\12Params: TextboxID: %lld\12\0"
	.align 8
.LC18:
	.ascii "wze::engine.actors[].textboxes[]: Textbox does not exist\12Params: TextboxID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxesixEy
	.def	_ZN3wze6engine6actors5actor9textboxesixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9textboxesixEy
_ZN3wze6engine6actors5actor9textboxesixEy:
.LFB8441:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testq	%rdx, %rdx
	je	.L190
	cmpq	16(%rcx), %rdx
	jnb	.L188
	movq	24(%rcx), %rax
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L188
	addq	$40, %rsp
	ret
.L188:
	leaq	.LC18(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L190:
	leaq	.LC17(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB19:
	.text
.LHOTB19:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textboxC2EPS0_PS2_yPKcy
	.def	_ZN3wze6engine6actors5actor9textboxes7textboxC2EPS0_PS2_yPKcy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9textboxes7textboxC2EPS0_PS2_yPKcy
_ZN3wze6engine6actors5actor9textboxes7textboxC2EPS0_PS2_yPKcy:
.LFB8443:
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
	leaq	96(%rcx), %rdi
	movq	%rcx, %rbx
	movq	%r9, %rsi
	movq	%r8, 8(%rcx)
	movq	%rdi, %rcx
.LEHB14:
	call	_ZN3neo6stringC1Ev
.LEHE14:
	movq	8(%rbx), %rax
	movl	$384, %edx
	xorl	%ecx, %ecx
	movw	%dx, 36(%rbx)
	pxor	%xmm0, %xmm0
	leaq	32(%rsp), %rdx
	movl	$-1, 16(%rbx)
	movq	$0x000000000, 24(%rbx)
	movupd	224(%rax), %xmm1
	movzwl	258(%rax), %eax
	movw	%cx, 64(%rbx)
	movq	%rdi, %rcx
	movl	$16842752, 32(%rbx)
	movq	%rax, 72(%rbx)
	movq	128(%rsp), %rax
	movq	%rsi, 40(%rbx)
	movups	%xmm1, 48(%rbx)
	movups	%xmm0, 80(%rbx)
	movq	%rax, 56(%rsp)
	leaq	56(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	$1, 40(%rsp)
.LEHB15:
	call	_ZN3neo6stringaSESt16initializer_listIPKcE
	movq	136(%rsp), %rax
	movl	$0, 120(%rbx)
	xorl	%ecx, %ecx
	movq	$0, 128(%rbx)
	movq	%rax, 112(%rbx)
	xorl	%eax, %eax
	movw	%ax, 64(%rbx)
	call	SDL_DestroyTexture
	movq	$0, 128(%rbx)
	cmpq	$0, 72(%rbx)
	jne	.L196
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L196:
	movq	%rbx, %rcx
	call	_ZN3wze6engine6actors5actor9textboxes7textbox13UpdateTextureEv.part.0.constprop.0
.LEHE15:
	nop
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L195:
	movq	%rax, %rbx
	jmp	.L194
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8443:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8443-.LLSDACSB8443
.LLSDACSB8443:
	.uleb128 .LEHB14-.LFB8443
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB8443
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L195-.LFB8443
	.uleb128 0
.LLSDACSE8443:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine6actors5actor9textboxes7textboxC2EPS0_PS2_yPKcy.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9textboxes7textboxC2EPS0_PS2_yPKcy.cold
	.seh_stackalloc	88
	.seh_savereg	%rbx, 64
	.seh_savereg	%rsi, 72
	.seh_savereg	%rdi, 80
	.seh_endprologue
_ZN3wze6engine6actors5actor9textboxes7textboxC2EPS0_PS2_yPKcy.cold:
.L194:
	movq	%rdi, %rcx
	call	_ZN3neo6stringD1Ev
	movq	%rbx, %rcx
.LEHB16:
	call	_Unwind_Resume
	nop
.LEHE16:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8443:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8443-.LLSDACSBC8443
.LLSDACSBC8443:
	.uleb128 .LEHB16-.LCOLDB19
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
.LLSDACSEC8443:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE19:
	.text
.LHOTE19:
	.globl	_ZN3wze6engine6actors5actor9textboxes7textboxC1EPS0_PS2_yPKcy
	.def	_ZN3wze6engine6actors5actor9textboxes7textboxC1EPS0_PS2_yPKcy;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor9textboxes7textboxC1EPS0_PS2_yPKcy,_ZN3wze6engine6actors5actor9textboxes7textboxC2EPS0_PS2_yPKcy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textboxD2Ev
	.def	_ZN3wze6engine6actors5actor9textboxes7textboxD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9textboxes7textboxD2Ev
_ZN3wze6engine6actors5actor9textboxes7textboxD2Ev:
.LFB8446:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movq	128(%rcx), %rcx
	call	SDL_DestroyTexture
	leaq	96(%rbx), %rcx
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZN3neo6stringD1Ev
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8446:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8446-.LLSDACSB8446
.LLSDACSB8446:
.LLSDACSE8446:
	.text
	.seh_endproc
	.globl	_ZN3wze6engine6actors5actor9textboxes7textboxD1Ev
	.def	_ZN3wze6engine6actors5actor9textboxes7textboxD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor9textboxes7textboxD1Ev,_ZN3wze6engine6actors5actor9textboxes7textboxD2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textbox5GetIDEv
	.def	_ZN3wze6engine6actors5actor9textboxes7textbox5GetIDEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9textboxes7textbox5GetIDEv
_ZN3wze6engine6actors5actor9textboxes7textbox5GetIDEv:
.LFB8448:
	.seh_endprologue
	movq	40(%rcx), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textbox4GetXEv
	.def	_ZN3wze6engine6actors5actor9textboxes7textbox4GetXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9textboxes7textbox4GetXEv
_ZN3wze6engine6actors5actor9textboxes7textbox4GetXEv:
.LFB8449:
	.seh_endprologue
	movsd	48(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC20:
	.ascii "wze::engine.actors[].textboxes[].SetX(): X must not be NaN\12Params: X: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textbox4SetXEd
	.def	_ZN3wze6engine6actors5actor9textboxes7textbox4SetXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9textboxes7textbox4SetXEd
_ZN3wze6engine6actors5actor9textboxes7textbox4SetXEd:
.LFB8450:
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
	jp	.L217
	movq	8(%rcx), %rax
	movsd	56(%rcx), %xmm3
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	ucomisd	%xmm6, %xmm0
	jp	.L203
	jne	.L203
	ucomisd	%xmm3, %xmm1
	jp	.L203
	jne	.L203
	movq	$0x000000000, 80(%rcx)
.L211:
	pxor	%xmm0, %xmm0
	jmp	.L210
	.p2align 4,,10
	.p2align 3
.L203:
	movapd	%xmm6, %xmm2
	call	_ZN3wze6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movsd	56(%rbx), %xmm3
	movapd	%xmm0, %xmm2
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	movsd	%xmm2, 80(%rbx)
	ucomisd	%xmm0, %xmm6
	jp	.L207
	jne	.L207
	ucomisd	%xmm3, %xmm1
	jp	.L207
	je	.L211
.L207:
	movapd	%xmm6, %xmm2
	call	_ZN3wze6engine6vector5AngleEdddd
.L210:
	movsd	%xmm0, 88(%rbx)
	movapd	%xmm6, %xmm0
	movsd	%xmm6, 48(%rbx)
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	ret
.L217:
	leaq	.LC20(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textbox4GetYEv
	.def	_ZN3wze6engine6actors5actor9textboxes7textbox4GetYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9textboxes7textbox4GetYEv
_ZN3wze6engine6actors5actor9textboxes7textbox4GetYEv:
.LFB8451:
	.seh_endprologue
	movsd	56(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC21:
	.ascii "wze::engine.actors[].textboxes[].SetY(): Y must not be NaN\12Params: Y: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textbox4SetYEd
	.def	_ZN3wze6engine6actors5actor9textboxes7textbox4SetYEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9textboxes7textbox4SetYEd
_ZN3wze6engine6actors5actor9textboxes7textbox4SetYEd:
.LFB8452:
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
	jp	.L236
	movq	8(%rcx), %rax
	movsd	48(%rcx), %xmm2
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	ucomisd	%xmm2, %xmm0
	jp	.L222
	jne	.L222
	ucomisd	%xmm1, %xmm6
	jp	.L222
	jne	.L222
	movq	$0x000000000, 80(%rcx)
.L230:
	pxor	%xmm0, %xmm0
	jmp	.L229
	.p2align 4,,10
	.p2align 3
.L222:
	movapd	%xmm6, %xmm3
	call	_ZN3wze6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movsd	48(%rbx), %xmm2
	movapd	%xmm0, %xmm3
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	movsd	%xmm3, 80(%rbx)
	ucomisd	%xmm2, %xmm0
	jp	.L226
	jne	.L226
	ucomisd	%xmm1, %xmm6
	jp	.L226
	je	.L230
.L226:
	movapd	%xmm6, %xmm3
	call	_ZN3wze6engine6vector5AngleEdddd
.L229:
	movsd	%xmm0, 88(%rbx)
	movapd	%xmm6, %xmm0
	movsd	%xmm6, 56(%rbx)
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	ret
.L236:
	leaq	.LC21(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textbox15GetOffsetLengthEv
	.def	_ZN3wze6engine6actors5actor9textboxes7textbox15GetOffsetLengthEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9textboxes7textbox15GetOffsetLengthEv
_ZN3wze6engine6actors5actor9textboxes7textbox15GetOffsetLengthEv:
.LFB8453:
	.seh_endprologue
	movsd	80(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC22:
	.ascii "wze::engine.actors[].textboxes[].SetOffsetLength(): OffsetLength must not be NaN\12Params: OffsetLength: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textbox15SetOffsetLengthEd
	.def	_ZN3wze6engine6actors5actor9textboxes7textbox15SetOffsetLengthEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9textboxes7textbox15SetOffsetLengthEd
_ZN3wze6engine6actors5actor9textboxes7textbox15SetOffsetLengthEd:
.LFB8454:
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
	jp	.L243
	movq	8(%rcx), %rax
	movsd	88(%rcx), %xmm2
	movsd	224(%rax), %xmm0
	call	_ZN3wze6engine6vector9TerminalXEddd
	movq	8(%rbx), %rax
	movsd	88(%rbx), %xmm2
	movapd	%xmm6, %xmm1
	movsd	%xmm0, 48(%rbx)
	movsd	232(%rax), %xmm0
	call	_ZN3wze6engine6vector9TerminalYEddd
	movsd	%xmm6, 80(%rbx)
	movsd	%xmm0, 56(%rbx)
	movapd	%xmm6, %xmm0
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	ret
.L243:
	leaq	.LC22(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textbox14GetOffsetAngleEv
	.def	_ZN3wze6engine6actors5actor9textboxes7textbox14GetOffsetAngleEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9textboxes7textbox14GetOffsetAngleEv
_ZN3wze6engine6actors5actor9textboxes7textbox14GetOffsetAngleEv:
.LFB8455:
	.seh_endprologue
	movsd	88(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC23:
	.ascii "wze::engine.actors[].textboxes[].SetOffsetAngle(): OffsetAngle must not be NaN\12Params: OffsetAngle %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textbox14SetOffsetAngleEd
	.def	_ZN3wze6engine6actors5actor9textboxes7textbox14SetOffsetAngleEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9textboxes7textbox14SetOffsetAngleEd
_ZN3wze6engine6actors5actor9textboxes7textbox14SetOffsetAngleEd:
.LFB8456:
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
	jp	.L250
	movq	8(%rcx), %rax
	movapd	%xmm1, %xmm2
	movsd	80(%rcx), %xmm1
	movsd	224(%rax), %xmm0
	call	_ZN3wze6engine6vector9TerminalXEddd
	movq	8(%rbx), %rax
	movsd	80(%rbx), %xmm1
	movapd	%xmm6, %xmm2
	movsd	%xmm0, 48(%rbx)
	movsd	232(%rax), %xmm0
	call	_ZN3wze6engine6vector9TerminalYEddd
	movsd	%xmm6, 88(%rbx)
	movsd	%xmm0, 56(%rbx)
	movapd	%xmm6, %xmm0
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	ret
.L250:
	leaq	.LC23(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textbox8GetWidthEv
	.def	_ZN3wze6engine6actors5actor9textboxes7textbox8GetWidthEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9textboxes7textbox8GetWidthEv
_ZN3wze6engine6actors5actor9textboxes7textbox8GetWidthEv:
.LFB8457:
	.seh_endprologue
	movzwl	64(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textbox9GetHeightEv
	.def	_ZN3wze6engine6actors5actor9textboxes7textbox9GetHeightEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9textboxes7textbox9GetHeightEv
_ZN3wze6engine6actors5actor9textboxes7textbox9GetHeightEv:
.LFB8458:
	.seh_endprologue
	movzwl	72(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textbox9SetHeightEt
	.def	_ZN3wze6engine6actors5actor9textboxes7textbox9SetHeightEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9textboxes7textbox9SetHeightEt
_ZN3wze6engine6actors5actor9textboxes7textbox9SetHeightEt:
.LFB8459:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movzwl	%dx, %eax
	cmpq	%rax, 72(%rcx)
	jne	.L258
.L254:
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L258:
	movq	%rax, 72(%rcx)
	xorl	%eax, %eax
	movw	%ax, 64(%rcx)
	movq	128(%rcx), %rcx
	call	SDL_DestroyTexture
	movq	72(%rbx), %rax
	movq	$0, 128(%rbx)
	testq	%rax, %rax
	je	.L254
	movq	%rbx, %rcx
	call	_ZN3wze6engine6actors5actor9textboxes7textbox13UpdateTextureEv.part.0.constprop.0
	movq	72(%rbx), %rax
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textbox10GetLiteralEv
	.def	_ZN3wze6engine6actors5actor9textboxes7textbox10GetLiteralEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9textboxes7textbox10GetLiteralEv
_ZN3wze6engine6actors5actor9textboxes7textbox10GetLiteralEv:
.LFB8460:
	.seh_endprologue
	addq	$96, %rcx
	jmp	_ZN3neo6stringclEv
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC24:
	.ascii "wze::engine.actors[].textboxes[].SetLiteral(): Literal must not be NULL\12Params: Literal: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textbox10SetLiteralEPKc
	.def	_ZN3wze6engine6actors5actor9textboxes7textbox10SetLiteralEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9textboxes7textbox10SetLiteralEPKc
_ZN3wze6engine6actors5actor9textboxes7textbox10SetLiteralEPKc:
.LFB8461:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	testq	%rdx, %rdx
	je	.L265
	leaq	96(%rcx), %rdi
	movq	%rdi, %rcx
	call	_ZN3neo6stringneEPKc
	testb	%al, %al
	jne	.L266
.L263:
	movq	%rdi, %rcx
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	_ZN3neo6stringclEv
	.p2align 4,,10
	.p2align 3
.L266:
	leaq	56(%rsp), %rax
	leaq	32(%rsp), %rdx
	movq	%rdi, %rcx
	movq	%rsi, 56(%rsp)
	movq	%rax, 32(%rsp)
	movq	$1, 40(%rsp)
	call	_ZN3neo6stringaSESt16initializer_listIPKcE
	xorl	%eax, %eax
	movq	128(%rbx), %rcx
	movw	%ax, 64(%rbx)
	call	SDL_DestroyTexture
	cmpq	$0, 72(%rbx)
	movq	$0, 128(%rbx)
	je	.L263
	movq	%rbx, %rcx
	call	_ZN3wze6engine6actors5actor9textboxes7textbox13UpdateTextureEv.part.0.constprop.0
	movq	%rdi, %rcx
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	_ZN3neo6stringclEv
.L265:
	leaq	.LC24(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textbox9GetFontIDEv
	.def	_ZN3wze6engine6actors5actor9textboxes7textbox9GetFontIDEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9textboxes7textbox9GetFontIDEv
_ZN3wze6engine6actors5actor9textboxes7textbox9GetFontIDEv:
.LFB8462:
	.seh_endprologue
	movq	112(%rcx), %rax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC25:
	.ascii "wze::engine.actors[].textboxes[].SetFontID(): Font does not exist\12Params: FontID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textbox9SetFontIDEy
	.def	_ZN3wze6engine6actors5actor9textboxes7textbox9SetFontIDEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9textboxes7textbox9SetFontIDEy
_ZN3wze6engine6actors5actor9textboxes7textbox9SetFontIDEy:
.LFB8463:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movq	%rdx, %rax
	testq	%rdx, %rdx
	je	.L269
	movq	(%rcx), %rdx
	cmpq	360(%rdx), %rax
	jnb	.L270
	movq	368(%rdx), %rdx
	cmpq	$0, (%rdx,%rax,8)
	je	.L270
.L269:
	cmpq	%rax, 112(%rbx)
	jne	.L277
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L277:
	movq	%rax, 112(%rbx)
	xorl	%eax, %eax
	movq	128(%rbx), %rcx
	movw	%ax, 64(%rbx)
	call	SDL_DestroyTexture
	cmpq	$0, 72(%rbx)
	movq	$0, 128(%rbx)
	jne	.L272
.L276:
	movq	112(%rbx), %rax
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L272:
	movq	%rbx, %rcx
	call	_ZN3wze6engine6actors5actor9textboxes7textbox13UpdateTextureEv.part.0.constprop.0
	jmp	.L276
.L270:
	leaq	.LC25(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textbox12GetFontStyleEv
	.def	_ZN3wze6engine6actors5actor9textboxes7textbox12GetFontStyleEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9textboxes7textbox12GetFontStyleEv
_ZN3wze6engine6actors5actor9textboxes7textbox12GetFontStyleEv:
.LFB8464:
	.seh_endprologue
	movl	120(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textbox12SetFontStyleENS_5styleE
	.def	_ZN3wze6engine6actors5actor9textboxes7textbox12SetFontStyleENS_5styleE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9textboxes7textbox12SetFontStyleENS_5styleE
_ZN3wze6engine6actors5actor9textboxes7textbox12SetFontStyleENS_5styleE:
.LFB8465:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movl	%edx, %eax
	cmpl	%edx, 120(%rcx)
	jne	.L283
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L283:
	xorl	%eax, %eax
	movl	%edx, 120(%rcx)
	movw	%ax, 64(%rcx)
	movq	128(%rcx), %rcx
	call	SDL_DestroyTexture
	cmpq	$0, 72(%rbx)
	movq	$0, 128(%rbx)
	jne	.L281
.L282:
	movl	120(%rbx), %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L281:
	movq	%rbx, %rcx
	call	_ZN3wze6engine6actors5actor9textboxes7textbox13UpdateTextureEv.part.0.constprop.0
	jmp	.L282
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textbox13UpdateTextureEv
	.def	_ZN3wze6engine6actors5actor9textboxes7textbox13UpdateTextureEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9textboxes7textbox13UpdateTextureEv
_ZN3wze6engine6actors5actor9textboxes7textbox13UpdateTextureEv:
.LFB8466:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	xorl	%eax, %eax
	movw	%ax, 64(%rcx)
	movq	%rcx, %rbx
	movq	128(%rcx), %rcx
	call	SDL_DestroyTexture
	cmpq	$0, 72(%rbx)
	movq	$0, 128(%rbx)
	jne	.L286
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L286:
	movq	%rbx, %rcx
	call	_ZN3wze6engine6actors5actor9textboxes7textbox13UpdateTextureEv.part.0.constprop.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6string6LengthEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6stringclEv;	.scl	2;	.type	32;	.endef
	.def	TTF_RenderUTF8_Blended;	.scl	2;	.type	32;	.endef
	.def	SDL_CreateTextureFromSurface;	.scl	2;	.type	32;	.endef
	.def	round;	.scl	2;	.type	32;	.endef
	.def	SDL_FreeSurface;	.scl	2;	.type	32;	.endef
	.def	TTF_SetFontStyle;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6memory6CopyToEPKvPvy;	.scl	2;	.type	32;	.endef
	.def	SDL_DestroyTexture;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6stringD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6stringC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6stringaSESt16initializer_listIPKcE;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector6LengthEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector5AngleEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector9TerminalXEddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector9TerminalYEddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6stringneEPKc;	.scl	2;	.type	32;	.endef
