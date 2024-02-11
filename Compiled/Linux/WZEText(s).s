	.file	"WZEText(s).cpp"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"neo::array.Remove(): Index out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC1:
	.string	"neo::array.Remove(): Length out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC2:
	.string	"neo::array.Remove(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.text
	.align 2
	.p2align 4
	.type	_ZN3neo5arrayIPN3wze6engine6actors5actor9textboxes7textboxEE6RemoveEyy.isra.0, @function
_ZN3neo5arrayIPN3wze6engine6actors5actor9textboxes7textboxEE6RemoveEyy.isra.0:
.LFB8360:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdx, %rbx
	movq	(%rdi), %rdx
	cmpq	%rdx, %rsi
	jnb	.L26
	leaq	(%rsi,%rbx), %rax
	cmpq	%rax, %rdx
	jb	.L27
	testq	%rbx, %rbx
	je	.L1
	movq	%rdx, %rcx
	movq	%rdi, %r12
	subq	%rbx, %rcx
	movq	%rcx, (%rdi)
	movq	8(%rdi), %rdi
	je	.L5
	cmpq	%rcx, %rsi
	jnb	.L12
	movq	%rcx, %r8
	subq	%rsi, %r8
	leaq	-1(%r8), %rsi
	cmpq	$2, %rsi
	jbe	.L9
	leaq	0(,%rbp,8), %rsi
	leaq	8(,%rax,8), %r9
	cmpq	%rsi, %r9
	jne	.L28
.L9:
	movq	%rbx, %rsi
	leaq	(%rdi,%rax,8), %rax
	leaq	(%rdi,%rdx,8), %r8
	negq	%rsi
	salq	$3, %rsi
	.p2align 4,,10
	.p2align 3
.L14:
	movq	(%rax), %rdx
	addq	$8, %rax
	movq	%rdx, -8(%rax,%rsi)
	cmpq	%rax, %r8
	jne	.L14
	.p2align 4,,10
	.p2align 3
.L12:
	leaq	0(,%rcx,8), %rsi
	call	realloc@PLT
	movq	%rax, 8(%r12)
	testq	%rax, %rax
	je	.L29
.L1:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L28:
	.cfi_restore_state
	leaq	(%rdi,%rsi), %rdx
	movq	%r8, %rsi
	leaq	-8(%rdi,%r9), %r9
	xorl	%eax, %eax
	shrq	%rsi
	salq	$4, %rsi
	.p2align 4,,10
	.p2align 3
.L10:
	movdqu	(%r9,%rax), %xmm0
	movups	%xmm0, (%rdx,%rax)
	addq	$16, %rax
	cmpq	%rsi, %rax
	jne	.L10
	movq	%r8, %rax
	andq	$-2, %rax
	addq	%rbp, %rax
	andl	$1, %r8d
	je	.L12
	leaq	(%rbx,%rax), %rdx
	movq	(%rdi,%rdx,8), %rdx
	movq	%rdx, (%rdi,%rax,8)
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L5:
	call	free@PLT
	movq	$0, 8(%r12)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L26:
	.cfi_restore_state
	leaq	.LC0(%rip), %rdi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L27:
	leaq	.LC1(%rip), %rdi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L29:
	leaq	.LC2(%rip), %rdi
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8360:
	.size	_ZN3neo5arrayIPN3wze6engine6actors5actor9textboxes7textboxEE6RemoveEyy.isra.0, .-_ZN3neo5arrayIPN3wze6engine6actors5actor9textboxes7textboxEE6RemoveEyy.isra.0
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.align 8
.LC4:
	.string	"wze::engine.actors[].textboxes[].UpdateTexture(): TTF_RenderUTF8_Blended failed"
	.align 8
.LC5:
	.string	"wze::engine.actors[].textboxes[].UpdateTexture(): SDL_CreateTextureFromSurface failed"
	.text
	.align 2
	.p2align 4
	.type	_ZN3wze6engine6actors5actor9textboxes7textbox13UpdateTextureEv.part.0.constprop.0, @function
_ZN3wze6engine6actors5actor9textboxes7textbox13UpdateTextureEv.part.0.constprop.0:
.LFB8361:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	96(%rdi), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	movq	%rbp, %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	_ZN3neo6string6LengthEv@PLT
	cmpq	$1, %rax
	jbe	.L30
	movq	112(%rbx), %rsi
	testq	%rsi, %rsi
	je	.L30
	movl	120(%rbx), %eax
	testl	%eax, %eax
	jne	.L50
.L34:
	movq	%rbp, %rdi
	call	_ZN3neo6stringclEv@PLT
	movq	(%rbx), %rdx
	movq	%rax, %rsi
	movq	112(%rbx), %rax
	movq	376(%rdx), %rcx
	cmpq	368(%rdx), %rax
	jnb	.L51
	movq	(%rcx,%rax,8), %rdi
	movl	$-1, %edx
	call	TTF_RenderUTF8_Blended@PLT
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L52
	movq	(%rbx), %rax
	movq	%rbp, %rsi
	movq	16(%rax), %rdi
	call	SDL_CreateTextureFromSurface@PLT
	movq	%rax, 128(%rbx)
	testq	%rax, %rax
	je	.L53
	movq	72(%rbx), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	16(%rbp), %xmm0
	testq	%rax, %rax
	js	.L39
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L40:
	mulsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	20(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	call	round@PLT
	movq	%rbp, %rdi
	cvttsd2sil	%xmm0, %eax
	movw	%ax, 64(%rbx)
	call	SDL_FreeSurface@PLT
	movl	120(%rbx), %eax
	testl	%eax, %eax
	je	.L30
	movq	(%rbx), %rax
	movq	112(%rbx), %rsi
	movq	376(%rax), %rdx
	cmpq	368(%rax), %rsi
	jnb	.L49
	movq	(%rdx,%rsi,8), %rdi
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%esi, %esi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	TTF_SetFontStyle@PLT
	.p2align 4,,10
	.p2align 3
.L30:
	.cfi_restore_state
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L39:
	.cfi_restore_state
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
.L50:
	movq	(%rbx), %rdx
	movq	376(%rdx), %rcx
	cmpq	368(%rdx), %rsi
	jnb	.L49
	movq	(%rcx,%rsi,8), %rdi
	movl	%eax, %esi
	call	TTF_SetFontStyle@PLT
	jmp	.L34
.L51:
	movq	%rax, %rsi
.L49:
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L52:
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L53:
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8361:
	.size	_ZN3wze6engine6actors5actor9textboxes7textbox13UpdateTextureEv.part.0.constprop.0, .-_ZN3wze6engine6actors5actor9textboxes7textbox13UpdateTextureEv.part.0.constprop.0
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"neo::array(): Memory allocation failed\nParams: Elements(size, length): %ld, %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxesC2EPS0_PS2_
	.type	_ZN3wze6engine6actors5actor9textboxesC2EPS0_PS2_, @function
_ZN3wze6engine6actors5actor9textboxesC2EPS0_PS2_:
.LFB8147:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	movq	$1, 16(%rdi)
	movl	$8, %edi
	movq	$0, (%rsp)
	call	malloc@PLT
	movq	%rax, 24(%rbx)
	testq	%rax, %rax
	je	.L58
	movq	%rax, %rsi
	movq	%rsp, %rdi
	movl	$8, %edx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L59
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L59:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L58:
	leaq	.LC6(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8147:
	.size	_ZN3wze6engine6actors5actor9textboxesC2EPS0_PS2_, .-_ZN3wze6engine6actors5actor9textboxesC2EPS0_PS2_
	.globl	_ZN3wze6engine6actors5actor9textboxesC1EPS0_PS2_
	.set	_ZN3wze6engine6actors5actor9textboxesC1EPS0_PS2_,_ZN3wze6engine6actors5actor9textboxesC2EPS0_PS2_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxesD2Ev
	.type	_ZN3wze6engine6actors5actor9textboxesD2Ev, @function
_ZN3wze6engine6actors5actor9textboxesD2Ev:
.LFB8150:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8150
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	16(%rdi), %rax
	movq	24(%rdi), %rdi
	cmpq	$1, %rax
	jbe	.L61
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L64:
	movq	(%rdi,%rbx,8), %rbp
	testq	%rbp, %rbp
	je	.L62
	movq	128(%rbp), %rdi
	addq	$1, %rbx
	call	SDL_DestroyTexture@PLT
	leaq	96(%rbp), %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movq	%rbp, %rdi
	movl	$136, %esi
	call	_ZdlPvm@PLT
	movq	16(%r12), %rax
	movq	24(%r12), %rdi
	cmpq	%rax, %rbx
	jb	.L64
.L61:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	free@PLT
	.p2align 4,,10
	.p2align 3
.L62:
	.cfi_restore_state
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L64
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	free@PLT
	.cfi_endproc
.LFE8150:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8150:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8150-.LLSDACSB8150
.LLSDACSB8150:
.LLSDACSE8150:
	.text
	.size	_ZN3wze6engine6actors5actor9textboxesD2Ev, .-_ZN3wze6engine6actors5actor9textboxesD2Ev
	.globl	_ZN3wze6engine6actors5actor9textboxesD1Ev
	.set	_ZN3wze6engine6actors5actor9textboxesD1Ev,_ZN3wze6engine6actors5actor9textboxesD2Ev
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"wze::engine.actors[].textboxes.New(): String must not be NULL\nParams: String: %p, FontID: %lld\n"
	.align 8
.LC8:
	.string	"wze::engine.actors[].textboxes.New(): FontID does not exist\nParams: String: %s, FontID: %lld\n"
	.align 8
.LC12:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.align 8
.LC13:
	.string	"wze::engine.actors[].textboxes.New(): Memory allocation failed\nParams: String: %s, FontID: %lld\n"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB15:
	.text
.LHOTB15:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes3NewEPKcy
	.type	_ZN3wze6engine6actors5actor9textboxes3NewEPKcy, @function
_ZN3wze6engine6actors5actor9textboxes3NewEPKcy:
.LFB8152:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8152
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L103
	movq	%rdi, %r12
	movq	%rsi, %r14
	testq	%rdx, %rdx
	jne	.L68
.L72:
	movq	16(%r12), %rax
	cmpq	$1, %rax
	jbe	.L70
	movq	24(%r12), %rdx
	movl	$1, %ebx
	jmp	.L81
	.p2align 4,,10
	.p2align 3
.L73:
	addq	$1, %rbx
	cmpq	%rbx, %rax
	je	.L70
.L81:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L73
	movl	$136, %edi
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movdqu	(%r12), %xmm3
	leaq	96(%rax), %r15
	movq	%rax, %rbp
	movups	%xmm3, (%rax)
	movq	%r15, %rdi
.LEHB1:
	call	_ZN3neo6stringC1Ev@PLT
.LEHE1:
	movq	8(%rbp), %rax
	movl	$384, %edi
	xorl	%r8d, %r8d
	movq	%rbx, 40(%rbp)
	movw	%di, 36(%rbp)
	pxor	%xmm0, %xmm0
	movq	%rsp, %rsi
	movl	$1, %edx
	movl	$-1, 16(%rbp)
	movq	%r15, %rdi
	movq	$0x000000000, 24(%rbp)
	movupd	224(%rax), %xmm4
	movzwl	258(%rax), %eax
	movl	$16842752, 32(%rbp)
	movw	%r8w, 64(%rbp)
	movq	%rax, 72(%rbp)
	movups	%xmm4, 48(%rbp)
	movups	%xmm0, 80(%rbp)
	movq	%r14, (%rsp)
.LEHB2:
	call	_ZN3neo6stringaSESt16initializer_listIPKcE@PLT
	xorl	%esi, %esi
	movq	%r13, 112(%rbp)
	xorl	%edi, %edi
	movl	$0, 120(%rbp)
	movq	$0, 128(%rbp)
	movw	%si, 64(%rbp)
	call	SDL_DestroyTexture@PLT
.LEHE2:
	movq	$0, 128(%rbp)
	cmpq	$0, 72(%rbp)
	jne	.L74
.L77:
	movq	24(%r12), %rax
	cmpq	16(%r12), %rbx
	jnb	.L104
	movq	%rbp, (%rax,%rbx,8)
	jmp	.L66
	.p2align 4,,10
	.p2align 3
.L70:
	movl	$136, %edi
.LEHB3:
	call	_Znwm@PLT
.LEHE3:
	movdqu	(%r12), %xmm1
	movq	16(%r12), %rbp
	leaq	96(%rax), %r15
	movq	%rax, %rbx
	movups	%xmm1, (%rax)
	movq	%r15, %rdi
.LEHB4:
	call	_ZN3neo6stringC1Ev@PLT
.LEHE4:
	movq	8(%rbx), %rax
	movl	$384, %edx
	xorl	%ecx, %ecx
	movq	%rbp, 40(%rbx)
	movw	%dx, 36(%rbx)
	pxor	%xmm0, %xmm0
	movq	%rsp, %rbp
	movl	$1, %edx
	movl	$-1, 16(%rbx)
	movq	%rbp, %rsi
	movq	%r15, %rdi
	movq	$0x000000000, 24(%rbx)
	movupd	224(%rax), %xmm2
	movzwl	258(%rax), %eax
	movl	$16842752, 32(%rbx)
	movw	%cx, 64(%rbx)
	movq	%rax, 72(%rbx)
	movups	%xmm2, 48(%rbx)
	movups	%xmm0, 80(%rbx)
	movq	%r14, (%rsp)
.LEHB5:
	call	_ZN3neo6stringaSESt16initializer_listIPKcE@PLT
	xorl	%eax, %eax
	movq	%r13, 112(%rbx)
	xorl	%edi, %edi
	movl	$0, 120(%rbx)
	movq	$0, 128(%rbx)
	movw	%ax, 64(%rbx)
	call	SDL_DestroyTexture@PLT
.LEHE5:
	movq	$0, 128(%rbx)
	cmpq	$0, 72(%rbx)
	jne	.L82
.L85:
	movq	16(%r12), %rax
	movq	24(%r12), %rdi
	movq	%rbx, (%rsp)
	leaq	1(%rax), %rsi
	movq	%rsi, 16(%r12)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 24(%r12)
	testq	%rax, %rax
	je	.L105
	movq	16(%r12), %rdx
	movq	%rbp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
.LEHB6:
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	16(%r12), %rax
	movq	24(%r12), %rdx
	leaq	-1(%rax), %rcx
	testq	%rax, %rax
	je	.L106
	movq	(%rdx,%rcx,8), %rbp
	testq	%rbp, %rbp
	je	.L107
.L66:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L108
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L68:
	.cfi_restore_state
	movq	(%rdi), %rax
	cmpq	368(%rax), %rdx
	jnb	.L71
	movq	376(%rax), %rax
	cmpq	$0, (%rax,%rdx,8)
	jne	.L72
.L71:
	leaq	.LC8(%rip), %rdi
	movq	%r13, %rdx
	movq	%r14, %rsi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE6:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L82:
	movq	%rbx, %rdi
.LEHB7:
	call	_ZN3wze6engine6actors5actor9textboxes7textbox13UpdateTextureEv.part.0.constprop.0
.LEHE7:
	jmp	.L85
	.p2align 4,,10
	.p2align 3
.L74:
	movq	%rbp, %rdi
.LEHB8:
	call	_ZN3wze6engine6actors5actor9textboxes7textbox13UpdateTextureEv.part.0.constprop.0
.LEHE8:
	jmp	.L77
.L104:
	leaq	.LC3(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
.LEHB9:
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L103:
	leaq	.LC7(%rip), %rdi
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L108:
	call	__stack_chk_fail@PLT
.L107:
	leaq	.LC13(%rip), %rdi
	movq	%r13, %rdx
	movq	%r14, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L106:
	leaq	.LC3(%rip), %rdi
	orq	$-1, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L105:
	leaq	.LC12(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE9:
	movl	$1, %edi
	call	exit@PLT
.L94:
	movq	%rax, %rbx
	jmp	.L79
.L96:
	movq	%rax, %rbx
	jmp	.L78
.L97:
	movq	%rax, %rbp
	jmp	.L86
.L95:
	movq	%rax, %rbp
	jmp	.L87
	.section	.gcc_except_table
.LLSDA8152:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8152-.LLSDACSB8152
.LLSDACSB8152:
	.uleb128 .LEHB0-.LFB8152
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8152
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L94-.LFB8152
	.uleb128 0
	.uleb128 .LEHB2-.LFB8152
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L96-.LFB8152
	.uleb128 0
	.uleb128 .LEHB3-.LFB8152
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB8152
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L95-.LFB8152
	.uleb128 0
	.uleb128 .LEHB5-.LFB8152
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L97-.LFB8152
	.uleb128 0
	.uleb128 .LEHB6-.LFB8152
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB8152
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L97-.LFB8152
	.uleb128 0
	.uleb128 .LEHB8-.LFB8152
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L96-.LFB8152
	.uleb128 0
	.uleb128 .LEHB9-.LFB8152
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE8152:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8152
	.type	_ZN3wze6engine6actors5actor9textboxes3NewEPKcy.cold, @function
_ZN3wze6engine6actors5actor9textboxes3NewEPKcy.cold:
.LFSB8152:
.L78:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r15, %rdi
	call	_ZN3neo6stringD1Ev@PLT
.L79:
	movl	$136, %esi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L102
	movq	%rbx, %rdi
.LEHB10:
	call	_Unwind_Resume@PLT
.L86:
	movq	%r15, %rdi
	call	_ZN3neo6stringD1Ev@PLT
.L87:
	movl	$136, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	je	.L92
.L102:
	call	__stack_chk_fail@PLT
.L92:
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE10:
	.cfi_endproc
.LFE8152:
	.section	.gcc_except_table
.LLSDAC8152:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8152-.LLSDACSBC8152
.LLSDACSBC8152:
	.uleb128 .LEHB10-.LCOLDB15
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSEC8152:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6actors5actor9textboxes3NewEPKcy, .-_ZN3wze6engine6actors5actor9textboxes3NewEPKcy
	.section	.text.unlikely
	.size	_ZN3wze6engine6actors5actor9textboxes3NewEPKcy.cold, .-_ZN3wze6engine6actors5actor9textboxes3NewEPKcy.cold
.LCOLDE15:
	.text
.LHOTE15:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes6DeleteEy
	.type	_ZN3wze6engine6actors5actor9textboxes6DeleteEy, @function
_ZN3wze6engine6actors5actor9textboxes6DeleteEy:
.LFB8153:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8153
	cmpq	16(%rdi), %rsi
	jb	.L132
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L132:
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	24(%rdi), %rax
	movq	%rdi, %rbx
	movq	(%rax,%rsi,8), %r12
	testq	%r12, %r12
	je	.L111
	movq	128(%r12), %rdi
	call	SDL_DestroyTexture@PLT
	leaq	96(%r12), %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movl	$136, %esi
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
	movq	16(%rbx), %rax
	movq	24(%rbx), %rdx
	cmpq	%rax, %rbp
	jnb	.L133
	movq	$0, (%rdx,%rbp,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %r8
	jne	.L111
	cmpq	$1, %rax
	je	.L111
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L117:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L134
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L135
	cmpq	$1, %rsi
	jne	.L117
.L116:
	leaq	16(%rbx), %rdi
	movq	%r8, %rdx
.LEHB11:
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor9textboxes7textboxEE6RemoveEyy.isra.0
.L111:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L135:
	.cfi_restore_state
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %r8
	jmp	.L116
.L134:
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L133:
	leaq	.LC3(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE11:
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8153:
	.section	.gcc_except_table
.LLSDA8153:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8153-.LLSDACSB8153
.LLSDACSB8153:
	.uleb128 .LEHB11-.LFB8153
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE8153:
	.text
	.size	_ZN3wze6engine6actors5actor9textboxes6DeleteEy, .-_ZN3wze6engine6actors5actor9textboxes6DeleteEy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes5PurgeESt16initializer_listIyE
	.type	_ZN3wze6engine6actors5actor9textboxes5PurgeESt16initializer_listIyE, @function
_ZN3wze6engine6actors5actor9textboxes5PurgeESt16initializer_listIyE:
.LFB8154:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8154
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	movq	16(%rdi), %rdx
	cmpq	$1, %rdx
	jbe	.L137
	movq	24(%rdi), %rcx
	movq	%rdi, %r14
	movq	%rsi, %r12
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L144:
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L139
.L138:
	cmpq	%rbx, (%r12,%rax,8)
	je	.L140
	addq	$1, %rax
	cmpq	%rbp, %rax
	jne	.L138
.L139:
	movq	(%rcx,%rbx,8), %r13
	leaq	0(,%rbx,8), %r15
	testq	%r13, %r13
	je	.L142
	movq	128(%r13), %rdi
	call	SDL_DestroyTexture@PLT
	leaq	96(%r13), %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movl	$136, %esi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
	movq	16(%r14), %rdx
	movq	24(%r14), %rcx
.L142:
	cmpq	%rdx, %rbx
	jnb	.L164
	movq	$0, (%rcx,%r15)
.L140:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L144
	cmpq	$0, -8(%rcx,%rdx,8)
	leaq	-1(%rdx), %r8
	je	.L165
.L161:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L165:
	.cfi_restore_state
	movq	%rdx, %rax
	jmp	.L145
	.p2align 4,,10
	.p2align 3
.L150:
	leaq	-1(%rax), %rsi
	cmpq	%rdx, %rsi
	jnb	.L163
	cmpq	$0, (%rcx,%rsi,8)
	jne	.L166
	movq	%rsi, %rax
.L145:
	cmpq	$1, %rax
	jne	.L150
.L149:
	leaq	16(%r14), %rdi
	movq	%r8, %rdx
	movq	%rax, %rsi
.LEHB12:
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor9textboxes7textboxEE6RemoveEyy.isra.0
	jmp	.L161
.L137:
	testq	%rdx, %rdx
	jne	.L161
	orq	$-1, %rsi
.L163:
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE12:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L166:
	subq	%rax, %rdx
	movq	%rdx, %r8
	jmp	.L149
.L164:
	movq	%rbx, %rsi
	jmp	.L163
	.cfi_endproc
.LFE8154:
	.section	.gcc_except_table
.LLSDA8154:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8154-.LLSDACSB8154
.LLSDACSB8154:
	.uleb128 .LEHB12-.LFB8154
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE8154:
	.text
	.size	_ZN3wze6engine6actors5actor9textboxes5PurgeESt16initializer_listIyE, .-_ZN3wze6engine6actors5actor9textboxes5PurgeESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"wze::engine.actors[].textboxes.Purge(): KeepTextboxIDs must not be NULL\nParams: KeepTextboxIDs: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes5PurgeEPN3neo5arrayIyEE
	.type	_ZN3wze6engine6actors5actor9textboxes5PurgeEPN3neo5arrayIyEE, @function
_ZN3wze6engine6actors5actor9textboxes5PurgeEPN3neo5arrayIyEE:
.LFB8155:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8155
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	testq	%rsi, %rsi
	je	.L168
	movq	16(%rdi), %rcx
	movq	%rdi, %r13
	cmpq	$1, %rcx
	jbe	.L199
	movq	24(%rdi), %rdi
	movq	%rsi, %rbp
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L177:
	movq	0(%rbp), %rdx
	movq	8(%rbp), %rsi
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.L171
.L172:
	cmpq	(%rsi,%rax,8), %rbx
	je	.L173
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L172
	.p2align 4,,10
	.p2align 3
.L171:
	movq	(%rdi,%rbx,8), %r12
	leaq	0(,%rbx,8), %r14
	testq	%r12, %r12
	je	.L175
	movq	128(%r12), %rdi
	call	SDL_DestroyTexture@PLT
	leaq	96(%r12), %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movq	%r12, %rdi
	movl	$136, %esi
	call	_ZdlPvm@PLT
	movq	16(%r13), %rcx
	movq	24(%r13), %rdi
.L175:
	cmpq	%rcx, %rbx
	jnb	.L200
	movq	$0, (%rdi,%r14)
.L173:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jb	.L177
	cmpq	$0, -8(%rdi,%rcx,8)
	leaq	-1(%rcx), %rdx
	je	.L201
.L196:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L201:
	.cfi_restore_state
	movq	%rcx, %rax
	jmp	.L178
	.p2align 4,,10
	.p2align 3
.L183:
	leaq	-1(%rax), %rsi
	cmpq	%rcx, %rsi
	jnb	.L198
	cmpq	$0, (%rdi,%rsi,8)
	jne	.L202
	movq	%rsi, %rax
.L178:
	cmpq	$1, %rax
	jne	.L183
.L182:
	leaq	16(%r13), %rdi
	movq	%rax, %rsi
.LEHB13:
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor9textboxes7textboxEE6RemoveEyy.isra.0
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L199:
	.cfi_restore_state
	testq	%rcx, %rcx
	jne	.L196
	orq	$-1, %rsi
.L198:
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L202:
	subq	%rax, %rcx
	movq	%rcx, %rdx
	jmp	.L182
.L168:
	leaq	.LC16(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE13:
	movl	$1, %edi
	call	exit@PLT
.L200:
	movq	%rbx, %rsi
	jmp	.L198
	.cfi_endproc
.LFE8155:
	.section	.gcc_except_table
.LLSDA8155:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8155-.LLSDACSB8155
.LLSDACSB8155:
	.uleb128 .LEHB13-.LFB8155
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSE8155:
	.text
	.size	_ZN3wze6engine6actors5actor9textboxes5PurgeEPN3neo5arrayIyEE, .-_ZN3wze6engine6actors5actor9textboxes5PurgeEPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"wze::engine.actors[].textboxes[]: Illegal access to NULL Textbox\nParams: TextboxID: %lld\n"
	.align 8
.LC18:
	.string	"wze::engine.actors[].textboxes[]: Textbox does not exist\nParams: TextboxID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxesixEy
	.type	_ZN3wze6engine6actors5actor9textboxesixEy, @function
_ZN3wze6engine6actors5actor9textboxesixEy:
.LFB8156:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.L208
	cmpq	16(%rdi), %rsi
	jnb	.L205
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L205
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L205:
	.cfi_restore_state
	leaq	.LC18(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L208:
	leaq	.LC17(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8156:
	.size	_ZN3wze6engine6actors5actor9textboxesixEy, .-_ZN3wze6engine6actors5actor9textboxesixEy
	.section	.text.unlikely
	.align 2
.LCOLDB19:
	.text
.LHOTB19:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textboxC2EPS0_PS2_yPKcy
	.type	_ZN3wze6engine6actors5actor9textboxes7textboxC2EPS0_PS2_yPKcy, @function
_ZN3wze6engine6actors5actor9textboxes7textboxC2EPS0_PS2_yPKcy:
.LFB8158:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8158
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	leaq	96(%rdi), %r14
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rcx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%r8, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%r9, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	movq	%r14, %rdi
.LEHB14:
	call	_ZN3neo6stringC1Ev@PLT
.LEHE14:
	movq	8(%rbx), %rax
	movl	$384, %edx
	xorl	%ecx, %ecx
	movw	%dx, 36(%rbx)
	pxor	%xmm0, %xmm0
	movq	%rsp, %rsi
	movl	$1, %edx
	movl	$-1, 16(%rbx)
	movq	%r14, %rdi
	movq	$0x000000000, 24(%rbx)
	movupd	224(%rax), %xmm1
	movzwl	258(%rax), %eax
	movl	$16842752, 32(%rbx)
	movq	%r13, 40(%rbx)
	movw	%cx, 64(%rbx)
	movq	%rax, 72(%rbx)
	movups	%xmm1, 48(%rbx)
	movups	%xmm0, 80(%rbx)
	movq	%r12, (%rsp)
.LEHB15:
	call	_ZN3neo6stringaSESt16initializer_listIPKcE@PLT
	xorl	%eax, %eax
	movq	%rbp, 112(%rbx)
	xorl	%edi, %edi
	movl	$0, 120(%rbx)
	movq	$0, 128(%rbx)
	movw	%ax, 64(%rbx)
	call	SDL_DestroyTexture@PLT
	movq	$0, 128(%rbx)
	cmpq	$0, 72(%rbx)
	jne	.L217
.L209:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L218
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L217:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	_ZN3wze6engine6actors5actor9textboxes7textbox13UpdateTextureEv.part.0.constprop.0
.LEHE15:
	jmp	.L209
.L218:
	call	__stack_chk_fail@PLT
.L215:
	movq	%rax, %rbx
	jmp	.L212
	.section	.gcc_except_table
.LLSDA8158:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8158-.LLSDACSB8158
.LLSDACSB8158:
	.uleb128 .LEHB14-.LFB8158
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB8158
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L215-.LFB8158
	.uleb128 0
.LLSDACSE8158:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8158
	.type	_ZN3wze6engine6actors5actor9textboxes7textboxC2EPS0_PS2_yPKcy.cold, @function
_ZN3wze6engine6actors5actor9textboxes7textboxC2EPS0_PS2_yPKcy.cold:
.LFSB8158:
.L212:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	movq	%r14, %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L219
	movq	%rbx, %rdi
.LEHB16:
	call	_Unwind_Resume@PLT
.LEHE16:
.L219:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8158:
	.section	.gcc_except_table
.LLSDAC8158:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8158-.LLSDACSBC8158
.LLSDACSBC8158:
	.uleb128 .LEHB16-.LCOLDB19
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
.LLSDACSEC8158:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6actors5actor9textboxes7textboxC2EPS0_PS2_yPKcy, .-_ZN3wze6engine6actors5actor9textboxes7textboxC2EPS0_PS2_yPKcy
	.section	.text.unlikely
	.size	_ZN3wze6engine6actors5actor9textboxes7textboxC2EPS0_PS2_yPKcy.cold, .-_ZN3wze6engine6actors5actor9textboxes7textboxC2EPS0_PS2_yPKcy.cold
.LCOLDE19:
	.text
.LHOTE19:
	.globl	_ZN3wze6engine6actors5actor9textboxes7textboxC1EPS0_PS2_yPKcy
	.set	_ZN3wze6engine6actors5actor9textboxes7textboxC1EPS0_PS2_yPKcy,_ZN3wze6engine6actors5actor9textboxes7textboxC2EPS0_PS2_yPKcy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textboxD2Ev
	.type	_ZN3wze6engine6actors5actor9textboxes7textboxD2Ev, @function
_ZN3wze6engine6actors5actor9textboxes7textboxD2Ev:
.LFB8161:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8161
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	128(%rdi), %rdi
	call	SDL_DestroyTexture@PLT
	leaq	96(%rbx), %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZN3neo6stringD1Ev@PLT
	.cfi_endproc
.LFE8161:
	.section	.gcc_except_table
.LLSDA8161:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8161-.LLSDACSB8161
.LLSDACSB8161:
.LLSDACSE8161:
	.text
	.size	_ZN3wze6engine6actors5actor9textboxes7textboxD2Ev, .-_ZN3wze6engine6actors5actor9textboxes7textboxD2Ev
	.globl	_ZN3wze6engine6actors5actor9textboxes7textboxD1Ev
	.set	_ZN3wze6engine6actors5actor9textboxes7textboxD1Ev,_ZN3wze6engine6actors5actor9textboxes7textboxD2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textbox5GetIDEv
	.type	_ZN3wze6engine6actors5actor9textboxes7textbox5GetIDEv, @function
_ZN3wze6engine6actors5actor9textboxes7textbox5GetIDEv:
.LFB8163:
	.cfi_startproc
	movq	40(%rdi), %rax
	ret
	.cfi_endproc
.LFE8163:
	.size	_ZN3wze6engine6actors5actor9textboxes7textbox5GetIDEv, .-_ZN3wze6engine6actors5actor9textboxes7textbox5GetIDEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textbox4GetXEv
	.type	_ZN3wze6engine6actors5actor9textboxes7textbox4GetXEv, @function
_ZN3wze6engine6actors5actor9textboxes7textbox4GetXEv:
.LFB8164:
	.cfi_startproc
	movsd	48(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8164:
	.size	_ZN3wze6engine6actors5actor9textboxes7textbox4GetXEv, .-_ZN3wze6engine6actors5actor9textboxes7textbox4GetXEv
	.section	.rodata.str1.8
	.align 8
.LC20:
	.string	"wze::engine.actors[].textboxes[].SetX(): X must not be NaN\nParams: X: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textbox4SetXEd
	.type	_ZN3wze6engine6actors5actor9textboxes7textbox4SetXEd, @function
_ZN3wze6engine6actors5actor9textboxes7textbox4SetXEd:
.LFB8165:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movapd	%xmm0, %xmm2
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L242
	movq	8(%rdi), %rax
	movsd	56(%rdi), %xmm3
	movq	%rdi, %rbx
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	ucomisd	%xmm2, %xmm0
	jp	.L227
	jne	.L227
	ucomisd	%xmm3, %xmm1
	jp	.L227
	jne	.L227
	movq	$0x000000000, 80(%rdi)
.L235:
	pxor	%xmm0, %xmm0
	jmp	.L234
	.p2align 4,,10
	.p2align 3
.L227:
	movsd	%xmm2, 8(%rsp)
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movsd	8(%rsp), %xmm2
	movapd	%xmm0, %xmm4
	movsd	56(%rbx), %xmm3
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	movsd	%xmm4, 80(%rbx)
	ucomisd	%xmm0, %xmm2
	jp	.L231
	jne	.L231
	ucomisd	%xmm3, %xmm1
	jp	.L231
	je	.L235
.L231:
	movsd	%xmm2, 8(%rsp)
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	8(%rsp), %xmm2
.L234:
	movsd	%xmm0, 88(%rbx)
	movapd	%xmm2, %xmm0
	movsd	%xmm2, 48(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L242:
	.cfi_restore_state
	leaq	.LC20(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8165:
	.size	_ZN3wze6engine6actors5actor9textboxes7textbox4SetXEd, .-_ZN3wze6engine6actors5actor9textboxes7textbox4SetXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textbox4GetYEv
	.type	_ZN3wze6engine6actors5actor9textboxes7textbox4GetYEv, @function
_ZN3wze6engine6actors5actor9textboxes7textbox4GetYEv:
.LFB8166:
	.cfi_startproc
	movsd	56(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8166:
	.size	_ZN3wze6engine6actors5actor9textboxes7textbox4GetYEv, .-_ZN3wze6engine6actors5actor9textboxes7textbox4GetYEv
	.section	.rodata.str1.8
	.align 8
.LC21:
	.string	"wze::engine.actors[].textboxes[].SetY(): Y must not be NaN\nParams: Y: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textbox4SetYEd
	.type	_ZN3wze6engine6actors5actor9textboxes7textbox4SetYEd, @function
_ZN3wze6engine6actors5actor9textboxes7textbox4SetYEd:
.LFB8167:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movapd	%xmm0, %xmm3
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L262
	movq	8(%rdi), %rax
	movsd	48(%rdi), %xmm2
	movq	%rdi, %rbx
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	ucomisd	%xmm2, %xmm0
	jp	.L247
	jne	.L247
	ucomisd	%xmm1, %xmm3
	jp	.L247
	jne	.L247
	movq	$0x000000000, 80(%rdi)
.L255:
	pxor	%xmm0, %xmm0
	jmp	.L254
	.p2align 4,,10
	.p2align 3
.L247:
	movsd	%xmm3, 8(%rsp)
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movsd	48(%rbx), %xmm2
	movapd	%xmm0, %xmm4
	movsd	8(%rsp), %xmm3
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	movsd	%xmm4, 80(%rbx)
	ucomisd	%xmm2, %xmm0
	jp	.L251
	jne	.L251
	ucomisd	%xmm1, %xmm3
	jp	.L251
	je	.L255
.L251:
	movsd	%xmm3, 8(%rsp)
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	8(%rsp), %xmm3
.L254:
	movsd	%xmm0, 88(%rbx)
	movapd	%xmm3, %xmm0
	movsd	%xmm3, 56(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L262:
	.cfi_restore_state
	leaq	.LC21(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8167:
	.size	_ZN3wze6engine6actors5actor9textboxes7textbox4SetYEd, .-_ZN3wze6engine6actors5actor9textboxes7textbox4SetYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textbox8GetWidthEv
	.type	_ZN3wze6engine6actors5actor9textboxes7textbox8GetWidthEv, @function
_ZN3wze6engine6actors5actor9textboxes7textbox8GetWidthEv:
.LFB8168:
	.cfi_startproc
	movzwl	64(%rdi), %eax
	ret
	.cfi_endproc
.LFE8168:
	.size	_ZN3wze6engine6actors5actor9textboxes7textbox8GetWidthEv, .-_ZN3wze6engine6actors5actor9textboxes7textbox8GetWidthEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textbox9GetHeightEv
	.type	_ZN3wze6engine6actors5actor9textboxes7textbox9GetHeightEv, @function
_ZN3wze6engine6actors5actor9textboxes7textbox9GetHeightEv:
.LFB8169:
	.cfi_startproc
	movzwl	72(%rdi), %eax
	ret
	.cfi_endproc
.LFE8169:
	.size	_ZN3wze6engine6actors5actor9textboxes7textbox9GetHeightEv, .-_ZN3wze6engine6actors5actor9textboxes7textbox9GetHeightEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textbox9SetHeightEt
	.type	_ZN3wze6engine6actors5actor9textboxes7textbox9SetHeightEt, @function
_ZN3wze6engine6actors5actor9textboxes7textbox9SetHeightEt:
.LFB8170:
	.cfi_startproc
	movzwl	%si, %eax
	cmpq	%rax, 72(%rdi)
	jne	.L274
	ret
	.p2align 4,,10
	.p2align 3
.L274:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	%rax, 72(%rdi)
	xorl	%eax, %eax
	movw	%ax, 64(%rdi)
	movq	128(%rdi), %rdi
	call	SDL_DestroyTexture@PLT
	movq	72(%rbx), %rax
	movq	$0, 128(%rbx)
	testq	%rax, %rax
	jne	.L275
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L275:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	_ZN3wze6engine6actors5actor9textboxes7textbox13UpdateTextureEv.part.0.constprop.0
	movq	72(%rbx), %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8170:
	.size	_ZN3wze6engine6actors5actor9textboxes7textbox9SetHeightEt, .-_ZN3wze6engine6actors5actor9textboxes7textbox9SetHeightEt
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textbox9GetStringEv
	.type	_ZN3wze6engine6actors5actor9textboxes7textbox9GetStringEv, @function
_ZN3wze6engine6actors5actor9textboxes7textbox9GetStringEv:
.LFB8171:
	.cfi_startproc
	addq	$96, %rdi
	jmp	_ZN3neo6stringclEv@PLT
	.cfi_endproc
.LFE8171:
	.size	_ZN3wze6engine6actors5actor9textboxes7textbox9GetStringEv, .-_ZN3wze6engine6actors5actor9textboxes7textbox9GetStringEv
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"wze::engine.actors[].textboxes[].SetString(): String must not be NULL\nParams: String: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textbox9SetStringEPKc
	.type	_ZN3wze6engine6actors5actor9textboxes7textbox9SetStringEPKc, @function
_ZN3wze6engine6actors5actor9textboxes7textbox9SetStringEPKc:
.LFB8172:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L285
	leaq	96(%rdi), %r12
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	movq	%r12, %rdi
	call	_ZN3neo6stringneEPKc@PLT
	testb	%al, %al
	jne	.L286
.L280:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L287
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movq	%r12, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	_ZN3neo6stringclEv@PLT
	.p2align 4,,10
	.p2align 3
.L286:
	.cfi_restore_state
	movq	%rsp, %rsi
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%rbp, (%rsp)
	call	_ZN3neo6stringaSESt16initializer_listIPKcE@PLT
	xorl	%eax, %eax
	movq	128(%rbx), %rdi
	movw	%ax, 64(%rbx)
	call	SDL_DestroyTexture@PLT
	cmpq	$0, 72(%rbx)
	movq	$0, 128(%rbx)
	je	.L280
	movq	%rbx, %rdi
	call	_ZN3wze6engine6actors5actor9textboxes7textbox13UpdateTextureEv.part.0.constprop.0
	jmp	.L280
.L287:
	call	__stack_chk_fail@PLT
.L285:
	leaq	.LC22(%rip), %rdi
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8172:
	.size	_ZN3wze6engine6actors5actor9textboxes7textbox9SetStringEPKc, .-_ZN3wze6engine6actors5actor9textboxes7textbox9SetStringEPKc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textbox9GetFontIDEv
	.type	_ZN3wze6engine6actors5actor9textboxes7textbox9GetFontIDEv, @function
_ZN3wze6engine6actors5actor9textboxes7textbox9GetFontIDEv:
.LFB8173:
	.cfi_startproc
	movq	112(%rdi), %rax
	ret
	.cfi_endproc
.LFE8173:
	.size	_ZN3wze6engine6actors5actor9textboxes7textbox9GetFontIDEv, .-_ZN3wze6engine6actors5actor9textboxes7textbox9GetFontIDEv
	.section	.rodata.str1.8
	.align 8
.LC23:
	.string	"wze::engine.actors[].textboxes[].SetFontID(): Font does not exist\nParams: FontID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textbox9SetFontIDEy
	.type	_ZN3wze6engine6actors5actor9textboxes7textbox9SetFontIDEy, @function
_ZN3wze6engine6actors5actor9textboxes7textbox9SetFontIDEy:
.LFB8174:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rsi, %rax
	movq	%rdi, %rbx
	testq	%rsi, %rsi
	je	.L290
	movq	(%rdi), %rdx
	cmpq	368(%rdx), %rsi
	jnb	.L291
	movq	376(%rdx), %rdx
	cmpq	$0, (%rdx,%rsi,8)
	je	.L291
.L290:
	cmpq	%rax, 112(%rbx)
	jne	.L299
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L299:
	.cfi_restore_state
	movq	%rax, 112(%rbx)
	xorl	%eax, %eax
	movq	128(%rbx), %rdi
	movw	%ax, 64(%rbx)
	call	SDL_DestroyTexture@PLT
	cmpq	$0, 72(%rbx)
	movq	$0, 128(%rbx)
	jne	.L293
.L298:
	movq	112(%rbx), %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L293:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	_ZN3wze6engine6actors5actor9textboxes7textbox13UpdateTextureEv.part.0.constprop.0
	jmp	.L298
.L291:
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8174:
	.size	_ZN3wze6engine6actors5actor9textboxes7textbox9SetFontIDEy, .-_ZN3wze6engine6actors5actor9textboxes7textbox9SetFontIDEy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textbox12GetFontStyleEv
	.type	_ZN3wze6engine6actors5actor9textboxes7textbox12GetFontStyleEv, @function
_ZN3wze6engine6actors5actor9textboxes7textbox12GetFontStyleEv:
.LFB8175:
	.cfi_startproc
	movl	120(%rdi), %eax
	ret
	.cfi_endproc
.LFE8175:
	.size	_ZN3wze6engine6actors5actor9textboxes7textbox12GetFontStyleEv, .-_ZN3wze6engine6actors5actor9textboxes7textbox12GetFontStyleEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textbox12SetFontStyleENS_5styleE
	.type	_ZN3wze6engine6actors5actor9textboxes7textbox12SetFontStyleENS_5styleE, @function
_ZN3wze6engine6actors5actor9textboxes7textbox12SetFontStyleENS_5styleE:
.LFB8176:
	.cfi_startproc
	movl	%esi, %eax
	cmpl	%esi, 120(%rdi)
	jne	.L309
	ret
	.p2align 4,,10
	.p2align 3
.L309:
	xorl	%eax, %eax
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movl	%esi, 120(%rdi)
	movw	%ax, 64(%rdi)
	movq	128(%rdi), %rdi
	call	SDL_DestroyTexture@PLT
	cmpq	$0, 72(%rbx)
	movq	$0, 128(%rbx)
	jne	.L303
	movl	120(%rbx), %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L303:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	_ZN3wze6engine6actors5actor9textboxes7textbox13UpdateTextureEv.part.0.constprop.0
	movl	120(%rbx), %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8176:
	.size	_ZN3wze6engine6actors5actor9textboxes7textbox12SetFontStyleENS_5styleE, .-_ZN3wze6engine6actors5actor9textboxes7textbox12SetFontStyleENS_5styleE
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9textboxes7textbox13UpdateTextureEv
	.type	_ZN3wze6engine6actors5actor9textboxes7textbox13UpdateTextureEv, @function
_ZN3wze6engine6actors5actor9textboxes7textbox13UpdateTextureEv:
.LFB8177:
	.cfi_startproc
	xorl	%eax, %eax
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movw	%ax, 64(%rdi)
	movq	128(%rdi), %rdi
	call	SDL_DestroyTexture@PLT
	cmpq	$0, 72(%rbx)
	movq	$0, 128(%rbx)
	jne	.L313
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L313:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	_ZN3wze6engine6actors5actor9textboxes7textbox13UpdateTextureEv.part.0.constprop.0
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8177:
	.size	_ZN3wze6engine6actors5actor9textboxes7textbox13UpdateTextureEv, .-_ZN3wze6engine6actors5actor9textboxes7textbox13UpdateTextureEv
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
