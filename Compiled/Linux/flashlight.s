	.file	"flashlight.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"assets/flashlight.png"
	.text
	.align 2
	.p2align 4
	.globl	_ZN10flashlightC2EPN3wze6engineE
	.type	_ZN10flashlightC2EPN3wze6engineE, @function
_ZN10flashlightC2EPN3wze6engineE:
.LFB8145:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	%rsi, (%rdi)
	leaq	600(%rsi), %rdi
	leaq	.LC0(%rip), %rsi
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	pxor	%xmm2, %xmm2
	movl	$3000, %ecx
	movl	$3000, %edx
	movq	%rax, 32(%rbx)
	movq	(%rbx), %rax
	movapd	%xmm2, %xmm0
	movapd	%xmm2, %xmm1
	movl	$3, %esi
	leaq	568(%rax), %rdi
	call	_ZN3wze6engine6actors3NewEyddttd@PLT
	movq	%rax, 16(%rbx)
	movq	%rax, %rsi
	movq	(%rbx), %rax
	leaq	568(%rax), %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	movq	32(%rbx), %rsi
	leaq	40(%rax), %rdi
	call	_ZN3wze6engine6actors5actor8textures3NewEy@PLT
	movq	16(%rbx), %rsi
	movq	%rax, 24(%rbx)
	movq	(%rbx), %rax
	leaq	568(%rax), %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	movq	(%rbx), %rdi
	movq	%rax, %rbp
	call	_ZN3wze6engine6window8GetWidthEv@PLT
	pxor	%xmm0, %xmm0
	movq	%rbp, %rdi
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	.LC2(%rip), %xmm0
	call	_ZN3wze6engine6actors5actor4SetXEd@PLT
	movq	(%rbx), %rax
	movq	16(%rbx), %rsi
	leaq	568(%rax), %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	movq	(%rbx), %rdi
	movq	%rax, %rbp
	call	_ZN3wze6engine6window9GetHeightEv@PLT
	pxor	%xmm0, %xmm0
	movq	%rbp, %rdi
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	.LC2(%rip), %xmm0
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZN3wze6engine6actors5actor4SetYEd@PLT
	.cfi_endproc
.LFE8145:
	.size	_ZN10flashlightC2EPN3wze6engineE, .-_ZN10flashlightC2EPN3wze6engineE
	.globl	_ZN10flashlightC1EPN3wze6engineE
	.set	_ZN10flashlightC1EPN3wze6engineE,_ZN10flashlightC2EPN3wze6engineE
	.align 2
	.p2align 4
	.globl	_ZN10flashlightD2Ev
	.type	_ZN10flashlightD2Ev, @function
_ZN10flashlightD2Ev:
.LFB8148:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8148
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	(%rdi), %rax
	movq	%rdi, %rbx
	movq	32(%rdi), %rsi
	leaq	600(%rax), %rdi
	call	_ZN3wze6engine6assets13UnloadTextureEy@PLT
	movq	(%rbx), %rdi
	movq	16(%rbx), %rsi
	addq	$568, %rdi
	call	_ZN3wze6engine6actors6DeleteEy@PLT
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8148:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8148:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8148-.LLSDACSB8148
.LLSDACSB8148:
.LLSDACSE8148:
	.text
	.size	_ZN10flashlightD2Ev, .-_ZN10flashlightD2Ev
	.globl	_ZN10flashlightD1Ev
	.set	_ZN10flashlightD1Ev,_ZN10flashlightD2Ev
	.align 2
	.p2align 4
	.globl	_ZN10flashlight6UpdateEv
	.type	_ZN10flashlight6UpdateEv, @function
_ZN10flashlight6UpdateEv:
.LFB8150:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	subq	$32, %rsp
	.cfi_def_cfa_offset 64
	movq	(%rdi), %rax
	movq	16(%rdi), %rsi
	leaq	568(%rax), %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	movq	(%rbx), %rbp
	pxor	%xmm0, %xmm0
	movq	%rax, %r12
	leaq	512(%rbp), %rdi
	call	_ZN3wze6engine5mouse4GetYEd@PLT
	movq	(%rbx), %rax
	movsd	%xmm0, 24(%rsp)
	pxor	%xmm0, %xmm0
	leaq	512(%rax), %rdi
	call	_ZN3wze6engine5mouse4GetXEd@PLT
	movq	(%rbx), %rax
	movq	16(%rbx), %rsi
	movsd	%xmm0, 16(%rsp)
	leaq	568(%rax), %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	movq	(%rbx), %rdi
	movq	16(%rbx), %rsi
	movsd	%xmm0, 8(%rsp)
	addq	$568, %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movsd	24(%rsp), %xmm3
	movsd	16(%rsp), %xmm2
	leaq	592(%rbp), %rdi
	movsd	8(%rsp), %xmm1
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movq	%r12, %rdi
	call	_ZN3wze6engine6actors5actor8SetAngleEd@PLT
	addq	$32, %rsp
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8150:
	.size	_ZN10flashlight6UpdateEv, .-_ZN10flashlight6UpdateEv
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC2:
	.long	0
	.long	1071644672
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
