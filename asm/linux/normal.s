	.file	"normal.cpp"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC13:
	.string	"neo::array=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB19:
	.text
.LHOTB19:
	.align 2
	.p2align 4
	.globl	_ZN6normalC2EPN3wze6engineEP4game
	.type	_ZN6normalC2EPN3wze6engineEP4game, @function
_ZN6normalC2EPN3wze6engineEP4game:
.LFB8157:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8157
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	%rdx, %r14
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rsi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	leaq	16(%rdi), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	leaq	96(%rbx), %r12
	subq	$48, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	movq	%rbp, %rdi
.LEHB0:
	call	_ZN5pauseC1EPN3wze6engineEP4game@PLT
.LEHE0:
	movq	%r14, %rdx
	movq	%r13, %rsi
	movq	%r12, %rdi
.LEHB1:
	call	_ZN5statsC1EPN3wze6engineEP4game@PLT
.LEHE1:
	movq	$0, 160(%rbx)
	movl	$120, %edi
	movq	$0, 168(%rbx)
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	movq	%rax, %r13
	movq	8(%rbx), %rdx
	movq	(%rbx), %rsi
	pxor	%xmm0, %xmm0
	movq	.LC0(%rip), %rax
	movsd	.LC1(%rip), %xmm1
	movq	%r13, %rdi
	movq	%rax, %xmm3
	movq	%rax, %xmm2
.LEHB3:
	call	_ZN6playerC1EPN3wze6engineEP4gamedddd@PLT
.LEHE3:
	movq	%r13, 144(%rbx)
	movl	$112, %edi
.LEHB4:
	call	_Znwm@PLT
.LEHE4:
	movq	%rax, %r13
	movq	8(%rbx), %rdx
	movq	144(%rbx), %rax
	movq	(%rbx), %rsi
	movsd	.LC3(%rip), %xmm3
	movq	%r13, %rdi
	movq	16(%rax), %rcx
	movq	.LC0(%rip), %rax
	movsd	.LC4(%rip), %xmm2
	movsd	.LC5(%rip), %xmm0
	movq	%rax, %xmm1
.LEHB5:
	call	_ZN5eagleC1EPN3wze6engineEP4gameddPNS1_6actors5actorEdd@PLT
.LEHE5:
	movq	%r13, 152(%rbx)
	movl	$40, %edi
.LEHB6:
	call	_Znwm@PLT
.LEHE6:
	movq	%rax, %r13
	movq	8(%rbx), %rdx
	movq	(%rbx), %rsi
	movl	$1, %r9d
	movq	.LC0(%rip), %rax
	movsd	.LC6(%rip), %xmm1
	pxor	%xmm0, %xmm0
	movq	%r13, %rdi
	movl	$375, %r8d
	movl	$1500, %ecx
	movq	%rax, %xmm2
.LEHB7:
	call	_ZN8platformC1EPN3wze6engineEP4gameddttdh@PLT
.LEHE7:
	movl	$40, %edi
	movq	%r13, (%rsp)
.LEHB8:
	call	_Znwm@PLT
.LEHE8:
	movq	%rax, %r13
	movq	8(%rbx), %rdx
	movq	(%rbx), %rsi
	movl	$1, %r9d
	movq	.LC0(%rip), %rax
	movsd	.LC7(%rip), %xmm1
	pxor	%xmm0, %xmm0
	movq	%r13, %rdi
	movl	$50, %r8d
	movl	$300, %ecx
	movq	%rax, %xmm2
.LEHB9:
	call	_ZN8platformC1EPN3wze6engineEP4gameddttdh@PLT
.LEHE9:
	movl	$40, %edi
	movq	%r13, 8(%rsp)
.LEHB10:
	call	_Znwm@PLT
.LEHE10:
	movq	%rax, %r13
	movq	8(%rbx), %rdx
	movq	(%rbx), %rsi
	movl	$1, %r9d
	movq	.LC0(%rip), %rax
	movl	$50, %r8d
	movl	$200, %ecx
	movsd	.LC8(%rip), %xmm1
	movsd	.LC9(%rip), %xmm0
	movq	%r13, %rdi
	movq	%rax, %xmm2
.LEHB11:
	call	_ZN8platformC1EPN3wze6engineEP4gameddttdh@PLT
.LEHE11:
	movl	$40, %edi
	movq	%r13, 16(%rsp)
.LEHB12:
	call	_Znwm@PLT
.LEHE12:
	movq	%rax, %r13
	movq	8(%rbx), %rdx
	movq	(%rbx), %rsi
	movl	$1, %r9d
	movq	.LC0(%rip), %rax
	movsd	.LC10(%rip), %xmm1
	pxor	%xmm0, %xmm0
	movq	%r13, %rdi
	movl	$50, %r8d
	movl	$200, %ecx
	movq	%rax, %xmm2
.LEHB13:
	call	_ZN8platformC1EPN3wze6engineEP4gameddttdh@PLT
.LEHE13:
	movl	$40, %edi
	movq	%r13, 24(%rsp)
.LEHB14:
	call	_Znwm@PLT
.LEHE14:
	movq	%rax, %r13
	movq	8(%rbx), %rdx
	movq	(%rbx), %rsi
	movl	$1, %r9d
	movq	.LC0(%rip), %rax
	movl	$50, %r8d
	movl	$200, %ecx
	movsd	.LC11(%rip), %xmm1
	movsd	.LC12(%rip), %xmm0
	movq	%r13, %rdi
	movq	%rax, %xmm2
.LEHB15:
	call	_ZN8platformC1EPN3wze6engineEP4gameddttdh@PLT
.LEHE15:
	movq	160(%rbx), %rdx
	movq	%r13, 32(%rsp)
	cmpq	$5, %rdx
	jne	.L34
	movq	168(%rbx), %rsi
.L4:
	salq	$3, %rdx
	movq	%rsp, %rdi
.LEHB16:
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movl	$32, %edi
	call	_Znwm@PLT
.LEHE16:
	movq	%rax, %r13
	movq	8(%rbx), %rdx
	movq	(%rbx), %rsi
	movl	$1, %r9d
	movq	.LC0(%rip), %rax
	movsd	.LC14(%rip), %xmm0
	pxor	%xmm1, %xmm1
	movq	%r13, %rdi
	movl	$2000, %r8d
	movl	$10, %ecx
	movq	%rax, %xmm2
.LEHB17:
	call	_ZN6borderC1EPN3wze6engineEP4gameddttdh@PLT
.LEHE17:
	movq	%r13, 176(%rbx)
	movl	$32, %edi
.LEHB18:
	call	_Znwm@PLT
.LEHE18:
	movq	%rax, %r13
	movq	8(%rbx), %rdx
	movq	(%rbx), %rsi
	movl	$1, %r9d
	movq	.LC0(%rip), %rax
	movsd	.LC15(%rip), %xmm0
	pxor	%xmm1, %xmm1
	movq	%r13, %rdi
	movl	$2000, %r8d
	movl	$10, %ecx
	movq	%rax, %xmm2
.LEHB19:
	call	_ZN6borderC1EPN3wze6engineEP4gameddttdh@PLT
.LEHE19:
	movq	%r13, 184(%rbx)
	movl	$32, %edi
.LEHB20:
	call	_Znwm@PLT
.LEHE20:
	movq	%rax, %r13
	movq	8(%rbx), %rdx
	movq	(%rbx), %rsi
	movl	$1, %r9d
	movq	.LC0(%rip), %rax
	movsd	.LC16(%rip), %xmm1
	pxor	%xmm0, %xmm0
	movq	%r13, %rdi
	movl	$10, %r8d
	movl	$1520, %ecx
	movq	%rax, %xmm2
.LEHB21:
	call	_ZN6borderC1EPN3wze6engineEP4gameddttdh@PLT
.LEHE21:
	movq	(%rbx), %rax
	movq	%r13, 192(%rbx)
	leaq	80(%rax), %r13
	movq	144(%rbx), %rax
	movq	16(%rax), %rdi
.LEHB22:
	call	_ZN3wze6engine6actors5actor5GetIDEv@PLT
	movq	%rax, %rsi
	movq	%r13, %rdi
	call	_ZN3wze6engine6camera4BindEy@PLT
	movq	(%rbx), %rax
	movsd	.LC17(%rip), %xmm0
	leaq	80(%rax), %rdi
	call	_ZN3wze6engine6camera10SetOffsetYEd@PLT
	movq	(%rbx), %rax
	pxor	%xmm1, %xmm1
	movl	$16200, %r8d
	xorl	%edx, %edx
	movsd	.LC18(%rip), %xmm2
	movl	$28800, %ecx
	movapd	%xmm1, %xmm0
	xorl	%esi, %esi
	leaq	256(%rax), %rdi
	call	_ZN3wze6engine6actors3NewEPvyddttd@PLT
	movq	8(%rbx), %rdx
	movq	%rax, 200(%rbx)
	leaq	40(%rax), %rdi
	movzwl	18(%rdx), %esi
	call	_ZN3wze6engine6actors5actor12textureboxes3NewEy@PLT
	movq	%rax, 208(%rbx)
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L35
	addq	$48, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L34:
	.cfi_restore_state
	movq	$5, 160(%rbx)
	movq	168(%rbx), %rdi
	movl	$40, %esi
	call	realloc@PLT
	movq	%rax, 168(%rbx)
	movq	%rax, %rsi
	testq	%rax, %rax
	je	.L3
	movq	160(%rbx), %rdx
	jmp	.L4
.L35:
	call	__stack_chk_fail@PLT
.L3:
	movl	$5, %edx
	movl	$8, %esi
	leaq	.LC13(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE22:
	movl	$1, %edi
	call	exit@PLT
.L29:
	movq	%rax, %r14
	jmp	.L15
.L19:
	movq	%rax, %r13
	jmp	.L16
.L21:
	movq	%rax, %r14
	jmp	.L5
.L27:
	movq	%rax, %r14
	jmp	.L15
.L26:
	movq	%rax, %r14
	jmp	.L12
.L23:
	movq	%rax, %r14
	jmp	.L12
.L25:
	movq	%rax, %r14
	jmp	.L12
.L24:
	movq	%rax, %r14
	jmp	.L12
.L30:
	movq	%rax, %r14
	jmp	.L12
.L28:
	movq	%rax, %r14
	jmp	.L15
.L22:
	movq	%rax, %r14
	jmp	.L7
.L20:
	movq	%rax, %r14
	jmp	.L6
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8157:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8157-.LLSDACSB8157
.LLSDACSB8157:
	.uleb128 .LEHB0-.LFB8157
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8157
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L19-.LFB8157
	.uleb128 0
	.uleb128 .LEHB2-.LFB8157
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L20-.LFB8157
	.uleb128 0
	.uleb128 .LEHB3-.LFB8157
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L21-.LFB8157
	.uleb128 0
	.uleb128 .LEHB4-.LFB8157
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L20-.LFB8157
	.uleb128 0
	.uleb128 .LEHB5-.LFB8157
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L22-.LFB8157
	.uleb128 0
	.uleb128 .LEHB6-.LFB8157
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L20-.LFB8157
	.uleb128 0
	.uleb128 .LEHB7-.LFB8157
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L23-.LFB8157
	.uleb128 0
	.uleb128 .LEHB8-.LFB8157
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L20-.LFB8157
	.uleb128 0
	.uleb128 .LEHB9-.LFB8157
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L24-.LFB8157
	.uleb128 0
	.uleb128 .LEHB10-.LFB8157
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L20-.LFB8157
	.uleb128 0
	.uleb128 .LEHB11-.LFB8157
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L25-.LFB8157
	.uleb128 0
	.uleb128 .LEHB12-.LFB8157
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L20-.LFB8157
	.uleb128 0
	.uleb128 .LEHB13-.LFB8157
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L26-.LFB8157
	.uleb128 0
	.uleb128 .LEHB14-.LFB8157
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L20-.LFB8157
	.uleb128 0
	.uleb128 .LEHB15-.LFB8157
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L30-.LFB8157
	.uleb128 0
	.uleb128 .LEHB16-.LFB8157
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L20-.LFB8157
	.uleb128 0
	.uleb128 .LEHB17-.LFB8157
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L27-.LFB8157
	.uleb128 0
	.uleb128 .LEHB18-.LFB8157
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L20-.LFB8157
	.uleb128 0
	.uleb128 .LEHB19-.LFB8157
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L28-.LFB8157
	.uleb128 0
	.uleb128 .LEHB20-.LFB8157
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L20-.LFB8157
	.uleb128 0
	.uleb128 .LEHB21-.LFB8157
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L29-.LFB8157
	.uleb128 0
	.uleb128 .LEHB22-.LFB8157
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L20-.LFB8157
	.uleb128 0
.LLSDACSE8157:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8157
	.type	_ZN6normalC2EPN3wze6engineEP4game.cold, @function
_ZN6normalC2EPN3wze6engineEP4game.cold:
.LFSB8157:
.L15:
	.cfi_def_cfa_offset 96
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	movl	$32, %esi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
.L6:
	movq	168(%rbx), %rdi
	movq	%r14, %r13
	call	free@PLT
	movq	%r12, %rdi
	call	_ZN5statsD1Ev@PLT
.L16:
	movq	%rbp, %rdi
	call	_ZN5pauseD1Ev@PLT
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L36
	movq	%r13, %rdi
.LEHB23:
	call	_Unwind_Resume@PLT
.LEHE23:
.L5:
	movl	$120, %esi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
	jmp	.L6
.L36:
	call	__stack_chk_fail@PLT
.L12:
	movl	$40, %esi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
	jmp	.L6
.L7:
	movl	$112, %esi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
	jmp	.L6
	.cfi_endproc
.LFE8157:
	.section	.gcc_except_table
.LLSDAC8157:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8157-.LLSDACSBC8157
.LLSDACSBC8157:
	.uleb128 .LEHB23-.LCOLDB19
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
.LLSDACSEC8157:
	.section	.text.unlikely
	.text
	.size	_ZN6normalC2EPN3wze6engineEP4game, .-_ZN6normalC2EPN3wze6engineEP4game
	.section	.text.unlikely
	.size	_ZN6normalC2EPN3wze6engineEP4game.cold, .-_ZN6normalC2EPN3wze6engineEP4game.cold
.LCOLDE19:
	.text
.LHOTE19:
	.globl	_ZN6normalC1EPN3wze6engineEP4game
	.set	_ZN6normalC1EPN3wze6engineEP4game,_ZN6normalC2EPN3wze6engineEP4game
	.align 2
	.p2align 4
	.globl	_ZN6normalD2Ev
	.type	_ZN6normalD2Ev, @function
_ZN6normalD2Ev:
.LFB8160:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	144(%rdi), %rbx
	testq	%rbx, %rbx
	je	.L38
	movq	%rbx, %rdi
	call	_ZN6playerD1Ev@PLT
	movl	$120, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L38:
	movq	152(%r12), %rbx
	testq	%rbx, %rbx
	je	.L39
	movq	%rbx, %rdi
	call	_ZN5eagleD1Ev@PLT
	movl	$112, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L39:
	movq	176(%r12), %rbx
	testq	%rbx, %rbx
	je	.L40
	movq	%rbx, %rdi
	call	_ZN6borderD1Ev@PLT
	movl	$32, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L40:
	movq	184(%r12), %rbx
	testq	%rbx, %rbx
	je	.L41
	movq	%rbx, %rdi
	call	_ZN6borderD1Ev@PLT
	movl	$32, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L41:
	movq	192(%r12), %rbx
	testq	%rbx, %rbx
	je	.L42
	movq	%rbx, %rdi
	call	_ZN6borderD1Ev@PLT
	movl	$32, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L42:
	movq	160(%r12), %rdx
	movq	168(%r12), %rdi
	testq	%rdx, %rdx
	je	.L43
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L46:
	movq	(%rdi,%rax,8), %rbp
	testq	%rbp, %rbp
	je	.L44
	movq	%rbp, %rdi
	addl	$1, %ebx
	call	_ZN8platformD1Ev@PLT
	movq	%rbp, %rdi
	movl	$40, %esi
	call	_ZdlPvm@PLT
	movq	160(%r12), %rdx
	movzbl	%bl, %eax
	movq	168(%r12), %rdi
	cmpq	%rdx, %rax
	jb	.L46
.L43:
	call	free@PLT
	leaq	96(%r12), %rdi
	call	_ZN5statsD1Ev@PLT
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	leaq	16(%r12), %rdi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	_ZN5pauseD1Ev@PLT
	.p2align 4,,10
	.p2align 3
.L44:
	.cfi_restore_state
	addl	$1, %ebx
	movzbl	%bl, %eax
	cmpq	%rdx, %rax
	jb	.L46
	jmp	.L43
	.cfi_endproc
.LFE8160:
	.size	_ZN6normalD2Ev, .-_ZN6normalD2Ev
	.globl	_ZN6normalD1Ev
	.set	_ZN6normalD1Ev,_ZN6normalD2Ev
	.align 2
	.p2align 4
	.globl	_ZN6normal6UpdateEv
	.type	_ZN6normal6UpdateEv, @function
_ZN6normal6UpdateEv:
.LFB8162:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	addq	$96, %rdi
	call	_ZN5stats6UpdateEv@PLT
	leaq	16(%rbx), %rdi
	call	_ZN5pause6UpdateEv@PLT
	cmpl	$2, %eax
	setne	%dl
	movzbl	%dl, %edx
	testl	%eax, %eax
	je	.L71
	movl	%edx, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L71:
	.cfi_restore_state
	movq	144(%rbx), %rdi
	call	_ZN6player6UpdateEv@PLT
	movq	152(%rbx), %rdi
	call	_ZN5eagle6UpdateEv@PLT
	movl	$1, %edx
	popq	%rbx
	.cfi_def_cfa_offset 8
	movl	%edx, %eax
	ret
	.cfi_endproc
.LFE8162:
	.size	_ZN6normal6UpdateEv, .-_ZN6normal6UpdateEv
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC1:
	.long	0
	.long	1078263808
	.align 8
.LC3:
	.long	0
	.long	1082515456
	.align 8
.LC4:
	.long	0
	.long	-1064968192
	.align 8
.LC5:
	.long	0
	.long	1082925056
	.align 8
.LC6:
	.long	0
	.long	-1066962944
	.align 8
.LC7:
	.long	0
	.long	1080315904
	.align 8
.LC8:
	.long	0
	.long	1081466880
	.align 8
.LC9:
	.long	0
	.long	-1066450944
	.align 8
.LC10:
	.long	0
	.long	1082182656
	.align 8
.LC11:
	.long	0
	.long	1082566656
	.align 8
.LC12:
	.long	0
	.long	1081032704
	.align 8
.LC14:
	.long	0
	.long	-1064855552
	.align 8
.LC15:
	.long	0
	.long	1082628096
	.align 8
.LC16:
	.long	0
	.long	1083129856
	.align 8
.LC17:
	.long	0
	.long	1079574528
	.align 8
.LC18:
	.long	-1717986918
	.long	1069128089
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
