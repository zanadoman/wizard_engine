	.file	"background.cpp"
	.text
	.section	.rodata
.LC0:
	.string	"assets/background/back.png"
	.text
	.align 2
	.globl	_ZN10backgroundC2ERN4slay6engineE
	.type	_ZN10backgroundC2ERN4slay6engineE, @function
_ZN10backgroundC2ERN4slay6engineE:
.LFB2197:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$560, %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4slay6engine6assets11LoadTextureEPKc@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$528, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors3NewEy@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor8textures3NewEv@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdx
	movq	.LC1(%rip), %rax
	movq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor8SetLayerEd@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor8texturesixEy@PLT
	movw	$1280, 18(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor8texturesixEy@PLT
	movw	$720, 20(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor8texturesixEy@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor8textures7texture12SetTextureIDEy@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2197:
	.size	_ZN10backgroundC2ERN4slay6engineE, .-_ZN10backgroundC2ERN4slay6engineE
	.globl	_ZN10backgroundC1ERN4slay6engineE
	.set	_ZN10backgroundC1ERN4slay6engineE,_ZN10backgroundC2ERN4slay6engineE
	.align 2
	.globl	_ZN10backgroundD2Ev
	.type	_ZN10backgroundD2Ev, @function
_ZN10backgroundD2Ev:
.LFB2200:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2200
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	560(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6assets13UnloadTextureEy@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors6DeleteEy@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2200:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2200:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2200-.LLSDACSB2200
.LLSDACSB2200:
.LLSDACSE2200:
	.text
	.size	_ZN10backgroundD2Ev, .-_ZN10backgroundD2Ev
	.globl	_ZN10backgroundD1Ev
	.set	_ZN10backgroundD1Ev,_ZN10backgroundD2Ev
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1072693248
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
