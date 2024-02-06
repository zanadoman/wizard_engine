	.file	"crate.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"assets/crate.png"
	.text
	.align 2
	.p2align 4
	.globl	_ZN5crateC2EPN3wze6engineEddtt
	.type	_ZN5crateC2EPN3wze6engineEddtt, @function
_ZN5crateC2EPN3wze6engineEddtt:
.LFB8145:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	%ecx, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	%edx, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movq	%rsi, (%rdi)
	leaq	696(%rsi), %rdi
	leaq	.LC0(%rip), %rsi
	movsd	%xmm0, 8(%rsp)
	movsd	%xmm1, (%rsp)
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	movsd	(%rsp), %xmm1
	movzwl	%r12w, %ecx
	movzwl	%bp, %edx
	movq	%rax, 24(%rbx)
	movq	(%rbx), %rax
	movl	$2, %esi
	movsd	.LC1(%rip), %xmm2
	movsd	8(%rsp), %xmm0
	leaq	632(%rax), %rdi
	call	_ZN3wze6engine6actors3NewEyddttd@PLT
	movq	%rax, 8(%rbx)
	movq	%rax, %rsi
	movq	(%rbx), %rax
	leaq	632(%rax), %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	movq	24(%rbx), %rsi
	leaq	40(%rax), %rdi
	call	_ZN3wze6engine6actors5actor8textures3NewEy@PLT
	movq	8(%rbx), %rsi
	movq	%rax, 16(%rbx)
	movq	(%rbx), %rax
	leaq	632(%rax), %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	movq	8(%rbx), %rsi
	movq	$50, 176(%rax)
	movq	(%rbx), %rax
	leaq	632(%rax), %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	movsd	.LC2(%rip), %xmm0
	movq	%rax, %rdi
	call	_ZN3wze6engine6actors5actor8SetDepthEd@PLT
	movq	(%rbx), %rdi
	movq	8(%rbx), %rsi
	addq	$632, %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	movl	$1, %esi
	popq	%rbx
	.cfi_def_cfa_offset 24
	movq	%rax, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	_ZN3wze6engine6actors5actor17SetCollisionLayerEh@PLT
	.cfi_endproc
.LFE8145:
	.size	_ZN5crateC2EPN3wze6engineEddtt, .-_ZN5crateC2EPN3wze6engineEddtt
	.globl	_ZN5crateC1EPN3wze6engineEddtt
	.set	_ZN5crateC1EPN3wze6engineEddtt,_ZN5crateC2EPN3wze6engineEddtt
	.align 2
	.p2align 4
	.globl	_ZN5crateD2Ev
	.type	_ZN5crateD2Ev, @function
_ZN5crateD2Ev:
.LFB8148:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8148
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	(%rdi), %rax
	movq	%rdi, %rbx
	movq	24(%rdi), %rsi
	leaq	696(%rax), %rdi
	call	_ZN3wze6engine6assets13UnloadTextureEy@PLT
	movq	(%rbx), %rdi
	movq	8(%rbx), %rsi
	addq	$632, %rdi
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
	.size	_ZN5crateD2Ev, .-_ZN5crateD2Ev
	.globl	_ZN5crateD1Ev
	.set	_ZN5crateD1Ev,_ZN5crateD2Ev
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.align 8
.LC2:
	.long	-1717986918
	.long	1068079513
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
