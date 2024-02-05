	.file	"WZEActor.cpp"
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
	.def	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6RemoveEyy.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6RemoveEyy.isra.0
_ZN3neo5arrayIPN3wze6engine6actors5actorEE6RemoveEyy.isra.0:
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
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB6:
	.text
.LHOTB6:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actorC2EPS0_yddttd
	.def	_ZN3wze6engine6actors5actorC2EPS0_yddttd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actorC2EPS0_yddttd
_ZN3wze6engine6actors5actorC2EPS0_yddttd:
.LFB8433:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
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
	subq	$104, %rsp
	.seh_stackalloc	104
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	movaps	%xmm7, 80(%rsp)
	.seh_savexmm	%xmm7, 80
	.seh_endprologue
	movl	224(%rsp), %r12d
	movl	216(%rsp), %ebp
	movzwl	%bp, %eax
	movq	%rdx, %rdi
	movzwl	%r12w, %edx
	movq	%rcx, %rbx
	movq	%r8, %r13
	movq	%rdx, %rsi
	movq	%rdi, (%rcx)
	movq	%rcx, %r8
	movapd	%xmm3, %xmm6
	movhpd	208(%rsp), %xmm6
	salq	$16, %rsi
	orq	%rax, %rsi
	salq	$16, %rsi
	orq	%rdx, %rsi
	movq	%rdi, %rdx
	salq	$16, %rsi
	orq	%rax, %rsi
	leaq	8(%rcx), %rax
	movq	%rax, %rcx
	movq	%rax, 48(%rsp)
.LEHB0:
	call	_ZN3wze6engine6actors5actor6colorsC1EPS0_PS2_
.LEHE0:
	leaq	40(%rbx), %rax
	movq	%rbx, %r8
	movq	%rdi, %rdx
	movq	%rax, %rcx
	movq	%rax, 56(%rsp)
.LEHB1:
	call	_ZN3wze6engine6actors5actor8texturesC1EPS0_PS2_
.LEHE1:
	leaq	72(%rbx), %r14
	movq	%rbx, %r8
	movq	%rdi, %rdx
	movq	%r14, %rcx
.LEHB2:
	call	_ZN3wze6engine6actors5actor9flipbooksC1EPS0_PS2_
.LEHE2:
	leaq	104(%rbx), %r15
	movq	%rbx, %r8
	movq	%rdi, %rdx
	movq	%r15, %rcx
.LEHB3:
	call	_ZN3wze6engine6actors5actor5textsC1EPS0_PS2_
.LEHE3:
	movw	%bp, 200(%rbx)
	pxor	%xmm7, %xmm7
	movzwl	%bp, %ebp
	movq	(%rbx), %rax
	movw	%r12w, 202(%rbx)
	movzwl	%r12w, %r12d
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	movups	%xmm6, 168(%rbx)
	cvtsi2sdl	%r12d, %xmm7
	movapd	%xmm2, %xmm1
	leaq	552(%rax), %rcx
	movups	%xmm6, 184(%rbx)
	pxor	%xmm6, %xmm6
	cvtsi2sdl	%ebp, %xmm6
	movups	%xmm0, 136(%rbx)
	movsd	232(%rsp), %xmm0
	movb	$0, 152(%rbx)
	movq	%r13, 160(%rbx)
	movq	$0x000000000, 208(%rbx)
	movq	$0x000000000, 224(%rbx)
	movapd	%xmm6, %xmm3
	movb	$0, 232(%rbx)
	movq	%rsi, 234(%rbx)
	movsd	%xmm0, 216(%rbx)
	movsd	%xmm7, 32(%rsp)
.LEHB4:
	call	_ZN3wze6engine6vector6LengthEdddd
	mulsd	.LC4(%rip), %xmm0
	movq	(%rbx), %rax
	pxor	%xmm2, %xmm2
	movapd	%xmm6, %xmm3
	movapd	%xmm2, %xmm1
	leaq	552(%rax), %rcx
	movsd	%xmm0, 248(%rbx)
	movsd	%xmm7, 32(%rsp)
	call	_ZN3wze6engine6vector5AngleEdddd
	movq	(%rbx), %rax
	pxor	%xmm3, %xmm3
	movsd	%xmm0, 256(%rbx)
	movapd	%xmm6, %xmm1
	movsd	%xmm7, 32(%rsp)
	movapd	%xmm3, %xmm2
	leaq	552(%rax), %rcx
	call	_ZN3wze6engine6vector5AngleEdddd
.LEHE4:
	movsd	%xmm0, 264(%rbx)
	movaps	64(%rsp), %xmm6
	movaps	80(%rsp), %xmm7
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L35:
	movq	%rax, %rbx
	jmp	.L34
.L38:
	movq	%rax, %rbx
	jmp	.L31
.L37:
	movq	%rax, %rbx
	jmp	.L32
.L36:
	movq	%rax, %rbx
	jmp	.L33
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8433:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8433-.LLSDACSB8433
.LLSDACSB8433:
	.uleb128 .LEHB0-.LFB8433
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8433
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L35-.LFB8433
	.uleb128 0
	.uleb128 .LEHB2-.LFB8433
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L36-.LFB8433
	.uleb128 0
	.uleb128 .LEHB3-.LFB8433
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L37-.LFB8433
	.uleb128 0
	.uleb128 .LEHB4-.LFB8433
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L38-.LFB8433
	.uleb128 0
.LLSDACSE8433:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine6actors5actorC2EPS0_yddttd.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actorC2EPS0_yddttd.cold
	.seh_stackalloc	168
	.seh_savereg	%rbx, 104
	.seh_savereg	%rsi, 112
	.seh_savereg	%rdi, 120
	.seh_savereg	%rbp, 128
	.seh_savexmm	%xmm6, 64
	.seh_savexmm	%xmm7, 80
	.seh_savereg	%r12, 136
	.seh_savereg	%r13, 144
	.seh_savereg	%r14, 152
	.seh_savereg	%r15, 160
	.seh_endprologue
_ZN3wze6engine6actors5actorC2EPS0_yddttd.cold:
.L31:
	movq	%r15, %rcx
	call	_ZN3wze6engine6actors5actor5textsD1Ev
.L32:
	movq	%r14, %rcx
	call	_ZN3wze6engine6actors5actor9flipbooksD1Ev
.L33:
	movq	56(%rsp), %rcx
	call	_ZN3wze6engine6actors5actor8texturesD1Ev
.L34:
	movq	48(%rsp), %rcx
	call	_ZN3wze6engine6actors5actor6colorsD1Ev
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
	.uleb128 .LEHB5-.LCOLDB6
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC8433:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE6:
	.text
.LHOTE6:
	.globl	_ZN3wze6engine6actors5actorC1EPS0_yddttd
	.def	_ZN3wze6engine6actors5actorC1EPS0_yddttd;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actorC1EPS0_yddttd,_ZN3wze6engine6actors5actorC2EPS0_yddttd
	.section .rdata,"dr"
	.align 8
.LC7:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actorD2Ev
	.def	_ZN3wze6engine6actors5actorD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actorD2Ev
_ZN3wze6engine6actors5actorD2Ev:
.LFB8436:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	(%rcx), %rax
	movq	104(%rax), %rdx
	movq	536(%rax), %r8
	movq	%rcx, %rbx
	movq	544(%rax), %rcx
	cmpq	%r8, %rdx
	jnb	.L45
	cmpq	%rbx, (%rcx,%rdx,8)
	je	.L51
.L42:
	movq	112(%rax), %rdx
	cmpq	%r8, %rdx
	jnb	.L45
	cmpq	%rbx, (%rcx,%rdx,8)
	je	.L52
.L44:
	movzbl	232(%rbx), %edx
	movq	688(%rax), %rcx
	cmpq	680(%rax), %rdx
	jnb	.L45
	salq	$4, %rdx
	addq	%rdx, %rcx
	xorl	%edx, %edx
	movq	(%rcx), %r8
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L49:
	movq	8(%rcx), %rax
	cmpq	%rbx, (%rax,%rdx,8)
	je	.L53
	addq	$1, %rdx
.L46:
	cmpq	%rdx, %r8
	jne	.L49
.L48:
	leaq	104(%rbx), %rcx
	call	_ZN3wze6engine6actors5actor5textsD1Ev
	leaq	72(%rbx), %rcx
	call	_ZN3wze6engine6actors5actor9flipbooksD1Ev
	leaq	40(%rbx), %rcx
	call	_ZN3wze6engine6actors5actor8texturesD1Ev
	leaq	8(%rbx), %rcx
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZN3wze6engine6actors5actor6colorsD1Ev
	.p2align 4,,10
	.p2align 3
.L53:
	movl	$1, %r8d
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6RemoveEyy.isra.0
	jmp	.L48
	.p2align 4,,10
	.p2align 3
.L52:
	movq	$0, 112(%rax)
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L51:
	movq	$0, 104(%rax)
	jmp	.L42
.L45:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
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
	.globl	_ZN3wze6engine6actors5actorD1Ev
	.def	_ZN3wze6engine6actors5actorD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actorD1Ev,_ZN3wze6engine6actors5actorD2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor7GetTypeEv
	.def	_ZN3wze6engine6actors5actor7GetTypeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor7GetTypeEv
_ZN3wze6engine6actors5actor7GetTypeEv:
.LFB8438:
	.seh_endprologue
	movq	160(%rcx), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor4GetXEv
	.def	_ZN3wze6engine6actors5actor4GetXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor4GetXEv
_ZN3wze6engine6actors5actor4GetXEv:
.LFB8439:
	.seh_endprologue
	movsd	168(%rcx), %xmm0
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor4GetYEv
	.def	_ZN3wze6engine6actors5actor4GetYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor4GetYEv
_ZN3wze6engine6actors5actor4GetYEv:
.LFB8441:
	.seh_endprologue
	movsd	176(%rcx), %xmm0
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8GetWidthEv
	.def	_ZN3wze6engine6actors5actor8GetWidthEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8GetWidthEv
_ZN3wze6engine6actors5actor8GetWidthEv:
.LFB8443:
	.seh_endprologue
	movzwl	200(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9GetHeightEv
	.def	_ZN3wze6engine6actors5actor9GetHeightEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9GetHeightEv
_ZN3wze6engine6actors5actor9GetHeightEv:
.LFB8445:
	.seh_endprologue
	movzwl	202(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8GetAngleEv
	.def	_ZN3wze6engine6actors5actor8GetAngleEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8GetAngleEv
_ZN3wze6engine6actors5actor8GetAngleEv:
.LFB8447:
	.seh_endprologue
	movsd	208(%rcx), %xmm0
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8GetLayerEv
	.def	_ZN3wze6engine6actors5actor8GetLayerEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8GetLayerEv
_ZN3wze6engine6actors5actor8GetLayerEv:
.LFB8449:
	.seh_endprologue
	movsd	216(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC8:
	.ascii "wze::engine.actors[].SetLayer(): Layer must not be less than 0\12Params: Layer: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8SetLayerEd
	.def	_ZN3wze6engine6actors5actor8SetLayerEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8SetLayerEd
_ZN3wze6engine6actors5actor8SetLayerEd:
.LFB8450:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	ja	.L74
	ucomisd	%xmm0, %xmm1
	jp	.L66
	je	.L75
.L66:
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 216(%rcx)
	addq	$40, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L75:
	movq	$0x000000000, 224(%rcx)
	movq	(%rcx), %rax
	movq	104(%rax), %rdx
	movq	536(%rax), %r9
	movq	544(%rax), %r8
	cmpq	%r9, %rdx
	jnb	.L73
	cmpq	%rcx, (%r8,%rdx,8)
	je	.L76
.L68:
	movq	112(%rax), %rdx
	cmpq	%r9, %rdx
	jnb	.L73
	cmpq	%rcx, (%r8,%rdx,8)
	jne	.L66
	movq	$0, 112(%rax)
	jmp	.L66
	.p2align 4,,10
	.p2align 3
.L76:
	movq	$0, 104(%rax)
	jmp	.L68
.L74:
	leaq	.LC8(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L73:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8GetDepthEv
	.def	_ZN3wze6engine6actors5actor8GetDepthEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8GetDepthEv
_ZN3wze6engine6actors5actor8GetDepthEv:
.LFB8451:
	.seh_endprologue
	movsd	224(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC9:
	.ascii "wze::engine.actors[].SetDepth(): Illegal to set Depth when Layer is 0\12Params: Depth: %lf\12\0"
	.align 8
.LC10:
	.ascii "wze::engine::actors[].SetDepth(): Depth must not be less than 0\12Params: Depth: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8SetDepthEd
	.def	_ZN3wze6engine6actors5actor8SetDepthEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8SetDepthEd
_ZN3wze6engine6actors5actor8SetDepthEd:
.LFB8452:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	pxor	%xmm0, %xmm0
	ucomisd	216(%rcx), %xmm0
	jp	.L79
	je	.L86
.L79:
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	ja	.L87
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 224(%rcx)
	addq	$40, %rsp
	ret
.L86:
	leaq	.LC9(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L87:
	leaq	.LC10(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor17GetCollisionLayerEv
	.def	_ZN3wze6engine6actors5actor17GetCollisionLayerEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor17GetCollisionLayerEv
_ZN3wze6engine6actors5actor17GetCollisionLayerEv:
.LFB8453:
	.seh_endprologue
	movzbl	232(%rcx), %eax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC11:
	.ascii "neo::array+=: Memory allocation failed\12Params: Elements(type, length): %ld, %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor17SetCollisionLayerEh
	.def	_ZN3wze6engine6actors5actor17SetCollisionLayerEh;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor17SetCollisionLayerEh
_ZN3wze6engine6actors5actor17SetCollisionLayerEh:
.LFB8454:
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
	movq	(%rcx), %rax
	movq	%rcx, %rbx
	movl	%edx, %esi
	movl	%edx, %edi
	movzbl	232(%rcx), %edx
	movq	688(%rax), %rcx
	cmpq	680(%rax), %rdx
	jnb	.L98
	salq	$4, %rdx
	addq	%rdx, %rcx
	xorl	%edx, %edx
	movq	(%rcx), %r8
	jmp	.L91
	.p2align 4,,10
	.p2align 3
.L94:
	movq	8(%rcx), %rax
	cmpq	%rbx, (%rax,%rdx,8)
	je	.L99
	addq	$1, %rdx
.L91:
	cmpq	%rdx, %r8
	jne	.L94
	testb	%sil, %sil
	jne	.L100
.L95:
	movl	%edi, %eax
	movb	%sil, 232(%rbx)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L99:
	movl	$1, %r8d
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6RemoveEyy.isra.0
	testb	%sil, %sil
	je	.L95
.L100:
	movq	(%rbx), %rax
	movq	%rbx, 40(%rsp)
	movzbl	%sil, %edx
	movq	688(%rax), %rbp
	cmpq	680(%rax), %rdx
	jnb	.L98
	salq	$4, %rdx
	addq	%rdx, %rbp
	movq	0(%rbp), %rax
	movq	8(%rbp), %rcx
	leaq	1(%rax), %rdx
	movq	%rdx, 0(%rbp)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 8(%rbp)
	testq	%rax, %rax
	je	.L101
	movq	0(%rbp), %rdx
	leaq	40(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo9memCopyToEPKvPvy
	movupd	168(%rbx), %xmm0
	movl	234(%rbx), %eax
	movups	%xmm0, 184(%rbx)
	movl	%eax, 238(%rbx)
	jmp	.L95
.L98:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L101:
	leaq	.LC11(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor14GetHitboxWidthEv
	.def	_ZN3wze6engine6actors5actor14GetHitboxWidthEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor14GetHitboxWidthEv
_ZN3wze6engine6actors5actor14GetHitboxWidthEv:
.LFB8455:
	.seh_endprologue
	movzwl	234(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor15GetHitboxHeightEv
	.def	_ZN3wze6engine6actors5actor15GetHitboxHeightEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor15GetHitboxHeightEv
_ZN3wze6engine6actors5actor15GetHitboxHeightEv:
.LFB8456:
	.seh_endprologue
	movzwl	236(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv
	.def	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv
_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv:
.LFB8457:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
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
	subq	$104, %rsp
	.seh_stackalloc	104
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	movaps	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	movaps	%xmm9, 80(%rsp)
	.seh_savexmm	%xmm9, 80
	.seh_endprologue
	pxor	%xmm1, %xmm1
	movsd	.LC12(%rip), %xmm7
	movsd	208(%rcx), %xmm6
	movq	(%rcx), %rax
	movsd	256(%rcx), %xmm8
	addsd	%xmm6, %xmm8
	addsd	264(%rcx), %xmm6
	movq	%rcx, %rbx
	leaq	552(%rax), %rcx
	movsd	248(%rbx), %xmm2
	movapd	%xmm8, %xmm3
	movapd	%xmm8, %xmm9
	call	_ZN3wze6engine6vector9TerminalXEddd
	addsd	%xmm7, %xmm9
	addsd	%xmm6, %xmm7
	call	round
	movq	(%rbx), %rax
	movapd	%xmm6, %xmm3
	pxor	%xmm1, %xmm1
	movsd	248(%rbx), %xmm2
	cvttsd2sil	%xmm0, %edi
	leaq	552(%rax), %rcx
	call	_ZN3wze6engine6vector9TerminalXEddd
	call	round
	movq	(%rbx), %rax
	movapd	%xmm9, %xmm3
	movsd	248(%rbx), %xmm2
	pxor	%xmm1, %xmm1
	cvttsd2sil	%xmm0, %r15d
	leaq	552(%rax), %rcx
	call	_ZN3wze6engine6vector9TerminalXEddd
	call	round
	movq	(%rbx), %rax
	movapd	%xmm7, %xmm3
	pxor	%xmm1, %xmm1
	movsd	248(%rbx), %xmm2
	cvttsd2sil	%xmm0, %r14d
	leaq	552(%rax), %rcx
	call	_ZN3wze6engine6vector9TerminalXEddd
	call	round
	movq	(%rbx), %rax
	movapd	%xmm8, %xmm3
	movsd	248(%rbx), %xmm2
	pxor	%xmm1, %xmm1
	cvttsd2sil	%xmm0, %r13d
	leaq	552(%rax), %rcx
	call	_ZN3wze6engine6vector9TerminalYEddd
	call	round
	movq	(%rbx), %rax
	movapd	%xmm6, %xmm3
	pxor	%xmm1, %xmm1
	movsd	248(%rbx), %xmm2
	cvttsd2sil	%xmm0, %esi
	leaq	552(%rax), %rcx
	call	_ZN3wze6engine6vector9TerminalYEddd
	call	round
	movq	(%rbx), %rax
	movapd	%xmm9, %xmm3
	movsd	248(%rbx), %xmm2
	pxor	%xmm1, %xmm1
	cvttsd2sil	%xmm0, %r12d
	leaq	552(%rax), %rcx
	call	_ZN3wze6engine6vector9TerminalYEddd
	call	round
	movq	(%rbx), %rax
	movapd	%xmm7, %xmm3
	pxor	%xmm1, %xmm1
	movsd	248(%rbx), %xmm2
	cvttsd2sil	%xmm0, %ebp
	leaq	552(%rax), %rcx
	call	_ZN3wze6engine6vector9TerminalYEddd
	call	round
	cmpl	%r15d, %edi
	movl	%r15d, %eax
	cmovge	%edi, %eax
	cvttsd2sil	%xmm0, %edx
	cmpl	%r14d, %eax
	cmovl	%r14d, %eax
	cmpl	%r13d, %eax
	cmovl	%r13d, %eax
	cmpl	%r15d, %edi
	cmovg	%r15d, %edi
	cmpl	%r14d, %edi
	cmovg	%r14d, %edi
	cmpl	%r13d, %edi
	cmovg	%r13d, %edi
	subl	%edi, %eax
	cmpl	%r12d, %esi
	movw	%ax, 234(%rbx)
	movl	%r12d, %eax
	cmovge	%esi, %eax
	cmpl	%ebp, %eax
	cmovl	%ebp, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	%r12d, %esi
	cmovg	%r12d, %esi
	cmpl	%ebp, %esi
	cmovg	%ebp, %esi
	cmpl	%edx, %esi
	cmovg	%edx, %esi
	subl	%esi, %eax
	movw	%ax, 236(%rbx)
	movaps	32(%rsp), %xmm6
	xorl	%eax, %eax
	movaps	48(%rsp), %xmm7
	movaps	64(%rsp), %xmm8
	movaps	80(%rsp), %xmm9
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv
	.def	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv
_ZN3wze6engine6actors5actor21UpdateMembersPositionEv:
.LFB8458:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	24(%rcx), %rdx
	movq	%rcx, %rbx
	cmpq	$1, %rdx
	jbe	.L113
	movq	32(%rcx), %rcx
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L112:
	movq	(%rcx,%rsi,8), %rax
	leaq	0(,%rsi,8), %rdi
	testq	%rax, %rax
	je	.L109
	movq	(%rbx), %rdx
	movsd	56(%rax), %xmm3
	movsd	48(%rax), %xmm2
	movsd	168(%rbx), %xmm1
	leaq	552(%rdx), %rcx
	call	_ZN3wze6engine6vector9TerminalXEddd
	movq	32(%rbx), %rax
	cmpq	24(%rbx), %rsi
	jnb	.L148
	movq	(%rax,%rdi), %rax
	movq	(%rbx), %rdx
	movsd	176(%rbx), %xmm1
	movsd	56(%rax), %xmm3
	movsd	48(%rax), %xmm2
	movsd	%xmm0, 32(%rax)
	leaq	552(%rdx), %rcx
	call	_ZN3wze6engine6vector9TerminalYEddd
	movq	24(%rbx), %rdx
	movq	32(%rbx), %rcx
	cmpq	%rdx, %rsi
	jnb	.L148
	movq	(%rcx,%rdi), %rax
	movsd	%xmm0, 40(%rax)
.L109:
	addq	$1, %rsi
	cmpq	%rdx, %rsi
	jb	.L112
.L113:
	movq	56(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L108
	movq	64(%rbx), %rcx
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L119:
	movq	(%rcx,%rsi,8), %rax
	leaq	0(,%rsi,8), %rdi
	testq	%rax, %rax
	je	.L116
	movq	(%rbx), %rdx
	movsd	64(%rax), %xmm3
	movsd	56(%rax), %xmm2
	movsd	168(%rbx), %xmm1
	leaq	552(%rdx), %rcx
	call	_ZN3wze6engine6vector9TerminalXEddd
	movq	64(%rbx), %rax
	cmpq	56(%rbx), %rsi
	jnb	.L148
	movq	(%rax,%rdi), %rax
	movq	(%rbx), %rdx
	movsd	176(%rbx), %xmm1
	movsd	64(%rax), %xmm3
	movsd	56(%rax), %xmm2
	movsd	%xmm0, 40(%rax)
	leaq	552(%rdx), %rcx
	call	_ZN3wze6engine6vector9TerminalYEddd
	movq	56(%rbx), %rdx
	movq	64(%rbx), %rcx
	cmpq	%rdx, %rsi
	jnb	.L148
	movq	(%rcx,%rdi), %rax
	movsd	%xmm0, 48(%rax)
.L116:
	addq	$1, %rsi
	cmpq	%rdx, %rsi
	jb	.L119
.L108:
	movq	88(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L115
	movq	96(%rbx), %rcx
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L125:
	movq	(%rcx,%rsi,8), %rax
	leaq	0(,%rsi,8), %rdi
	testq	%rax, %rax
	je	.L122
	movq	(%rbx), %rdx
	movsd	64(%rax), %xmm3
	movsd	56(%rax), %xmm2
	movsd	168(%rbx), %xmm1
	leaq	552(%rdx), %rcx
	call	_ZN3wze6engine6vector9TerminalXEddd
	movq	96(%rbx), %rax
	cmpq	88(%rbx), %rsi
	jnb	.L148
	movq	(%rax,%rdi), %rax
	movq	(%rbx), %rdx
	movsd	176(%rbx), %xmm1
	movsd	64(%rax), %xmm3
	movsd	56(%rax), %xmm2
	movsd	%xmm0, 40(%rax)
	leaq	552(%rdx), %rcx
	call	_ZN3wze6engine6vector9TerminalYEddd
	movq	88(%rbx), %rdx
	movq	96(%rbx), %rcx
	cmpq	%rdx, %rsi
	jnb	.L148
	movq	(%rcx,%rdi), %rax
	movsd	%xmm0, 48(%rax)
.L122:
	addq	$1, %rsi
	cmpq	%rdx, %rsi
	jb	.L125
.L115:
	movq	120(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L146
	movq	128(%rbx), %rcx
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L129:
	movq	(%rcx,%rsi,8), %rax
	leaq	0(,%rsi,8), %rdi
	testq	%rax, %rax
	je	.L126
	movq	(%rbx), %rdx
	movsd	72(%rax), %xmm3
	movsd	64(%rax), %xmm2
	movsd	168(%rbx), %xmm1
	leaq	552(%rdx), %rcx
	call	_ZN3wze6engine6vector9TerminalXEddd
	movq	128(%rbx), %rax
	cmpq	120(%rbx), %rsi
	jnb	.L148
	movq	(%rax,%rdi), %rax
	movq	(%rbx), %rdx
	movsd	176(%rbx), %xmm1
	movsd	72(%rax), %xmm3
	movsd	64(%rax), %xmm2
	movsd	%xmm0, 40(%rax)
	leaq	552(%rdx), %rcx
	call	_ZN3wze6engine6vector9TerminalYEddd
	movq	120(%rbx), %rdx
	movq	128(%rbx), %rcx
	cmpq	%rdx, %rsi
	jnb	.L148
	movq	(%rcx,%rdi), %rax
	movsd	%xmm0, 48(%rax)
.L126:
	addq	$1, %rsi
	cmpq	%rdx, %rsi
	jb	.L129
.L146:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L148:
	leaq	.LC7(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor4SetXEd
	.def	_ZN3wze6engine6actors5actor4SetXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor4SetXEd
_ZN3wze6engine6actors5actor4SetXEd:
.LFB8440:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movzbl	232(%rcx), %edx
	movq	%rcx, %rbx
	movsd	%xmm1, 168(%rcx)
	testb	%dl, %dl
	je	.L150
	movq	(%rcx), %rax
	leaq	672(%rax), %rcx
	call	_ZN3wze6engine9collision21ResolveCollisionLayerEy
	movsd	168(%rbx), %xmm0
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L150:
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv
	movsd	168(%rbx), %xmm0
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor4SetYEd
	.def	_ZN3wze6engine6actors5actor4SetYEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor4SetYEd
_ZN3wze6engine6actors5actor4SetYEd:
.LFB8442:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movzbl	232(%rcx), %edx
	movq	%rcx, %rbx
	movsd	%xmm1, 176(%rcx)
	testb	%dl, %dl
	je	.L153
	movq	(%rcx), %rax
	leaq	672(%rax), %rcx
	call	_ZN3wze6engine9collision21ResolveCollisionLayerEy
	movsd	176(%rbx), %xmm0
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L153:
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv
	movsd	176(%rbx), %xmm0
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8SetWidthEt
	.def	_ZN3wze6engine6actors5actor8SetWidthEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8SetWidthEt
_ZN3wze6engine6actors5actor8SetWidthEt:
.LFB8444:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	pxor	%xmm6, %xmm6
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	movapd	%xmm2, %xmm1
	movq	(%rcx), %rax
	movq	%rcx, %rbx
	movw	%dx, 200(%rcx)
	movzwl	%dx, %edx
	leaq	552(%rax), %rcx
	movzwl	202(%rbx), %eax
	cvtsi2sdl	%edx, %xmm6
	cvtsi2sdl	%eax, %xmm0
	movapd	%xmm6, %xmm3
	movsd	%xmm0, 32(%rsp)
	call	_ZN3wze6engine6vector6LengthEdddd
	movq	(%rbx), %rax
	pxor	%xmm2, %xmm2
	movapd	%xmm6, %xmm3
	mulsd	.LC4(%rip), %xmm0
	movapd	%xmm2, %xmm1
	leaq	552(%rax), %rcx
	movzwl	202(%rbx), %eax
	movsd	%xmm0, 248(%rbx)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, 32(%rsp)
	call	_ZN3wze6engine6vector5AngleEdddd
	movq	(%rbx), %rax
	pxor	%xmm3, %xmm3
	movapd	%xmm6, %xmm1
	movsd	%xmm0, 256(%rbx)
	pxor	%xmm0, %xmm0
	movapd	%xmm3, %xmm2
	leaq	552(%rax), %rcx
	movzwl	202(%rbx), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, 32(%rsp)
	call	_ZN3wze6engine6vector5AngleEdddd
	movq	%rbx, %rcx
	movsd	%xmm0, 264(%rbx)
	call	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv
	movzbl	232(%rbx), %edx
	testb	%dl, %dl
	je	.L156
	movq	(%rbx), %rax
	leaq	672(%rax), %rcx
	call	_ZN3wze6engine9collision21ResolveCollisionLayerEy
.L157:
	movzwl	200(%rbx), %eax
	movaps	48(%rsp), %xmm6
	addq	$64, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L156:
	movq	%rbx, %rcx
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv
	jmp	.L157
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9SetHeightEt
	.def	_ZN3wze6engine6actors5actor9SetHeightEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9SetHeightEt
_ZN3wze6engine6actors5actor9SetHeightEt:
.LFB8446:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	pxor	%xmm6, %xmm6
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	movapd	%xmm2, %xmm1
	movzwl	200(%rcx), %eax
	cvtsi2sdl	%eax, %xmm3
	movw	%dx, 202(%rcx)
	movzwl	%dx, %edx
	movq	%rcx, %rbx
	cvtsi2sdl	%edx, %xmm6
	movq	(%rcx), %rdx
	leaq	552(%rdx), %rcx
	movsd	%xmm6, 32(%rsp)
	call	_ZN3wze6engine6vector6LengthEdddd
	pxor	%xmm3, %xmm3
	movq	(%rbx), %rdx
	pxor	%xmm2, %xmm2
	movzwl	200(%rbx), %eax
	mulsd	.LC4(%rip), %xmm0
	movapd	%xmm2, %xmm1
	leaq	552(%rdx), %rcx
	cvtsi2sdl	%eax, %xmm3
	movsd	%xmm0, 248(%rbx)
	movsd	%xmm6, 32(%rsp)
	call	_ZN3wze6engine6vector5AngleEdddd
	pxor	%xmm1, %xmm1
	movq	(%rbx), %rcx
	pxor	%xmm3, %xmm3
	movzwl	200(%rbx), %eax
	movsd	%xmm0, 256(%rbx)
	movapd	%xmm3, %xmm2
	addq	$552, %rcx
	movsd	%xmm6, 32(%rsp)
	cvtsi2sdl	%eax, %xmm1
	call	_ZN3wze6engine6vector5AngleEdddd
	movq	%rbx, %rcx
	movsd	%xmm0, 264(%rbx)
	call	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv
	movzbl	232(%rbx), %edx
	testb	%dl, %dl
	je	.L159
	movq	(%rbx), %rax
	leaq	672(%rax), %rcx
	call	_ZN3wze6engine9collision21ResolveCollisionLayerEy
.L160:
	movzwl	202(%rbx), %eax
	movaps	48(%rsp), %xmm6
	addq	$64, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L159:
	movq	%rbx, %rcx
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv
	jmp	.L160
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8SetAngleEd
	.def	_ZN3wze6engine6actors5actor8SetAngleEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8SetAngleEd
_ZN3wze6engine6actors5actor8SetAngleEd:
.LFB8448:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	24(%rcx), %rdx
	movapd	%xmm1, %xmm0
	movq	%rcx, %rbx
	subsd	208(%rcx), %xmm0
	movsd	%xmm1, 208(%rcx)
	cmpq	$1, %rdx
	jbe	.L162
	movq	32(%rcx), %rcx
	leaq	8(%rcx), %rax
	leaq	(%rcx,%rdx,8), %rcx
	jmp	.L164
	.p2align 4,,10
	.p2align 3
.L163:
	addq	$8, %rax
	cmpq	%rcx, %rax
	je	.L162
.L164:
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L163
	cmpb	$0, 24(%rdx)
	je	.L163
	movsd	56(%rdx), %xmm1
	addq	$8, %rax
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 56(%rdx)
	cmpq	%rcx, %rax
	jne	.L164
.L162:
	movq	56(%rbx), %rax
	cmpq	$1, %rax
	jbe	.L165
	movq	64(%rbx), %rcx
	leaq	8(%rcx), %rdx
	leaq	(%rcx,%rax,8), %rcx
	jmp	.L170
	.p2align 4,,10
	.p2align 3
.L168:
	cmpb	$0, 35(%rax)
	jne	.L192
.L167:
	addq	$8, %rdx
	cmpq	%rcx, %rdx
	je	.L165
.L170:
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L167
	cmpb	$0, 34(%rax)
	je	.L168
	movsd	24(%rax), %xmm1
	cmpb	$0, 35(%rax)
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 24(%rax)
	je	.L167
.L192:
	movsd	64(%rax), %xmm1
	addq	$8, %rdx
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 64(%rax)
	cmpq	%rcx, %rdx
	jne	.L170
.L165:
	movq	88(%rbx), %rax
	cmpq	$1, %rax
	jbe	.L171
	movq	96(%rbx), %rcx
	leaq	8(%rcx), %rdx
	leaq	(%rcx,%rax,8), %rcx
	jmp	.L176
	.p2align 4,,10
	.p2align 3
.L174:
	cmpb	$0, 35(%rax)
	jne	.L193
.L173:
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	je	.L171
.L176:
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L173
	cmpb	$0, 34(%rax)
	je	.L174
	movsd	24(%rax), %xmm1
	cmpb	$0, 35(%rax)
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 24(%rax)
	je	.L173
.L193:
	movsd	64(%rax), %xmm1
	addq	$8, %rdx
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 64(%rax)
	cmpq	%rdx, %rcx
	jne	.L176
.L171:
	movq	120(%rbx), %rax
	cmpq	$1, %rax
	jbe	.L177
	movq	128(%rbx), %rcx
	leaq	8(%rcx), %rdx
	leaq	(%rcx,%rax,8), %rcx
	jmp	.L182
	.p2align 4,,10
	.p2align 3
.L180:
	cmpb	$0, 35(%rax)
	jne	.L194
.L179:
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	je	.L177
.L182:
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L179
	cmpb	$0, 34(%rax)
	je	.L180
	movsd	24(%rax), %xmm1
	cmpb	$0, 35(%rax)
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 24(%rax)
	je	.L179
.L194:
	movsd	72(%rax), %xmm1
	addq	$8, %rdx
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 72(%rax)
	cmpq	%rdx, %rcx
	jne	.L182
.L177:
	movq	%rbx, %rcx
	call	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv
	movzbl	232(%rbx), %edx
	testb	%dl, %dl
	jne	.L195
	movq	%rbx, %rcx
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv
	movsd	208(%rbx), %xmm0
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L195:
	movq	(%rbx), %rax
	leaq	672(%rax), %rcx
	call	_ZN3wze6engine9collision21ResolveCollisionLayerEy
	movsd	208(%rbx), %xmm0
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC4:
	.long	0
	.long	1071644672
	.align 8
.LC12:
	.long	0
	.long	1080459264
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor6colorsC1EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor8texturesC1EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9flipbooksC1EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor5textsC1EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector6LengthEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector5AngleEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor5textsD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9flipbooksD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor8texturesD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor6colorsD1Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo9memCopyToEPKvPvy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector9TerminalXEddd;	.scl	2;	.type	32;	.endef
	.def	round;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector9TerminalYEddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine9collision21ResolveCollisionLayerEy;	.scl	2;	.type	32;	.endef
