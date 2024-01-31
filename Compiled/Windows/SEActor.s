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
	.globl	_ZN4slay6engine6actors5actorC2ERS0_y
	.def	_ZN4slay6engine6actors5actorC2ERS0_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actorC2ERS0_y
_ZN4slay6engine6actors5actorC2ERS0_y:
.LFB8433:
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
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	leaq	8(%rcx), %rbp
	movq	%rdx, %rsi
	movq	%r8, %rdi
	leaq	40(%rbx), %r12
	movq	%rcx, %r8
	movq	%rbp, %rcx
.LEHB0:
	call	_ZN4slay6engine6actors5actor6colorsC1ERS0_RS2_
.LEHE0:
	movq	%rbx, %r8
	movq	%rsi, %rdx
	movq	%r12, %rcx
.LEHB1:
	call	_ZN4slay6engine6actors5actor8texturesC1ERS0_RS2_
.LEHE1:
	leaq	72(%rbx), %r13
	movq	%rbx, %r8
	movq	%rsi, %rdx
	movq	%r13, %rcx
.LEHB2:
	call	_ZN4slay6engine6actors5actor9flipbooksC1ERS0_RS2_
.LEHE2:
	leaq	104(%rbx), %rcx
	movq	%rbx, %r8
	movq	%rsi, %rdx
.LEHB3:
	call	_ZN4slay6engine6actors5actor5textsC1ERS0_RS2_
.LEHE3:
	pxor	%xmm0, %xmm0
	movl	$0, 136(%rbx)
	movq	%rdi, 144(%rbx)
	movq	$0x000000000, 184(%rbx)
	movups	%xmm0, 152(%rbx)
	movups	%xmm0, 168(%rbx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L7:
	movq	%rax, %rbx
	jmp	.L6
.L9:
	movq	%rax, %rbx
	jmp	.L4
.L8:
	movq	%rax, %rbx
	jmp	.L5
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
	.uleb128 .L7-.LFB8433
	.uleb128 0
	.uleb128 .LEHB2-.LFB8433
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L8-.LFB8433
	.uleb128 0
	.uleb128 .LEHB3-.LFB8433
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L9-.LFB8433
	.uleb128 0
.LLSDACSE8433:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN4slay6engine6actors5actorC2ERS0_y.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actorC2ERS0_y.cold
	.seh_stackalloc	88
	.seh_savereg	%rbx, 40
	.seh_savereg	%rsi, 48
	.seh_savereg	%rdi, 56
	.seh_savereg	%rbp, 64
	.seh_savereg	%r12, 72
	.seh_savereg	%r13, 80
	.seh_endprologue
_ZN4slay6engine6actors5actorC2ERS0_y.cold:
.L4:
	movq	%r13, %rcx
	call	_ZN4slay6engine6actors5actor9flipbooksD1Ev
.L5:
	movq	%r12, %rcx
	call	_ZN4slay6engine6actors5actor8texturesD1Ev
.L6:
	movq	%rbp, %rcx
	call	_ZN4slay6engine6actors5actor6colorsD1Ev
	movq	%rbx, %rcx
.LEHB4:
	call	_Unwind_Resume
	nop
.LEHE4:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8433:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8433-.LLSDACSBC8433
.LLSDACSBC8433:
	.uleb128 .LEHB4-.LCOLDB2
	.uleb128 .LEHE4-.LEHB4
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
	.globl	_ZN4slay6engine6actors5actorC1ERS0_y
	.def	_ZN4slay6engine6actors5actorC1ERS0_y;	.scl	2;	.type	32;	.endef
	.set	_ZN4slay6engine6actors5actorC1ERS0_y,_ZN4slay6engine6actors5actorC2ERS0_y
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
	jnb	.L16
	cmpq	%rbx, (%r8,%rdx,8)
	je	.L17
.L13:
	movq	112(%rax), %rdx
	cmpq	%rcx, %rdx
	jnb	.L16
	cmpq	%rbx, (%r8,%rdx,8)
	je	.L18
.L15:
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
.L17:
	movq	$0, 104(%rax)
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L18:
	movq	$0, 112(%rax)
	jmp	.L15
.L16:
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
	.globl	_ZN4slay6engine6actors5actor4SetXEd
	.def	_ZN4slay6engine6actors5actor4SetXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor4SetXEd
_ZN4slay6engine6actors5actor4SetXEd:
.LFB8440:
	.seh_endprologue
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 152(%rcx)
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
	.globl	_ZN4slay6engine6actors5actor4SetYEd
	.def	_ZN4slay6engine6actors5actor4SetYEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor4SetYEd
_ZN4slay6engine6actors5actor4SetYEd:
.LFB8442:
	.seh_endprologue
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 160(%rcx)
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8GetAngleEv
	.def	_ZN4slay6engine6actors5actor8GetAngleEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor8GetAngleEv
_ZN4slay6engine6actors5actor8GetAngleEv:
.LFB8443:
	.seh_endprologue
	movsd	168(%rcx), %xmm0
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8SetAngleEd
	.def	_ZN4slay6engine6actors5actor8SetAngleEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor8SetAngleEd
_ZN4slay6engine6actors5actor8SetAngleEd:
.LFB8444:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	movaps	%xmm7, 64(%rsp)
	.seh_savexmm	%xmm7, 64
	.seh_endprologue
	movq	24(%rcx), %rdx
	movapd	%xmm1, %xmm7
	movq	%rcx, %rbx
	movapd	%xmm1, %xmm6
	subsd	168(%rcx), %xmm7
	cmpq	$1, %rdx
	jbe	.L33
	movq	32(%rcx), %rcx
	movl	$1, %esi
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L29:
	addq	$1, %rsi
	cmpq	%rdx, %rsi
	jnb	.L33
.L32:
	movq	(%rcx,%rsi,8), %rax
	leaq	0(,%rsi,8), %rdi
	testq	%rax, %rax
	je	.L29
	cmpb	$0, 16(%rax)
	je	.L29
	movsd	48(%rax), %xmm3
	movq	(%rbx), %rdx
	movsd	40(%rax), %xmm2
	movsd	152(%rbx), %xmm1
	addsd	%xmm6, %xmm3
	leaq	552(%rdx), %rcx
	movsd	%xmm3, 40(%rsp)
	call	_ZN4slay6engine6vector9TerminalXEddd
	subsd	152(%rbx), %xmm0
	call	round
	cmpq	24(%rbx), %rsi
	movq	32(%rbx), %rax
	cvttsd2sil	%xmm0, %edx
	movsd	40(%rsp), %xmm3
	jnb	.L80
	movq	(%rax,%rdi), %rax
	movsd	160(%rbx), %xmm1
	movl	%edx, 28(%rax)
	movq	(%rbx), %rdx
	movsd	40(%rax), %xmm2
	leaq	552(%rdx), %rcx
	call	_ZN4slay6engine6vector9TerminalYEddd
	subsd	160(%rbx), %xmm0
	call	round
	movq	24(%rbx), %rdx
	movq	32(%rbx), %rcx
	cvttsd2sil	%xmm0, %r8d
	cmpq	%rdx, %rsi
	jnb	.L80
	movq	(%rcx,%rdi), %rax
	addq	$1, %rsi
	movl	%r8d, 32(%rax)
	cmpq	%rdx, %rsi
	jb	.L32
.L33:
	movq	56(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L28
	movq	64(%rbx), %rcx
	movl	$1, %esi
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L37:
	cmpq	%rdx, %rsi
	jnb	.L80
	cmpb	$0, 17(%rax)
	jne	.L81
.L36:
	addq	$1, %rsi
	cmpq	%rdx, %rsi
	jnb	.L28
.L27:
	movq	(%rcx,%rsi,8), %rax
	leaq	0(,%rsi,8), %rdi
	testq	%rax, %rax
	je	.L36
	cmpb	$0, 16(%rax)
	je	.L37
	movsd	56(%rax), %xmm3
	movq	(%rbx), %rdx
	movsd	48(%rax), %xmm2
	movsd	152(%rbx), %xmm1
	addsd	%xmm6, %xmm3
	leaq	552(%rdx), %rcx
	movsd	%xmm3, 40(%rsp)
	call	_ZN4slay6engine6vector9TerminalXEddd
	subsd	152(%rbx), %xmm0
	call	round
	cmpq	56(%rbx), %rsi
	movq	64(%rbx), %rax
	cvttsd2sil	%xmm0, %edx
	movsd	40(%rsp), %xmm3
	jnb	.L80
	movq	(%rax,%rdi), %rax
	movsd	160(%rbx), %xmm1
	movl	%edx, 40(%rax)
	movq	(%rbx), %rdx
	movsd	48(%rax), %xmm2
	leaq	552(%rdx), %rcx
	call	_ZN4slay6engine6vector9TerminalYEddd
	subsd	160(%rbx), %xmm0
	call	round
	movq	56(%rbx), %rdx
	movq	64(%rbx), %rcx
	cvttsd2sil	%xmm0, %r8d
	cmpq	%rdx, %rsi
	jnb	.L80
	movq	(%rcx,%rdi), %rax
	cmpb	$0, 17(%rax)
	movl	%r8d, 44(%rax)
	je	.L36
.L81:
	movsd	24(%rax), %xmm0
	addq	$1, %rsi
	addsd	%xmm7, %xmm0
	movsd	%xmm0, 24(%rax)
	cmpq	%rdx, %rsi
	jb	.L27
.L28:
	movq	88(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L35
	movq	96(%rbx), %rcx
	movl	$1, %esi
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L46:
	cmpq	%rdx, %rsi
	jnb	.L80
	cmpb	$0, 17(%rax)
	jne	.L82
.L45:
	addq	$1, %rsi
	cmpq	%rdx, %rsi
	jnb	.L35
.L34:
	movq	(%rcx,%rsi,8), %rax
	leaq	0(,%rsi,8), %rdi
	testq	%rax, %rax
	je	.L45
	cmpb	$0, 16(%rax)
	je	.L46
	movsd	64(%rax), %xmm3
	movq	(%rbx), %rdx
	movsd	56(%rax), %xmm2
	movsd	152(%rbx), %xmm1
	addsd	%xmm6, %xmm3
	leaq	552(%rdx), %rcx
	movsd	%xmm3, 40(%rsp)
	call	_ZN4slay6engine6vector9TerminalXEddd
	subsd	152(%rbx), %xmm0
	call	round
	cmpq	88(%rbx), %rsi
	movq	96(%rbx), %rax
	cvttsd2sil	%xmm0, %edx
	movsd	40(%rsp), %xmm3
	jnb	.L80
	movq	(%rax,%rdi), %rax
	movq	(%rbx), %rcx
	movsd	160(%rbx), %xmm1
	movl	%edx, 48(%rax)
	movsd	56(%rax), %xmm2
	addq	$552, %rcx
	call	_ZN4slay6engine6vector9TerminalYEddd
	subsd	160(%rbx), %xmm0
	call	round
	movq	88(%rbx), %rdx
	movq	96(%rbx), %rcx
	cvttsd2sil	%xmm0, %r8d
	cmpq	%rdx, %rsi
	jnb	.L80
	movq	(%rcx,%rdi), %rax
	cmpb	$0, 17(%rax)
	movl	%r8d, 52(%rax)
	je	.L45
.L82:
	movsd	24(%rax), %xmm0
	addq	$1, %rsi
	addsd	%xmm7, %xmm0
	movsd	%xmm0, 24(%rax)
	cmpq	%rdx, %rsi
	jb	.L34
.L35:
	movq	120(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L44
	movq	128(%rbx), %rcx
	movl	$1, %esi
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L53:
	cmpq	%rdx, %rsi
	jnb	.L80
	cmpb	$0, 17(%rax)
	jne	.L83
.L52:
	addq	$1, %rsi
	cmpq	%rdx, %rsi
	jnb	.L44
.L43:
	movq	(%rcx,%rsi,8), %rax
	leaq	0(,%rsi,8), %rdi
	testq	%rax, %rax
	je	.L52
	cmpb	$0, 16(%rax)
	je	.L53
	movsd	72(%rax), %xmm3
	movq	(%rbx), %rdx
	movsd	64(%rax), %xmm2
	movsd	152(%rbx), %xmm1
	addsd	%xmm6, %xmm3
	leaq	552(%rdx), %rcx
	movsd	%xmm3, 40(%rsp)
	call	_ZN4slay6engine6vector9TerminalXEddd
	subsd	152(%rbx), %xmm0
	call	round
	cmpq	120(%rbx), %rsi
	movq	128(%rbx), %rax
	cvttsd2sil	%xmm0, %edx
	movsd	40(%rsp), %xmm3
	jnb	.L80
	movq	(%rax,%rdi), %rax
	movq	(%rbx), %rcx
	movsd	160(%rbx), %xmm1
	movl	%edx, 56(%rax)
	movsd	64(%rax), %xmm2
	addq	$552, %rcx
	call	_ZN4slay6engine6vector9TerminalYEddd
	subsd	160(%rbx), %xmm0
	call	round
	movq	120(%rbx), %rdx
	movq	128(%rbx), %rcx
	cvttsd2sil	%xmm0, %r8d
	cmpq	%rdx, %rsi
	jnb	.L80
	movq	(%rcx,%rdi), %rax
	cmpb	$0, 17(%rax)
	movl	%r8d, 60(%rax)
	je	.L52
.L83:
	movsd	24(%rax), %xmm0
	addq	$1, %rsi
	addsd	%xmm7, %xmm0
	movsd	%xmm0, 24(%rax)
	cmpq	%rdx, %rsi
	jb	.L43
.L44:
	movsd	%xmm6, 168(%rbx)
	movapd	%xmm6, %xmm0
	movaps	64(%rsp), %xmm7
	movaps	48(%rsp), %xmm6
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L80:
	leaq	.LC3(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8GetLayerEv
	.def	_ZN4slay6engine6actors5actor8GetLayerEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor8GetLayerEv
_ZN4slay6engine6actors5actor8GetLayerEv:
.LFB8445:
	.seh_endprologue
	movsd	176(%rcx), %xmm0
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
.LFB8446:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	ja	.L90
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 176(%rcx)
	addq	$40, %rsp
	ret
.L90:
	leaq	.LC4(%rip), %rcx
	movq	%xmm1, %rdx
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
.LFB8447:
	.seh_endprologue
	movsd	184(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC5:
	.ascii "slay::engine::actors[].SetDepth(): Depth must not be less than 0\12Params: Depth: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8SetDepthEd
	.def	_ZN4slay6engine6actors5actor8SetDepthEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor8SetDepthEd
_ZN4slay6engine6actors5actor8SetDepthEd:
.LFB8448:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	ja	.L97
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 184(%rcx)
	addq	$40, %rsp
	ret
.L97:
	leaq	.LC5(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6actors5actor6colorsC1ERS0_RS2_;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6actors5actor8texturesC1ERS0_RS2_;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6actors5actor9flipbooksC1ERS0_RS2_;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6actors5actor5textsC1ERS0_RS2_;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6actors5actor9flipbooksD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6actors5actor8texturesD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6actors5actor6colorsD1Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6actors5actor5textsD1Ev;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6vector9TerminalXEddd;	.scl	2;	.type	32;	.endef
	.def	round;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6vector9TerminalYEddd;	.scl	2;	.type	32;	.endef
