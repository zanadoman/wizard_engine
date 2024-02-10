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
	movl	$2, %edx
	call	_ZN3wze6engine6actors3NewEPvyddttd@PLT
	movq	8(%rbx), %rdx
	movq	%rax, 16(%rbx)
	leaq	40(%rax), %rdi
	movzwl	26(%rdx), %esi
	call	_ZN3wze6engine6actors5actor8textures3NewEy@PLT
	movl	$2, %esi
	movq	%rax, 32(%rbx)
	movq	16(%rbx), %rax
	leaq	136(%rax), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes3NewEy@PLT
	movq	16(%rbx), %rdi
	movzbl	%bpl, %esi
	movq	%rax, 24(%rbx)
	call	_ZN3wze6engine6actors5actor17SetCollisionLayerEh@PLT
	movq	16(%rbx), %rdi
	movq	24(%rbx), %rbp
	call	_ZN3wze6engine6actors5actor8GetWidthEv@PLT
	pxor	%xmm0, %xmm0
	movq	%rbp, %rdi
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	.LC0(%rip), %xmm0
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
	addsd	.LC0(%rip), %xmm0
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
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	-350469331
	.long	1059731170
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
