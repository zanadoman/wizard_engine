	.file	"game.cpp"
	.text
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB0:
	.text
.LHOTB0:
	.align 2
	.p2align 4
	.globl	_ZN4gameC2EPN3wze6engineE
	.type	_ZN4gameC2EPN3wze6engineE, @function
_ZN4gameC2EPN3wze6engineE:
.LFB8150:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8150
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
	leaq	8(%rdi), %rdi
	movq	%rsi, -8(%rdi)
.LEHB0:
	call	_ZN6assetsC1EPN3wze6engineE@PLT
.LEHE0:
	movl	$80, %edi
	movl	$0, 128(%rbx)
.LEHB1:
	call	_Znwm@PLT
.LEHE1:
	movq	(%rbx), %rsi
	movq	%rbx, %rdx
	movq	%rax, %rdi
	movq	%rax, %rbp
.LEHB2:
	call	_ZN4menuC1EPN3wze6engineEP4game@PLT
.LEHE2:
	movq	%rbp, 136(%rbx)
	movq	$0, 144(%rbx)
	movq	$0, 152(%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L4:
	.cfi_restore_state
	movq	%rax, %r12
	jmp	.L3
.L5:
	movq	%rax, %r12
	jmp	.L2
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8150:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8150-.LLSDACSB8150
.LLSDACSB8150:
	.uleb128 .LEHB0-.LFB8150
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8150
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L4-.LFB8150
	.uleb128 0
	.uleb128 .LEHB2-.LFB8150
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L5-.LFB8150
	.uleb128 0
.LLSDACSE8150:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8150
	.type	_ZN4gameC2EPN3wze6engineE.cold, @function
_ZN4gameC2EPN3wze6engineE.cold:
.LFSB8150:
.L2:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	movl	$80, %esi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
.L3:
	movq	112(%rbx), %rdi
	call	free@PLT
	movq	96(%rbx), %rdi
	call	free@PLT
	movq	72(%rbx), %rdi
	call	free@PLT
	movq	56(%rbx), %rdi
	call	free@PLT
	movq	40(%rbx), %rdi
	call	free@PLT
	movq	%r12, %rdi
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
	.cfi_endproc
.LFE8150:
	.section	.gcc_except_table
.LLSDAC8150:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8150-.LLSDACSBC8150
.LLSDACSBC8150:
	.uleb128 .LEHB3-.LCOLDB0
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSEC8150:
	.section	.text.unlikely
	.text
	.size	_ZN4gameC2EPN3wze6engineE, .-_ZN4gameC2EPN3wze6engineE
	.section	.text.unlikely
	.size	_ZN4gameC2EPN3wze6engineE.cold, .-_ZN4gameC2EPN3wze6engineE.cold
.LCOLDE0:
	.text
.LHOTE0:
	.globl	_ZN4gameC1EPN3wze6engineE
	.set	_ZN4gameC1EPN3wze6engineE,_ZN4gameC2EPN3wze6engineE
	.align 2
	.p2align 4
	.globl	_ZN4gameD2Ev
	.type	_ZN4gameD2Ev, @function
_ZN4gameD2Ev:
.LFB8153:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	136(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L10
	movl	$80, %esi
	call	_ZdlPvm@PLT
.L10:
	movq	144(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L11
	movl	$32, %esi
	call	_ZdlPvm@PLT
.L11:
	movq	152(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L12
	movl	$32, %esi
	call	_ZdlPvm@PLT
.L12:
	movq	112(%rbx), %rdi
	call	free@PLT
	movq	96(%rbx), %rdi
	call	free@PLT
	movq	72(%rbx), %rdi
	call	free@PLT
	movq	56(%rbx), %rdi
	call	free@PLT
	movq	40(%rbx), %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT
	.cfi_endproc
.LFE8153:
	.size	_ZN4gameD2Ev, .-_ZN4gameD2Ev
	.globl	_ZN4gameD1Ev
	.set	_ZN4gameD1Ev,_ZN4gameD2Ev
	.section	.text.unlikely
	.align 2
.LCOLDB1:
	.text
.LHOTB1:
	.align 2
	.p2align 4
	.globl	_ZN4game12SwitchScenesE5scene
	.type	_ZN4game12SwitchScenesE5scene, @function
_ZN4game12SwitchScenesE5scene:
.LFB8156:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8156
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	%esi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	128(%rdi), %eax
	movq	%rdi, %rbx
	cmpl	%esi, %eax
	je	.L24
	cmpl	$1, %eax
	je	.L25
	cmpl	$2, %eax
	je	.L26
	testl	%eax, %eax
	je	.L50
.L27:
	movq	(%rbx), %rax
	xorl	%esi, %esi
	xorl	%edx, %edx
	leaq	240(%rax), %rdi
.LEHB4:
	call	_ZN3wze6engine6actors5PurgeESt16initializer_listIyE@PLT
	cmpl	$1, %ebp
	je	.L31
	cmpl	$2, %ebp
	je	.L32
	testl	%ebp, %ebp
	jne	.L24
	movl	$80, %edi
	call	_Znwm@PLT
.LEHE4:
	movq	(%rbx), %rsi
	movq	%rbx, %rdx
	movq	%rax, %rdi
	movq	%rax, %r12
.LEHB5:
	call	_ZN4menuC1EPN3wze6engineEP4game@PLT
.LEHE5:
	movq	%r12, 136(%rbx)
.L24:
	movl	%ebp, 128(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L50:
	.cfi_restore_state
	movq	136(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L28
	movl	$80, %esi
	call	_ZdlPvm@PLT
.L28:
	movq	$0, 136(%rbx)
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L25:
	movq	144(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L29
	movl	$32, %esi
	call	_ZdlPvm@PLT
.L29:
	movq	$0, 144(%rbx)
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L26:
	movq	152(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L30
	movl	$32, %esi
	call	_ZdlPvm@PLT
.L30:
	movq	$0, 152(%rbx)
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L32:
	movl	$32, %edi
.LEHB6:
	call	_Znwm@PLT
.LEHE6:
	movq	(%rbx), %rsi
	movq	%rbx, %rdx
	movq	%rax, %rdi
	movq	%rax, %r12
.LEHB7:
	call	_ZN8infiniteC1EPN3wze6engineEP4game@PLT
.LEHE7:
	movq	%r12, 152(%rbx)
	xorl	%eax, %eax
	movl	%ebp, 128(%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L31:
	.cfi_restore_state
	movl	$32, %edi
.LEHB8:
	call	_Znwm@PLT
.LEHE8:
	movq	(%rbx), %rsi
	movq	%rbx, %rdx
	movq	%rax, %rdi
	movq	%rax, %r12
.LEHB9:
	call	_ZN6normalC1EPN3wze6engineEP4game@PLT
.LEHE9:
	movq	%r12, 144(%rbx)
	xorl	%eax, %eax
	movl	%ebp, 128(%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L36:
	.cfi_restore_state
	movq	%rax, %rbx
	jmp	.L33
.L37:
	movq	%rax, %rbx
	jmp	.L34
.L38:
	movq	%rax, %rbx
	jmp	.L35
	.section	.gcc_except_table
.LLSDA8156:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8156-.LLSDACSB8156
.LLSDACSB8156:
	.uleb128 .LEHB4-.LFB8156
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB8156
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L36-.LFB8156
	.uleb128 0
	.uleb128 .LEHB6-.LFB8156
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB8156
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L38-.LFB8156
	.uleb128 0
	.uleb128 .LEHB8-.LFB8156
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB8156
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L37-.LFB8156
	.uleb128 0
.LLSDACSE8156:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8156
	.type	_ZN4game12SwitchScenesE5scene.cold, @function
_ZN4game12SwitchScenesE5scene.cold:
.LFSB8156:
.L33:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	movq	%r12, %rdi
	movl	$80, %esi
	call	_ZdlPvm@PLT
	movq	%rbx, %rdi
.LEHB10:
	call	_Unwind_Resume@PLT
.L34:
	movq	%r12, %rdi
	movl	$32, %esi
	call	_ZdlPvm@PLT
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.L35:
	movq	%r12, %rdi
	movl	$32, %esi
	call	_ZdlPvm@PLT
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE10:
	.cfi_endproc
.LFE8156:
	.section	.gcc_except_table
.LLSDAC8156:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8156-.LLSDACSBC8156
.LLSDACSBC8156:
	.uleb128 .LEHB10-.LCOLDB1
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSEC8156:
	.section	.text.unlikely
	.text
	.size	_ZN4game12SwitchScenesE5scene, .-_ZN4game12SwitchScenesE5scene
	.section	.text.unlikely
	.size	_ZN4game12SwitchScenesE5scene.cold, .-_ZN4game12SwitchScenesE5scene.cold
.LCOLDE1:
	.text
.LHOTE1:
	.align 2
	.p2align 4
	.globl	_ZN4game6UpdateEv
	.type	_ZN4game6UpdateEv, @function
_ZN4game6UpdateEv:
.LFB8155:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	128(%rdi), %eax
	movq	%rdi, %rbx
	cmpl	$1, %eax
	je	.L52
	cmpl	$2, %eax
	je	.L53
	testl	%eax, %eax
	jne	.L54
	movq	136(%rdi), %rdi
	call	_ZN4menu6UpdateEv@PLT
	movq	%rbx, %rdi
	movl	%eax, %esi
	call	_ZN4game12SwitchScenesE5scene
.L54:
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L53:
	.cfi_restore_state
	movq	152(%rdi), %rdi
	call	_ZN8infinite6UpdateEv@PLT
	movq	%rbx, %rdi
	movl	%eax, %esi
	call	_ZN4game12SwitchScenesE5scene
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L52:
	.cfi_restore_state
	movq	144(%rdi), %rdi
	call	_ZN6normal6UpdateEv@PLT
	movq	%rbx, %rdi
	movl	%eax, %esi
	call	_ZN4game12SwitchScenesE5scene
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8155:
	.size	_ZN4game6UpdateEv, .-_ZN4game6UpdateEv
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
