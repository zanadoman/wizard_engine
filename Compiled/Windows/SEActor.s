	.file	"SEActor.cpp"
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
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB2:
	.text
.LHOTB2:
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actorC2EPS0_yddttd
	.def	_ZN4slay6engine6actors5actorC2EPS0_yddttd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actorC2EPS0_yddttd
_ZN4slay6engine6actors5actorC2EPS0_yddttd:
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
	movl	216(%rsp), %edi
	movl	224(%rsp), %ebp
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	leaq	8(%rcx), %rax
	movq	%rdx, %rsi
	movapd	%xmm3, %xmm6
	movq	%r8, %r12
	leaq	40(%rbx), %r13
	movq	%rcx, %r8
	movq	%rax, %rcx
	movq	%rax, 56(%rsp)
	movhpd	208(%rsp), %xmm6
.LEHB0:
	call	_ZN4slay6engine6actors5actor6colorsC1EPS0_PS2_
.LEHE0:
	movq	%rbx, %r8
	movq	%rsi, %rdx
	movq	%r13, %rcx
.LEHB1:
	call	_ZN4slay6engine6actors5actor8texturesC1EPS0_PS2_
.LEHE1:
	leaq	72(%rbx), %r14
	movq	%rbx, %r8
	movq	%rsi, %rdx
	movq	%r14, %rcx
.LEHB2:
	call	_ZN4slay6engine6actors5actor9flipbooksC1EPS0_PS2_
.LEHE2:
	leaq	104(%rbx), %r15
	movq	%rbx, %r8
	movq	%rsi, %rdx
	movq	%r15, %rcx
.LEHB3:
	call	_ZN4slay6engine6actors5actor5textsC1EPS0_PS2_
.LEHE3:
	movw	%di, 168(%rbx)
	pxor	%xmm7, %xmm7
	movq	(%rbx), %rax
	pxor	%xmm2, %xmm2
	movw	%bp, 170(%rbx)
	movapd	%xmm2, %xmm1
	movsd	232(%rsp), %xmm0
	movw	%di, 200(%rbx)
	movzwl	%di, %edi
	leaq	552(%rax), %rcx
	movw	%bp, 202(%rbx)
	movzwl	%bp, %ebp
	movups	%xmm6, 152(%rbx)
	pxor	%xmm6, %xmm6
	cvtsi2sdl	%ebp, %xmm7
	cvtsi2sdl	%edi, %xmm6
	movb	$0, 136(%rbx)
	movq	%r12, 144(%rbx)
	movq	$0x000000000, 176(%rbx)
	movq	$0x000000000, 192(%rbx)
	movsd	%xmm0, 184(%rbx)
	movapd	%xmm6, %xmm3
	movsd	%xmm7, 32(%rsp)
.LEHB4:
	call	_ZN4slay6engine6vector6LengthEdddd
	mulsd	.LC1(%rip), %xmm0
	movq	(%rbx), %rax
	pxor	%xmm2, %xmm2
	movapd	%xmm6, %xmm3
	movapd	%xmm2, %xmm1
	leaq	552(%rax), %rcx
	movsd	%xmm0, 208(%rbx)
	movsd	%xmm7, 32(%rsp)
	call	_ZN4slay6engine6vector5AngleEdddd
	movq	(%rbx), %rax
	pxor	%xmm3, %xmm3
	movsd	%xmm0, 216(%rbx)
	movapd	%xmm6, %xmm1
	movsd	%xmm7, 32(%rsp)
	movapd	%xmm3, %xmm2
	leaq	552(%rax), %rcx
	call	_ZN4slay6engine6vector5AngleEdddd
.LEHE4:
	movsd	%xmm0, 224(%rbx)
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
.L8:
	movq	%rax, %rbx
	jmp	.L7
.L11:
	movq	%rax, %rbx
	jmp	.L4
.L10:
	movq	%rax, %rbx
	jmp	.L5
.L9:
	movq	%rax, %rbx
	jmp	.L6
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
	.uleb128 .L8-.LFB8433
	.uleb128 0
	.uleb128 .LEHB2-.LFB8433
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L9-.LFB8433
	.uleb128 0
	.uleb128 .LEHB3-.LFB8433
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L10-.LFB8433
	.uleb128 0
	.uleb128 .LEHB4-.LFB8433
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L11-.LFB8433
	.uleb128 0
.LLSDACSE8433:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN4slay6engine6actors5actorC2EPS0_yddttd.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actorC2EPS0_yddttd.cold
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
_ZN4slay6engine6actors5actorC2EPS0_yddttd.cold:
.L4:
	movq	%r15, %rcx
	call	_ZN4slay6engine6actors5actor5textsD1Ev
.L5:
	movq	%r14, %rcx
	call	_ZN4slay6engine6actors5actor9flipbooksD1Ev
.L6:
	movq	%r13, %rcx
	call	_ZN4slay6engine6actors5actor8texturesD1Ev
.L7:
	movq	56(%rsp), %rcx
	call	_ZN4slay6engine6actors5actor6colorsD1Ev
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
	.uleb128 .LEHB5-.LCOLDB2
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC8433:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE2:
	.text
.LHOTE2:
	.globl	_ZN4slay6engine6actors5actorC1EPS0_yddttd
	.def	_ZN4slay6engine6actors5actorC1EPS0_yddttd;	.scl	2;	.type	32;	.endef
	.set	_ZN4slay6engine6actors5actorC1EPS0_yddttd,_ZN4slay6engine6actors5actorC2EPS0_yddttd
	.section .rdata,"dr"
	.align 8
.LC3:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actorD2Ev
	.def	_ZN4slay6engine6actors5actorD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actorD2Ev
_ZN4slay6engine6actors5actorD2Ev:
.LFB8436:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	(%rcx), %rax
	movq	104(%rax), %rdx
	movq	544(%rax), %r8
	movq	%rcx, %rbx
	movq	536(%rax), %rcx
	cmpq	%rcx, %rdx
	jnb	.L18
	cmpq	%rbx, (%r8,%rdx,8)
	je	.L19
.L15:
	movq	112(%rax), %rdx
	cmpq	%rcx, %rdx
	jnb	.L18
	cmpq	%rbx, (%r8,%rdx,8)
	je	.L20
.L17:
	leaq	104(%rbx), %rcx
	call	_ZN4slay6engine6actors5actor5textsD1Ev
	leaq	72(%rbx), %rcx
	call	_ZN4slay6engine6actors5actor9flipbooksD1Ev
	leaq	40(%rbx), %rcx
	call	_ZN4slay6engine6actors5actor8texturesD1Ev
	leaq	8(%rbx), %rcx
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZN4slay6engine6actors5actor6colorsD1Ev
	.p2align 4,,10
	.p2align 3
.L19:
	movq	$0, 104(%rax)
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L20:
	movq	$0, 112(%rax)
	jmp	.L17
.L18:
	leaq	.LC3(%rip), %rcx
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
	.globl	_ZN4slay6engine6actors5actorD1Ev
	.def	_ZN4slay6engine6actors5actorD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN4slay6engine6actors5actorD1Ev,_ZN4slay6engine6actors5actorD2Ev
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor7GetTypeEv
	.def	_ZN4slay6engine6actors5actor7GetTypeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor7GetTypeEv
_ZN4slay6engine6actors5actor7GetTypeEv:
.LFB8438:
	.seh_endprologue
	movq	144(%rcx), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor4GetXEv
	.def	_ZN4slay6engine6actors5actor4GetXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor4GetXEv
_ZN4slay6engine6actors5actor4GetXEv:
.LFB8439:
	.seh_endprologue
	movsd	152(%rcx), %xmm0
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor4GetYEv
	.def	_ZN4slay6engine6actors5actor4GetYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor4GetYEv
_ZN4slay6engine6actors5actor4GetYEv:
.LFB8441:
	.seh_endprologue
	movsd	160(%rcx), %xmm0
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8GetWidthEv
	.def	_ZN4slay6engine6actors5actor8GetWidthEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor8GetWidthEv
_ZN4slay6engine6actors5actor8GetWidthEv:
.LFB8443:
	.seh_endprologue
	movzwl	168(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9GetHeightEv
	.def	_ZN4slay6engine6actors5actor9GetHeightEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9GetHeightEv
_ZN4slay6engine6actors5actor9GetHeightEv:
.LFB8445:
	.seh_endprologue
	movzwl	170(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8GetAngleEv
	.def	_ZN4slay6engine6actors5actor8GetAngleEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor8GetAngleEv
_ZN4slay6engine6actors5actor8GetAngleEv:
.LFB8447:
	.seh_endprologue
	movsd	176(%rcx), %xmm0
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8GetLayerEv
	.def	_ZN4slay6engine6actors5actor8GetLayerEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor8GetLayerEv
_ZN4slay6engine6actors5actor8GetLayerEv:
.LFB8449:
	.seh_endprologue
	movsd	184(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC4:
	.ascii "slay::engine.actors[].SetLayer(): Layer must not be less than 0\12Params: Layer: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8SetLayerEd
	.def	_ZN4slay6engine6actors5actor8SetLayerEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor8SetLayerEd
_ZN4slay6engine6actors5actor8SetLayerEd:
.LFB8450:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	ja	.L41
	ucomisd	%xmm0, %xmm1
	jp	.L33
	je	.L42
.L33:
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 184(%rcx)
	addq	$40, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L42:
	movq	$0x000000000, 192(%rcx)
	movq	(%rcx), %rax
	movq	104(%rax), %rdx
	movq	536(%rax), %r9
	movq	544(%rax), %r8
	cmpq	%r9, %rdx
	jnb	.L40
	cmpq	%rcx, (%r8,%rdx,8)
	je	.L43
.L35:
	movq	112(%rax), %rdx
	cmpq	%r9, %rdx
	jnb	.L40
	cmpq	%rcx, (%r8,%rdx,8)
	jne	.L33
	movq	$0, 112(%rax)
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L43:
	movq	$0, 104(%rax)
	jmp	.L35
.L41:
	leaq	.LC4(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L40:
	leaq	.LC3(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8GetDepthEv
	.def	_ZN4slay6engine6actors5actor8GetDepthEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor8GetDepthEv
_ZN4slay6engine6actors5actor8GetDepthEv:
.LFB8451:
	.seh_endprologue
	movsd	192(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC5:
	.ascii "slay::engine.actors[].SetDepth(): Illegal to set Depth when Layer is 0\12Params: Depth: %lf\12\0"
	.align 8
.LC6:
	.ascii "slay::engine::actors[].SetDepth(): Depth must not be less than 0\12Params: Depth: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8SetDepthEd
	.def	_ZN4slay6engine6actors5actor8SetDepthEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor8SetDepthEd
_ZN4slay6engine6actors5actor8SetDepthEd:
.LFB8452:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	pxor	%xmm0, %xmm0
	ucomisd	184(%rcx), %xmm0
	jp	.L46
	je	.L53
.L46:
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	ja	.L54
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 192(%rcx)
	addq	$40, %rsp
	ret
.L53:
	leaq	.LC5(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L54:
	leaq	.LC6(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor14GetHitboxWidthEv
	.def	_ZN4slay6engine6actors5actor14GetHitboxWidthEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor14GetHitboxWidthEv
_ZN4slay6engine6actors5actor14GetHitboxWidthEv:
.LFB8453:
	.seh_endprologue
	movzwl	200(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor15GetHitboxHeightEv
	.def	_ZN4slay6engine6actors5actor15GetHitboxHeightEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor15GetHitboxHeightEv
_ZN4slay6engine6actors5actor15GetHitboxHeightEv:
.LFB8454:
	.seh_endprologue
	movzwl	202(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor17UpdateHitboxScaleEv
	.def	_ZN4slay6engine6actors5actor17UpdateHitboxScaleEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor17UpdateHitboxScaleEv
_ZN4slay6engine6actors5actor17UpdateHitboxScaleEv:
.LFB8455:
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
	movsd	.LC7(%rip), %xmm7
	movsd	176(%rcx), %xmm6
	movq	(%rcx), %rax
	movsd	216(%rcx), %xmm8
	addsd	%xmm6, %xmm8
	addsd	224(%rcx), %xmm6
	movq	%rcx, %rbx
	leaq	552(%rax), %rcx
	movsd	208(%rbx), %xmm2
	movapd	%xmm8, %xmm3
	movapd	%xmm8, %xmm9
	call	_ZN4slay6engine6vector9TerminalXEddd
	addsd	%xmm7, %xmm9
	addsd	%xmm6, %xmm7
	call	round
	movq	(%rbx), %rax
	movapd	%xmm6, %xmm3
	pxor	%xmm1, %xmm1
	movsd	208(%rbx), %xmm2
	cvttsd2sil	%xmm0, %edi
	leaq	552(%rax), %rcx
	call	_ZN4slay6engine6vector9TerminalXEddd
	call	round
	movq	(%rbx), %rax
	movapd	%xmm9, %xmm3
	movsd	208(%rbx), %xmm2
	pxor	%xmm1, %xmm1
	cvttsd2sil	%xmm0, %r15d
	leaq	552(%rax), %rcx
	call	_ZN4slay6engine6vector9TerminalXEddd
	call	round
	movq	(%rbx), %rax
	movapd	%xmm7, %xmm3
	pxor	%xmm1, %xmm1
	movsd	208(%rbx), %xmm2
	cvttsd2sil	%xmm0, %r14d
	leaq	552(%rax), %rcx
	call	_ZN4slay6engine6vector9TerminalXEddd
	call	round
	movq	(%rbx), %rax
	movapd	%xmm8, %xmm3
	movsd	208(%rbx), %xmm2
	pxor	%xmm1, %xmm1
	cvttsd2sil	%xmm0, %r13d
	leaq	552(%rax), %rcx
	call	_ZN4slay6engine6vector9TerminalYEddd
	call	round
	movq	(%rbx), %rax
	movapd	%xmm6, %xmm3
	pxor	%xmm1, %xmm1
	movsd	208(%rbx), %xmm2
	cvttsd2sil	%xmm0, %esi
	leaq	552(%rax), %rcx
	call	_ZN4slay6engine6vector9TerminalYEddd
	call	round
	movq	(%rbx), %rax
	movapd	%xmm9, %xmm3
	movsd	208(%rbx), %xmm2
	pxor	%xmm1, %xmm1
	cvttsd2sil	%xmm0, %r12d
	leaq	552(%rax), %rcx
	call	_ZN4slay6engine6vector9TerminalYEddd
	call	round
	movq	(%rbx), %rax
	movapd	%xmm7, %xmm3
	pxor	%xmm1, %xmm1
	movsd	208(%rbx), %xmm2
	cvttsd2sil	%xmm0, %ebp
	leaq	552(%rax), %rcx
	call	_ZN4slay6engine6vector9TerminalYEddd
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
	movw	%ax, 200(%rbx)
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
	movw	%ax, 202(%rbx)
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
	.globl	_ZN4slay6engine6actors5actor21UpdateMembersPositionEv
	.def	_ZN4slay6engine6actors5actor21UpdateMembersPositionEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor21UpdateMembersPositionEv
_ZN4slay6engine6actors5actor21UpdateMembersPositionEv:
.LFB8456:
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
	jbe	.L66
	movq	32(%rcx), %rcx
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L65:
	movq	(%rcx,%rsi,8), %rax
	leaq	0(,%rsi,8), %rdi
	testq	%rax, %rax
	je	.L62
	movq	(%rbx), %rdx
	movsd	56(%rax), %xmm3
	movsd	48(%rax), %xmm2
	movsd	152(%rbx), %xmm1
	leaq	552(%rdx), %rcx
	call	_ZN4slay6engine6vector9TerminalXEddd
	movq	32(%rbx), %rax
	cmpq	24(%rbx), %rsi
	jnb	.L101
	movq	(%rax,%rdi), %rax
	movq	(%rbx), %rdx
	movsd	160(%rbx), %xmm1
	movsd	56(%rax), %xmm3
	movsd	48(%rax), %xmm2
	movsd	%xmm0, 32(%rax)
	leaq	552(%rdx), %rcx
	call	_ZN4slay6engine6vector9TerminalYEddd
	movq	24(%rbx), %rdx
	movq	32(%rbx), %rcx
	cmpq	%rdx, %rsi
	jnb	.L101
	movq	(%rcx,%rdi), %rax
	movsd	%xmm0, 40(%rax)
.L62:
	addq	$1, %rsi
	cmpq	%rdx, %rsi
	jb	.L65
.L66:
	movq	56(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L61
	movq	64(%rbx), %rcx
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L72:
	movq	(%rcx,%rsi,8), %rax
	leaq	0(,%rsi,8), %rdi
	testq	%rax, %rax
	je	.L69
	movq	(%rbx), %rdx
	movsd	64(%rax), %xmm3
	movsd	56(%rax), %xmm2
	movsd	152(%rbx), %xmm1
	leaq	552(%rdx), %rcx
	call	_ZN4slay6engine6vector9TerminalXEddd
	movq	64(%rbx), %rax
	cmpq	56(%rbx), %rsi
	jnb	.L101
	movq	(%rax,%rdi), %rax
	movq	(%rbx), %rdx
	movsd	160(%rbx), %xmm1
	movsd	64(%rax), %xmm3
	movsd	56(%rax), %xmm2
	movsd	%xmm0, 40(%rax)
	leaq	552(%rdx), %rcx
	call	_ZN4slay6engine6vector9TerminalYEddd
	movq	56(%rbx), %rdx
	movq	64(%rbx), %rcx
	cmpq	%rdx, %rsi
	jnb	.L101
	movq	(%rcx,%rdi), %rax
	movsd	%xmm0, 48(%rax)
.L69:
	addq	$1, %rsi
	cmpq	%rdx, %rsi
	jb	.L72
.L61:
	movq	88(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L68
	movq	96(%rbx), %rcx
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L78:
	movq	(%rcx,%rsi,8), %rax
	leaq	0(,%rsi,8), %rdi
	testq	%rax, %rax
	je	.L75
	movq	(%rbx), %rdx
	movsd	64(%rax), %xmm3
	movsd	56(%rax), %xmm2
	movsd	152(%rbx), %xmm1
	leaq	552(%rdx), %rcx
	call	_ZN4slay6engine6vector9TerminalXEddd
	movq	96(%rbx), %rax
	cmpq	88(%rbx), %rsi
	jnb	.L101
	movq	(%rax,%rdi), %rax
	movq	(%rbx), %rdx
	movsd	160(%rbx), %xmm1
	movsd	64(%rax), %xmm3
	movsd	56(%rax), %xmm2
	movsd	%xmm0, 40(%rax)
	leaq	552(%rdx), %rcx
	call	_ZN4slay6engine6vector9TerminalYEddd
	movq	88(%rbx), %rdx
	movq	96(%rbx), %rcx
	cmpq	%rdx, %rsi
	jnb	.L101
	movq	(%rcx,%rdi), %rax
	movsd	%xmm0, 48(%rax)
.L75:
	addq	$1, %rsi
	cmpq	%rdx, %rsi
	jb	.L78
.L68:
	movq	120(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L99
	movq	128(%rbx), %rcx
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L82:
	movq	(%rcx,%rsi,8), %rax
	leaq	0(,%rsi,8), %rdi
	testq	%rax, %rax
	je	.L79
	movq	(%rbx), %rdx
	movsd	72(%rax), %xmm3
	movsd	64(%rax), %xmm2
	movsd	152(%rbx), %xmm1
	leaq	552(%rdx), %rcx
	call	_ZN4slay6engine6vector9TerminalXEddd
	movq	128(%rbx), %rax
	cmpq	120(%rbx), %rsi
	jnb	.L101
	movq	(%rax,%rdi), %rax
	movq	(%rbx), %rdx
	movsd	160(%rbx), %xmm1
	movsd	72(%rax), %xmm3
	movsd	64(%rax), %xmm2
	movsd	%xmm0, 40(%rax)
	leaq	552(%rdx), %rcx
	call	_ZN4slay6engine6vector9TerminalYEddd
	movq	120(%rbx), %rdx
	movq	128(%rbx), %rcx
	cmpq	%rdx, %rsi
	jnb	.L101
	movq	(%rcx,%rdi), %rax
	movsd	%xmm0, 48(%rax)
.L79:
	addq	$1, %rsi
	cmpq	%rdx, %rsi
	jb	.L82
.L99:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L101:
	leaq	.LC3(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor4SetXEd
	.def	_ZN4slay6engine6actors5actor4SetXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor4SetXEd
_ZN4slay6engine6actors5actor4SetXEd:
.LFB8440:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movsd	%xmm1, 152(%rcx)
	call	_ZN4slay6engine6actors5actor21UpdateMembersPositionEv
	movsd	152(%rbx), %xmm0
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor4SetYEd
	.def	_ZN4slay6engine6actors5actor4SetYEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor4SetYEd
_ZN4slay6engine6actors5actor4SetYEd:
.LFB8442:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movsd	%xmm1, 160(%rcx)
	call	_ZN4slay6engine6actors5actor21UpdateMembersPositionEv
	movsd	160(%rbx), %xmm0
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8SetWidthEt
	.def	_ZN4slay6engine6actors5actor8SetWidthEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor8SetWidthEt
_ZN4slay6engine6actors5actor8SetWidthEt:
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
	movw	%dx, 168(%rcx)
	movzwl	%dx, %edx
	leaq	552(%rax), %rcx
	movzwl	170(%rbx), %eax
	cvtsi2sdl	%edx, %xmm6
	cvtsi2sdl	%eax, %xmm0
	movapd	%xmm6, %xmm3
	movsd	%xmm0, 32(%rsp)
	call	_ZN4slay6engine6vector6LengthEdddd
	movq	(%rbx), %rax
	pxor	%xmm2, %xmm2
	movapd	%xmm6, %xmm3
	mulsd	.LC1(%rip), %xmm0
	movapd	%xmm2, %xmm1
	leaq	552(%rax), %rcx
	movzwl	170(%rbx), %eax
	movsd	%xmm0, 208(%rbx)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, 32(%rsp)
	call	_ZN4slay6engine6vector5AngleEdddd
	movq	(%rbx), %rax
	pxor	%xmm3, %xmm3
	movapd	%xmm6, %xmm1
	movsd	%xmm0, 216(%rbx)
	pxor	%xmm0, %xmm0
	movapd	%xmm3, %xmm2
	leaq	552(%rax), %rcx
	movzwl	170(%rbx), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, 32(%rsp)
	call	_ZN4slay6engine6vector5AngleEdddd
	movq	%rbx, %rcx
	movsd	%xmm0, 224(%rbx)
	call	_ZN4slay6engine6actors5actor17UpdateHitboxScaleEv
	movq	%rbx, %rcx
	call	_ZN4slay6engine6actors5actor21UpdateMembersPositionEv
	movzwl	168(%rbx), %eax
	movaps	48(%rsp), %xmm6
	addq	$64, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9SetHeightEt
	.def	_ZN4slay6engine6actors5actor9SetHeightEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9SetHeightEt
_ZN4slay6engine6actors5actor9SetHeightEt:
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
	movzwl	168(%rcx), %eax
	cvtsi2sdl	%eax, %xmm3
	movw	%dx, 170(%rcx)
	movzwl	%dx, %edx
	movq	%rcx, %rbx
	cvtsi2sdl	%edx, %xmm6
	movq	(%rcx), %rdx
	leaq	552(%rdx), %rcx
	movsd	%xmm6, 32(%rsp)
	call	_ZN4slay6engine6vector6LengthEdddd
	pxor	%xmm3, %xmm3
	movq	(%rbx), %rdx
	pxor	%xmm2, %xmm2
	movzwl	168(%rbx), %eax
	mulsd	.LC1(%rip), %xmm0
	movapd	%xmm2, %xmm1
	leaq	552(%rdx), %rcx
	cvtsi2sdl	%eax, %xmm3
	movsd	%xmm0, 208(%rbx)
	movsd	%xmm6, 32(%rsp)
	call	_ZN4slay6engine6vector5AngleEdddd
	pxor	%xmm1, %xmm1
	movq	(%rbx), %rdx
	pxor	%xmm3, %xmm3
	movzwl	168(%rbx), %eax
	movapd	%xmm3, %xmm2
	movsd	%xmm0, 216(%rbx)
	leaq	552(%rdx), %rcx
	movsd	%xmm6, 32(%rsp)
	cvtsi2sdl	%eax, %xmm1
	call	_ZN4slay6engine6vector5AngleEdddd
	movq	%rbx, %rcx
	movsd	%xmm0, 224(%rbx)
	call	_ZN4slay6engine6actors5actor17UpdateHitboxScaleEv
	movq	%rbx, %rcx
	call	_ZN4slay6engine6actors5actor21UpdateMembersPositionEv
	movzwl	170(%rbx), %eax
	movaps	48(%rsp), %xmm6
	addq	$64, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8SetAngleEd
	.def	_ZN4slay6engine6actors5actor8SetAngleEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor8SetAngleEd
_ZN4slay6engine6actors5actor8SetAngleEd:
.LFB8448:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	24(%rcx), %rdx
	movapd	%xmm1, %xmm0
	movq	%rcx, %rbx
	subsd	176(%rcx), %xmm0
	movsd	%xmm1, 176(%rcx)
	cmpq	$1, %rdx
	jbe	.L107
	movq	32(%rcx), %rcx
	leaq	8(%rcx), %rax
	leaq	(%rcx,%rdx,8), %rcx
	jmp	.L109
	.p2align 4,,10
	.p2align 3
.L108:
	addq	$8, %rax
	cmpq	%rcx, %rax
	je	.L107
.L109:
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L108
	cmpb	$0, 24(%rdx)
	je	.L108
	movsd	56(%rdx), %xmm1
	addq	$8, %rax
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 56(%rdx)
	cmpq	%rcx, %rax
	jne	.L109
.L107:
	movq	56(%rbx), %rax
	cmpq	$1, %rax
	jbe	.L110
	movq	64(%rbx), %rcx
	leaq	8(%rcx), %rdx
	leaq	(%rcx,%rax,8), %rcx
	jmp	.L115
	.p2align 4,,10
	.p2align 3
.L113:
	cmpb	$0, 35(%rax)
	jne	.L135
.L112:
	addq	$8, %rdx
	cmpq	%rcx, %rdx
	je	.L110
.L115:
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L112
	cmpb	$0, 34(%rax)
	je	.L113
	movsd	24(%rax), %xmm1
	cmpb	$0, 35(%rax)
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 24(%rax)
	je	.L112
.L135:
	movsd	64(%rax), %xmm1
	addq	$8, %rdx
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 64(%rax)
	cmpq	%rcx, %rdx
	jne	.L115
.L110:
	movq	88(%rbx), %rax
	cmpq	$1, %rax
	jbe	.L116
	movq	96(%rbx), %rcx
	leaq	8(%rcx), %rdx
	leaq	(%rcx,%rax,8), %rcx
	jmp	.L121
	.p2align 4,,10
	.p2align 3
.L119:
	cmpb	$0, 35(%rax)
	jne	.L136
.L118:
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	je	.L116
.L121:
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L118
	cmpb	$0, 34(%rax)
	je	.L119
	movsd	24(%rax), %xmm1
	cmpb	$0, 35(%rax)
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 24(%rax)
	je	.L118
.L136:
	movsd	64(%rax), %xmm1
	addq	$8, %rdx
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 64(%rax)
	cmpq	%rdx, %rcx
	jne	.L121
.L116:
	movq	120(%rbx), %rax
	cmpq	$1, %rax
	jbe	.L122
	movq	128(%rbx), %rcx
	leaq	8(%rcx), %rdx
	leaq	(%rcx,%rax,8), %rcx
	jmp	.L127
	.p2align 4,,10
	.p2align 3
.L125:
	cmpb	$0, 35(%rax)
	jne	.L137
.L124:
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	je	.L122
.L127:
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L124
	cmpb	$0, 34(%rax)
	je	.L125
	movsd	24(%rax), %xmm1
	cmpb	$0, 35(%rax)
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 24(%rax)
	je	.L124
.L137:
	movsd	72(%rax), %xmm1
	addq	$8, %rdx
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 72(%rax)
	cmpq	%rdx, %rcx
	jne	.L127
.L122:
	movq	%rbx, %rcx
	call	_ZN4slay6engine6actors5actor17UpdateHitboxScaleEv
	movq	%rbx, %rcx
	call	_ZN4slay6engine6actors5actor21UpdateMembersPositionEv
	movsd	176(%rbx), %xmm0
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC1:
	.long	0
	.long	1071644672
	.align 8
.LC7:
	.long	0
	.long	1080459264
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6actors5actor6colorsC1EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6actors5actor8texturesC1EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6actors5actor9flipbooksC1EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6actors5actor5textsC1EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6vector6LengthEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6vector5AngleEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6actors5actor5textsD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6actors5actor9flipbooksD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6actors5actor8texturesD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6actors5actor6colorsD1Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6vector9TerminalXEddd;	.scl	2;	.type	32;	.endef
	.def	round;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6vector9TerminalYEddd;	.scl	2;	.type	32;	.endef
