	.file	"background.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"assets/background/back.png"
	.text
	.align 2
	.p2align 4
	.globl	_ZN10backgroundC2EPN3wze6engineE
	.type	_ZN10backgroundC2EPN3wze6engineE, @function
_ZN10backgroundC2EPN3wze6engineE:
.LFB2232:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	%rsi, (%rdi)
	leaq	568(%rsi), %rdi
	leaq	.LC0(%rip), %rsi
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	pxor	%xmm1, %xmm1
	movl	$720, %ecx
	xorl	%esi, %esi
	movq	%rax, 24(%rbx)
	movq	(%rbx), %rax
	movl	$1280, %edx
	movapd	%xmm1, %xmm0
	movsd	.LC1(%rip), %xmm2
	leaq	528(%rax), %rdi
	call	_ZN3wze6engine6actors3NewEyddttd@PLT
	movq	%rax, 8(%rbx)
	movq	%rax, %rsi
	movq	(%rbx), %rax
	leaq	528(%rax), %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	movq	24(%rbx), %rsi
	leaq	40(%rax), %rdi
	call	_ZN3wze6engine6actors5actor8textures3NewEy@PLT
	movq	(%rbx), %rdi
	movq	8(%rbx), %rsi
	movq	%rax, 16(%rbx)
	addq	$528, %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	movb	$1, 168(%rax)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2232:
	.size	_ZN10backgroundC2EPN3wze6engineE, .-_ZN10backgroundC2EPN3wze6engineE
	.globl	_ZN10backgroundC1EPN3wze6engineE
	.set	_ZN10backgroundC1EPN3wze6engineE,_ZN10backgroundC2EPN3wze6engineE
	.align 2
	.p2align 4
	.globl	_ZN10backgroundD2Ev
	.type	_ZN10backgroundD2Ev, @function
_ZN10backgroundD2Ev:
.LFB2235:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2235
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	(%rdi), %rax
	movq	%rdi, %rbx
	movq	24(%rdi), %rsi
	leaq	568(%rax), %rdi
	call	_ZN3wze6engine6assets13UnloadTextureEy@PLT
	movq	(%rbx), %rdi
	movq	8(%rbx), %rsi
	addq	$528, %rdi
	call	_ZN3wze6engine6actors6DeleteEy@PLT
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2235:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2235:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2235-.LLSDACSB2235
.LLSDACSB2235:
.LLSDACSE2235:
	.text
	.size	_ZN10backgroundD2Ev, .-_ZN10backgroundD2Ev
	.globl	_ZN10backgroundD1Ev
	.set	_ZN10backgroundD1Ev,_ZN10backgroundD2Ev
	.section	.rodata.cst8,"aM",@progbits,8
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
