	.file	"eagle.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN5eagleC2EPN3wze6engineEP4gamedddd
	.type	_ZN5eagleC2EPN3wze6engineEP4gamedddd, @function
_ZN5eagleC2EPN3wze6engineEP4gamedddd:
.LFB8147:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movapd	%xmm2, %xmm4
	movl	$105, %r8d
	movl	$105, %ecx
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	unpcklpd	%xmm3, %xmm4
	addsd	%xmm2, %xmm3
	movq	%rdi, %rbx
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movq	%rsi, (%rdi)
	mulsd	.LC0(%rip), %xmm3
	movq	%rdx, 8(%rdi)
	leaq	240(%rsi), %rdi
	movq	%rbx, %rsi
	movl	$2, %edx
	movaps	%xmm4, (%rsp)
	movapd	%xmm3, %xmm0
	call	_ZN3wze6engine6actors3NewEPvyddttd@PLT
	movl	$2, %esi
	movq	%rax, 16(%rbx)
	leaq	136(%rax), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes3NewEy@PLT
	movl	$125, %esi
	movq	%rax, 24(%rbx)
	movq	8(%rbx), %rax
	leaq	88(%rax), %rdx
	movq	16(%rbx), %rax
	leaq	72(%rax), %rdi
	call	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE@PLT
	movl	$125, %esi
	movq	%rax, 32(%rbx)
	movq	8(%rbx), %rax
	leaq	104(%rax), %rdx
	movq	16(%rbx), %rax
	leaq	72(%rax), %rdi
	call	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE@PLT
	movapd	(%rsp), %xmm4
	movq	16(%rbx), %rdi
	movq	%rax, 40(%rbx)
	movq	.LC1(%rip), %rax
	movups	%xmm4, 48(%rbx)
	movq	24(%rbx), %rbp
	movq	%rax, 64(%rbx)
	call	_ZN3wze6engine6actors5actor8GetWidthEv@PLT
	pxor	%xmm0, %xmm0
	movq	%rbp, %rdi
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	.LC2(%rip), %xmm0
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
	addsd	.LC2(%rip), %xmm0
	cvttsd2sil	%xmm0, %esi
	movzwl	%si, %esi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt@PLT
	movq	32(%rbx), %rax
	movl	.LC3(%rip), %edx
	movb	$1, 32(%rax)
	movl	%edx, 16(%rax)
	movq	40(%rbx), %rax
	movl	%edx, 16(%rax)
	movb	$0, 37(%rax)
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8147:
	.size	_ZN5eagleC2EPN3wze6engineEP4gamedddd, .-_ZN5eagleC2EPN3wze6engineEP4gamedddd
	.globl	_ZN5eagleC1EPN3wze6engineEP4gamedddd
	.set	_ZN5eagleC1EPN3wze6engineEP4gamedddd,_ZN5eagleC2EPN3wze6engineEP4gamedddd
	.align 2
	.p2align 4
	.globl	_ZN5eagleD2Ev
	.type	_ZN5eagleD2Ev, @function
_ZN5eagleD2Ev:
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
	.size	_ZN5eagleD2Ev, .-_ZN5eagleD2Ev
	.globl	_ZN5eagleD1Ev
	.set	_ZN5eagleD1Ev,_ZN5eagleD2Ev
	.align 2
	.p2align 4
	.globl	_ZN5eagle6UpdateEv
	.type	_ZN5eagle6UpdateEv, @function
_ZN5eagle6UpdateEv:
.LFB8152:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movq	16(%rdi), %rdi
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movapd	%xmm0, %xmm1
	movsd	48(%rbx), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L15
	movq	16(%rbx), %rdi
	call	_ZN3wze6engine6actors5actor4SetXEd@PLT
	movq	.LC1(%rip), %rax
	movq	%rax, 64(%rbx)
	movq	32(%rbx), %rax
	movb	$1, 32(%rax)
.L9:
	movq	16(%rbx), %rbp
	movq	%rbp, %rdi
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movsd	64(%rbx), %xmm2
	movq	(%rbx), %rdi
	movsd	%xmm0, 8(%rsp)
	movsd	.LC5(%rip), %xmm0
	addq	$400, %rdi
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, (%rsp)
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm0, %xmm0
	movq	%rbp, %rdi
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	(%rsp), %xmm0
	addsd	8(%rsp), %xmm0
	call	_ZN3wze6engine6actors5actor4SetXEd@PLT
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L15:
	.cfi_restore_state
	movsd	56(%rbx), %xmm4
	movq	16(%rbx), %rdi
	movsd	%xmm4, (%rsp)
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	comisd	(%rsp), %xmm0
	jbe	.L9
	movsd	56(%rbx), %xmm0
	movq	16(%rbx), %rdi
	call	_ZN3wze6engine6actors5actor4SetXEd@PLT
	movq	.LC4(%rip), %rax
	movq	%rax, 64(%rbx)
	movq	32(%rbx), %rax
	movb	$0, 32(%rax)
	jmp	.L9
	.cfi_endproc
.LFE8152:
	.size	_ZN5eagle6UpdateEv, .-_ZN5eagle6UpdateEv
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1071644672
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.align 8
.LC2:
	.long	-350469331
	.long	1059731170
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC3:
	.value	125
	.value	125
	.section	.rodata.cst8
	.align 8
.LC4:
	.long	0
	.long	-1074790400
	.align 8
.LC5:
	.long	0
	.long	1070596096
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
