	.file	"player.cpp"
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
	.globl	_ZN6playerC2EPN3wze6engineEP4gamedddd
	.def	_ZN6playerC2EPN3wze6engineEP4gamedddd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6playerC2EPN3wze6engineEP4gamedddd
_ZN6playerC2EPN3wze6engineEP4gamedddd:
.LFB6890:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	.seh_endprologue
	movsd	152(%rsp), %xmm0
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	movq	%r8, 8(%rcx)
	movl	$1, %r8d
	movq	$0, 104(%rcx)
	movq	$0, 112(%rcx)
	leaq	272(%rdx), %rcx
	movq	%rbx, %rdx
	movsd	%xmm0, 56(%rsp)
	movsd	144(%rsp), %xmm0
	movl	$82, 48(%rsp)
	movl	$60, 40(%rsp)
	movsd	%xmm0, 32(%rsp)
.LEHB0:
	call	_ZN3wze6engine6actors3NewEPvyddttd
	movq	%rax, 16(%rbx)
	leaq	136(%rax), %rcx
	movl	$1, %edx
	call	_ZN3wze6engine6actors5actor12overlapboxes3NewEy
	movq	%rax, 24(%rbx)
	movq	16(%rbx), %rsi
	movl	$125, %edx
	movq	8(%rbx), %rax
	leaq	72(%rsi), %rcx
	leaq	48(%rax), %r8
	call	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE
	movq	%rax, 32(%rbx)
	movq	16(%rbx), %rsi
	movl	$125, %edx
	movq	8(%rbx), %rax
	leaq	72(%rsi), %rcx
	leaq	64(%rax), %r8
	call	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE
	movq	%rax, 40(%rbx)
	movq	16(%rbx), %rsi
	movl	$125, %edx
	movq	8(%rbx), %rax
	leaq	72(%rsi), %rcx
	leaq	32(%rax), %r8
	call	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE
	movq	%rax, 48(%rbx)
	movq	8(%rbx), %rax
	movzwl	82(%rax), %edx
	movq	16(%rbx), %rax
	leaq	40(%rax), %rcx
	call	_ZN3wze6engine6actors5actor12textureboxes3NewEy
	movq	%rax, 56(%rbx)
	movq	8(%rbx), %rax
	movzwl	80(%rax), %edx
	movq	16(%rbx), %rax
	leaq	40(%rax), %rcx
	call	_ZN3wze6engine6actors5actor12textureboxes3NewEy
	movl	$257, %r10d
	movq	%rax, 64(%rbx)
	movq	(%rbx), %rax
	pxor	%xmm0, %xmm0
	movw	%r10w, 72(%rbx)
	movups	%xmm0, 80(%rbx)
	leaq	416(%rax), %rcx
	call	_ZN3wze6engine6timing14GetCurrentTickEv
	cvttsd2sil	160(%rsp), %edx
	movq	16(%rbx), %rcx
	movl	%eax, 96(%rbx)
	movzbl	%dl, %edx
	call	_ZN3wze6engine6actors5actor17SetCollisionLayerEh
	movq	16(%rbx), %rcx
	movq	24(%rbx), %rsi
	call	_ZN3wze6engine6actors5actor8GetWidthEv
	movzwl	%ax, %eax
	pxor	%xmm0, %xmm0
	movsd	.LC0(%rip), %xmm6
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
	movq	32(%rbx), %rdi
	movl	.LC1(%rip), %esi
	movq	16(%rbx), %rcx
	movl	%esi, 16(%rdi)
	call	_ZN3wze6engine6actors5actor4GetYEv
	movsd	.LC2(%rip), %xmm6
	movapd	%xmm0, %xmm1
	movq	%rdi, %rcx
	addsd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd
	movq	32(%rbx), %rax
	movb	$-1, 36(%rax)
	movq	40(%rbx), %rdi
	movq	16(%rbx), %rcx
	movl	%esi, 16(%rdi)
	call	_ZN3wze6engine6actors5actor4GetYEv
	movapd	%xmm0, %xmm1
	movq	%rdi, %rcx
	addsd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd
	movq	40(%rbx), %rax
	movl	$255, %r9d
	movw	%r9w, 36(%rax)
	movq	48(%rbx), %rdi
	movq	16(%rbx), %rcx
	movl	%esi, 16(%rdi)
	call	_ZN3wze6engine6actors5actor4GetYEv
	movapd	%xmm0, %xmm1
	movq	%rdi, %rcx
	addsd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd
	movq	48(%rbx), %rax
	movl	$255, %r8d
	movw	%r8w, 36(%rax)
	movq	56(%rbx), %rdi
	movq	16(%rbx), %rcx
	movl	%esi, 16(%rdi)
	call	_ZN3wze6engine6actors5actor4GetYEv
	movapd	%xmm0, %xmm1
	movq	%rdi, %rcx
	addsd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor12textureboxes10texturebox4SetYEd
	movq	56(%rbx), %rax
	movl	$255, %ecx
	movw	%cx, 36(%rax)
	movq	64(%rbx), %rdi
	movq	16(%rbx), %rcx
	movl	%esi, 16(%rdi)
	call	_ZN3wze6engine6actors5actor4GetYEv
	movapd	%xmm0, %xmm1
	movq	%rdi, %rcx
	addsd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor12textureboxes10texturebox4SetYEd
.LEHE0:
	movq	64(%rbx), %rax
	movl	$255, %edx
	movw	%dx, 36(%rax)
	movaps	64(%rsp), %xmm6
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
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
	.def	_ZN6playerC2EPN3wze6engineEP4gamedddd.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN6playerC2EPN3wze6engineEP4gamedddd.cold
	.seh_stackalloc	104
	.seh_savereg	%rbx, 80
	.seh_savereg	%rsi, 88
	.seh_savereg	%rdi, 96
	.seh_savexmm	%xmm6, 64
	.seh_endprologue
_ZN6playerC2EPN3wze6engineEP4gamedddd.cold:
.L4:
	movq	112(%rbx), %rcx
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
	.globl	_ZN6playerC1EPN3wze6engineEP4gamedddd
	.def	_ZN6playerC1EPN3wze6engineEP4gamedddd;	.scl	2;	.type	32;	.endef
	.set	_ZN6playerC1EPN3wze6engineEP4gamedddd,_ZN6playerC2EPN3wze6engineEP4gamedddd
	.align 2
	.p2align 4
	.globl	_ZN6playerD2Ev
	.def	_ZN6playerD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6playerD2Ev
_ZN6playerD2Ev:
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
	movq	104(%rcx), %rax
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
	movq	104(%rdi), %rax
	cmpq	%rax, %rbx
	jnb	.L11
.L14:
	movq	112(%rdi), %rdx
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
	movq	112(%rdi), %rcx
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
	.globl	_ZN6playerD1Ev
	.def	_ZN6playerD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN6playerD1Ev,_ZN6playerD2Ev
	.section .rdata,"dr"
	.align 8
.LC13:
	.ascii "neo::array+=: Memory allocation failed\12Params: Elements(type, length): %ld, %ld\12\0"
	.align 8
.LC14:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.align 8
.LC15:
	.ascii "neo::array.Remove(): Index out of range\12Params: Index: %lld, Length: %lld\12\0"
	.align 8
.LC16:
	.ascii "neo::array.Remove(): Length out of range\12Params: Index: %lld, Length: %lld\12\0"
	.align 8
.LC17:
	.ascii "neo::array.Remove(): Memory allocation failed\12Params: Index: %lld, Length: %lld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB18:
	.text
.LHOTB18:
	.align 2
	.p2align 4
	.globl	_ZN6player6UpdateEv
	.def	_ZN6player6UpdateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6player6UpdateEv
_ZN6player6UpdateEv:
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
	subq	$176, %rsp
	.seh_stackalloc	176
	movaps	%xmm6, 128(%rsp)
	.seh_savexmm	%xmm6, 128
	movaps	%xmm7, 144(%rsp)
	.seh_savexmm	%xmm7, 144
	movaps	%xmm8, 160(%rsp)
	.seh_savexmm	%xmm8, 160
	.seh_endprologue
	movl	$4, %edx
	movq	(%rcx), %rax
	movq	%rcx, %rbx
	leaq	192(%rax), %rcx
.LEHB2:
	call	_ZN3wze6engine4keysixENS_3keyE
	testb	%al, %al
	jne	.L110
.L17:
	pxor	%xmm6, %xmm6
	comisd	80(%rbx), %xmm6
	movq	(%rbx), %rcx
	ja	.L22
	movsd	.LC7(%rip), %xmm7
.L23:
	addq	$192, %rcx
	movl	$7, %edx
	call	_ZN3wze6engine4keysixENS_3keyE
	testb	%al, %al
	jne	.L28
.L31:
	movsd	80(%rbx), %xmm0
	pxor	%xmm6, %xmm6
	comisd	%xmm6, %xmm0
	ja	.L111
.L33:
	movq	16(%rbx), %rsi
	movq	%rsi, %rcx
	call	_ZN3wze6engine6actors5actor4GetXEv
	movq	(%rbx), %rax
	movsd	80(%rbx), %xmm8
	movapd	%xmm0, %xmm6
	leaq	416(%rax), %rcx
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	pxor	%xmm1, %xmm1
	movq	%rsi, %rcx
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	%xmm8, %xmm1
	addsd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor4SetXEd
	movq	(%rbx), %rax
	movl	$44, %edx
	leaq	192(%rax), %rcx
	call	_ZN3wze6engine4keysixENS_3keyE
	testb	%al, %al
	je	.L43
	pxor	%xmm0, %xmm0
	ucomisd	88(%rbx), %xmm0
	jp	.L43
	jne	.L43
	movq	.LC9(%rip), %rax
	movq	%rax, 88(%rbx)
.L43:
	movq	(%rbx), %rax
	leaq	416(%rax), %rcx
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	pxor	%xmm1, %xmm1
	movsd	88(%rbx), %xmm0
	movq	16(%rbx), %rcx
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	%xmm7, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 88(%rbx)
	call	_ZN3wze6engine6actors5actor4GetYEv
	movq	(%rbx), %rax
	movsd	88(%rbx), %xmm7
	movapd	%xmm0, %xmm6
	leaq	416(%rax), %rcx
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	pxor	%xmm0, %xmm0
	movq	16(%rbx), %rsi
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm0
	movq	%rsi, %rcx
	mulsd	%xmm7, %xmm0
	addsd	%xmm0, %xmm6
	call	_ZN3wze6engine6actors5actor4GetYEv
	movq	(%rbx), %rax
	movsd	88(%rbx), %xmm8
	movapd	%xmm0, %xmm7
	leaq	416(%rax), %rcx
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	pxor	%xmm1, %xmm1
	movq	%rsi, %rcx
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	%xmm8, %xmm1
	addsd	%xmm7, %xmm1
	call	_ZN3wze6engine6actors5actor4SetYEd
	ucomisd	%xmm0, %xmm6
	jp	.L89
	jne	.L89
.L109:
	movq	(%rbx), %rcx
.L51:
	leaq	216(%rcx), %rsi
	movq	16(%rbx), %rcx
	call	_ZN3wze6engine6actors5actor8GetLayerEv
	movq	%rsi, %rcx
	movapd	%xmm0, %xmm1
	call	_ZN3wze6engine5mouse4GetYEd
	movq	(%rbx), %rax
	movq	16(%rbx), %rcx
	movsd	%xmm0, 104(%rsp)
	leaq	216(%rax), %rsi
	call	_ZN3wze6engine6actors5actor8GetLayerEv
	movq	%rsi, %rcx
	movapd	%xmm0, %xmm1
	call	_ZN3wze6engine5mouse4GetXEd
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
	movq	(%rbx), %rax
	movl	$232, %edx
	movapd	%xmm0, %xmm6
	leaq	192(%rax), %rcx
	call	_ZN3wze6engine4keysixENS_3keyE
	testb	%al, %al
	jne	.L112
.L59:
	xorl	%esi, %esi
	cmpq	$0, 104(%rbx)
	jne	.L66
	jmp	.L79
	.p2align 4,,10
	.p2align 3
.L113:
	addq	$1, %rsi
.L70:
	cmpq	104(%rbx), %rsi
	jnb	.L79
.L66:
	movq	112(%rbx), %rax
	leaq	0(,%rsi,8), %rdi
	movq	(%rax,%rsi,8), %rcx
	call	_ZN6bullet6UpdateEv
	testb	%al, %al
	je	.L113
	movq	104(%rbx), %rax
	movq	112(%rbx), %rdx
	cmpq	%rax, %rsi
	jnb	.L114
	movq	(%rdx,%rdi), %rbp
	testq	%rbp, %rbp
	je	.L72
	movq	%rbp, %rcx
	call	_ZN6bulletD1Ev
	movl	$56, %edx
	movq	%rbp, %rcx
	call	_ZdlPvy
	movq	104(%rbx), %rax
	cmpq	%rax, %rsi
	jnb	.L115
.L72:
	leaq	1(%rsi), %rdx
	cmpq	%rdx, %rax
	jb	.L116
	leaq	-1(%rax), %rbp
	movq	112(%rbx), %r12
	movq	%rbp, 104(%rbx)
	testq	%rbp, %rbp
	je	.L74
	cmpq	%rbp, %rsi
	jnb	.L78
	subq	%rsi, %rax
	leaq	8(%r12,%rdi), %rdx
	leaq	(%r12,%rdi), %rcx
	leaq	-8(,%rax,8), %r8
	call	memmove
.L78:
	leaq	0(,%rbp,8), %rdx
	movq	%r12, %rcx
	call	realloc
	movq	%rax, 112(%rbx)
	testq	%rax, %rax
	jne	.L70
	leaq	.LC17(%rip), %rcx
	movl	$1, %r8d
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L79:
	movsd	88(%rbx), %xmm1
	pxor	%xmm0, %xmm0
	movq	32(%rbx), %r9
	movq	40(%rbx), %r8
	movq	48(%rbx), %rcx
	comisd	%xmm1, %xmm0
	movq	56(%rbx), %rdx
	movq	64(%rbx), %rax
	ja	.L117
	comisd	%xmm0, %xmm1
	jbe	.L118
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	xorl	%r11d, %r11d
	movl	$1, %r10d
.L67:
	movb	%sil, 37(%r9)
	movb	%bl, 37(%r8)
	movb	$0, 37(%rcx)
	movb	%r11b, 37(%rdx)
	movb	%r10b, 37(%rax)
	movaps	128(%rsp), %xmm6
	xorl	%eax, %eax
	movaps	144(%rsp), %xmm7
	movaps	160(%rsp), %xmm8
	addq	$176, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L74:
	movq	%r12, %rcx
	call	free
	movq	$0, 112(%rbx)
	jmp	.L70
	.p2align 4,,10
	.p2align 3
.L89:
	movsd	88(%rbx), %xmm0
	pxor	%xmm1, %xmm1
	movq	(%rbx), %rcx
	comisd	%xmm1, %xmm0
	ja	.L119
	comisd	%xmm0, %xmm1
	jbe	.L51
	movq	$0x000000000, 88(%rbx)
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L118:
	ucomisd	80(%rbx), %xmm0
	jp	.L85
	jne	.L85
	movl	$1, %esi
	xorl	%ebx, %ebx
	xorl	%r11d, %r11d
	xorl	%r10d, %r10d
	jmp	.L67
	.p2align 4,,10
	.p2align 3
.L119:
	addq	$416, %rcx
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	pxor	%xmm0, %xmm0
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	.LC10(%rip), %xmm0
	movsd	%xmm0, 88(%rbx)
	jmp	.L109
	.p2align 4,,10
	.p2align 3
.L117:
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	movl	$1, %r11d
	xorl	%r10d, %r10d
	jmp	.L67
	.p2align 4,,10
	.p2align 3
.L111:
	movq	(%rbx), %rax
	leaq	416(%rax), %rcx
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	pxor	%xmm1, %xmm1
	movsd	80(%rbx), %xmm0
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	%xmm7, %xmm1
	subsd	%xmm1, %xmm0
	comisd	%xmm0, %xmm6
	ja	.L40
	movsd	%xmm0, 80(%rbx)
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L28:
	movq	(%rbx), %rax
	movl	$4, %edx
	leaq	192(%rax), %rcx
	call	_ZN3wze6engine4keysixENS_3keyE
	testb	%al, %al
	jne	.L31
	movq	(%rbx), %rax
	movb	$1, 73(%rbx)
	leaq	416(%rax), %rcx
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	pxor	%xmm0, %xmm0
	movsd	.LC6(%rip), %xmm1
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm0
	movq	32(%rbx), %rax
	mulsd	%xmm7, %xmm0
	addsd	80(%rbx), %xmm0
	minsd	%xmm0, %xmm1
	movsd	%xmm1, 80(%rbx)
	movb	$0, 32(%rax)
	movq	40(%rbx), %rax
	movb	$0, 32(%rax)
	movq	56(%rbx), %rax
	movb	$0, 32(%rax)
	movq	64(%rbx), %rax
	movb	$0, 32(%rax)
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L110:
	movq	(%rbx), %rax
	movl	$7, %edx
	leaq	192(%rax), %rcx
	call	_ZN3wze6engine4keysixENS_3keyE
	testb	%al, %al
	jne	.L17
	movq	(%rbx), %rax
	movb	$-1, 73(%rbx)
	leaq	416(%rax), %rcx
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	pxor	%xmm1, %xmm1
	movsd	80(%rbx), %xmm0
	movq	(%rbx), %rcx
	movl	%eax, %eax
	movsd	.LC7(%rip), %xmm7
	cvtsi2sdq	%rax, %xmm1
	movq	32(%rbx), %rax
	mulsd	%xmm7, %xmm1
	subsd	%xmm1, %xmm0
	movsd	.LC5(%rip), %xmm1
	maxsd	%xmm0, %xmm1
	movsd	%xmm1, 80(%rbx)
	movb	$1, 32(%rax)
	movq	40(%rbx), %rax
	movb	$1, 32(%rax)
	movq	56(%rbx), %rax
	movb	$1, 32(%rax)
	movq	64(%rbx), %rax
	movb	$1, 32(%rax)
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L112:
	movl	96(%rbx), %eax
	leal	200(%rax), %esi
	movq	(%rbx), %rax
	leaq	416(%rax), %rcx
	call	_ZN3wze6engine6timing14GetCurrentTickEv
	cmpl	%eax, %esi
	jnb	.L59
	movzbl	73(%rbx), %eax
	cmpb	$1, %al
	je	.L120
	cmpb	$-1, %al
	jne	.L59
	movsd	.LC12(%rip), %xmm0
	comisd	%xmm6, %xmm0
	jb	.L59
	comisd	.LC11(%rip), %xmm6
	jbe	.L59
.L62:
	movl	$56, %ecx
	call	_Znwy
.LEHE2:
	movq	16(%rbx), %rcx
	movq	%rax, %rsi
.LEHB3:
	call	_ZN3wze6engine6actors5actor7GetTypeEv
	movq	16(%rbx), %rcx
	movq	%rax, %rbp
	call	_ZN3wze6engine6actors5actor5GetIDEv
	movq	16(%rbx), %rcx
	movq	%rax, %rdi
	call	_ZN3wze6engine6actors5actor8GetLayerEv
	movq	16(%rbx), %rcx
	movapd	%xmm0, %xmm8
	call	_ZN3wze6engine6actors5actor4GetYEv
	movq	16(%rbx), %rcx
	movapd	%xmm0, %xmm7
	call	_ZN3wze6engine6actors5actor4GetXEv
	movq	(%rbx), %rdx
	movl	%ebp, 56(%rsp)
	movapd	%xmm0, %xmm3
	movq	%rsi, %rcx
	movq	%rdi, 48(%rsp)
	movsd	%xmm6, 64(%rsp)
	movsd	%xmm8, 40(%rsp)
	movsd	%xmm7, 32(%rsp)
	movq	8(%rbx), %r8
	call	_ZN6bulletC1EPN3wze6engineEP4gamedddy5actord
.LEHE3:
	movq	104(%rbx), %rax
	movq	112(%rbx), %rcx
	movq	%rsi, 120(%rsp)
	addq	$1, %rax
	movq	%rax, 104(%rbx)
	leaq	0(,%rax,8), %rdx
	call	realloc
	movq	%rax, 112(%rbx)
	testq	%rax, %rax
	je	.L121
	movq	104(%rbx), %rdx
	leaq	120(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
.LEHB4:
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	(%rbx), %rax
	leaq	416(%rax), %rcx
	call	_ZN3wze6engine6timing14GetCurrentTickEv
	movl	%eax, 96(%rbx)
	jmp	.L59
	.p2align 4,,10
	.p2align 3
.L22:
	addq	$416, %rcx
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	pxor	%xmm0, %xmm0
	movsd	.LC7(%rip), %xmm7
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	%xmm7, %xmm0
	addsd	80(%rbx), %xmm0
	comisd	%xmm6, %xmm0
	jbe	.L122
	movq	$0x000000000, 80(%rbx)
	movq	(%rbx), %rcx
	jmp	.L23
.L85:
	xorl	%esi, %esi
	movl	$1, %ebx
	xorl	%r11d, %r11d
	xorl	%r10d, %r10d
	jmp	.L67
.L122:
	movq	(%rbx), %rcx
	movsd	%xmm0, 80(%rbx)
	jmp	.L23
.L40:
	movq	$0x000000000, 80(%rbx)
	jmp	.L33
.L120:
	movsd	.LC11(%rip), %xmm0
	comisd	%xmm6, %xmm0
	jnb	.L62
	comisd	.LC12(%rip), %xmm6
	ja	.L62
	jmp	.L59
.L114:
	leaq	.LC14(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L116:
	leaq	.LC16(%rip), %rcx
	movl	$1, %r8d
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L115:
	leaq	.LC15(%rip), %rcx
	movl	$1, %r8d
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L121:
	leaq	.LC13(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
.LEHE4:
	movl	$1, %ecx
	call	exit
.L86:
	movq	%rax, %rbx
	jmp	.L81
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
	.uleb128 .L86-.LFB6895
	.uleb128 0
	.uleb128 .LEHB4-.LFB6895
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE6895:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN6player6UpdateEv.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN6player6UpdateEv.cold
	.seh_stackalloc	216
	.seh_savereg	%rbx, 176
	.seh_savereg	%rsi, 184
	.seh_savereg	%rdi, 192
	.seh_savereg	%rbp, 200
	.seh_savexmm	%xmm6, 128
	.seh_savexmm	%xmm7, 144
	.seh_savereg	%r12, 208
	.seh_savexmm	%xmm8, 160
	.seh_endprologue
_ZN6player6UpdateEv.cold:
.L81:
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
	.uleb128 .LEHB5-.LCOLDB18
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC6895:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE18:
	.text
.LHOTE18:
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	-350469331
	.long	1059731170
	.align 4
.LC1:
	.word	132
	.word	128
	.align 8
.LC2:
	.long	0
	.long	1077280768
	.align 8
.LC5:
	.long	0
	.long	-1075838976
	.align 8
.LC6:
	.long	0
	.long	1071644672
	.align 8
.LC7:
	.long	-1133871366
	.long	1063818100
	.align 8
.LC9:
	.long	0
	.long	1072955392
	.align 8
.LC10:
	.long	-1133871366
	.long	-1083665548
	.align 8
.LC11:
	.long	0
	.long	1079410688
	.align 8
.LC12:
	.long	0
	.long	1081139200
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors3NewEPvyddttd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes3NewEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12textureboxes3NewEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6timing14GetCurrentTickEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor17SetCollisionLayerEh;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor8GetWidthEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9GetHeightEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4GetYEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12textureboxes10texturebox4SetYEd;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZN6bulletD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor5GetIDEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors6DeleteEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine4keysixENS_3keyE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4GetXEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6timing12GetDeltaTimeEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4SetXEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4SetYEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor8GetLayerEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine5mouse4GetYEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine5mouse4GetXEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector5AngleEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN6bullet6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor7GetTypeEv;	.scl	2;	.type	32;	.endef
	.def	_ZN6bulletC1EPN3wze6engineEP4gamedddy5actord;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6memory6CopyToEPKvPvy;	.scl	2;	.type	32;	.endef
