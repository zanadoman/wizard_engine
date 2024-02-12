	.file	"assets.cpp"
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
	.ascii "assets/font/FreeSans.ttf\0"
.LC1:
	.ascii "assets/map/background.png\0"
.LC2:
	.ascii "assets/map/bush.png\0"
.LC3:
	.ascii "assets/map/crate.png\0"
.LC4:
	.ascii "assets/map/mountain.png\0"
.LC5:
	.ascii "assets/map/platform.png\0"
.LC6:
	.ascii "assets/map/shroom.png\0"
.LC7:
	.ascii "assets/player/hurt/hurt1.png\0"
.LC8:
	.ascii "assets/player/hurt/hurt2.png\0"
	.align 8
.LC9:
	.ascii "neo::array=: Memory allocation failed\12Params: Elements(type, length): %ld, %ld\12\0"
.LC10:
	.ascii "assets/player/idle/idle1.png\0"
.LC11:
	.ascii "assets/player/idle/idle2.png\0"
.LC12:
	.ascii "assets/player/idle/idle3.png\0"
.LC13:
	.ascii "assets/player/idle/idle4.png\0"
.LC14:
	.ascii "assets/player/run/run1.png\0"
.LC15:
	.ascii "assets/player/run/run2.png\0"
.LC16:
	.ascii "assets/player/run/run3.png\0"
.LC17:
	.ascii "assets/player/run/run4.png\0"
.LC18:
	.ascii "assets/player/run/run5.png\0"
.LC19:
	.ascii "assets/player/run/run6.png\0"
.LC20:
	.ascii "assets/player/fall.png\0"
.LC21:
	.ascii "assets/player/jump.png\0"
.LC22:
	.ascii "assets/eagle/fly/fly1.png\0"
.LC23:
	.ascii "assets/eagle/fly/fly2.png\0"
.LC24:
	.ascii "assets/eagle/fly/fly3.png\0"
.LC25:
	.ascii "assets/eagle/fly/fly4.png\0"
.LC26:
	.ascii "assets/eagle/hurt/hurt1.png\0"
.LC27:
	.ascii "assets/eagle/hurt/hurt2.png\0"
.LC28:
	.ascii "assets/eagle/hurt/hurt3.png\0"
.LC29:
	.ascii "assets/eagle/hurt/hurt4.png\0"
.LC30:
	.ascii "assets/eagle/hurt/hurt5.png\0"
.LC31:
	.ascii "assets/eagle/hurt/hurt6.png\0"
.LC32:
	.ascii "assets/bullet/base.png\0"
.LC33:
	.ascii "assets/bullet/shot.mp3\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB34:
	.text
.LHOTB34:
	.align 2
	.p2align 4
	.globl	_ZN6assetsC2EPN3wze6engineE
	.def	_ZN6assetsC2EPN3wze6engineE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6assetsC2EPN3wze6engineE
_ZN6assetsC2EPN3wze6engineE:
.LFB6889:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$216, %rsp
	.seh_stackalloc	216
	.seh_endprologue
	movl	$72, %r8d
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	movq	$0, 24(%rcx)
	movq	$0, 32(%rcx)
	movq	$0, 40(%rcx)
	movq	$0, 48(%rcx)
	movq	$0, 56(%rcx)
	movq	$0, 64(%rcx)
	movq	$0, 80(%rcx)
	movq	$0, 88(%rcx)
	movq	$0, 96(%rcx)
	movq	$0, 104(%rcx)
	leaq	304(%rdx), %rcx
	leaq	.LC0(%rip), %rdx
.LEHB0:
	call	_ZN3wze6engine6assets8LoadFontEPKch
	movw	%ax, 8(%rbx)
	movq	(%rbx), %rax
	leaq	.LC1(%rip), %rdx
	leaq	304(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 10(%rbx)
	movq	(%rbx), %rax
	leaq	.LC2(%rip), %rdx
	leaq	304(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 12(%rbx)
	movq	(%rbx), %rax
	leaq	.LC3(%rip), %rdx
	leaq	304(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 14(%rbx)
	movq	(%rbx), %rax
	leaq	.LC4(%rip), %rdx
	leaq	304(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 16(%rbx)
	movq	(%rbx), %rax
	leaq	.LC5(%rip), %rdx
	leaq	304(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 18(%rbx)
	movq	(%rbx), %rax
	leaq	.LC6(%rip), %rdx
	leaq	304(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 20(%rbx)
	movq	(%rbx), %rax
	leaq	.LC7(%rip), %rdx
	leaq	304(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movzwl	%ax, %eax
	leaq	.LC8(%rip), %rdx
	movq	%rax, 32(%rsp)
	movq	(%rbx), %rax
	leaq	304(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movzwl	%ax, %eax
	movq	%rax, 40(%rsp)
	movq	24(%rbx), %rax
	cmpq	$2, %rax
	jne	.L25
	movq	32(%rbx), %rdx
.L6:
	leaq	32(%rsp), %rcx
	leaq	0(,%rax,8), %r8
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	(%rbx), %rax
	leaq	.LC10(%rip), %rdx
	leaq	304(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movzwl	%ax, %eax
	leaq	.LC11(%rip), %rdx
	movq	%rax, 48(%rsp)
	movq	(%rbx), %rax
	leaq	304(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movzwl	%ax, %eax
	leaq	.LC12(%rip), %rdx
	movq	%rax, 56(%rsp)
	movq	(%rbx), %rax
	leaq	304(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movzwl	%ax, %eax
	leaq	.LC13(%rip), %rdx
	movq	%rax, 64(%rsp)
	movq	(%rbx), %rax
	leaq	304(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movzwl	%ax, %eax
	movq	%rax, 72(%rsp)
	movq	40(%rbx), %rax
	cmpq	$4, %rax
	jne	.L26
	movq	48(%rbx), %rdx
.L9:
	leaq	48(%rsp), %rcx
	leaq	0(,%rax,8), %r8
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	(%rbx), %rax
	leaq	.LC14(%rip), %rdx
	leaq	304(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movzwl	%ax, %eax
	leaq	.LC15(%rip), %rdx
	movq	%rax, 112(%rsp)
	movq	(%rbx), %rax
	leaq	304(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movzwl	%ax, %eax
	leaq	.LC16(%rip), %rdx
	movq	%rax, 120(%rsp)
	movq	(%rbx), %rax
	leaq	304(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movzwl	%ax, %eax
	leaq	.LC17(%rip), %rdx
	movq	%rax, 128(%rsp)
	movq	(%rbx), %rax
	leaq	304(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movzwl	%ax, %eax
	leaq	.LC18(%rip), %rdx
	movq	%rax, 136(%rsp)
	movq	(%rbx), %rax
	leaq	304(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movzwl	%ax, %eax
	leaq	.LC19(%rip), %rdx
	movq	%rax, 144(%rsp)
	movq	(%rbx), %rax
	leaq	304(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movzwl	%ax, %eax
	movq	%rax, 152(%rsp)
	movq	56(%rbx), %rax
	cmpq	$6, %rax
	jne	.L27
	movq	64(%rbx), %rdx
.L13:
	leaq	112(%rsp), %rcx
	leaq	0(,%rax,8), %r8
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	(%rbx), %rax
	leaq	.LC20(%rip), %rdx
	leaq	304(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 74(%rbx)
	movq	(%rbx), %rax
	leaq	.LC21(%rip), %rdx
	leaq	304(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 72(%rbx)
	movq	(%rbx), %rax
	leaq	.LC22(%rip), %rdx
	leaq	304(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movzwl	%ax, %eax
	leaq	.LC23(%rip), %rdx
	movq	%rax, 80(%rsp)
	movq	(%rbx), %rax
	leaq	304(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movzwl	%ax, %eax
	leaq	.LC24(%rip), %rdx
	movq	%rax, 88(%rsp)
	movq	(%rbx), %rax
	leaq	304(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movzwl	%ax, %eax
	leaq	.LC25(%rip), %rdx
	movq	%rax, 96(%rsp)
	movq	(%rbx), %rax
	leaq	304(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movzwl	%ax, %eax
	movq	%rax, 104(%rsp)
	movq	80(%rbx), %rax
	cmpq	$4, %rax
	jne	.L28
	movq	88(%rbx), %rdx
.L16:
	leaq	80(%rsp), %rcx
	leaq	0(,%rax,8), %r8
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	(%rbx), %rax
	leaq	.LC26(%rip), %rdx
	leaq	304(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movzwl	%ax, %eax
	leaq	.LC27(%rip), %rdx
	movq	%rax, 160(%rsp)
	movq	(%rbx), %rax
	leaq	304(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movzwl	%ax, %eax
	leaq	.LC28(%rip), %rdx
	movq	%rax, 168(%rsp)
	movq	(%rbx), %rax
	leaq	304(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movzwl	%ax, %eax
	leaq	.LC29(%rip), %rdx
	movq	%rax, 176(%rsp)
	movq	(%rbx), %rax
	leaq	304(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movzwl	%ax, %eax
	leaq	.LC30(%rip), %rdx
	movq	%rax, 184(%rsp)
	movq	(%rbx), %rax
	leaq	304(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movzwl	%ax, %eax
	leaq	.LC31(%rip), %rdx
	movq	%rax, 192(%rsp)
	movq	(%rbx), %rax
	leaq	304(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movzwl	%ax, %eax
	movq	%rax, 200(%rsp)
	movq	96(%rbx), %rax
	cmpq	$6, %rax
	jne	.L29
	movq	104(%rbx), %rdx
.L19:
	leaq	160(%rsp), %rcx
	leaq	0(,%rax,8), %r8
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	(%rbx), %rax
	leaq	.LC32(%rip), %rdx
	leaq	304(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 114(%rbx)
	movq	(%rbx), %rax
	leaq	.LC33(%rip), %rdx
	leaq	304(%rax), %rcx
	call	_ZN3wze6engine6assets9LoadSoundEPKc
	movw	%ax, 112(%rbx)
	addq	$216, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L27:
	movq	$6, 56(%rbx)
	movq	64(%rbx), %rcx
	movl	$48, %edx
	call	realloc
	movq	%rax, 64(%rbx)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L18
	movq	56(%rbx), %rax
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L26:
	movq	$4, 40(%rbx)
	movq	48(%rbx), %rcx
	movl	$32, %edx
	call	realloc
	movq	%rax, 48(%rbx)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L15
	movq	40(%rbx), %rax
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L25:
	movq	$2, 24(%rbx)
	movq	32(%rbx), %rcx
	movl	$16, %edx
	call	realloc
	movq	%rax, 32(%rbx)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L5
	movq	24(%rbx), %rax
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L29:
	movq	$6, 96(%rbx)
	movq	104(%rbx), %rcx
	movl	$48, %edx
	call	realloc
	movq	%rax, 104(%rbx)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L18
	movq	96(%rbx), %rax
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L28:
	movq	$4, 80(%rbx)
	movq	88(%rbx), %rcx
	movl	$32, %edx
	call	realloc
	movq	%rax, 88(%rbx)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L15
	movq	80(%rbx), %rax
	jmp	.L16
.L18:
	movl	$6, %r8d
	movl	$8, %edx
	leaq	.LC9(%rip), %rcx
	call	_Z6printfPKcz
.L10:
	movl	$1, %ecx
	call	exit
.L15:
	movl	$4, %r8d
	movl	$8, %edx
	leaq	.LC9(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L10
.L5:
	movl	$2, %r8d
	movl	$8, %edx
	leaq	.LC9(%rip), %rcx
	call	_Z6printfPKcz
.LEHE0:
	jmp	.L10
.L21:
	movq	%rax, %rsi
	jmp	.L20
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6889:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6889-.LLSDACSB6889
.LLSDACSB6889:
	.uleb128 .LEHB0-.LFB6889
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L21-.LFB6889
	.uleb128 0
.LLSDACSE6889:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN6assetsC2EPN3wze6engineE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN6assetsC2EPN3wze6engineE.cold
	.seh_stackalloc	232
	.seh_savereg	%rbx, 216
	.seh_savereg	%rsi, 224
	.seh_endprologue
_ZN6assetsC2EPN3wze6engineE.cold:
.L20:
	movq	104(%rbx), %rcx
	call	free
	movq	88(%rbx), %rcx
	call	free
	movq	64(%rbx), %rcx
	call	free
	movq	48(%rbx), %rcx
	call	free
	movq	32(%rbx), %rcx
	call	free
	movq	%rsi, %rcx
.LEHB1:
	call	_Unwind_Resume
	nop
.LEHE1:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC6889:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6889-.LLSDACSBC6889
.LLSDACSBC6889:
	.uleb128 .LEHB1-.LCOLDB34
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSEC6889:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE34:
	.text
.LHOTE34:
	.globl	_ZN6assetsC1EPN3wze6engineE
	.def	_ZN6assetsC1EPN3wze6engineE;	.scl	2;	.type	32;	.endef
	.set	_ZN6assetsC1EPN3wze6engineE,_ZN6assetsC2EPN3wze6engineE
	.align 2
	.p2align 4
	.globl	_ZN6assetsD2Ev
	.def	_ZN6assetsD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6assetsD2Ev
_ZN6assetsD2Ev:
.LFB6892:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	(%rcx), %rax
	leaq	32(%rsp), %rsi
	movq	%rcx, %rbx
	leaq	304(%rax), %rcx
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movq	%rsi, %rdx
	call	_ZN3wze6engine6assets13PurgeTexturesESt16initializer_listIyE
	movq	(%rbx), %rax
	movq	%rsi, %rdx
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	leaq	304(%rax), %rcx
	call	_ZN3wze6engine6assets11PurgeSoundsESt16initializer_listIyE
	movq	(%rbx), %rax
	movq	%rsi, %rdx
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	leaq	304(%rax), %rcx
	call	_ZN3wze6engine6assets10PurgeFontsESt16initializer_listIyE
	movq	(%rbx), %rax
	movq	%rsi, %rdx
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	leaq	304(%rax), %rcx
	call	_ZN3wze6engine6assets19PurgeCursorTexturesESt16initializer_listIyE
	movq	104(%rbx), %rcx
	call	free
	movq	88(%rbx), %rcx
	call	free
	movq	64(%rbx), %rcx
	call	free
	movq	48(%rbx), %rcx
	call	free
	movq	32(%rbx), %rcx
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	jmp	free
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6892:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6892-.LLSDACSB6892
.LLSDACSB6892:
.LLSDACSE6892:
	.text
	.seh_endproc
	.globl	_ZN6assetsD1Ev
	.def	_ZN6assetsD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN6assetsD1Ev,_ZN6assetsD2Ev
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets8LoadFontEPKch;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets11LoadTextureEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6memory6CopyToEPKvPvy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets9LoadSoundEPKc;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets13PurgeTexturesESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets11PurgeSoundsESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets10PurgeFontsESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets19PurgeCursorTexturesESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
