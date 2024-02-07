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
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB6:
	.text
.LHOTB6:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actorC2EPS0_Pvyddttd
	.def	_ZN3wze6engine6actors5actorC2EPS0_Pvyddttd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actorC2EPS0_Pvyddttd
_ZN3wze6engine6actors5actorC2EPS0_Pvyddttd:
.LFB8435:
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
	subq	$120, %rsp
	.seh_stackalloc	120
	movaps	%xmm6, 80(%rsp)
	.seh_savexmm	%xmm6, 80
	movaps	%xmm7, 96(%rsp)
	.seh_savexmm	%xmm7, 96
	.seh_endprologue
	movl	248(%rsp), %r12d
	movl	240(%rsp), %ebp
	movq	224(%rsp), %xmm6
	movhpd	232(%rsp), %xmm6
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
	leaq	72(%rbx), %rax
	movq	%rbx, %r8
	movq	%rdi, %rdx
	movq	%rax, %rcx
	movq	%rax, 64(%rsp)
.LEHB2:
	call	_ZN3wze6engine6actors5actor9flipbooksC1EPS0_PS2_
.LEHE2:
	leaq	104(%rbx), %rax
	movq	%rbx, %r8
	movq	%rdi, %rdx
	movq	%rax, %rcx
	movq	%rax, 72(%rsp)
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
	movw	%bp, 248(%rbx)
	pxor	%xmm7, %xmm7
	movzwl	%bp, %ebp
	movq	(%rbx), %rax
	movw	%r12w, 250(%rbx)
	movzwl	%r12w, %r12d
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	movups	%xmm6, 216(%rbx)
	cvtsi2sdl	%r12d, %xmm7
	movapd	%xmm2, %xmm1
	leaq	688(%rax), %rcx
	movups	%xmm6, 232(%rbx)
	pxor	%xmm6, %xmm6
	cvtsi2sdl	%ebp, %xmm6
	movups	%xmm0, 176(%rbx)
	movsd	256(%rsp), %xmm0
	movb	$1, 168(%rbx)
	movb	$0, 192(%rbx)
	movq	%r14, 200(%rbx)
	movq	%r13, 208(%rbx)
	movapd	%xmm6, %xmm3
	movq	$0x000000000, 256(%rbx)
	movq	$0x000000000, 272(%rbx)
	movb	$0, 280(%rbx)
	movq	%rsi, 282(%rbx)
	movsd	%xmm0, 264(%rbx)
	movsd	%xmm7, 32(%rsp)
.LEHB5:
	call	_ZN3wze6engine6vector6LengthEdddd
	mulsd	.LC4(%rip), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	movsd	%xmm0, 296(%rbx)
	jp	.L31
	jne	.L31
	movsd	%xmm1, 304(%rbx)
.L33:
	pxor	%xmm0, %xmm0
.L35:
	movsd	%xmm0, 312(%rbx)
	movaps	80(%rsp), %xmm6
	movaps	96(%rsp), %xmm7
	addq	$120, %rsp
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
	movq	(%rbx), %rax
	pxor	%xmm2, %xmm2
	movsd	%xmm7, 32(%rsp)
	movapd	%xmm6, %xmm3
	movapd	%xmm2, %xmm1
	leaq	688(%rax), %rcx
	call	_ZN3wze6engine6vector5AngleEdddd
	movsd	296(%rbx), %xmm1
	movsd	%xmm0, 304(%rbx)
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jp	.L47
	je	.L33
.L47:
	movq	(%rbx), %rax
	pxor	%xmm3, %xmm3
	movsd	%xmm7, 32(%rsp)
	movapd	%xmm6, %xmm1
	movapd	%xmm3, %xmm2
	leaq	688(%rax), %rcx
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
.LLSDA8435:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8435-.LLSDACSB8435
.LLSDACSB8435:
	.uleb128 .LEHB0-.LFB8435
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8435
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L41-.LFB8435
	.uleb128 0
	.uleb128 .LEHB2-.LFB8435
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L42-.LFB8435
	.uleb128 0
	.uleb128 .LEHB3-.LFB8435
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L43-.LFB8435
	.uleb128 0
	.uleb128 .LEHB4-.LFB8435
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L44-.LFB8435
	.uleb128 0
	.uleb128 .LEHB5-.LFB8435
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L45-.LFB8435
	.uleb128 0
.LLSDACSE8435:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine6actors5actorC2EPS0_Pvyddttd.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actorC2EPS0_Pvyddttd.cold
	.seh_stackalloc	184
	.seh_savereg	%rbx, 120
	.seh_savereg	%rsi, 128
	.seh_savereg	%rdi, 136
	.seh_savereg	%rbp, 144
	.seh_savexmm	%xmm6, 80
	.seh_savexmm	%xmm7, 96
	.seh_savereg	%r12, 152
	.seh_savereg	%r13, 160
	.seh_savereg	%r14, 168
	.seh_savereg	%r15, 176
	.seh_endprologue
_ZN3wze6engine6actors5actorC2EPS0_Pvyddttd.cold:
.L36:
	movq	%r15, %rcx
	call	_ZN3wze6engine6actors5actor12overlapboxesD1Ev
.L37:
	movq	72(%rsp), %rcx
	call	_ZN3wze6engine6actors5actor5textsD1Ev
.L38:
	movq	64(%rsp), %rcx
	call	_ZN3wze6engine6actors5actor9flipbooksD1Ev
.L39:
	movq	56(%rsp), %rcx
	call	_ZN3wze6engine6actors5actor8texturesD1Ev
.L40:
	movq	48(%rsp), %rcx
	call	_ZN3wze6engine6actors5actor6colorsD1Ev
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
	.uleb128 .LEHB6-.LCOLDB6
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSEC8435:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE6:
	.text
.LHOTE6:
	.globl	_ZN3wze6engine6actors5actorC1EPS0_Pvyddttd
	.def	_ZN3wze6engine6actors5actorC1EPS0_Pvyddttd;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actorC1EPS0_Pvyddttd,_ZN3wze6engine6actors5actorC2EPS0_Pvyddttd
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
.LFB8438:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	(%rcx), %r9
	movzbl	280(%rcx), %edx
	movq	%rcx, %rbx
	movq	680(%r9), %rcx
	cmpq	672(%r9), %rdx
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
	movq	112(%r9), %rdx
	movq	640(%r9), %rcx
	movq	648(%r9), %rax
	cmpq	%rcx, %rdx
	jnb	.L60
	cmpq	%rbx, (%rax,%rdx,8)
	je	.L62
.L56:
	movq	120(%r9), %rdx
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
	movq	$0, 120(%r9)
	jmp	.L58
	.p2align 4,,10
	.p2align 3
.L62:
	movq	$0, 112(%r9)
	jmp	.L56
.L60:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
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
.LLSDACSE8438:
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
.LFB8440:
	.seh_endprologue
	movq	208(%rcx), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor4GetXEv
	.def	_ZN3wze6engine6actors5actor4GetXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor4GetXEv
_ZN3wze6engine6actors5actor4GetXEv:
.LFB8441:
	.seh_endprologue
	movsd	216(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC8:
	.ascii "engine.actors[].SetX(): X must not be NaN\12Params: X: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor4SetXEd
	.def	_ZN3wze6engine6actors5actor4SetXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor4SetXEd
_ZN3wze6engine6actors5actor4SetXEd:
.LFB8442:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movq	%rcx, %rbx
	jp	.L71
	movq	(%rcx), %rax
	movzbl	280(%rcx), %edx
	movsd	%xmm1, 216(%rcx)
	movq	%rbx, %r8
	leaq	656(%rax), %rcx
	call	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE
	movsd	216(%rbx), %xmm0
	addq	$32, %rsp
	popq	%rbx
	ret
.L71:
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
.LFB8443:
	.seh_endprologue
	movsd	224(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC9:
	.ascii "engine.actors[].SetY(): Y must not be NaN\12Params: Y: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor4SetYEd
	.def	_ZN3wze6engine6actors5actor4SetYEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor4SetYEd
_ZN3wze6engine6actors5actor4SetYEd:
.LFB8444:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movq	%rcx, %rbx
	jp	.L78
	movq	(%rcx), %rax
	movzbl	280(%rcx), %edx
	movsd	%xmm1, 224(%rcx)
	movq	%rbx, %r8
	leaq	656(%rax), %rcx
	call	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE
	movsd	224(%rbx), %xmm0
	addq	$32, %rsp
	popq	%rbx
	ret
.L78:
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
.LFB8445:
	.seh_endprologue
	movzwl	248(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9GetHeightEv
	.def	_ZN3wze6engine6actors5actor9GetHeightEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9GetHeightEv
_ZN3wze6engine6actors5actor9GetHeightEv:
.LFB8447:
	.seh_endprologue
	movzwl	250(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8GetAngleEv
	.def	_ZN3wze6engine6actors5actor8GetAngleEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8GetAngleEv
_ZN3wze6engine6actors5actor8GetAngleEv:
.LFB8449:
	.seh_endprologue
	movsd	256(%rcx), %xmm0
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8GetLayerEv
	.def	_ZN3wze6engine6actors5actor8GetLayerEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8GetLayerEv
_ZN3wze6engine6actors5actor8GetLayerEv:
.LFB8451:
	.seh_endprologue
	movsd	264(%rcx), %xmm0
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
.LFB8452:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L100
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	ja	.L101
	ucomisd	%xmm0, %xmm1
	jp	.L90
	je	.L102
.L90:
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 264(%rcx)
	addq	$40, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L102:
	movq	$0x000000000, 272(%rcx)
	movq	(%rcx), %rax
	movq	112(%rax), %rdx
	movq	640(%rax), %r9
	movq	648(%rax), %r8
	cmpq	%r9, %rdx
	jnb	.L99
	cmpq	%rcx, (%r8,%rdx,8)
	je	.L103
.L92:
	movq	120(%rax), %rdx
	cmpq	%r9, %rdx
	jnb	.L99
	cmpq	%rcx, (%r8,%rdx,8)
	jne	.L90
	movq	$0, 120(%rax)
	jmp	.L90
	.p2align 4,,10
	.p2align 3
.L103:
	movq	$0, 112(%rax)
	jmp	.L92
.L100:
	leaq	.LC10(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L101:
	leaq	.LC11(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L99:
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
.LFB8453:
	.seh_endprologue
	movsd	272(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC12:
	.ascii "wze::engine.actors[].SetDepth(): Depth must not be NaN\12Params: Depth: %lf\12\0"
	.align 8
.LC13:
	.ascii "wze::engine.actors[].SetDepth(): Illegal to set Depth when Layer is 0\12Params: Depth: %lf\12\0"
	.align 8
.LC14:
	.ascii "wze::engine::actors[].SetDepth(): Depth must not be less than 0\12Params: Depth: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8SetDepthEd
	.def	_ZN3wze6engine6actors5actor8SetDepthEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8SetDepthEd
_ZN3wze6engine6actors5actor8SetDepthEd:
.LFB8454:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L117
	pxor	%xmm0, %xmm0
	ucomisd	264(%rcx), %xmm0
	jp	.L108
	je	.L118
.L108:
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	ja	.L119
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 272(%rcx)
	addq	$40, %rsp
	ret
.L117:
	leaq	.LC12(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L119:
	leaq	.LC14(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L118:
	leaq	.LC13(%rip), %rcx
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
.LFB8455:
	.seh_endprologue
	movzbl	280(%rcx), %eax
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
.LFB8456:
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
	movzbl	280(%rcx), %edx
	movq	680(%rax), %rcx
	cmpq	672(%rax), %rdx
	jnb	.L130
	salq	$4, %rdx
	addq	%rdx, %rcx
	xorl	%edx, %edx
	movq	(%rcx), %r8
	jmp	.L123
	.p2align 4,,10
	.p2align 3
.L126:
	movq	8(%rcx), %rax
	cmpq	%rbx, (%rax,%rdx,8)
	je	.L131
	addq	$1, %rdx
.L123:
	cmpq	%rdx, %r8
	jne	.L126
	testb	%sil, %sil
	jne	.L132
.L127:
	movl	%edi, %eax
	movb	%sil, 280(%rbx)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L131:
	movl	$1, %r8d
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6RemoveEyy.isra.0
	testb	%sil, %sil
	je	.L127
.L132:
	movq	(%rbx), %rax
	movq	%rbx, 40(%rsp)
	movzbl	%sil, %edx
	movq	680(%rax), %rbp
	cmpq	672(%rax), %rdx
	jnb	.L130
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
	je	.L133
	movq	0(%rbp), %rdx
	leaq	40(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo9memCopyToEPKvPvy
	jmp	.L127
.L130:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L133:
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
.LFB8457:
	.seh_endprologue
	movzwl	282(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor15GetHitboxHeightEv
	.def	_ZN3wze6engine6actors5actor15GetHitboxHeightEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor15GetHitboxHeightEv
_ZN3wze6engine6actors5actor15GetHitboxHeightEv:
.LFB8458:
	.seh_endprologue
	movzwl	284(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv
	.def	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv
_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv:
.LFB8459:
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
	movsd	.LC16(%rip), %xmm7
	movsd	256(%rcx), %xmm6
	movq	(%rcx), %rax
	movsd	304(%rcx), %xmm8
	addsd	%xmm6, %xmm8
	addsd	312(%rcx), %xmm6
	movq	%rcx, %rbx
	leaq	688(%rax), %rcx
	movsd	296(%rbx), %xmm2
	movapd	%xmm8, %xmm3
	movapd	%xmm8, %xmm9
	call	_ZN3wze6engine6vector9TerminalXEddd
	addsd	%xmm7, %xmm9
	addsd	%xmm6, %xmm7
	call	round
	movq	(%rbx), %rax
	movapd	%xmm6, %xmm3
	pxor	%xmm1, %xmm1
	movsd	296(%rbx), %xmm2
	cvttsd2sil	%xmm0, %edi
	leaq	688(%rax), %rcx
	call	_ZN3wze6engine6vector9TerminalXEddd
	call	round
	movq	(%rbx), %rax
	movapd	%xmm9, %xmm3
	movsd	296(%rbx), %xmm2
	pxor	%xmm1, %xmm1
	cvttsd2sil	%xmm0, %r15d
	leaq	688(%rax), %rcx
	call	_ZN3wze6engine6vector9TerminalXEddd
	call	round
	movq	(%rbx), %rax
	movapd	%xmm7, %xmm3
	pxor	%xmm1, %xmm1
	movsd	296(%rbx), %xmm2
	cvttsd2sil	%xmm0, %r14d
	leaq	688(%rax), %rcx
	call	_ZN3wze6engine6vector9TerminalXEddd
	call	round
	movq	(%rbx), %rax
	movapd	%xmm8, %xmm3
	movsd	296(%rbx), %xmm2
	pxor	%xmm1, %xmm1
	cvttsd2sil	%xmm0, %r13d
	leaq	688(%rax), %rcx
	call	_ZN3wze6engine6vector9TerminalYEddd
	call	round
	movq	(%rbx), %rax
	movapd	%xmm6, %xmm3
	pxor	%xmm1, %xmm1
	movsd	296(%rbx), %xmm2
	cvttsd2sil	%xmm0, %esi
	leaq	688(%rax), %rcx
	call	_ZN3wze6engine6vector9TerminalYEddd
	call	round
	movq	(%rbx), %rax
	movapd	%xmm9, %xmm3
	movsd	296(%rbx), %xmm2
	pxor	%xmm1, %xmm1
	cvttsd2sil	%xmm0, %r12d
	leaq	688(%rax), %rcx
	call	_ZN3wze6engine6vector9TerminalYEddd
	call	round
	movq	(%rbx), %rax
	movapd	%xmm7, %xmm3
	pxor	%xmm1, %xmm1
	movsd	296(%rbx), %xmm2
	cvttsd2sil	%xmm0, %ebp
	leaq	688(%rax), %rcx
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
	movw	%ax, 282(%rbx)
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
	movw	%ax, 284(%rbx)
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
.LFB8446:
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
	movw	%dx, 248(%rcx)
	movzwl	%dx, %edx
	leaq	688(%rax), %rcx
	movzwl	250(%rbx), %eax
	cvtsi2sdl	%edx, %xmm6
	cvtsi2sdl	%eax, %xmm0
	movapd	%xmm6, %xmm3
	movsd	%xmm0, 32(%rsp)
	call	_ZN3wze6engine6vector6LengthEdddd
	mulsd	.LC4(%rip), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	movsd	%xmm0, 296(%rbx)
	jp	.L138
	jne	.L138
	movsd	%xmm1, 304(%rbx)
.L140:
	pxor	%xmm0, %xmm0
.L143:
	movsd	%xmm0, 312(%rbx)
	movq	%rbx, %rcx
	call	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv
	movq	(%rbx), %rax
	movzbl	280(%rbx), %edx
	movq	%rbx, %r8
	leaq	656(%rax), %rcx
	call	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE
	movzwl	248(%rbx), %eax
	movaps	48(%rsp), %xmm6
	addq	$64, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L138:
	movq	(%rbx), %rax
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	movapd	%xmm6, %xmm3
	movapd	%xmm2, %xmm1
	leaq	688(%rax), %rcx
	movzwl	250(%rbx), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, 32(%rsp)
	call	_ZN3wze6engine6vector5AngleEdddd
	movsd	296(%rbx), %xmm1
	movsd	%xmm0, 304(%rbx)
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jp	.L141
	je	.L140
.L141:
	movq	(%rbx), %rax
	pxor	%xmm0, %xmm0
	pxor	%xmm3, %xmm3
	movapd	%xmm6, %xmm1
	movapd	%xmm3, %xmm2
	leaq	688(%rax), %rcx
	movzwl	250(%rbx), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, 32(%rsp)
	call	_ZN3wze6engine6vector5AngleEdddd
	jmp	.L143
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9SetHeightEt
	.def	_ZN3wze6engine6actors5actor9SetHeightEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9SetHeightEt
_ZN3wze6engine6actors5actor9SetHeightEt:
.LFB8448:
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
	movzwl	248(%rcx), %eax
	cvtsi2sdl	%eax, %xmm3
	movw	%dx, 250(%rcx)
	movzwl	%dx, %edx
	movq	%rcx, %rbx
	cvtsi2sdl	%edx, %xmm6
	movq	(%rcx), %rdx
	leaq	688(%rdx), %rcx
	movsd	%xmm6, 32(%rsp)
	call	_ZN3wze6engine6vector6LengthEdddd
	mulsd	.LC4(%rip), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	movsd	%xmm0, 296(%rbx)
	jp	.L146
	jne	.L146
	movsd	%xmm1, 304(%rbx)
.L148:
	pxor	%xmm0, %xmm0
.L151:
	movsd	%xmm0, 312(%rbx)
	movq	%rbx, %rcx
	call	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv
	movq	(%rbx), %rax
	movzbl	280(%rbx), %edx
	movq	%rbx, %r8
	leaq	656(%rax), %rcx
	call	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE
	movzwl	250(%rbx), %eax
	movaps	48(%rsp), %xmm6
	addq	$64, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L146:
	movzwl	248(%rbx), %eax
	pxor	%xmm3, %xmm3
	movq	(%rbx), %rcx
	pxor	%xmm2, %xmm2
	movapd	%xmm2, %xmm1
	movsd	%xmm6, 32(%rsp)
	cvtsi2sdl	%eax, %xmm3
	addq	$688, %rcx
	call	_ZN3wze6engine6vector5AngleEdddd
	movsd	296(%rbx), %xmm1
	movsd	%xmm0, 304(%rbx)
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jp	.L149
	je	.L148
.L149:
	movzwl	248(%rbx), %eax
	pxor	%xmm1, %xmm1
	movq	(%rbx), %rcx
	pxor	%xmm3, %xmm3
	movsd	%xmm6, 32(%rsp)
	movapd	%xmm3, %xmm2
	cvtsi2sdl	%eax, %xmm1
	addq	$688, %rcx
	call	_ZN3wze6engine6vector5AngleEdddd
	jmp	.L151
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC17:
	.ascii "engine.actors[].SetAngle(): Angle must not be NaN\12Params: Angle: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8SetAngleEd
	.def	_ZN3wze6engine6actors5actor8SetAngleEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8SetAngleEd
_ZN3wze6engine6actors5actor8SetAngleEd:
.LFB8450:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movq	%rcx, %rsi
	jp	.L203
	movq	24(%rcx), %rdx
	movapd	%xmm1, %xmm6
	subsd	256(%rcx), %xmm6
	movsd	%xmm1, 256(%rcx)
	cmpq	$1, %rdx
	jbe	.L161
	movq	32(%rcx), %rcx
	leaq	8(%rcx), %rax
	leaq	(%rcx,%rdx,8), %rcx
	jmp	.L160
	.p2align 4,,10
	.p2align 3
.L159:
	addq	$8, %rax
	cmpq	%rcx, %rax
	je	.L161
.L160:
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L159
	cmpb	$0, 24(%rdx)
	je	.L159
	movsd	56(%rdx), %xmm0
	addq	$8, %rax
	addsd	%xmm6, %xmm0
	movsd	%xmm0, 56(%rdx)
	cmpq	%rcx, %rax
	jne	.L160
.L161:
	movq	56(%rsi), %rax
	cmpq	$1, %rax
	jbe	.L158
	movq	64(%rsi), %rcx
	leaq	8(%rcx), %rdx
	leaq	(%rcx,%rax,8), %rcx
	jmp	.L168
	.p2align 4,,10
	.p2align 3
.L166:
	cmpb	$0, 35(%rax)
	jne	.L204
.L165:
	addq	$8, %rdx
	cmpq	%rcx, %rdx
	je	.L158
.L168:
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L165
	cmpb	$0, 34(%rax)
	je	.L166
	movsd	24(%rax), %xmm0
	cmpb	$0, 35(%rax)
	addsd	%xmm6, %xmm0
	movsd	%xmm0, 24(%rax)
	je	.L165
.L204:
	movsd	64(%rax), %xmm0
	addq	$8, %rdx
	addsd	%xmm6, %xmm0
	movsd	%xmm0, 64(%rax)
	cmpq	%rcx, %rdx
	jne	.L168
.L158:
	movq	88(%rsi), %rax
	cmpq	$1, %rax
	jbe	.L163
	movq	96(%rsi), %rcx
	leaq	8(%rcx), %rdx
	leaq	(%rcx,%rax,8), %rcx
	jmp	.L175
	.p2align 4,,10
	.p2align 3
.L173:
	cmpb	$0, 35(%rax)
	jne	.L205
.L172:
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	je	.L163
.L175:
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L172
	cmpb	$0, 34(%rax)
	je	.L173
	movsd	24(%rax), %xmm0
	cmpb	$0, 35(%rax)
	addsd	%xmm6, %xmm0
	movsd	%xmm0, 24(%rax)
	je	.L172
.L205:
	movsd	64(%rax), %xmm0
	addq	$8, %rdx
	addsd	%xmm6, %xmm0
	movsd	%xmm0, 64(%rax)
	cmpq	%rdx, %rcx
	jne	.L175
.L163:
	movq	120(%rsi), %rax
	cmpq	$1, %rax
	jbe	.L170
	movq	128(%rsi), %rcx
	leaq	8(%rcx), %rdx
	leaq	(%rcx,%rax,8), %rcx
	jmp	.L182
	.p2align 4,,10
	.p2align 3
.L180:
	cmpb	$0, 35(%rax)
	jne	.L206
.L179:
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	je	.L170
.L182:
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L179
	cmpb	$0, 34(%rax)
	je	.L180
	movsd	24(%rax), %xmm0
	cmpb	$0, 35(%rax)
	addsd	%xmm6, %xmm0
	movsd	%xmm0, 24(%rax)
	je	.L179
.L206:
	movsd	80(%rax), %xmm0
	addq	$8, %rdx
	addsd	%xmm6, %xmm0
	movsd	%xmm0, 80(%rax)
	cmpq	%rdx, %rcx
	jne	.L182
.L170:
	movq	152(%rsi), %rax
	cmpq	$1, %rax
	jbe	.L177
	movq	160(%rsi), %rdx
	movl	$1, %ebx
	jmp	.L188
	.p2align 4,,10
	.p2align 3
.L184:
	cmpq	%rax, %rbx
	jnb	.L207
	movq	(%rdx,%rdi), %rcx
	cmpb	$0, 17(%rcx)
	jne	.L208
.L183:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jnb	.L177
.L188:
	movq	(%rdx,%rbx,8), %rcx
	leaq	0(,%rbx,8), %rdi
	testq	%rcx, %rcx
	je	.L183
	cmpb	$0, 16(%rcx)
	je	.L184
	movsd	56(%rcx), %xmm0
	addsd	%xmm6, %xmm0
	movsd	%xmm0, 56(%rcx)
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox21UpdateOverlapboxScaleEv
	movq	152(%rsi), %rax
	movq	160(%rsi), %rdx
	jmp	.L184
	.p2align 4,,10
	.p2align 3
.L208:
	movsd	72(%rcx), %xmm0
	addq	$1, %rbx
	addsd	%xmm6, %xmm0
	movsd	%xmm0, 72(%rcx)
	cmpq	%rax, %rbx
	jb	.L188
.L177:
	movq	%rsi, %rcx
	call	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv
	movq	(%rsi), %rax
	movzbl	280(%rsi), %edx
	movq	%rsi, %r8
	leaq	656(%rax), %rcx
	call	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE
	movsd	256(%rsi), %xmm0
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L207:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L203:
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
.LFB8460:
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
	jbe	.L217
	movq	32(%rcx), %rcx
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L216:
	movq	(%rcx,%rsi,8), %rax
	leaq	0(,%rsi,8), %rdi
	testq	%rax, %rax
	je	.L213
	movq	(%rbx), %rdx
	movsd	56(%rax), %xmm3
	movsd	48(%rax), %xmm2
	movsd	216(%rbx), %xmm1
	leaq	688(%rdx), %rcx
	call	_ZN3wze6engine6vector9TerminalXEddd
	movq	32(%rbx), %rax
	cmpq	24(%rbx), %rsi
	jnb	.L262
	movq	(%rax,%rdi), %rax
	movq	(%rbx), %rdx
	movsd	224(%rbx), %xmm1
	movsd	56(%rax), %xmm3
	movsd	48(%rax), %xmm2
	movsd	%xmm0, 32(%rax)
	leaq	688(%rdx), %rcx
	call	_ZN3wze6engine6vector9TerminalYEddd
	movq	24(%rbx), %rdx
	movq	32(%rbx), %rcx
	cmpq	%rdx, %rsi
	jnb	.L262
	movq	(%rcx,%rdi), %rax
	movsd	%xmm0, 40(%rax)
.L213:
	addq	$1, %rsi
	cmpq	%rdx, %rsi
	jb	.L216
.L217:
	movq	56(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L212
	movq	64(%rbx), %rcx
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L223:
	movq	(%rcx,%rsi,8), %rax
	leaq	0(,%rsi,8), %rdi
	testq	%rax, %rax
	je	.L220
	movq	(%rbx), %rdx
	movsd	64(%rax), %xmm3
	movsd	56(%rax), %xmm2
	movsd	216(%rbx), %xmm1
	leaq	688(%rdx), %rcx
	call	_ZN3wze6engine6vector9TerminalXEddd
	movq	64(%rbx), %rax
	cmpq	56(%rbx), %rsi
	jnb	.L262
	movq	(%rax,%rdi), %rax
	movq	(%rbx), %rdx
	movsd	224(%rbx), %xmm1
	movsd	64(%rax), %xmm3
	movsd	56(%rax), %xmm2
	movsd	%xmm0, 40(%rax)
	leaq	688(%rdx), %rcx
	call	_ZN3wze6engine6vector9TerminalYEddd
	movq	56(%rbx), %rdx
	movq	64(%rbx), %rcx
	cmpq	%rdx, %rsi
	jnb	.L262
	movq	(%rcx,%rdi), %rax
	movsd	%xmm0, 48(%rax)
.L220:
	addq	$1, %rsi
	cmpq	%rdx, %rsi
	jb	.L223
.L212:
	movq	88(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L219
	movq	96(%rbx), %rcx
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L229:
	movq	(%rcx,%rsi,8), %rax
	leaq	0(,%rsi,8), %rdi
	testq	%rax, %rax
	je	.L226
	movq	(%rbx), %rdx
	movsd	64(%rax), %xmm3
	movsd	56(%rax), %xmm2
	movsd	216(%rbx), %xmm1
	leaq	688(%rdx), %rcx
	call	_ZN3wze6engine6vector9TerminalXEddd
	movq	96(%rbx), %rax
	cmpq	88(%rbx), %rsi
	jnb	.L262
	movq	(%rax,%rdi), %rax
	movq	(%rbx), %rdx
	movsd	224(%rbx), %xmm1
	movsd	64(%rax), %xmm3
	movsd	56(%rax), %xmm2
	movsd	%xmm0, 40(%rax)
	leaq	688(%rdx), %rcx
	call	_ZN3wze6engine6vector9TerminalYEddd
	movq	88(%rbx), %rdx
	movq	96(%rbx), %rcx
	cmpq	%rdx, %rsi
	jnb	.L262
	movq	(%rcx,%rdi), %rax
	movsd	%xmm0, 48(%rax)
.L226:
	addq	$1, %rsi
	cmpq	%rdx, %rsi
	jb	.L229
.L219:
	movq	120(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L225
	movq	128(%rbx), %rcx
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L235:
	movq	(%rcx,%rsi,8), %rax
	leaq	0(,%rsi,8), %rdi
	testq	%rax, %rax
	je	.L232
	movq	(%rbx), %rdx
	movsd	80(%rax), %xmm3
	movsd	72(%rax), %xmm2
	movsd	216(%rbx), %xmm1
	leaq	688(%rdx), %rcx
	call	_ZN3wze6engine6vector9TerminalXEddd
	movq	128(%rbx), %rax
	cmpq	120(%rbx), %rsi
	jnb	.L262
	movq	(%rax,%rdi), %rax
	movq	(%rbx), %rdx
	movsd	224(%rbx), %xmm1
	movsd	80(%rax), %xmm3
	movsd	72(%rax), %xmm2
	movsd	%xmm0, 40(%rax)
	leaq	688(%rdx), %rcx
	call	_ZN3wze6engine6vector9TerminalYEddd
	movq	120(%rbx), %rdx
	movq	128(%rbx), %rcx
	cmpq	%rdx, %rsi
	jnb	.L262
	movq	(%rcx,%rdi), %rax
	movsd	%xmm0, 48(%rax)
.L232:
	addq	$1, %rsi
	cmpq	%rdx, %rsi
	jb	.L235
.L225:
	movq	152(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L260
	movq	160(%rbx), %rcx
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L239:
	movq	(%rcx,%rsi,8), %rax
	leaq	0(,%rsi,8), %rdi
	testq	%rax, %rax
	je	.L236
	movq	(%rbx), %rdx
	movsd	72(%rax), %xmm3
	movsd	64(%rax), %xmm2
	movsd	216(%rbx), %xmm1
	leaq	688(%rdx), %rcx
	call	_ZN3wze6engine6vector9TerminalXEddd
	movq	160(%rbx), %rax
	cmpq	152(%rbx), %rsi
	jnb	.L262
	movq	(%rax,%rdi), %rax
	movq	(%rbx), %rdx
	movsd	224(%rbx), %xmm1
	movsd	72(%rax), %xmm3
	movsd	64(%rax), %xmm2
	movsd	%xmm0, 32(%rax)
	leaq	688(%rdx), %rcx
	call	_ZN3wze6engine6vector9TerminalYEddd
	movq	152(%rbx), %rdx
	movq	160(%rbx), %rcx
	cmpq	%rdx, %rsi
	jnb	.L262
	movq	(%rcx,%rdi), %rax
	movsd	%xmm0, 40(%rax)
.L236:
	addq	$1, %rsi
	cmpq	%rdx, %rsi
	jb	.L239
.L260:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L262:
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
	.def	_ZN3neo9memCopyToEPKvPvy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector9TerminalXEddd;	.scl	2;	.type	32;	.endef
	.def	round;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector9TerminalYEddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox21UpdateOverlapboxScaleEv;	.scl	2;	.type	32;	.endef
