	.file	"eagle.cpp"
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
.LCOLDB4:
	.text
.LHOTB4:
	.align 2
	.p2align 4
	.globl	_ZN5eagleC2EPN3wze6engineEP4gameddPNS1_6actors5actorEdd
	.def	_ZN5eagleC2EPN3wze6engineEP4gameddPNS1_6actors5actorEdd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5eagleC2EPN3wze6engineEP4gameddPNS1_6actors5actorEdd
_ZN5eagleC2EPN3wze6engineEP4gameddPNS1_6actors5actorEdd:
.LFB6890:
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
	movsd	176(%rsp), %xmm7
	movsd	184(%rsp), %xmm6
	movsd	160(%rsp), %xmm1
	movapd	%xmm7, %xmm0
	addsd	%xmm6, %xmm0
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	movq	%r8, 8(%rcx)
	movl	$2, %r8d
	movq	$0, 96(%rcx)
	movq	$0, 104(%rcx)
	leaq	272(%rdx), %rcx
	movq	%rbx, %rdx
	movsd	%xmm3, 32(%rsp)
	movsd	.LC0(%rip), %xmm3
	movl	$105, 48(%rsp)
	mulsd	%xmm0, %xmm3
	movl	$105, 40(%rsp)
	movsd	%xmm1, 56(%rsp)
.LEHB0:
	call	_ZN3wze6engine6actors3NewEPvyddttd
	movq	%rax, 16(%rbx)
	leaq	136(%rax), %rcx
	movl	$2, %edx
	call	_ZN3wze6engine6actors5actor12overlapboxes3NewEy
	movq	%rax, 24(%rbx)
	movq	16(%rbx), %rsi
	movl	$125, %edx
	movq	8(%rbx), %rax
	leaq	72(%rsi), %rcx
	leaq	88(%rax), %r8
	call	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE
	movq	%rax, 32(%rbx)
	movq	16(%rbx), %rsi
	movl	$125, %edx
	movq	8(%rbx), %rax
	leaq	72(%rsi), %rcx
	leaq	104(%rax), %r8
	call	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE
	movq	%rax, 40(%rbx)
	movq	168(%rsp), %rax
	movb	$1, 56(%rbx)
	movq	%rax, 48(%rbx)
	movq	.LC1(%rip), %rax
	movsd	%xmm7, 72(%rbx)
	movq	%rax, 64(%rbx)
	movq	(%rbx), %rax
	movsd	%xmm6, 80(%rbx)
	leaq	416(%rax), %rcx
	call	_ZN3wze6engine6timing14GetCurrentTickEv
	movq	16(%rbx), %rcx
	movq	24(%rbx), %rsi
	movl	%eax, 88(%rbx)
	call	_ZN3wze6engine6actors5actor8GetWidthEv
	movzwl	%ax, %eax
	pxor	%xmm0, %xmm0
	movsd	.LC2(%rip), %xmm6
	movq	%rsi, %rcx
	cvtsi2sdl	%eax, %xmm0
	addsd	%xmm6, %xmm0
	cvttsd2sil	%xmm0, %edx
	movzwl	%dx, %edx
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt
	movq	16(%rbx), %rcx
	movq	24(%rbx), %rsi
	call	_ZN3wze6engine6actors5actor9GetHeightEv
	movzwl	%ax, %eax
	pxor	%xmm0, %xmm0
	movq	%rsi, %rcx
	cvtsi2sdl	%eax, %xmm0
	addsd	%xmm6, %xmm0
	cvttsd2sil	%xmm0, %edx
	movzwl	%dx, %edx
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt
.LEHE0:
	movq	32(%rbx), %rax
	movl	.LC3(%rip), %edx
	movb	$1, 32(%rax)
	movl	%edx, 16(%rax)
	movq	40(%rbx), %rax
	movl	%edx, 16(%rax)
	movb	$0, 37(%rax)
	movaps	64(%rsp), %xmm6
	movaps	80(%rsp), %xmm7
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L5:
	movq	%rax, %rsi
	jmp	.L4
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6890:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6890-.LLSDACSB6890
.LLSDACSB6890:
	.uleb128 .LEHB0-.LFB6890
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L5-.LFB6890
	.uleb128 0
.LLSDACSE6890:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN5eagleC2EPN3wze6engineEP4gameddPNS1_6actors5actorEdd.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN5eagleC2EPN3wze6engineEP4gameddPNS1_6actors5actorEdd.cold
	.seh_stackalloc	120
	.seh_savereg	%rbx, 104
	.seh_savereg	%rsi, 112
	.seh_savexmm	%xmm6, 64
	.seh_savexmm	%xmm7, 80
	.seh_endprologue
_ZN5eagleC2EPN3wze6engineEP4gameddPNS1_6actors5actorEdd.cold:
.L4:
	movq	104(%rbx), %rcx
	call	free
	movq	%rsi, %rcx
.LEHB1:
	call	_Unwind_Resume
	nop
.LEHE1:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC6890:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6890-.LLSDACSBC6890
.LLSDACSBC6890:
	.uleb128 .LEHB1-.LCOLDB4
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSEC6890:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE4:
	.text
.LHOTE4:
	.globl	_ZN5eagleC1EPN3wze6engineEP4gameddPNS1_6actors5actorEdd
	.def	_ZN5eagleC1EPN3wze6engineEP4gameddPNS1_6actors5actorEdd;	.scl	2;	.type	32;	.endef
	.set	_ZN5eagleC1EPN3wze6engineEP4gameddPNS1_6actors5actorEdd,_ZN5eagleC2EPN3wze6engineEP4gameddPNS1_6actors5actorEdd
	.align 2
	.p2align 4
	.globl	_ZN5eagleD2Ev
	.def	_ZN5eagleD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5eagleD2Ev
_ZN5eagleD2Ev:
.LFB6893:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	xorl	%ebx, %ebx
	movq	96(%rcx), %rax
	movq	%rcx, %rdi
	testq	%rax, %rax
	jne	.L14
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L15:
	movq	%rsi, %rcx
	addq	$1, %rbx
	call	_ZN6bulletD1Ev
	movl	$56, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	movq	96(%rdi), %rax
	cmpq	%rax, %rbx
	jnb	.L11
.L14:
	movq	104(%rdi), %rdx
.L8:
	movq	(%rdx,%rbx,8), %rsi
	testq	%rsi, %rsi
	jne	.L15
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L8
.L11:
	movq	(%rdi), %rax
	movq	16(%rdi), %rcx
	leaq	272(%rax), %rbx
	call	_ZN3wze6engine6actors5actor5GetIDEv
	movq	%rbx, %rcx
	movq	%rax, %rdx
	call	_ZN3wze6engine6actors6DeleteEy
	movq	104(%rdi), %rcx
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	free
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6893:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6893-.LLSDACSB6893
.LLSDACSB6893:
.LLSDACSE6893:
	.text
	.seh_endproc
	.globl	_ZN5eagleD1Ev
	.def	_ZN5eagleD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN5eagleD1Ev,_ZN5eagleD2Ev
	.section .rdata,"dr"
	.align 8
.LC11:
	.ascii "neo::array+=: Memory allocation failed\12Params: Elements(type, length): %ld, %ld\12\0"
	.align 8
.LC12:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.align 8
.LC13:
	.ascii "neo::array.Remove(): Index out of range\12Params: Index: %lld, Length: %lld\12\0"
	.align 8
.LC14:
	.ascii "neo::array.Remove(): Length out of range\12Params: Index: %lld, Length: %lld\12\0"
	.align 8
.LC15:
	.ascii "neo::array.Remove(): Memory allocation failed\12Params: Index: %lld, Length: %lld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB16:
	.text
.LHOTB16:
	.align 2
	.p2align 4
	.globl	_ZN5eagle6UpdateEv
	.def	_ZN5eagle6UpdateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5eagle6UpdateEv
_ZN5eagle6UpdateEv:
.LFB6895:
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
	subq	$256, %rsp
	.seh_stackalloc	256
	movaps	%xmm6, 208(%rsp)
	.seh_savexmm	%xmm6, 208
	movaps	%xmm7, 224(%rsp)
	.seh_savexmm	%xmm7, 224
	movaps	%xmm8, 240(%rsp)
	.seh_savexmm	%xmm8, 240
	.seh_endprologue
	movq	%rcx, %rbx
	movq	16(%rcx), %rcx
.LEHB2:
	call	_ZN3wze6engine6actors5actor4GetXEv
	movsd	72(%rbx), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L63
	movq	16(%rbx), %rcx
	call	_ZN3wze6engine6actors5actor4SetXEd
	movq	.LC1(%rip), %rax
	movq	%rax, 64(%rbx)
	movq	32(%rbx), %rax
	movb	$1, 32(%rax)
.L19:
	movq	16(%rbx), %rsi
	movq	%rsi, %rcx
	call	_ZN3wze6engine6actors5actor4GetXEv
	movq	(%rbx), %rax
	movsd	.LC6(%rip), %xmm7
	mulsd	64(%rbx), %xmm7
	movapd	%xmm0, %xmm6
	leaq	416(%rax), %rcx
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	pxor	%xmm1, %xmm1
	movq	%rsi, %rcx
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	%xmm7, %xmm1
	addsd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor4SetXEd
	movq	48(%rbx), %rcx
	call	_ZN3wze6engine6actors5actor4GetYEv
	movq	48(%rbx), %rcx
	movsd	%xmm0, 104(%rsp)
	call	_ZN3wze6engine6actors5actor4GetXEv
	movq	16(%rbx), %rcx
	movsd	%xmm0, 96(%rsp)
	call	_ZN3wze6engine6actors5actor4GetYEv
	movq	16(%rbx), %rcx
	movsd	%xmm0, 88(%rsp)
	call	_ZN3wze6engine6actors5actor4GetXEv
	movsd	104(%rsp), %xmm3
	movsd	96(%rsp), %xmm2
	movsd	88(%rsp), %xmm1
	call	_ZN3wze6engine6vector5AngleEdddd
	movl	88(%rbx), %eax
	movapd	%xmm0, %xmm6
	leal	200(%rax), %esi
	movq	(%rbx), %rax
	leaq	416(%rax), %rcx
	call	_ZN3wze6engine6timing14GetCurrentTickEv
	cmpl	%eax, %esi
	jnb	.L34
	movsd	64(%rbx), %xmm0
	ucomisd	.LC1(%rip), %xmm0
	jp	.L24
	jne	.L24
	movsd	.LC7(%rip), %xmm0
	comisd	%xmm6, %xmm0
	jb	.L66
.L26:
	movq	48(%rbx), %rcx
	call	_ZN3wze6engine6actors5actor4GetYEv
	movq	48(%rbx), %rcx
	movsd	%xmm0, 104(%rsp)
	call	_ZN3wze6engine6actors5actor4GetXEv
	movq	16(%rbx), %rcx
	movsd	%xmm0, 96(%rsp)
	call	_ZN3wze6engine6actors5actor4GetYEv
	movq	16(%rbx), %rcx
	movsd	%xmm0, 88(%rsp)
	call	_ZN3wze6engine6actors5actor4GetXEv
	movsd	88(%rsp), %xmm1
	movsd	104(%rsp), %xmm3
	movsd	96(%rsp), %xmm2
	call	_ZN3wze6engine6vector6LengthEdddd
	movsd	.LC9(%rip), %xmm1
	comisd	%xmm0, %xmm1
	ja	.L67
	.p2align 4,,10
	.p2align 3
.L34:
	xorl	%esi, %esi
	cmpq	$0, 96(%rbx)
	jne	.L32
	jmp	.L65
	.p2align 4,,10
	.p2align 3
.L68:
	addq	$1, %rsi
.L36:
	cmpq	96(%rbx), %rsi
	jnb	.L65
.L32:
	movq	104(%rbx), %rax
	leaq	0(,%rsi,8), %rdi
	movq	(%rax,%rsi,8), %rcx
	call	_ZN6bullet6UpdateEv
	testb	%al, %al
	je	.L68
	movq	96(%rbx), %rax
	movq	104(%rbx), %rdx
	cmpq	%rax, %rsi
	jnb	.L69
	movq	(%rdx,%rdi), %rbp
	testq	%rbp, %rbp
	je	.L38
	movq	%rbp, %rcx
	call	_ZN6bulletD1Ev
	movl	$56, %edx
	movq	%rbp, %rcx
	call	_ZdlPvy
	movq	96(%rbx), %rax
	cmpq	%rax, %rsi
	jnb	.L70
.L38:
	leaq	1(%rsi), %rdx
	cmpq	%rdx, %rax
	jb	.L71
	leaq	-1(%rax), %rbp
	movq	104(%rbx), %r12
	movq	%rbp, 96(%rbx)
	testq	%rbp, %rbp
	je	.L40
	cmpq	%rbp, %rsi
	jnb	.L44
	subq	%rsi, %rax
	leaq	8(%r12,%rdi), %rdx
	leaq	(%r12,%rdi), %rcx
	leaq	-8(,%rax,8), %r8
	call	memmove
.L44:
	leaq	0(,%rbp,8), %rdx
	movq	%r12, %rcx
	call	realloc
	movq	%rax, 104(%rbx)
	testq	%rax, %rax
	jne	.L36
	leaq	.LC15(%rip), %rcx
	movl	$1, %r8d
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.p2align 4,,10
	.p2align 3
.L65:
	movaps	208(%rsp), %xmm6
	movaps	224(%rsp), %xmm7
	xorl	%eax, %eax
	movaps	240(%rsp), %xmm8
	addq	$256, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L40:
	movq	%r12, %rcx
	call	free
	movq	$0, 104(%rbx)
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L24:
	ucomisd	.LC5(%rip), %xmm0
	jp	.L34
	jne	.L34
	movsd	.LC8(%rip), %xmm0
	comisd	%xmm6, %xmm0
	jb	.L34
	comisd	.LC7(%rip), %xmm6
	jbe	.L34
	jmp	.L26
	.p2align 4,,10
	.p2align 3
.L63:
	movq	16(%rbx), %rcx
	movsd	80(%rbx), %xmm6
	call	_ZN3wze6engine6actors5actor4GetXEv
	comisd	%xmm6, %xmm0
	jbe	.L19
	movq	16(%rbx), %rcx
	movsd	80(%rbx), %xmm1
	call	_ZN3wze6engine6actors5actor4SetXEd
	movq	.LC5(%rip), %rax
	movq	%rax, 64(%rbx)
	movq	32(%rbx), %rax
	movb	$0, 32(%rax)
	jmp	.L19
.L66:
	comisd	.LC8(%rip), %xmm6
	ja	.L26
	jmp	.L34
.L67:
	movq	(%rbx), %rax
	movq	16(%rbx), %rcx
	leaq	168(%rsp), %rbp
	leaq	176(%rsp), %rdi
	leaq	328(%rax), %rsi
	call	_ZN3wze6engine6actors5actor5GetIDEv
	movdqa	.LC10(%rip), %xmm0
	movq	48(%rbx), %rcx
	movq	$5, 192(%rsp)
	movq	%rax, 168(%rsp)
	movaps	%xmm0, 176(%rsp)
	call	_ZN3wze6engine6actors5actor4GetYEv
	movq	48(%rbx), %rcx
	movapd	%xmm0, %xmm6
	call	_ZN3wze6engine6actors5actor4GetXEv
	movq	16(%rbx), %rcx
	movsd	%xmm0, 96(%rsp)
	call	_ZN3wze6engine6actors5actor4GetYEv
	movq	16(%rbx), %rcx
	movsd	%xmm0, 88(%rsp)
	call	_ZN3wze6engine6actors5actor4GetXEv
	leaq	112(%rsp), %rax
	movq	%rsi, %rcx
	movl	$1, 40(%rsp)
	movq	%rax, 72(%rsp)
	leaq	128(%rsp), %rax
	movsd	96(%rsp), %xmm3
	movapd	%xmm0, %xmm1
	movq	%rax, 64(%rsp)
	leaq	144(%rsp), %rax
	movsd	88(%rsp), %xmm2
	movq	%rax, 56(%rsp)
	movq	.LC1(%rip), %rax
	movsd	%xmm6, 32(%rsp)
	movq	%rax, 48(%rsp)
	movq	%rdi, 144(%rsp)
	movq	$3, 152(%rsp)
	movq	%rbp, 128(%rsp)
	movq	$1, 136(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 120(%rsp)
	call	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_
	testb	%al, %al
	je	.L34
	movl	$56, %ecx
	call	_Znwy
.LEHE2:
	movq	48(%rbx), %rcx
	movq	%rax, %rsi
.LEHB3:
	call	_ZN3wze6engine6actors5actor4GetYEv
	movq	48(%rbx), %rcx
	movapd	%xmm0, %xmm8
	call	_ZN3wze6engine6actors5actor4GetXEv
	movq	16(%rbx), %rcx
	movapd	%xmm0, %xmm7
	call	_ZN3wze6engine6actors5actor4GetYEv
	movq	16(%rbx), %rcx
	movapd	%xmm0, %xmm6
	call	_ZN3wze6engine6actors5actor4GetXEv
	movapd	%xmm8, %xmm3
	movapd	%xmm7, %xmm2
	movapd	%xmm6, %xmm1
	call	_ZN3wze6engine6vector5AngleEdddd
	movq	16(%rbx), %rcx
	movapd	%xmm0, %xmm8
	call	_ZN3wze6engine6actors5actor7GetTypeEv
	movq	16(%rbx), %rcx
	movq	%rax, %r12
	call	_ZN3wze6engine6actors5actor5GetIDEv
	movq	16(%rbx), %rcx
	movq	%rax, %rbp
	call	_ZN3wze6engine6actors5actor8GetLayerEv
	movq	16(%rbx), %rcx
	movapd	%xmm0, %xmm7
	call	_ZN3wze6engine6actors5actor4GetYEv
	movq	16(%rbx), %rcx
	movapd	%xmm0, %xmm6
	call	_ZN3wze6engine6actors5actor4GetXEv
	movq	(%rbx), %rdx
	movl	%r12d, 56(%rsp)
	movapd	%xmm0, %xmm3
	movq	%rsi, %rcx
	movq	%rbp, 48(%rsp)
	movsd	%xmm8, 64(%rsp)
	movsd	%xmm7, 40(%rsp)
	movsd	%xmm6, 32(%rsp)
	movq	8(%rbx), %r8
	call	_ZN6bulletC1EPN3wze6engineEP4gamedddy5actord
.LEHE3:
	movq	96(%rbx), %rax
	movq	104(%rbx), %rcx
	movq	%rsi, 176(%rsp)
	addq	$1, %rax
	movq	%rax, 96(%rbx)
	leaq	0(,%rax,8), %rdx
	call	realloc
	movq	%rax, 104(%rbx)
	testq	%rax, %rax
	je	.L72
	movq	96(%rbx), %rdx
	movl	$8, %r8d
	movq	%rdi, %rcx
	leaq	-8(%rax,%rdx,8), %rdx
.LEHB4:
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	(%rbx), %rax
	leaq	416(%rax), %rcx
	call	_ZN3wze6engine6timing14GetCurrentTickEv
	movl	%eax, 88(%rbx)
	jmp	.L34
.L70:
	leaq	.LC13(%rip), %rcx
	movl	$1, %r8d
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L69:
	leaq	.LC12(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L71:
	leaq	.LC14(%rip), %rcx
	movl	$1, %r8d
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L72:
	leaq	.LC11(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
.LEHE4:
	movl	$1, %ecx
	call	exit
.L48:
	movq	%rax, %rbx
	jmp	.L46
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6895:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6895-.LLSDACSB6895
.LLSDACSB6895:
	.uleb128 .LEHB2-.LFB6895
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB6895
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L48-.LFB6895
	.uleb128 0
	.uleb128 .LEHB4-.LFB6895
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE6895:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN5eagle6UpdateEv.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN5eagle6UpdateEv.cold
	.seh_stackalloc	296
	.seh_savereg	%rbx, 256
	.seh_savereg	%rsi, 264
	.seh_savereg	%rdi, 272
	.seh_savereg	%rbp, 280
	.seh_savexmm	%xmm6, 208
	.seh_savexmm	%xmm7, 224
	.seh_savereg	%r12, 288
	.seh_savexmm	%xmm8, 240
	.seh_endprologue
_ZN5eagle6UpdateEv.cold:
.L46:
	movq	%rsi, %rcx
	movl	$56, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
.LEHB5:
	call	_Unwind_Resume
	nop
.LEHE5:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC6895:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6895-.LLSDACSBC6895
.LLSDACSBC6895:
	.uleb128 .LEHB5-.LCOLDB16
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC6895:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE16:
	.text
.LHOTE16:
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	0
	.long	1071644672
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.align 8
.LC2:
	.long	-350469331
	.long	1059731170
	.align 4
.LC3:
	.word	125
	.word	125
	.align 8
.LC5:
	.long	0
	.long	-1074790400
	.align 8
.LC6:
	.long	0
	.long	1070596096
	.align 8
.LC7:
	.long	0
	.long	1079410688
	.align 8
.LC8:
	.long	0
	.long	1081139200
	.align 8
.LC9:
	.long	0
	.long	1082081280
	.align 16
.LC10:
	.quad	2
	.quad	4
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors3NewEPvyddttd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes3NewEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6timing14GetCurrentTickEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor8GetWidthEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9GetHeightEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZN6bulletD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor5GetIDEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors6DeleteEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4GetXEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4SetXEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6timing12GetDeltaTimeEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4GetYEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector5AngleEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector6LengthEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN6bullet6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor7GetTypeEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor8GetLayerEv;	.scl	2;	.type	32;	.endef
	.def	_ZN6bulletC1EPN3wze6engineEP4gamedddy5actord;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6memory6CopyToEPKvPvy;	.scl	2;	.type	32;	.endef
