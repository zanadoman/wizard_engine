	.file	"assets.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"assets/font/FreeSans.ttf"
.LC1:
	.string	"assets/map/background.png"
.LC2:
	.string	"assets/map/bush.png"
.LC3:
	.string	"assets/map/crate.png"
.LC4:
	.string	"assets/map/mountain.png"
.LC5:
	.string	"assets/map/platform.png"
.LC6:
	.string	"assets/map/shroom.png"
.LC7:
	.string	"assets/player/hurt/hurt1.png"
.LC8:
	.string	"assets/player/hurt/hurt2.png"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC9:
	.string	"neo::array=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.section	.rodata.str1.1
.LC10:
	.string	"assets/player/idle/idle1.png"
.LC11:
	.string	"assets/player/idle/idle2.png"
.LC12:
	.string	"assets/player/idle/idle3.png"
.LC13:
	.string	"assets/player/idle/idle4.png"
.LC14:
	.string	"assets/player/run/run1.png"
.LC15:
	.string	"assets/player/run/run2.png"
.LC16:
	.string	"assets/player/run/run3.png"
.LC17:
	.string	"assets/player/run/run4.png"
.LC18:
	.string	"assets/player/run/run5.png"
.LC19:
	.string	"assets/player/run/run6.png"
.LC20:
	.string	"assets/player/fall.png"
.LC21:
	.string	"assets/player/jump.png"
.LC22:
	.string	"assets/eagle/fly/fly1.png"
.LC23:
	.string	"assets/eagle/fly/fly2.png"
.LC24:
	.string	"assets/eagle/fly/fly3.png"
.LC25:
	.string	"assets/eagle/fly/fly4.png"
.LC26:
	.string	"assets/eagle/hurt/hurt1.png"
.LC27:
	.string	"assets/eagle/hurt/hurt2.png"
.LC28:
	.string	"assets/eagle/hurt/hurt3.png"
.LC29:
	.string	"assets/eagle/hurt/hurt4.png"
.LC30:
	.string	"assets/eagle/hurt/hurt5.png"
.LC31:
	.string	"assets/eagle/hurt/hurt6.png"
.LC32:
	.string	"assets/bullet/base.png"
.LC33:
	.string	"assets/bullet/shot.mp3"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB34:
	.text
.LHOTB34:
	.align 2
	.p2align 4
	.globl	_ZN6assetsC2EPN3wze6engineE
	.type	_ZN6assetsC2EPN3wze6engineE, @function
_ZN6assetsC2EPN3wze6engineE:
.LFB8147:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8147
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$72, %edx
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$200, %rsp
	.cfi_def_cfa_offset 224
	movq	%fs:40, %rax
	movq	%rax, 184(%rsp)
	xorl	%eax, %eax
	movq	%rsi, (%rdi)
	movq	$0, 24(%rdi)
	movq	$0, 32(%rdi)
	movq	$0, 40(%rdi)
	movq	$0, 48(%rdi)
	movq	$0, 56(%rdi)
	movq	$0, 64(%rdi)
	movq	$0, 80(%rdi)
	movq	$0, 88(%rdi)
	movq	$0, 96(%rdi)
	movq	$0, 104(%rdi)
	leaq	304(%rsi), %rdi
	leaq	.LC0(%rip), %rsi
.LEHB0:
	call	_ZN3wze6engine6assets8LoadFontEPKch@PLT
	movw	%ax, 8(%rbx)
	movq	(%rbx), %rax
	leaq	.LC1(%rip), %rsi
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	movw	%ax, 10(%rbx)
	movq	(%rbx), %rax
	leaq	.LC2(%rip), %rsi
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	movw	%ax, 12(%rbx)
	movq	(%rbx), %rax
	leaq	.LC3(%rip), %rsi
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	movw	%ax, 14(%rbx)
	movq	(%rbx), %rax
	leaq	.LC4(%rip), %rsi
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	movw	%ax, 16(%rbx)
	movq	(%rbx), %rax
	leaq	.LC5(%rip), %rsi
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	movw	%ax, 18(%rbx)
	movq	(%rbx), %rax
	leaq	.LC6(%rip), %rsi
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	movw	%ax, 20(%rbx)
	movq	(%rbx), %rax
	leaq	.LC7(%rip), %rsi
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	movzwl	%ax, %eax
	leaq	.LC8(%rip), %rsi
	movq	%rax, (%rsp)
	movq	(%rbx), %rax
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	movq	24(%rbx), %rdx
	movzwl	%ax, %eax
	movq	%rax, 8(%rsp)
	cmpq	$2, %rdx
	jne	.L27
	movq	32(%rbx), %rsi
.L4:
	salq	$3, %rdx
	movq	%rsp, %rdi
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	(%rbx), %rax
	leaq	.LC10(%rip), %rsi
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	movzwl	%ax, %eax
	leaq	.LC11(%rip), %rsi
	movq	%rax, 16(%rsp)
	movq	(%rbx), %rax
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	movzwl	%ax, %eax
	leaq	.LC12(%rip), %rsi
	movq	%rax, 24(%rsp)
	movq	(%rbx), %rax
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	movzwl	%ax, %eax
	leaq	.LC13(%rip), %rsi
	movq	%rax, 32(%rsp)
	movq	(%rbx), %rax
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	movq	40(%rbx), %rdx
	movzwl	%ax, %eax
	movq	%rax, 40(%rsp)
	cmpq	$4, %rdx
	jne	.L28
	movq	48(%rbx), %rsi
.L7:
	salq	$3, %rdx
	leaq	16(%rsp), %rdi
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	(%rbx), %rax
	leaq	.LC14(%rip), %rsi
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	movzwl	%ax, %eax
	leaq	.LC15(%rip), %rsi
	movq	%rax, 80(%rsp)
	movq	(%rbx), %rax
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	movzwl	%ax, %eax
	leaq	.LC16(%rip), %rsi
	movq	%rax, 88(%rsp)
	movq	(%rbx), %rax
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	movzwl	%ax, %eax
	leaq	.LC17(%rip), %rsi
	movq	%rax, 96(%rsp)
	movq	(%rbx), %rax
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	movzwl	%ax, %eax
	leaq	.LC18(%rip), %rsi
	movq	%rax, 104(%rsp)
	movq	(%rbx), %rax
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	movzwl	%ax, %eax
	leaq	.LC19(%rip), %rsi
	movq	%rax, 112(%rsp)
	movq	(%rbx), %rax
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	movq	56(%rbx), %rdx
	movzwl	%ax, %eax
	movq	%rax, 120(%rsp)
	cmpq	$6, %rdx
	jne	.L29
	movq	64(%rbx), %rsi
.L11:
	salq	$3, %rdx
	leaq	80(%rsp), %rdi
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	(%rbx), %rax
	leaq	.LC20(%rip), %rsi
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	movw	%ax, 74(%rbx)
	movq	(%rbx), %rax
	leaq	.LC21(%rip), %rsi
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	movw	%ax, 72(%rbx)
	movq	(%rbx), %rax
	leaq	.LC22(%rip), %rsi
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	movzwl	%ax, %eax
	leaq	.LC23(%rip), %rsi
	movq	%rax, 48(%rsp)
	movq	(%rbx), %rax
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	movzwl	%ax, %eax
	leaq	.LC24(%rip), %rsi
	movq	%rax, 56(%rsp)
	movq	(%rbx), %rax
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	movzwl	%ax, %eax
	leaq	.LC25(%rip), %rsi
	movq	%rax, 64(%rsp)
	movq	(%rbx), %rax
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	movq	80(%rbx), %rdx
	movzwl	%ax, %eax
	movq	%rax, 72(%rsp)
	cmpq	$4, %rdx
	jne	.L30
	movq	88(%rbx), %rsi
.L14:
	salq	$3, %rdx
	leaq	48(%rsp), %rdi
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	(%rbx), %rax
	leaq	.LC26(%rip), %rsi
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	movzwl	%ax, %eax
	leaq	.LC27(%rip), %rsi
	movq	%rax, 128(%rsp)
	movq	(%rbx), %rax
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	movzwl	%ax, %eax
	leaq	.LC28(%rip), %rsi
	movq	%rax, 136(%rsp)
	movq	(%rbx), %rax
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	movzwl	%ax, %eax
	leaq	.LC29(%rip), %rsi
	movq	%rax, 144(%rsp)
	movq	(%rbx), %rax
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	movzwl	%ax, %eax
	leaq	.LC30(%rip), %rsi
	movq	%rax, 152(%rsp)
	movq	(%rbx), %rax
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	movzwl	%ax, %eax
	leaq	.LC31(%rip), %rsi
	movq	%rax, 160(%rsp)
	movq	(%rbx), %rax
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	movq	96(%rbx), %rdx
	movzwl	%ax, %eax
	movq	%rax, 168(%rsp)
	cmpq	$6, %rdx
	jne	.L31
	movq	104(%rbx), %rsi
.L17:
	salq	$3, %rdx
	leaq	128(%rsp), %rdi
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	(%rbx), %rax
	leaq	.LC32(%rip), %rsi
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	movw	%ax, 114(%rbx)
	movq	(%rbx), %rax
	leaq	.LC33(%rip), %rsi
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets9LoadSoundEPKc@PLT
	movw	%ax, 112(%rbx)
	movq	184(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L32
	addq	$200, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L29:
	.cfi_restore_state
	movq	$6, 56(%rbx)
	movq	64(%rbx), %rdi
	movl	$48, %esi
	call	realloc@PLT
	movq	%rax, 64(%rbx)
	movq	%rax, %rsi
	testq	%rax, %rax
	je	.L16
	movq	56(%rbx), %rdx
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L28:
	movq	$4, 40(%rbx)
	movq	48(%rbx), %rdi
	movl	$32, %esi
	call	realloc@PLT
	movq	%rax, 48(%rbx)
	movq	%rax, %rsi
	testq	%rax, %rax
	je	.L13
	movq	40(%rbx), %rdx
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L27:
	movq	$2, 24(%rbx)
	movq	32(%rbx), %rdi
	movl	$16, %esi
	call	realloc@PLT
	movq	%rax, 32(%rbx)
	movq	%rax, %rsi
	testq	%rax, %rax
	je	.L3
	movq	24(%rbx), %rdx
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L31:
	movq	$6, 96(%rbx)
	movq	104(%rbx), %rdi
	movl	$48, %esi
	call	realloc@PLT
	movq	%rax, 104(%rbx)
	movq	%rax, %rsi
	testq	%rax, %rax
	je	.L16
	movq	96(%rbx), %rdx
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L30:
	movq	$4, 80(%rbx)
	movq	88(%rbx), %rdi
	movl	$32, %esi
	call	realloc@PLT
	movq	%rax, 88(%rbx)
	movq	%rax, %rsi
	testq	%rax, %rax
	je	.L13
	movq	80(%rbx), %rdx
	jmp	.L14
.L16:
	movl	$6, %edx
	movl	$8, %esi
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.L8:
	movl	$1, %edi
	call	exit@PLT
.L13:
	movl	$4, %edx
	movl	$8, %esi
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L8
.L3:
	movl	$2, %edx
	movl	$8, %esi
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE0:
	jmp	.L8
.L32:
	call	__stack_chk_fail@PLT
.L21:
	movq	%rax, %rbp
	jmp	.L18
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8147:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8147-.LLSDACSB8147
.LLSDACSB8147:
	.uleb128 .LEHB0-.LFB8147
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L21-.LFB8147
	.uleb128 0
.LLSDACSE8147:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8147
	.type	_ZN6assetsC2EPN3wze6engineE.cold, @function
_ZN6assetsC2EPN3wze6engineE.cold:
.LFSB8147:
.L18:
	.cfi_def_cfa_offset 224
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	movq	104(%rbx), %rdi
	call	free@PLT
	movq	88(%rbx), %rdi
	call	free@PLT
	movq	64(%rbx), %rdi
	call	free@PLT
	movq	48(%rbx), %rdi
	call	free@PLT
	movq	32(%rbx), %rdi
	call	free@PLT
	movq	184(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L33
	movq	%rbp, %rdi
.LEHB1:
	call	_Unwind_Resume@PLT
.LEHE1:
.L33:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8147:
	.section	.gcc_except_table
.LLSDAC8147:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8147-.LLSDACSBC8147
.LLSDACSBC8147:
	.uleb128 .LEHB1-.LCOLDB34
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSEC8147:
	.section	.text.unlikely
	.text
	.size	_ZN6assetsC2EPN3wze6engineE, .-_ZN6assetsC2EPN3wze6engineE
	.section	.text.unlikely
	.size	_ZN6assetsC2EPN3wze6engineE.cold, .-_ZN6assetsC2EPN3wze6engineE.cold
.LCOLDE34:
	.text
.LHOTE34:
	.globl	_ZN6assetsC1EPN3wze6engineE
	.set	_ZN6assetsC1EPN3wze6engineE,_ZN6assetsC2EPN3wze6engineE
	.align 2
	.p2align 4
	.globl	_ZN6assetsD2Ev
	.type	_ZN6assetsD2Ev, @function
_ZN6assetsD2Ev:
.LFB8150:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8150
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	(%rdi), %rax
	movq	%rdi, %rbx
	xorl	%esi, %esi
	xorl	%edx, %edx
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets13PurgeTexturesESt16initializer_listIyE@PLT
	movq	(%rbx), %rax
	xorl	%esi, %esi
	xorl	%edx, %edx
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets11PurgeSoundsESt16initializer_listIyE@PLT
	movq	(%rbx), %rax
	xorl	%esi, %esi
	xorl	%edx, %edx
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets10PurgeFontsESt16initializer_listIyE@PLT
	movq	(%rbx), %rax
	xorl	%esi, %esi
	xorl	%edx, %edx
	leaq	304(%rax), %rdi
	call	_ZN3wze6engine6assets19PurgeCursorTexturesESt16initializer_listIyE@PLT
	movq	104(%rbx), %rdi
	call	free@PLT
	movq	88(%rbx), %rdi
	call	free@PLT
	movq	64(%rbx), %rdi
	call	free@PLT
	movq	48(%rbx), %rdi
	call	free@PLT
	movq	32(%rbx), %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT
	.cfi_endproc
.LFE8150:
	.section	.gcc_except_table
.LLSDA8150:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8150-.LLSDACSB8150
.LLSDACSB8150:
.LLSDACSE8150:
	.text
	.size	_ZN6assetsD2Ev, .-_ZN6assetsD2Ev
	.globl	_ZN6assetsD1Ev
	.set	_ZN6assetsD1Ev,_ZN6assetsD2Ev
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
