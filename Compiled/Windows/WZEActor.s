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
.LFB8627:
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
	.globl	_ZN3wze6engine6actors5actorC2EPS0_yPvyddttd
	.def	_ZN3wze6engine6actors5actorC2EPS0_yPvyddttd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actorC2EPS0_yPvyddttd
_ZN3wze6engine6actors5actorC2EPS0_yPvyddttd:
.LFB8422:
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
	movl	240(%rsp), %r12d
	movl	232(%rsp), %ebp
	movq	216(%rsp), %xmm6
	movhpd	224(%rsp), %xmm6
	movzwl	%bp, %eax
	movq	%rdx, %rdi
	movzwl	%r12w, %edx
	movq	%rcx, %rbx
	movq	%r8, %r14
	movq	%rdx, %rsi
	movq	%rdi, (%rcx)
	movq	%rcx, %r8
	movq	%r9, %r13
	salq	$16, %rsi
	orq	%rax, %rsi
	salq	$16, %rsi
	orq	%rdx, %rsi
	movq	%rdi, %rdx
	salq	$16, %rsi
	orq	%rax, %rsi
	leaq	8(%rcx), %rax
	movq	%rax, %rcx
	movq	%rax, 32(%rsp)
.LEHB0:
	call	_ZN3wze6engine6actors5actor6colorsC1EPS0_PS2_
.LEHE0:
	leaq	40(%rbx), %rax
	movq	%rbx, %r8
	movq	%rdi, %rdx
	movq	%rax, %rcx
	movq	%rax, 40(%rsp)
.LEHB1:
	call	_ZN3wze6engine6actors5actor8texturesC1EPS0_PS2_
.LEHE1:
	leaq	72(%rbx), %rax
	movq	%rbx, %r8
	movq	%rdi, %rdx
	movq	%rax, %rcx
	movq	%rax, 48(%rsp)
.LEHB2:
	call	_ZN3wze6engine6actors5actor9flipbooksC1EPS0_PS2_
.LEHE2:
	leaq	104(%rbx), %rax
	movq	%rbx, %r8
	movq	%rdi, %rdx
	movq	%rax, %rcx
	movq	%rax, 56(%rsp)
.LEHB3:
	call	_ZN3wze6engine6actors5actor5textsC1EPS0_PS2_
.LEHE3:
	leaq	136(%rbx), %r15
	movq	%rbx, %r8
	movq	%rdi, %rdx
	movq	%r15, %rcx
.LEHB4:
	call	_ZN3wze6engine6actors5actor12overlapboxesC1EPS0_PS2_
.LEHE4:
	movw	%bp, 256(%rbx)
	pxor	%xmm7, %xmm7
	movzwl	%bp, %ebp
	movq	208(%rsp), %rax
	movw	%r12w, 258(%rbx)
	movzwl	%r12w, %r12d
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	movups	%xmm6, 224(%rbx)
	cvtsi2sdl	%r12d, %xmm7
	movups	%xmm6, 240(%rbx)
	pxor	%xmm6, %xmm6
	cvtsi2sdl	%ebp, %xmm6
	movups	%xmm0, 176(%rbx)
	movsd	248(%rsp), %xmm0
	movb	$1, 168(%rbx)
	movb	$0, 192(%rbx)
	movapd	%xmm7, %xmm3
	movq	%r14, 200(%rbx)
	movq	%r13, 208(%rbx)
	movapd	%xmm6, %xmm2
	movq	%rax, 216(%rbx)
	movq	$0x000000000, 264(%rbx)
	movq	$0x000000000, 280(%rbx)
	movb	$0, 288(%rbx)
	movq	%rsi, 290(%rbx)
	movsd	%xmm0, 272(%rbx)
	movapd	%xmm1, %xmm0
.LEHB5:
	call	_ZN3wze6engine6vector6LengthEdddd
	mulsd	.LC4(%rip), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	movsd	%xmm0, 304(%rbx)
	jp	.L31
	jne	.L31
	movsd	%xmm1, 312(%rbx)
.L33:
	pxor	%xmm0, %xmm0
.L35:
	movsd	%xmm0, 320(%rbx)
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
	.p2align 4,,10
	.p2align 3
.L31:
	pxor	%xmm1, %xmm1
	movapd	%xmm7, %xmm3
	movapd	%xmm6, %xmm2
	movapd	%xmm1, %xmm0
	call	_ZN3wze6engine6vector5AngleEdddd
	movsd	304(%rbx), %xmm1
	movsd	%xmm0, 312(%rbx)
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jp	.L47
	je	.L33
.L47:
	pxor	%xmm2, %xmm2
	movapd	%xmm7, %xmm3
	movapd	%xmm6, %xmm0
	movapd	%xmm2, %xmm1
	call	_ZN3wze6engine6vector5AngleEdddd
.LEHE5:
	jmp	.L35
.L45:
	movq	%rax, %rbx
	jmp	.L36
.L44:
	movq	%rax, %rbx
	jmp	.L37
.L42:
	movq	%rax, %rbx
	jmp	.L39
.L43:
	movq	%rax, %rbx
	jmp	.L38
.L41:
	movq	%rax, %rbx
	jmp	.L40
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8422:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8422-.LLSDACSB8422
.LLSDACSB8422:
	.uleb128 .LEHB0-.LFB8422
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8422
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L41-.LFB8422
	.uleb128 0
	.uleb128 .LEHB2-.LFB8422
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L42-.LFB8422
	.uleb128 0
	.uleb128 .LEHB3-.LFB8422
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L43-.LFB8422
	.uleb128 0
	.uleb128 .LEHB4-.LFB8422
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L44-.LFB8422
	.uleb128 0
	.uleb128 .LEHB5-.LFB8422
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L45-.LFB8422
	.uleb128 0
.LLSDACSE8422:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine6actors5actorC2EPS0_yPvyddttd.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actorC2EPS0_yPvyddttd.cold
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
_ZN3wze6engine6actors5actorC2EPS0_yPvyddttd.cold:
.L36:
	movq	%r15, %rcx
	call	_ZN3wze6engine6actors5actor12overlapboxesD1Ev
.L37:
	movq	56(%rsp), %rcx
	call	_ZN3wze6engine6actors5actor5textsD1Ev
.L38:
	movq	48(%rsp), %rcx
	call	_ZN3wze6engine6actors5actor9flipbooksD1Ev
.L39:
	movq	40(%rsp), %rcx
	call	_ZN3wze6engine6actors5actor8texturesD1Ev
.L40:
	movq	32(%rsp), %rcx
	call	_ZN3wze6engine6actors5actor6colorsD1Ev
	movq	%rbx, %rcx
.LEHB6:
	call	_Unwind_Resume
	nop
.LEHE6:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8422:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8422-.LLSDACSBC8422
.LLSDACSBC8422:
	.uleb128 .LEHB6-.LCOLDB6
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSEC8422:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE6:
	.text
.LHOTE6:
	.globl	_ZN3wze6engine6actors5actorC1EPS0_yPvyddttd
	.def	_ZN3wze6engine6actors5actorC1EPS0_yPvyddttd;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actorC1EPS0_yPvyddttd,_ZN3wze6engine6actors5actorC2EPS0_yPvyddttd
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
.LFB8425:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	(%rcx), %r9
	movzbl	288(%rcx), %edx
	movq	%rcx, %rbx
	movq	288(%r9), %rcx
	cmpq	280(%r9), %rdx
	jnb	.L60
	salq	$4, %rdx
	addq	%rdx, %rcx
	xorl	%edx, %edx
	movq	(%rcx), %r8
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L54:
	movq	8(%rcx), %rax
	cmpq	%rbx, (%rax,%rdx,8)
	je	.L61
	addq	$1, %rdx
.L51:
	cmpq	%rdx, %r8
	jne	.L54
.L53:
	movq	128(%r9), %rdx
	movq	248(%r9), %rcx
	movq	256(%r9), %rax
	cmpq	%rcx, %rdx
	jnb	.L60
	cmpq	%rbx, (%rax,%rdx,8)
	je	.L62
.L56:
	movq	136(%r9), %rdx
	cmpq	%rcx, %rdx
	jnb	.L60
	cmpq	%rbx, (%rax,%rdx,8)
	je	.L63
.L58:
	leaq	136(%rbx), %rcx
	call	_ZN3wze6engine6actors5actor12overlapboxesD1Ev
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
.L61:
	movl	$1, %r8d
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6RemoveEyy.isra.0
	movq	(%rbx), %r9
	jmp	.L53
	.p2align 4,,10
	.p2align 3
.L63:
	movq	$0, 136(%r9)
	jmp	.L58
	.p2align 4,,10
	.p2align 3
.L62:
	movq	$0, 128(%r9)
	jmp	.L56
.L60:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
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
	.globl	_ZN3wze6engine6actors5actorD1Ev
	.def	_ZN3wze6engine6actors5actorD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actorD1Ev,_ZN3wze6engine6actors5actorD2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5GetIDEv
	.def	_ZN3wze6engine6actors5actor5GetIDEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor5GetIDEv
_ZN3wze6engine6actors5actor5GetIDEv:
.LFB8427:
	.seh_endprologue
	movq	200(%rcx), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor7GetTypeEv
	.def	_ZN3wze6engine6actors5actor7GetTypeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor7GetTypeEv
_ZN3wze6engine6actors5actor7GetTypeEv:
.LFB8428:
	.seh_endprologue
	movq	216(%rcx), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor4GetXEv
	.def	_ZN3wze6engine6actors5actor4GetXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor4GetXEv
_ZN3wze6engine6actors5actor4GetXEv:
.LFB8429:
	.seh_endprologue
	movsd	224(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC8:
	.ascii "wze::engine.actors[].SetX(): X must not be NaN\12Params: X: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor4SetXEd
	.def	_ZN3wze6engine6actors5actor4SetXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor4SetXEd
_ZN3wze6engine6actors5actor4SetXEd:
.LFB8430:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movq	%rcx, %rbx
	jp	.L72
	movq	(%rcx), %rax
	movzbl	288(%rcx), %edx
	movsd	%xmm1, 224(%rcx)
	movq	%rbx, %r8
	leaq	264(%rax), %rcx
	call	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE
	movsd	224(%rbx), %xmm0
	addq	$32, %rsp
	popq	%rbx
	ret
.L72:
	leaq	.LC8(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor4GetYEv
	.def	_ZN3wze6engine6actors5actor4GetYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor4GetYEv
_ZN3wze6engine6actors5actor4GetYEv:
.LFB8431:
	.seh_endprologue
	movsd	232(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC9:
	.ascii "wze::engine.actors[].SetY(): Y must not be NaN\12Params: Y: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor4SetYEd
	.def	_ZN3wze6engine6actors5actor4SetYEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor4SetYEd
_ZN3wze6engine6actors5actor4SetYEd:
.LFB8432:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movq	%rcx, %rbx
	jp	.L79
	movq	(%rcx), %rax
	movzbl	288(%rcx), %edx
	movsd	%xmm1, 232(%rcx)
	movq	%rbx, %r8
	leaq	264(%rax), %rcx
	call	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE
	movsd	232(%rbx), %xmm0
	addq	$32, %rsp
	popq	%rbx
	ret
.L79:
	leaq	.LC9(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8GetWidthEv
	.def	_ZN3wze6engine6actors5actor8GetWidthEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8GetWidthEv
_ZN3wze6engine6actors5actor8GetWidthEv:
.LFB8433:
	.seh_endprologue
	movzwl	256(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9GetHeightEv
	.def	_ZN3wze6engine6actors5actor9GetHeightEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9GetHeightEv
_ZN3wze6engine6actors5actor9GetHeightEv:
.LFB8435:
	.seh_endprologue
	movzwl	258(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8GetAngleEv
	.def	_ZN3wze6engine6actors5actor8GetAngleEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8GetAngleEv
_ZN3wze6engine6actors5actor8GetAngleEv:
.LFB8437:
	.seh_endprologue
	movsd	264(%rcx), %xmm0
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8GetLayerEv
	.def	_ZN3wze6engine6actors5actor8GetLayerEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8GetLayerEv
_ZN3wze6engine6actors5actor8GetLayerEv:
.LFB8439:
	.seh_endprologue
	movsd	272(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC10:
	.ascii "wze::engine.actors[].SetLayer(): Layer must not be NaN\12Params: Layer: %lf\12\0"
	.align 8
.LC11:
	.ascii "wze::engine.actors[].SetLayer(): Layer must not be less than 0\12Params: Layer: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8SetLayerEd
	.def	_ZN3wze6engine6actors5actor8SetLayerEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8SetLayerEd
_ZN3wze6engine6actors5actor8SetLayerEd:
.LFB8440:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L101
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	ja	.L102
	ucomisd	%xmm0, %xmm1
	jp	.L91
	je	.L103
.L91:
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 272(%rcx)
	addq	$40, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L103:
	movq	$0x000000000, 280(%rcx)
	movq	(%rcx), %rax
	movq	128(%rax), %rdx
	movq	248(%rax), %r9
	movq	256(%rax), %r8
	cmpq	%r9, %rdx
	jnb	.L100
	cmpq	%rcx, (%r8,%rdx,8)
	je	.L104
.L93:
	movq	136(%rax), %rdx
	cmpq	%r9, %rdx
	jnb	.L100
	cmpq	%rcx, (%r8,%rdx,8)
	jne	.L91
	movq	$0, 136(%rax)
	jmp	.L91
	.p2align 4,,10
	.p2align 3
.L104:
	movq	$0, 128(%rax)
	jmp	.L93
.L101:
	leaq	.LC10(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L102:
	leaq	.LC11(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L100:
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
.LFB8441:
	.seh_endprologue
	movsd	280(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC12:
	.ascii "wze::engine.actors[].SetDepth(): Depth must not be NaN\12Params: Depth: %lf\12\0"
	.align 8
.LC13:
	.ascii "wze::engine::actors[].SetDepth(): Depth must not be less than 0\12Params: Depth: %lf\12\0"
	.align 8
.LC14:
	.ascii "wze::engine.actors[].SetDepth(): Illegal to set non-zero Depth when Layer is 0\12Params: Depth: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8SetDepthEd
	.def	_ZN3wze6engine6actors5actor8SetDepthEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8SetDepthEd
_ZN3wze6engine6actors5actor8SetDepthEd:
.LFB8442:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L120
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	ja	.L121
	comisd	%xmm0, %xmm1
	jbe	.L111
	ucomisd	272(%rcx), %xmm0
	jp	.L111
	je	.L122
.L111:
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 280(%rcx)
	addq	$40, %rsp
	ret
.L120:
	leaq	.LC12(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L121:
	leaq	.LC13(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L122:
	leaq	.LC14(%rip), %rcx
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
.LFB8443:
	.seh_endprologue
	movzbl	288(%rcx), %eax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC15:
	.ascii "neo::array+=: Memory allocation failed\12Params: Elements(type, length): %ld, %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor17SetCollisionLayerEh
	.def	_ZN3wze6engine6actors5actor17SetCollisionLayerEh;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor17SetCollisionLayerEh
_ZN3wze6engine6actors5actor17SetCollisionLayerEh:
.LFB8444:
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
	movzbl	288(%rcx), %edx
	movq	288(%rax), %rcx
	cmpq	280(%rax), %rdx
	jnb	.L133
	salq	$4, %rdx
	addq	%rdx, %rcx
	xorl	%edx, %edx
	movq	(%rcx), %r8
	jmp	.L126
	.p2align 4,,10
	.p2align 3
.L129:
	movq	8(%rcx), %rax
	cmpq	%rbx, (%rax,%rdx,8)
	je	.L134
	addq	$1, %rdx
.L126:
	cmpq	%rdx, %r8
	jne	.L129
	testb	%sil, %sil
	jne	.L135
.L130:
	movl	%edi, %eax
	movb	%sil, 288(%rbx)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L134:
	movl	$1, %r8d
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6RemoveEyy.isra.0
	testb	%sil, %sil
	je	.L130
.L135:
	movq	(%rbx), %rax
	movq	%rbx, 40(%rsp)
	movzbl	%sil, %edx
	movq	288(%rax), %rbp
	cmpq	280(%rax), %rdx
	jnb	.L133
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
	je	.L136
	movq	0(%rbp), %rdx
	leaq	40(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy
	jmp	.L130
.L133:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L136:
	leaq	.LC15(%rip), %rcx
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
.LFB8445:
	.seh_endprologue
	movzwl	290(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor15GetHitboxHeightEv
	.def	_ZN3wze6engine6actors5actor15GetHitboxHeightEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor15GetHitboxHeightEv
_ZN3wze6engine6actors5actor15GetHitboxHeightEv:
.LFB8446:
	.seh_endprologue
	movzwl	292(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv
	.def	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv
_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv:
.LFB8447:
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
	pxor	%xmm0, %xmm0
	movsd	.LC16(%rip), %xmm7
	movsd	264(%rcx), %xmm6
	movsd	304(%rcx), %xmm1
	movsd	312(%rcx), %xmm8
	addsd	%xmm6, %xmm8
	addsd	320(%rcx), %xmm6
	movq	%rcx, %rbx
	movapd	%xmm8, %xmm2
	movapd	%xmm8, %xmm9
	call	_ZN3wze6engine6vector9TerminalXEddd
	addsd	%xmm7, %xmm9
	addsd	%xmm6, %xmm7
	call	round
	movsd	304(%rbx), %xmm1
	movapd	%xmm6, %xmm2
	cvttsd2sil	%xmm0, %edi
	pxor	%xmm0, %xmm0
	call	_ZN3wze6engine6vector9TerminalXEddd
	call	round
	movsd	304(%rbx), %xmm1
	movapd	%xmm9, %xmm2
	cvttsd2sil	%xmm0, %r15d
	pxor	%xmm0, %xmm0
	call	_ZN3wze6engine6vector9TerminalXEddd
	call	round
	movsd	304(%rbx), %xmm1
	movapd	%xmm7, %xmm2
	cvttsd2sil	%xmm0, %r14d
	pxor	%xmm0, %xmm0
	call	_ZN3wze6engine6vector9TerminalXEddd
	call	round
	movsd	304(%rbx), %xmm1
	movapd	%xmm8, %xmm2
	cvttsd2sil	%xmm0, %r13d
	pxor	%xmm0, %xmm0
	call	_ZN3wze6engine6vector9TerminalYEddd
	call	round
	movsd	304(%rbx), %xmm1
	movapd	%xmm6, %xmm2
	cvttsd2sil	%xmm0, %esi
	pxor	%xmm0, %xmm0
	call	_ZN3wze6engine6vector9TerminalYEddd
	call	round
	movsd	304(%rbx), %xmm1
	movapd	%xmm9, %xmm2
	cvttsd2sil	%xmm0, %r12d
	pxor	%xmm0, %xmm0
	call	_ZN3wze6engine6vector9TerminalYEddd
	call	round
	movsd	304(%rbx), %xmm1
	movapd	%xmm7, %xmm2
	cvttsd2sil	%xmm0, %ebp
	pxor	%xmm0, %xmm0
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
	movw	%ax, 290(%rbx)
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
	movw	%ax, 292(%rbx)
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
	.globl	_ZN3wze6engine6actors5actor8SetWidthEt
	.def	_ZN3wze6engine6actors5actor8SetWidthEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8SetWidthEt
_ZN3wze6engine6actors5actor8SetWidthEt:
.LFB8434:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	pxor	%xmm6, %xmm6
	pxor	%xmm3, %xmm3
	pxor	%xmm1, %xmm1
	movapd	%xmm1, %xmm0
	movzwl	%dx, %eax
	movq	%rcx, %rbx
	movl	%edx, %esi
	cvtsi2sdl	%eax, %xmm6
	movzwl	258(%rcx), %eax
	cvtsi2sdl	%eax, %xmm3
	movapd	%xmm6, %xmm2
	call	_ZN3wze6engine6vector6LengthEdddd
	mulsd	.LC4(%rip), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	movsd	%xmm0, 304(%rbx)
	jp	.L141
	jne	.L141
	movsd	%xmm1, 312(%rbx)
.L143:
	pxor	%xmm0, %xmm0
.L146:
	movw	%si, 256(%rbx)
	movq	%rbx, %rcx
	movsd	%xmm0, 320(%rbx)
	call	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv
	movq	(%rbx), %rax
	movzbl	288(%rbx), %edx
	movq	%rbx, %r8
	leaq	264(%rax), %rcx
	call	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE
	movzwl	256(%rbx), %eax
	movaps	32(%rsp), %xmm6
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L141:
	movzwl	258(%rbx), %eax
	pxor	%xmm3, %xmm3
	pxor	%xmm1, %xmm1
	movapd	%xmm6, %xmm2
	movapd	%xmm1, %xmm0
	cvtsi2sdl	%eax, %xmm3
	call	_ZN3wze6engine6vector5AngleEdddd
	movsd	304(%rbx), %xmm1
	movsd	%xmm0, 312(%rbx)
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jp	.L144
	je	.L143
.L144:
	movzwl	258(%rbx), %eax
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	movapd	%xmm6, %xmm0
	movapd	%xmm2, %xmm1
	cvtsi2sdl	%eax, %xmm3
	call	_ZN3wze6engine6vector5AngleEdddd
	jmp	.L146
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9SetHeightEt
	.def	_ZN3wze6engine6actors5actor9SetHeightEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9SetHeightEt
_ZN3wze6engine6actors5actor9SetHeightEt:
.LFB8436:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
	movapd	%xmm1, %xmm0
	movzwl	%dx, %eax
	movq	%rcx, %rbx
	movl	%edx, %esi
	cvtsi2sdl	%eax, %xmm3
	movzwl	256(%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	movsd	%xmm3, 40(%rsp)
	call	_ZN3wze6engine6vector6LengthEdddd
	pxor	%xmm1, %xmm1
	movsd	40(%rsp), %xmm3
	mulsd	.LC4(%rip), %xmm0
	ucomisd	%xmm1, %xmm0
	movsd	%xmm0, 304(%rbx)
	jp	.L149
	jne	.L149
	movsd	%xmm1, 312(%rbx)
.L151:
	pxor	%xmm0, %xmm0
.L154:
	movw	%si, 258(%rbx)
	movq	%rbx, %rcx
	movsd	%xmm0, 320(%rbx)
	call	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv
	movq	(%rbx), %rax
	movzbl	288(%rbx), %edx
	movq	%rbx, %r8
	leaq	264(%rax), %rcx
	call	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE
	movzwl	258(%rbx), %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L149:
	movzwl	256(%rbx), %eax
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
	movsd	%xmm3, 40(%rsp)
	movapd	%xmm1, %xmm0
	cvtsi2sdl	%eax, %xmm2
	call	_ZN3wze6engine6vector5AngleEdddd
	movsd	304(%rbx), %xmm1
	movsd	40(%rsp), %xmm3
	movsd	%xmm0, 312(%rbx)
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jp	.L152
	je	.L151
.L152:
	movzwl	256(%rbx), %eax
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	movapd	%xmm2, %xmm1
	cvtsi2sdl	%eax, %xmm0
	call	_ZN3wze6engine6vector5AngleEdddd
	jmp	.L154
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC17:
	.ascii "wze::engine.actors[].SetAngle(): Angle must not be NaN\12Params: Angle: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8SetAngleEd
	.def	_ZN3wze6engine6actors5actor8SetAngleEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8SetAngleEd
_ZN3wze6engine6actors5actor8SetAngleEd:
.LFB8438:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movq	%rcx, %rsi
	movapd	%xmm1, %xmm7
	jp	.L206
	movq	24(%rcx), %rdx
	movapd	%xmm1, %xmm6
	subsd	264(%rcx), %xmm6
	cmpq	$1, %rdx
	jbe	.L164
	movq	32(%rcx), %rcx
	leaq	8(%rcx), %rax
	leaq	(%rcx,%rdx,8), %rcx
	jmp	.L163
	.p2align 4,,10
	.p2align 3
.L162:
	addq	$8, %rax
	cmpq	%rcx, %rax
	je	.L164
.L163:
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L162
	cmpb	$0, 24(%rdx)
	je	.L162
	movsd	64(%rdx), %xmm0
	addq	$8, %rax
	addsd	%xmm6, %xmm0
	movsd	%xmm0, 64(%rdx)
	cmpq	%rcx, %rax
	jne	.L163
.L164:
	movq	56(%rsi), %rax
	cmpq	$1, %rax
	jbe	.L161
	movq	64(%rsi), %rcx
	leaq	8(%rcx), %rdx
	leaq	(%rcx,%rax,8), %rcx
	jmp	.L171
	.p2align 4,,10
	.p2align 3
.L169:
	cmpb	$0, 35(%rax)
	jne	.L207
.L168:
	addq	$8, %rdx
	cmpq	%rcx, %rdx
	je	.L161
.L171:
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L168
	cmpb	$0, 34(%rax)
	je	.L169
	movsd	24(%rax), %xmm0
	cmpb	$0, 35(%rax)
	addsd	%xmm6, %xmm0
	movsd	%xmm0, 24(%rax)
	je	.L168
.L207:
	movsd	72(%rax), %xmm0
	addq	$8, %rdx
	addsd	%xmm6, %xmm0
	movsd	%xmm0, 72(%rax)
	cmpq	%rcx, %rdx
	jne	.L171
.L161:
	movq	88(%rsi), %rax
	cmpq	$1, %rax
	jbe	.L166
	movq	96(%rsi), %rcx
	leaq	8(%rcx), %rdx
	leaq	(%rcx,%rax,8), %rcx
	jmp	.L178
	.p2align 4,,10
	.p2align 3
.L176:
	cmpb	$0, 35(%rax)
	jne	.L208
.L175:
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	je	.L166
.L178:
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L175
	cmpb	$0, 34(%rax)
	je	.L176
	movsd	24(%rax), %xmm0
	cmpb	$0, 35(%rax)
	addsd	%xmm6, %xmm0
	movsd	%xmm0, 24(%rax)
	je	.L175
.L208:
	movsd	72(%rax), %xmm0
	addq	$8, %rdx
	addsd	%xmm6, %xmm0
	movsd	%xmm0, 72(%rax)
	cmpq	%rdx, %rcx
	jne	.L178
.L166:
	movq	120(%rsi), %rax
	cmpq	$1, %rax
	jbe	.L173
	movq	128(%rsi), %rcx
	leaq	8(%rcx), %rdx
	leaq	(%rcx,%rax,8), %rcx
	jmp	.L185
	.p2align 4,,10
	.p2align 3
.L183:
	cmpb	$0, 35(%rax)
	jne	.L209
.L182:
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	je	.L173
.L185:
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L182
	cmpb	$0, 34(%rax)
	je	.L183
	movsd	24(%rax), %xmm0
	cmpb	$0, 35(%rax)
	addsd	%xmm6, %xmm0
	movsd	%xmm0, 24(%rax)
	je	.L182
.L209:
	movsd	88(%rax), %xmm0
	addq	$8, %rdx
	addsd	%xmm6, %xmm0
	movsd	%xmm0, 88(%rax)
	cmpq	%rdx, %rcx
	jne	.L185
.L173:
	movq	152(%rsi), %rax
	cmpq	$1, %rax
	jbe	.L180
	movq	160(%rsi), %rdx
	movl	$1, %ebx
	jmp	.L191
	.p2align 4,,10
	.p2align 3
.L187:
	cmpq	%rax, %rbx
	jnb	.L210
	movq	(%rdx,%rdi), %rcx
	cmpb	$0, 17(%rcx)
	jne	.L211
.L186:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jnb	.L180
.L191:
	movq	(%rdx,%rbx,8), %rcx
	leaq	0(,%rbx,8), %rdi
	testq	%rcx, %rcx
	je	.L186
	cmpb	$0, 16(%rcx)
	je	.L187
	movsd	64(%rcx), %xmm0
	addsd	%xmm6, %xmm0
	movsd	%xmm0, 64(%rcx)
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox27UpdateOverlapboxActiveScaleEv
	movq	152(%rsi), %rax
	movq	160(%rsi), %rdx
	jmp	.L187
	.p2align 4,,10
	.p2align 3
.L211:
	movsd	80(%rcx), %xmm0
	addq	$1, %rbx
	addsd	%xmm6, %xmm0
	movsd	%xmm0, 80(%rcx)
	cmpq	%rax, %rbx
	jb	.L191
.L180:
	movsd	%xmm7, 264(%rsi)
	movq	%rsi, %rcx
	call	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv
	movq	(%rsi), %rax
	movzbl	288(%rsi), %edx
	movq	%rsi, %r8
	leaq	264(%rax), %rcx
	call	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE
	nop
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	movsd	264(%rsi), %xmm0
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L210:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L206:
	leaq	.LC17(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv
	.def	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv
_ZN3wze6engine6actors5actor21UpdateMembersPositionEv:
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
	movq	24(%rcx), %rdx
	movq	%rcx, %rbx
	cmpq	$1, %rdx
	jbe	.L220
	movq	32(%rcx), %rcx
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L219:
	movq	(%rcx,%rsi,8), %rax
	leaq	0(,%rsi,8), %rdi
	testq	%rax, %rax
	je	.L216
	movsd	64(%rax), %xmm2
	movsd	56(%rax), %xmm1
	movsd	224(%rbx), %xmm0
	call	_ZN3wze6engine6vector9TerminalXEddd
	movq	32(%rbx), %rax
	cmpq	24(%rbx), %rsi
	jnb	.L265
	movq	(%rax,%rdi), %rax
	movsd	%xmm0, 40(%rax)
	movsd	64(%rax), %xmm2
	movsd	232(%rbx), %xmm0
	movsd	56(%rax), %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd
	movq	24(%rbx), %rdx
	movq	32(%rbx), %rcx
	cmpq	%rdx, %rsi
	jnb	.L265
	movq	(%rcx,%rdi), %rax
	movsd	%xmm0, 48(%rax)
.L216:
	addq	$1, %rsi
	cmpq	%rdx, %rsi
	jb	.L219
.L220:
	movq	56(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L215
	movq	64(%rbx), %rcx
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L226:
	movq	(%rcx,%rsi,8), %rax
	leaq	0(,%rsi,8), %rdi
	testq	%rax, %rax
	je	.L223
	movsd	72(%rax), %xmm2
	movsd	64(%rax), %xmm1
	movsd	224(%rbx), %xmm0
	call	_ZN3wze6engine6vector9TerminalXEddd
	movq	64(%rbx), %rax
	cmpq	56(%rbx), %rsi
	jnb	.L265
	movq	(%rax,%rdi), %rax
	movsd	%xmm0, 48(%rax)
	movsd	72(%rax), %xmm2
	movsd	232(%rbx), %xmm0
	movsd	64(%rax), %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd
	movq	56(%rbx), %rdx
	movq	64(%rbx), %rcx
	cmpq	%rdx, %rsi
	jnb	.L265
	movq	(%rcx,%rdi), %rax
	movsd	%xmm0, 56(%rax)
.L223:
	addq	$1, %rsi
	cmpq	%rdx, %rsi
	jb	.L226
.L215:
	movq	88(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L222
	movq	96(%rbx), %rcx
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L232:
	movq	(%rcx,%rsi,8), %rax
	leaq	0(,%rsi,8), %rdi
	testq	%rax, %rax
	je	.L229
	movsd	72(%rax), %xmm2
	movsd	64(%rax), %xmm1
	movsd	224(%rbx), %xmm0
	call	_ZN3wze6engine6vector9TerminalXEddd
	movq	96(%rbx), %rax
	cmpq	88(%rbx), %rsi
	jnb	.L265
	movq	(%rax,%rdi), %rax
	movsd	%xmm0, 48(%rax)
	movsd	72(%rax), %xmm2
	movsd	232(%rbx), %xmm0
	movsd	64(%rax), %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd
	movq	88(%rbx), %rdx
	movq	96(%rbx), %rcx
	cmpq	%rdx, %rsi
	jnb	.L265
	movq	(%rcx,%rdi), %rax
	movsd	%xmm0, 56(%rax)
.L229:
	addq	$1, %rsi
	cmpq	%rdx, %rsi
	jb	.L232
.L222:
	movq	120(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L228
	movq	128(%rbx), %rcx
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L238:
	movq	(%rcx,%rsi,8), %rax
	leaq	0(,%rsi,8), %rdi
	testq	%rax, %rax
	je	.L235
	movsd	88(%rax), %xmm2
	movsd	80(%rax), %xmm1
	movsd	224(%rbx), %xmm0
	call	_ZN3wze6engine6vector9TerminalXEddd
	movq	128(%rbx), %rax
	cmpq	120(%rbx), %rsi
	jnb	.L265
	movq	(%rax,%rdi), %rax
	movsd	%xmm0, 48(%rax)
	movsd	88(%rax), %xmm2
	movsd	232(%rbx), %xmm0
	movsd	80(%rax), %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd
	movq	120(%rbx), %rdx
	movq	128(%rbx), %rcx
	cmpq	%rdx, %rsi
	jnb	.L265
	movq	(%rcx,%rdi), %rax
	movsd	%xmm0, 56(%rax)
.L235:
	addq	$1, %rsi
	cmpq	%rdx, %rsi
	jb	.L238
.L228:
	movq	152(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L263
	movq	160(%rbx), %rcx
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L242:
	movq	(%rcx,%rsi,8), %rax
	leaq	0(,%rsi,8), %rdi
	testq	%rax, %rax
	je	.L239
	movsd	80(%rax), %xmm2
	movsd	72(%rax), %xmm1
	movsd	224(%rbx), %xmm0
	call	_ZN3wze6engine6vector9TerminalXEddd
	movq	160(%rbx), %rax
	cmpq	152(%rbx), %rsi
	jnb	.L265
	movq	(%rax,%rdi), %rax
	movsd	%xmm0, 40(%rax)
	movsd	80(%rax), %xmm2
	movsd	232(%rbx), %xmm0
	movsd	72(%rax), %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd
	movq	152(%rbx), %rdx
	movq	160(%rbx), %rcx
	cmpq	%rdx, %rsi
	jnb	.L265
	movq	(%rcx,%rdi), %rax
	movsd	%xmm0, 48(%rax)
.L239:
	addq	$1, %rsi
	cmpq	%rdx, %rsi
	jb	.L242
.L263:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L265:
	leaq	.LC7(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC4:
	.long	0
	.long	1071644672
	.align 8
.LC16:
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
	.def	_ZN3wze6engine6actors5actor12overlapboxesC1EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector6LengthEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector5AngleEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxesD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor5textsD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9flipbooksD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor8texturesD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor6colorsD1Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6memory6CopyToEPKvPvy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector9TerminalXEddd;	.scl	2;	.type	32;	.endef
	.def	round;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector9TerminalYEddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox27UpdateOverlapboxActiveScaleEv;	.scl	2;	.type	32;	.endef
