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
.LFB6880:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
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
	leaq	328(%rdx), %rcx
	leaq	.LC0(%rip), %rdx
.LEHB0:
	call	_ZN3wze6engine6assets8LoadFontEPKch
	movw	%ax, 8(%rbx)
	movq	(%rbx), %rax
	leaq	.LC1(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 10(%rbx)
	movq	(%rbx), %rax
	leaq	.LC2(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 12(%rbx)
	movq	(%rbx), %rax
	leaq	.LC3(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 14(%rbx)
	movq	(%rbx), %rax
	leaq	.LC4(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 16(%rbx)
	movq	(%rbx), %rax
	leaq	.LC5(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 18(%rbx)
	movq	(%rbx), %rax
	leaq	.LC6(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 20(%rbx)
	movq	(%rbx), %rax
	leaq	.LC7(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 36(%rsp)
	movq	(%rbx), %rax
	leaq	.LC8(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 38(%rsp)
	movq	24(%rbx), %rax
	cmpq	$2, %rax
	jne	.L25
	movq	32(%rbx), %rdx
.L6:
	leaq	36(%rsp), %rcx
	leaq	(%rax,%rax), %r8
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	(%rbx), %rax
	leaq	.LC10(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 40(%rsp)
	movq	(%rbx), %rax
	leaq	.LC11(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 42(%rsp)
	movq	(%rbx), %rax
	leaq	.LC12(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 44(%rsp)
	movq	(%rbx), %rax
	leaq	.LC13(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 46(%rsp)
	movq	40(%rbx), %rax
	cmpq	$4, %rax
	jne	.L26
	movq	48(%rbx), %rdx
.L9:
	leaq	40(%rsp), %rcx
	leaq	(%rax,%rax), %r8
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	(%rbx), %rax
	leaq	.LC14(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 56(%rsp)
	movq	(%rbx), %rax
	leaq	.LC15(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 58(%rsp)
	movq	(%rbx), %rax
	leaq	.LC16(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 60(%rsp)
	movq	(%rbx), %rax
	leaq	.LC17(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 62(%rsp)
	movq	(%rbx), %rax
	leaq	.LC18(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 64(%rsp)
	movq	(%rbx), %rax
	leaq	.LC19(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 66(%rsp)
	movq	56(%rbx), %rax
	cmpq	$6, %rax
	jne	.L27
	movq	64(%rbx), %rdx
.L13:
	leaq	56(%rsp), %rcx
	leaq	(%rax,%rax), %r8
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	(%rbx), %rax
	leaq	.LC20(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 74(%rbx)
	movq	(%rbx), %rax
	leaq	.LC21(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 72(%rbx)
	movq	(%rbx), %rax
	leaq	.LC22(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 48(%rsp)
	movq	(%rbx), %rax
	leaq	.LC23(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 50(%rsp)
	movq	(%rbx), %rax
	leaq	.LC24(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 52(%rsp)
	movq	(%rbx), %rax
	leaq	.LC25(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 54(%rsp)
	movq	80(%rbx), %rax
	cmpq	$4, %rax
	jne	.L28
	movq	88(%rbx), %rdx
.L16:
	leaq	48(%rsp), %rcx
	leaq	(%rax,%rax), %r8
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	(%rbx), %rax
	leaq	.LC26(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 68(%rsp)
	movq	(%rbx), %rax
	leaq	.LC27(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 70(%rsp)
	movq	(%rbx), %rax
	leaq	.LC28(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 72(%rsp)
	movq	(%rbx), %rax
	leaq	.LC29(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 74(%rsp)
	movq	(%rbx), %rax
	leaq	.LC30(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 76(%rsp)
	movq	(%rbx), %rax
	leaq	.LC31(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 78(%rsp)
	movq	96(%rbx), %rax
	cmpq	$6, %rax
	jne	.L29
	movq	104(%rbx), %rdx
.L19:
	leaq	68(%rsp), %rcx
	leaq	(%rax,%rax), %r8
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	(%rbx), %rax
	leaq	.LC32(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movw	%ax, 114(%rbx)
	movq	(%rbx), %rax
	leaq	.LC33(%rip), %rdx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets9LoadSoundEPKc
	movw	%ax, 112(%rbx)
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L27:
	movq	$6, 56(%rbx)
	movq	64(%rbx), %rcx
	movl	$12, %edx
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
	movl	$8, %edx
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
	movl	$4, %edx
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
	movl	$12, %edx
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
	movl	$8, %edx
	call	realloc
	movq	%rax, 88(%rbx)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L15
	movq	80(%rbx), %rax
	jmp	.L16
.L18:
	movl	$6, %r8d
	movl	$2, %edx
	leaq	.LC9(%rip), %rcx
	call	_Z6printfPKcz
.L10:
	movl	$1, %ecx
	call	exit
.L15:
	movl	$4, %r8d
	movl	$2, %edx
	leaq	.LC9(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L10
.L5:
	movl	$2, %r8d
	movl	$2, %edx
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
.LLSDA6880:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6880-.LLSDACSB6880
.LLSDACSB6880:
	.uleb128 .LEHB0-.LFB6880
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L21-.LFB6880
	.uleb128 0
.LLSDACSE6880:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN6assetsC2EPN3wze6engineE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN6assetsC2EPN3wze6engineE.cold
	.seh_stackalloc	104
	.seh_savereg	%rbx, 88
	.seh_savereg	%rsi, 96
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
.LLSDAC6880:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6880-.LLSDACSBC6880
.LLSDACSBC6880:
	.uleb128 .LEHB1-.LCOLDB34
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSEC6880:
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
