	.file	"platform.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN8platformC2EPN3wze6engineEP4gameddttdh
	.type	_ZN8platformC2EPN3wze6engineEP4gameddttdh, @function
_ZN8platformC2EPN3wze6engineEP4gameddttdh:
.LFB8147:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movzwl	%cx, %ecx
	movzwl	%r8w, %r8d
	movl	%r9d, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	addq	$240, %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	%rsi, (%rbx)
	movq	%rbx, %rsi
	movq	%rdx, 8(%rbx)
	movl	$3, %edx
	call	_ZN3wze6engine6actors3NewEPvyddttd@PLT
	movl	$3, %esi
	movq	%rax, 16(%rbx)
	leaq	136(%rax), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes3NewEy@PLT
	movq	%rax, 24(%rbx)
	movq	8(%rbx), %rax
	movzwl	26(%rax), %esi
	movq	16(%rbx), %rax
	leaq	40(%rax), %rdi
	call	_ZN3wze6engine6actors5actor12textureboxes3NewEy@PLT
	movq	16(%rbx), %rdi
	movsd	.LC0(%rip), %xmm0
	movq	%rax, 32(%rbx)
	call	_ZN3wze6engine6actors5actor8SetDepthEd@PLT
	movq	16(%rbx), %rdi
	movzbl	%bpl, %esi
	call	_ZN3wze6engine6actors5actor17SetCollisionLayerEh@PLT
	movq	16(%rbx), %rdi
	movq	24(%rbx), %rbp
	call	_ZN3wze6engine6actors5actor8GetWidthEv@PLT
	pxor	%xmm0, %xmm0
	movq	%rbp, %rdi
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	.LC1(%rip), %xmm0
	cvttsd2sil	%xmm0, %esi
	movzwl	%si, %esi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt@PLT
	movq	16(%rbx), %rdi
	movq	24(%rbx), %rbp
	call	_ZN3wze6engine6actors5actor9GetHeightEv@PLT
	pxor	%xmm0, %xmm0
	movq	%rbp, %rdi
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	.LC1(%rip), %xmm0
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	cvttsd2sil	%xmm0, %esi
	movzwl	%si, %esi
	jmp	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt@PLT
	.cfi_endproc
.LFE8147:
	.size	_ZN8platformC2EPN3wze6engineEP4gameddttdh, .-_ZN8platformC2EPN3wze6engineEP4gameddttdh
	.globl	_ZN8platformC1EPN3wze6engineEP4gameddttdh
	.set	_ZN8platformC1EPN3wze6engineEP4gameddttdh,_ZN8platformC2EPN3wze6engineEP4gameddttdh
	.align 2
	.p2align 4
	.globl	_ZN8platformD2Ev
	.type	_ZN8platformD2Ev, @function
_ZN8platformD2Ev:
.LFB8150:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8150
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	(%rdi), %rax
	movq	16(%rdi), %rdi
	leaq	240(%rax), %rbx
	call	_ZN3wze6engine6actors5actor5GetIDEv@PLT
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	_ZN3wze6engine6actors6DeleteEy@PLT
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8150:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8150:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8150-.LLSDACSB8150
.LLSDACSB8150:
.LLSDACSE8150:
	.text
	.size	_ZN8platformD2Ev, .-_ZN8platformD2Ev
	.globl	_ZN8platformD1Ev
	.set	_ZN8platformD1Ev,_ZN8platformD2Ev
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	-1717986918
	.long	1068079513
	.align 8
.LC1:
	.long	-350469331
	.long	1059731170
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
