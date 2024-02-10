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
	.section .rdata,"dr"
.LC0:
	.ascii "assets/player/player1.png\0"
.LC1:
	.ascii "assets/player/player2.png\0"
.LC2:
	.ascii "assets/player/player3.png\0"
.LC3:
	.ascii "assets/player/player4.png\0"
.LC4:
	.ascii "assets/player/player5.png\0"
.LC5:
	.ascii "assets/player/player6.png\0"
	.align 8
.LC6:
	.ascii "neo::array=: Memory allocation failed\12Params: Elements(type, length): %ld, %ld\12\0"
.LC7:
	.ascii "engine/FreeSans.ttf\0"
.LC10:
	.ascii "Player\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB14:
	.text
.LHOTB14:
	.align 2
	.p2align 4
	.globl	_ZN6playerC2EPN3wze6engineENS0_3keyES3_S3_S3_
	.def	_ZN6playerC2EPN3wze6engineENS0_3keyES3_S3_S3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6playerC2EPN3wze6engineENS0_3keyES3_S3_S3_
_ZN6playerC2EPN3wze6engineENS0_3keyES3_S3_S3_:
.LFB6880:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$120, %rsp
	.seh_stackalloc	120
	.seh_endprologue
	movd	176(%rsp), %xmm1
	movd	184(%rsp), %xmm2
	punpckldq	%xmm2, %xmm1
	movd	%r8d, %xmm0
	movd	%r9d, %xmm4
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	movq	$0, 48(%rcx)
	punpckldq	%xmm4, %xmm0
	movq	$0, 56(%rcx)
	punpcklqdq	%xmm1, %xmm0
	movups	%xmm0, 24(%rcx)
	leaq	328(%rdx), %rcx
	leaq	.LC0(%rip), %rdx
.LEHB0:
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movq	%rax, 64(%rsp)
	movq	(%rbx), %rax
	leaq	.LC1(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movq	%rax, 72(%rsp)
	movq	(%rbx), %rax
	leaq	.LC2(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movq	%rax, 80(%rsp)
	movq	(%rbx), %rax
	leaq	.LC3(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movq	%rax, 88(%rsp)
	movq	(%rbx), %rax
	leaq	.LC4(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movq	%rax, 96(%rsp)
	movq	(%rbx), %rax
	leaq	.LC5(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movq	%rax, 104(%rsp)
	movq	48(%rbx), %rax
	leaq	48(%rbx), %rsi
	cmpq	$6, %rax
	jne	.L10
	movq	56(%rbx), %rdx
.L6:
	leaq	64(%rsp), %rcx
	leaq	0(,%rax,8), %r8
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	(%rbx), %rax
	movl	$48, %r8d
	leaq	.LC7(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets8LoadFontEPKch
	movq	%rax, 72(%rbx)
	movq	(%rbx), %rax
	pxor	%xmm3, %xmm3
	movl	$1, %r8d
	movl	$70, 48(%rsp)
	movq	%rbx, %rdx
	leaq	240(%rax), %rcx
	movq	.LC8(%rip), %rax
	movl	$46, 40(%rsp)
	movq	$0x000000000, 32(%rsp)
	movq	%rax, 56(%rsp)
	call	_ZN3wze6engine6actors3NewEPvyddttd
	movq	%rax, 8(%rbx)
	movq	%rax, %rdx
	movq	(%rbx), %rax
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	leaq	72(%rax), %rcx
	movq	%rsi, %r8
	movl	$100, %edx
	call	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE
	movq	%rax, 40(%rbx)
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	72(%rbx), %r8
	leaq	104(%rax), %rcx
	leaq	.LC10(%rip), %rdx
	call	_ZN3wze6engine6actors5actor5texts3NewEPKcy
	movq	%rax, 64(%rbx)
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	leaq	136(%rax), %rcx
	xorl	%edx, %edx
	call	_ZN3wze6engine6actors5actor12overlapboxes3NewEy
	movq	%rax, 16(%rbx)
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	$150, 176(%rax)
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	$100, 184(%rax)
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movsd	.LC11(%rip), %xmm1
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor8SetDepthEd
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	%rax, %rcx
	movl	$1, %edx
	call	_ZN3wze6engine6actors5actor17SetCollisionLayerEh
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movb	$1, 192(%rax)
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	40(%rbx), %rdx
	leaq	72(%rax), %rcx
	call	_ZN3wze6engine6actors5actor9flipbooksixEy
	movl	$100, %ecx
	movq	8(%rbx), %rdx
	movw	%cx, 16(%rax)
	movq	(%rbx), %rax
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	40(%rbx), %rdx
	leaq	72(%rax), %rcx
	call	_ZN3wze6engine6actors5actor9flipbooksixEy
	movl	$100, %edx
	movw	%dx, 18(%rax)
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	40(%rbx), %rdx
	leaq	72(%rax), %rcx
	call	_ZN3wze6engine6actors5actor9flipbooksixEy
	movq	%rax, %rsi
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor4GetYEv
	movsd	.LC12(%rip), %xmm1
	movq	%rsi, %rcx
	addsd	%xmm0, %xmm1
	call	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	64(%rbx), %rdx
	leaq	104(%rax), %rcx
	call	_ZN3wze6engine6actors5actor5textsixEy
	movq	%rax, %rcx
	movl	$20, %edx
	call	_ZN3wze6engine6actors5actor5texts4text9SetHeightEt
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	64(%rbx), %rdx
	leaq	104(%rax), %rcx
	call	_ZN3wze6engine6actors5actor5textsixEy
	movq	%rax, %rsi
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor4GetYEv
	movsd	.LC13(%rip), %xmm1
	movq	%rsi, %rcx
	addsd	%xmm0, %xmm1
	call	_ZN3wze6engine6actors5actor5texts4text4SetYEd
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	64(%rbx), %rdx
	leaq	104(%rax), %rcx
	call	_ZN3wze6engine6actors5actor5textsixEy
	movq	%rax, %rcx
	movl	$15, %edx
	call	_ZN3wze6engine6actors5actor5texts4text12SetFontStyleENS_5styleE
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	16(%rbx), %rdx
	leaq	136(%rax), %rcx
	call	_ZN3wze6engine6actors5actor12overlapboxesixEy
	movq	%rax, %rsi
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	64(%rbx), %rdx
	leaq	104(%rax), %rcx
	call	_ZN3wze6engine6actors5actor5textsixEy
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor5texts4text8GetWidthEv
	movzwl	%ax, %edx
	movq	%rsi, %rcx
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	16(%rbx), %rdx
	leaq	136(%rax), %rcx
	call	_ZN3wze6engine6actors5actor12overlapboxesixEy
	movq	%rax, %rsi
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	64(%rbx), %rdx
	leaq	104(%rax), %rcx
	call	_ZN3wze6engine6actors5actor5textsixEy
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor5texts4text9GetHeightEv
	movzwl	%ax, %edx
	movq	%rsi, %rcx
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	16(%rbx), %rdx
	leaq	136(%rax), %rcx
	call	_ZN3wze6engine6actors5actor12overlapboxesixEy
	movq	%rax, %rsi
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	64(%rbx), %rdx
	leaq	104(%rax), %rcx
	call	_ZN3wze6engine6actors5actor5textsixEy
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor5texts4text4GetYEv
	movapd	%xmm0, %xmm1
	movq	%rsi, %rcx
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	16(%rbx), %rdx
	leaq	136(%rax), %rcx
	call	_ZN3wze6engine6actors5actor12overlapboxesixEy
	movb	$1, 18(%rax)
	addq	$120, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L10:
	movq	$6, 48(%rbx)
	movq	56(%rbx), %rcx
	movl	$48, %edx
	call	realloc
	movq	%rax, 56(%rbx)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L5
	movq	48(%rbx), %rax
	jmp	.L6
.L5:
	movl	$6, %r8d
	movl	$8, %edx
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
.LEHE0:
	movl	$1, %ecx
	call	exit
.L8:
	movq	%rax, %rsi
	jmp	.L7
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6880:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6880-.LLSDACSB6880
.LLSDACSB6880:
	.uleb128 .LEHB0-.LFB6880
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L8-.LFB6880
	.uleb128 0
.LLSDACSE6880:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN6playerC2EPN3wze6engineENS0_3keyES3_S3_S3_.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN6playerC2EPN3wze6engineENS0_3keyES3_S3_S3_.cold
	.seh_stackalloc	136
	.seh_savereg	%rbx, 120
	.seh_savereg	%rsi, 128
	.seh_endprologue
_ZN6playerC2EPN3wze6engineENS0_3keyES3_S3_S3_.cold:
.L7:
	movq	56(%rbx), %rcx
	call	free
	movq	%rsi, %rcx
.LEHB1:
	call	_Unwind_Resume
	nop
.LEHE1:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC6880:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6880-.LLSDACSBC6880
.LLSDACSBC6880:
	.uleb128 .LEHB1-.LCOLDB14
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSEC6880:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE14:
	.text
.LHOTE14:
	.globl	_ZN6playerC1EPN3wze6engineENS0_3keyES3_S3_S3_
	.def	_ZN6playerC1EPN3wze6engineENS0_3keyES3_S3_S3_;	.scl	2;	.type	32;	.endef
	.set	_ZN6playerC1EPN3wze6engineENS0_3keyES3_S3_S3_,_ZN6playerC2EPN3wze6engineENS0_3keyES3_S3_S3_
	.align 2
	.p2align 4
	.globl	_ZN6playerD2Ev
	.def	_ZN6playerD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6playerD2Ev
_ZN6playerD2Ev:
.LFB6883:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	cmpq	$0, 48(%rcx)
	movq	%rcx, %rbx
	je	.L12
	xorl	%esi, %esi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L13:
	movq	56(%rbx), %rdx
	addl	$1, %esi
	movq	(%rdx,%rax,8), %rdx
	movq	(%rbx), %rax
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets13UnloadTextureEy
	movzbl	%sil, %eax
	cmpq	48(%rbx), %rax
	jb	.L13
.L12:
	movq	(%rbx), %rax
	movq	72(%rbx), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets10UnloadFontEy
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actors6DeleteEy
	movq	56(%rbx), %rcx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	jmp	free
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6883:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6883-.LLSDACSB6883
.LLSDACSB6883:
.LLSDACSE6883:
	.text
	.seh_endproc
	.globl	_ZN6playerD1Ev
	.def	_ZN6playerD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN6playerD1Ev,_ZN6playerD2Ev
	.align 2
	.p2align 4
	.globl	_ZN6player6UpdateEv
	.def	_ZN6player6UpdateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6player6UpdateEv
_ZN6player6UpdateEv:
.LFB6885:
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
	movq	(%rcx), %rax
	movl	24(%rcx), %edx
	movq	%rcx, %rbx
	leaq	160(%rax), %rcx
	call	_ZN3wze6engine4keysixENS_3keyE
	testb	%al, %al
	jne	.L52
.L17:
	movq	(%rbx), %rax
	movl	28(%rbx), %edx
	leaq	160(%rax), %rcx
	call	_ZN3wze6engine4keysixENS_3keyE
	testb	%al, %al
	jne	.L53
.L24:
	movq	(%rbx), %rax
	movl	32(%rbx), %edx
	leaq	160(%rax), %rcx
	call	_ZN3wze6engine4keysixENS_3keyE
	testb	%al, %al
	jne	.L54
.L31:
	movq	(%rbx), %rax
	movl	36(%rbx), %edx
	leaq	160(%rax), %rcx
	call	_ZN3wze6engine4keysixENS_3keyE
	testb	%al, %al
	jne	.L55
.L36:
	movq	(%rbx), %rax
	movl	$10, %edx
	leaq	160(%rax), %rcx
	call	_ZN3wze6engine4keysixENS_3keyE
	testb	%al, %al
	jne	.L56
.L40:
	movq	(%rbx), %rax
	movl	$11, %edx
	leaq	160(%rax), %rcx
	call	_ZN3wze6engine4keysixENS_3keyE
	testb	%al, %al
	jne	.L57
.L41:
	movq	(%rbx), %rax
	movl	$13, %edx
	leaq	160(%rax), %rcx
	call	_ZN3wze6engine4keysixENS_3keyE
	testb	%al, %al
	jne	.L58
.L42:
	movaps	48(%rsp), %xmm6
	movaps	64(%rsp), %xmm7
	xorl	%eax, %eax
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L52:
	movq	(%rbx), %rax
	movl	28(%rbx), %edx
	leaq	160(%rax), %rcx
	call	_ZN3wze6engine4keysixENS_3keyE
	testb	%al, %al
	jne	.L17
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdx
	movq	%rax, %rdi
	leaq	240(%rsi), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor8GetAngleEv
	movsd	.LC15(%rip), %xmm7
	movq	(%rbx), %rax
	movapd	%xmm0, %xmm3
	addsd	%xmm7, %xmm3
	leaq	400(%rax), %rcx
	movsd	%xmm3, 40(%rsp)
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	pxor	%xmm2, %xmm2
	movq	8(%rbx), %rdx
	movsd	.LC16(%rip), %xmm6
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm2
	movq	(%rbx), %rax
	leaq	240(%rax), %rcx
	mulsd	%xmm6, %xmm2
	movsd	%xmm2, 32(%rsp)
	call	_ZN3wze6engine6actorsixEy
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor4GetXEv
	movsd	32(%rsp), %xmm2
	movsd	40(%rsp), %xmm3
	leaq	296(%rsi), %rcx
	movapd	%xmm0, %xmm1
	call	_ZN3wze6engine6vector9TerminalXEddd
	movq	%rdi, %rcx
	movapd	%xmm0, %xmm1
	call	_ZN3wze6engine6actors5actor4SetXEd
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdx
	movq	%rax, %rdi
	leaq	240(%rsi), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor8GetAngleEv
	movq	(%rbx), %rax
	movapd	%xmm0, %xmm3
	addsd	%xmm7, %xmm3
	leaq	400(%rax), %rcx
	movsd	%xmm3, 40(%rsp)
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	pxor	%xmm2, %xmm2
	movq	8(%rbx), %rdx
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm2
	movq	(%rbx), %rax
	leaq	240(%rax), %rcx
	mulsd	%xmm6, %xmm2
	movsd	%xmm2, 32(%rsp)
	call	_ZN3wze6engine6actorsixEy
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor4GetYEv
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	leaq	296(%rsi), %rcx
	movapd	%xmm0, %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd
	movq	%rdi, %rcx
	movapd	%xmm0, %xmm1
	call	_ZN3wze6engine6actors5actor4SetYEd
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L58:
	movq	(%rbx), %rcx
	movq	8(%rbx), %rdx
	addq	$240, %rcx
	call	_ZN3wze6engine6actorsixEy
	movl	$46, %edx
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor8SetWidthEt
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L57:
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movl	$100, %edx
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor8SetWidthEt
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L56:
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	64(%rbx), %rdx
	leaq	104(%rax), %rcx
	call	_ZN3wze6engine6actors5actor5textsixEy
	movq	8(%rbx), %rdx
	movq	%rax, %rsi
	movq	(%rbx), %rax
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor4GetYEv
	movsd	.LC13(%rip), %xmm6
	movq	%rsi, %rcx
	movapd	%xmm0, %xmm1
	addsd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor5texts4text4SetYEd
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	64(%rbx), %rdx
	leaq	104(%rax), %rcx
	call	_ZN3wze6engine6actors5actor5textsixEy
	movq	8(%rbx), %rdx
	movq	%rax, %rsi
	movq	(%rbx), %rax
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor4GetXEv
	movq	%rsi, %rcx
	movapd	%xmm0, %xmm1
	call	_ZN3wze6engine6actors5actor5texts4text4SetXEd
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	16(%rbx), %rdx
	leaq	136(%rax), %rcx
	call	_ZN3wze6engine6actors5actor12overlapboxesixEy
	movq	8(%rbx), %rdx
	movq	%rax, %rsi
	movq	(%rbx), %rax
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor4GetYEv
	movq	%rsi, %rcx
	movapd	%xmm0, %xmm1
	addsd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	16(%rbx), %rdx
	leaq	136(%rax), %rcx
	call	_ZN3wze6engine6actors5actor12overlapboxesixEy
	movq	8(%rbx), %rdx
	movq	%rax, %rsi
	movq	(%rbx), %rax
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor4GetXEv
	movq	%rsi, %rcx
	movapd	%xmm0, %xmm1
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetXEd
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L55:
	movq	(%rbx), %rax
	movl	32(%rbx), %edx
	leaq	160(%rax), %rcx
	call	_ZN3wze6engine4keysixENS_3keyE
	testb	%al, %al
	jne	.L36
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	8(%rbx), %rdx
	movq	%rax, %rsi
	movq	(%rbx), %rax
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor8GetAngleEv
	movq	(%rbx), %rax
	movsd	%xmm0, 32(%rsp)
	leaq	400(%rax), %rcx
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	pxor	%xmm2, %xmm2
	movsd	32(%rsp), %xmm1
	movq	%rsi, %rcx
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm2
	mulsd	.LC18(%rip), %xmm2
	subsd	%xmm2, %xmm1
	call	_ZN3wze6engine6actors5actor8SetAngleEd
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L54:
	movq	(%rbx), %rax
	movl	36(%rbx), %edx
	leaq	160(%rax), %rcx
	call	_ZN3wze6engine4keysixENS_3keyE
	testb	%al, %al
	jne	.L31
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	8(%rbx), %rdx
	movq	%rax, %rsi
	movq	(%rbx), %rax
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor8GetAngleEv
	movq	(%rbx), %rax
	movapd	%xmm0, %xmm6
	leaq	400(%rax), %rcx
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	pxor	%xmm1, %xmm1
	movq	%rsi, %rcx
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	.LC18(%rip), %xmm1
	addsd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor8SetAngleEd
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L53:
	movq	(%rbx), %rax
	movl	24(%rbx), %edx
	leaq	160(%rax), %rcx
	call	_ZN3wze6engine4keysixENS_3keyE
	testb	%al, %al
	jne	.L24
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdx
	movq	%rax, %rdi
	leaq	240(%rsi), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor8GetAngleEv
	movsd	.LC15(%rip), %xmm7
	movq	(%rbx), %rax
	movapd	%xmm0, %xmm3
	addsd	%xmm7, %xmm3
	leaq	400(%rax), %rcx
	movsd	%xmm3, 40(%rsp)
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	pxor	%xmm2, %xmm2
	movq	8(%rbx), %rdx
	movsd	.LC17(%rip), %xmm6
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm2
	movq	(%rbx), %rax
	leaq	240(%rax), %rcx
	mulsd	%xmm6, %xmm2
	movsd	%xmm2, 32(%rsp)
	call	_ZN3wze6engine6actorsixEy
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor4GetXEv
	movsd	32(%rsp), %xmm2
	movsd	40(%rsp), %xmm3
	leaq	296(%rsi), %rcx
	movapd	%xmm0, %xmm1
	call	_ZN3wze6engine6vector9TerminalXEddd
	movq	%rdi, %rcx
	movapd	%xmm0, %xmm1
	call	_ZN3wze6engine6actors5actor4SetXEd
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdx
	movq	%rax, %rdi
	leaq	240(%rsi), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor8GetAngleEv
	movq	(%rbx), %rax
	movapd	%xmm0, %xmm3
	addsd	%xmm7, %xmm3
	leaq	400(%rax), %rcx
	movsd	%xmm3, 40(%rsp)
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	pxor	%xmm2, %xmm2
	movq	8(%rbx), %rdx
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm2
	movq	(%rbx), %rax
	leaq	240(%rax), %rcx
	mulsd	%xmm6, %xmm2
	movsd	%xmm2, 32(%rsp)
	call	_ZN3wze6engine6actorsixEy
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor4GetYEv
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	leaq	296(%rsi), %rcx
	movapd	%xmm0, %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd
	movq	%rdi, %rcx
	movapd	%xmm0, %xmm1
	call	_ZN3wze6engine6actors5actor4SetYEd
	jmp	.L24
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC8:
	.long	0
	.long	1072693248
	.align 8
.LC11:
	.long	-1717986918
	.long	1068079513
	.align 8
.LC12:
	.long	0
	.long	1076887552
	.align 8
.LC13:
	.long	0
	.long	1078722560
	.align 8
.LC15:
	.long	0
	.long	1079410688
	.align 8
.LC16:
	.long	0
	.long	1071644672
	.align 8
.LC17:
	.long	0
	.long	-1075838976
	.align 8
.LC18:
	.long	-1717986918
	.long	1070176665
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets11LoadTextureEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6memory6CopyToEPKvPvy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets8LoadFontEPKch;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors3NewEPvyddttd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actorsixEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor5texts3NewEPKcy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes3NewEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor8SetDepthEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor17SetCollisionLayerEh;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9flipbooksixEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4GetYEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor5textsixEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor5texts4text9SetHeightEt;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor5texts4text4SetYEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor5texts4text12SetFontStyleENS_5styleE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxesixEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor5texts4text8GetWidthEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor5texts4text9GetHeightEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor5texts4text4GetYEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets13UnloadTextureEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets10UnloadFontEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors6DeleteEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine4keysixENS_3keyE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor8GetAngleEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6timing12GetDeltaTimeEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4GetXEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector9TerminalXEddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4SetXEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector9TerminalYEddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4SetYEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor8SetWidthEt;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor5texts4text4SetXEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetXEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor8SetAngleEd;	.scl	2;	.type	32;	.endef
