	.file	"normal.cpp"
	.text
	.section	.text$_Z6printfPKcz,"x"
	.linkonce discard
	.p2align 4
	.globl	_Z6printfPKcz
	.def	_Z6printfPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z6printfPKcz
_Z6printfPKcz:
.LFB11:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	leaq	88(%rsp), %rsi
	movq	%rdx, 88(%rsp)
	movq	%rcx, %rbx
	movl	$1, %ecx
	movq	%r8, 96(%rsp)
	movq	%r9, 104(%rsp)
	movq	%rsi, 40(%rsp)
	call	*__imp___acrt_iob_func(%rip)
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	__mingw_vfprintf
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC11:
	.ascii "neo::array=: Memory allocation failed\12Params: Elements(type, length): %ld, %ld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB12:
	.text
.LHOTB12:
	.align 2
	.p2align 4
	.globl	_ZN6normalC2EPN3wze6engineEP4game
	.def	_ZN6normalC2EPN3wze6engineEP4game;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6normalC2EPN3wze6engineEP4game
_ZN6normalC2EPN3wze6engineEP4game:
.LFB6880:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$144, %rsp
	.seh_stackalloc	144
	movaps	%xmm6, 128(%rsp)
	.seh_savexmm	%xmm6, 128
	.seh_endprologue
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	movq	%r8, %rdi
	movq	%r8, 8(%rcx)
	leaq	16(%rcx), %rcx
.LEHB0:
	call	_ZN5pauseC1EPN3wze6engineEP4game
	leaq	96(%rbx), %rcx
	movq	%rdi, %r8
	movq	%rsi, %rdx
	call	_ZN5statsC1EPN3wze6engineEP4game
.LEHE0:
	movl	$88, %ecx
	movq	$0, 168(%rbx)
	movq	$0, 176(%rbx)
.LEHB1:
	call	_Znwy
.LEHE1:
	movq	%rax, %rsi
	movq	.LC1(%rip), %rax
	movq	(%rbx), %rdx
	pxor	%xmm3, %xmm3
	movsd	.LC0(%rip), %xmm6
	movq	%rsi, %rcx
	movq	%rax, 32(%rsp)
	movsd	%xmm6, 48(%rsp)
	movsd	%xmm6, 40(%rsp)
	movq	8(%rbx), %r8
.LEHB2:
	call	_ZN6playerC1EPN3wze6engineEP4gamedddd
.LEHE2:
	movq	(%rbx), %rax
	movq	%rsi, 144(%rbx)
	pxor	%xmm3, %xmm3
	xorl	%edx, %edx
	movl	$16200, 48(%rsp)
	xorl	%r8d, %r8d
	leaq	240(%rax), %rcx
	movq	.LC3(%rip), %rax
	movl	$28800, 40(%rsp)
	movq	$0x000000000, 32(%rsp)
	movq	%rax, 56(%rsp)
.LEHB3:
	call	_ZN3wze6engine6actors3NewEPvyddttd
	movq	8(%rbx), %rdx
	movq	%rax, 152(%rbx)
	leaq	40(%rax), %rcx
	movzwl	18(%rdx), %edx
	call	_ZN3wze6engine6actors5actor8textures3NewEy
	movq	%rax, 160(%rbx)
	movl	$40, %ecx
	call	_Znwy
.LEHE3:
	movq	%rax, %rsi
	movq	.LC4(%rip), %rax
	movq	(%rbx), %rdx
	movsd	%xmm6, 56(%rsp)
	movl	$1, 64(%rsp)
	pxor	%xmm3, %xmm3
	movq	%rsi, %rcx
	movl	$375, 48(%rsp)
	movl	$1500, 40(%rsp)
	movq	%rax, 32(%rsp)
	movq	8(%rbx), %r8
.LEHB4:
	call	_ZN8platformC1EPN3wze6engineEP4gameddttdh
.LEHE4:
	movl	$40, %ecx
	movq	%rsi, 80(%rsp)
.LEHB5:
	call	_Znwy
.LEHE5:
	movq	%rax, %rsi
	movq	.LC5(%rip), %rax
	movq	(%rbx), %rdx
	movsd	%xmm6, 56(%rsp)
	movl	$1, 64(%rsp)
	pxor	%xmm3, %xmm3
	movq	%rsi, %rcx
	movl	$50, 48(%rsp)
	movl	$300, 40(%rsp)
	movq	%rax, 32(%rsp)
	movq	8(%rbx), %r8
.LEHB6:
	call	_ZN8platformC1EPN3wze6engineEP4gameddttdh
.LEHE6:
	movl	$40, %ecx
	movq	%rsi, 88(%rsp)
.LEHB7:
	call	_Znwy
.LEHE7:
	movq	%rax, %rsi
	movq	.LC7(%rip), %rax
	movq	(%rbx), %rdx
	movl	$1, 64(%rsp)
	movl	$50, 48(%rsp)
	movsd	.LC6(%rip), %xmm3
	movq	%rsi, %rcx
	movl	$200, 40(%rsp)
	movq	%rax, 32(%rsp)
	movsd	%xmm6, 56(%rsp)
	movq	8(%rbx), %r8
.LEHB8:
	call	_ZN8platformC1EPN3wze6engineEP4gameddttdh
.LEHE8:
	movl	$40, %ecx
	movq	%rsi, 96(%rsp)
.LEHB9:
	call	_Znwy
.LEHE9:
	movq	%rax, %rsi
	movq	.LC8(%rip), %rax
	movq	(%rbx), %rdx
	movsd	%xmm6, 56(%rsp)
	movl	$1, 64(%rsp)
	pxor	%xmm3, %xmm3
	movq	%rsi, %rcx
	movl	$50, 48(%rsp)
	movl	$200, 40(%rsp)
	movq	%rax, 32(%rsp)
	movq	8(%rbx), %r8
.LEHB10:
	call	_ZN8platformC1EPN3wze6engineEP4gameddttdh
.LEHE10:
	movl	$40, %ecx
	movq	%rsi, 104(%rsp)
.LEHB11:
	call	_Znwy
.LEHE11:
	movq	%rax, %rsi
	movq	.LC10(%rip), %rax
	movq	(%rbx), %rdx
	movl	$1, 64(%rsp)
	movl	$50, 48(%rsp)
	movsd	.LC9(%rip), %xmm3
	movq	%rsi, %rcx
	movl	$200, 40(%rsp)
	movq	%rax, 32(%rsp)
	movsd	%xmm6, 56(%rsp)
	movq	8(%rbx), %r8
.LEHB12:
	call	_ZN8platformC1EPN3wze6engineEP4gameddttdh
.LEHE12:
	movq	168(%rbx), %rax
	movq	%rsi, 112(%rsp)
	cmpq	$5, %rax
	jne	.L22
	movq	176(%rbx), %rdx
.L6:
	leaq	80(%rsp), %rcx
	leaq	0(,%rax,8), %r8
.LEHB13:
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	(%rbx), %rax
	leaq	80(%rax), %rsi
	movq	144(%rbx), %rax
	movq	16(%rax), %rcx
	call	_ZN3wze6engine6actors5actor5GetIDEv
	movq	%rax, %rdx
	movq	%rsi, %rcx
	call	_ZN3wze6engine6camera4BindEy
	nop
	movaps	128(%rsp), %xmm6
	addq	$144, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L22:
	movq	$5, 168(%rbx)
	movq	176(%rbx), %rcx
	movl	$40, %edx
	call	realloc
	movq	%rax, 176(%rbx)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L5
	movq	168(%rbx), %rax
	jmp	.L6
.L5:
	movl	$5, %r8d
	movl	$8, %edx
	leaq	.LC11(%rip), %rcx
	call	_Z6printfPKcz
.LEHE13:
	movl	$1, %ecx
	call	exit
.L20:
	movq	%rax, %rdi
	jmp	.L13
.L19:
	movq	%rax, %rdi
	jmp	.L13
.L18:
	movq	%rax, %rdi
	jmp	.L13
.L17:
	movq	%rax, %rdi
	jmp	.L13
.L16:
	movq	%rax, %rdi
	jmp	.L13
.L15:
	movq	%rax, %rdi
	jmp	.L7
.L14:
	movq	%rax, %rdi
	jmp	.L8
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6880:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6880-.LLSDACSB6880
.LLSDACSB6880:
	.uleb128 .LEHB0-.LFB6880
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB6880
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L14-.LFB6880
	.uleb128 0
	.uleb128 .LEHB2-.LFB6880
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L15-.LFB6880
	.uleb128 0
	.uleb128 .LEHB3-.LFB6880
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L14-.LFB6880
	.uleb128 0
	.uleb128 .LEHB4-.LFB6880
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L16-.LFB6880
	.uleb128 0
	.uleb128 .LEHB5-.LFB6880
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L14-.LFB6880
	.uleb128 0
	.uleb128 .LEHB6-.LFB6880
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L17-.LFB6880
	.uleb128 0
	.uleb128 .LEHB7-.LFB6880
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L14-.LFB6880
	.uleb128 0
	.uleb128 .LEHB8-.LFB6880
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L18-.LFB6880
	.uleb128 0
	.uleb128 .LEHB9-.LFB6880
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L14-.LFB6880
	.uleb128 0
	.uleb128 .LEHB10-.LFB6880
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L19-.LFB6880
	.uleb128 0
	.uleb128 .LEHB11-.LFB6880
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L14-.LFB6880
	.uleb128 0
	.uleb128 .LEHB12-.LFB6880
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L20-.LFB6880
	.uleb128 0
	.uleb128 .LEHB13-.LFB6880
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L14-.LFB6880
	.uleb128 0
.LLSDACSE6880:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN6normalC2EPN3wze6engineEP4game.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN6normalC2EPN3wze6engineEP4game.cold
	.seh_stackalloc	168
	.seh_savereg	%rbx, 144
	.seh_savereg	%rsi, 152
	.seh_savereg	%rdi, 160
	.seh_savexmm	%xmm6, 128
	.seh_endprologue
_ZN6normalC2EPN3wze6engineEP4game.cold:
.L13:
	movl	$40, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
.L8:
	movq	176(%rbx), %rcx
	call	free
	movq	%rdi, %rcx
.LEHB14:
	call	_Unwind_Resume
.LEHE14:
.L7:
	movl	$88, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	jmp	.L8
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC6880:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6880-.LLSDACSBC6880
.LLSDACSBC6880:
	.uleb128 .LEHB14-.LCOLDB12
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSEC6880:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE12:
	.text
.LHOTE12:
	.globl	_ZN6normalC1EPN3wze6engineEP4game
	.def	_ZN6normalC1EPN3wze6engineEP4game;	.scl	2;	.type	32;	.endef
	.set	_ZN6normalC1EPN3wze6engineEP4game,_ZN6normalC2EPN3wze6engineEP4game
	.align 2
	.p2align 4
	.globl	_ZN6normalD2Ev
	.def	_ZN6normalD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6normalD2Ev
_ZN6normalD2Ev:
.LFB6883:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	movq	168(%rcx), %rdx
	movq	%rcx, %rsi
	testq	%rdx, %rdx
	jne	.L32
	jmp	.L29
	.p2align 4,,10
	.p2align 3
.L33:
	movl	$40, %edx
	addl	$1, %ebx
	call	_ZdlPvy
	movq	168(%rsi), %rdx
	movzbl	%bl, %eax
	cmpq	%rdx, %rax
	jnb	.L29
.L32:
	movq	176(%rsi), %r8
.L24:
	movq	(%r8,%rax,8), %rcx
	testq	%rcx, %rcx
	jne	.L33
	addl	$1, %ebx
	movzbl	%bl, %eax
	cmpq	%rdx, %rax
	jb	.L24
.L29:
	movq	144(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L26
	movl	$88, %edx
	call	_ZdlPvy
.L26:
	movq	176(%rsi), %rcx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	jmp	free
	.seh_endproc
	.globl	_ZN6normalD1Ev
	.def	_ZN6normalD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN6normalD1Ev,_ZN6normalD2Ev
	.align 2
	.p2align 4
	.globl	_ZN6normal6UpdateEv
	.def	_ZN6normal6UpdateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6normal6UpdateEv
_ZN6normal6UpdateEv:
.LFB6885:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	leaq	96(%rcx), %rcx
	call	_ZN5stats6UpdateEv
	leaq	16(%rbx), %rcx
	call	_ZN5pause6UpdateEv
	xorl	%edx, %edx
	cmpl	$2, %eax
	setne	%dl
	testl	%eax, %eax
	je	.L37
	movl	%edx, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L37:
	movq	144(%rbx), %rcx
	call	_ZN6player6UpdateEv
	movl	$1, %edx
	movl	%edx, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC1:
	.long	0
	.long	1082081280
	.align 8
.LC3:
	.long	-1717986918
	.long	1069128089
	.align 8
.LC4:
	.long	0
	.long	-1065402368
	.align 8
.LC5:
	.long	0
	.long	-1067270144
	.align 8
.LC6:
	.long	0
	.long	-1066450944
	.align 8
.LC7:
	.long	0
	.long	1078116352
	.align 8
.LC8:
	.long	0
	.long	1080827904
	.align 8
.LC9:
	.long	0
	.long	1081032704
	.align 8
.LC10:
	.long	0
	.long	1081722880
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	_ZN5pauseC1EPN3wze6engineEP4game;	.scl	2;	.type	32;	.endef
	.def	_ZN5statsC1EPN3wze6engineEP4game;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZN6playerC1EPN3wze6engineEP4gamedddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors3NewEPvyddttd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor8textures3NewEy;	.scl	2;	.type	32;	.endef
	.def	_ZN8platformC1EPN3wze6engineEP4gameddttdh;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6memory6CopyToEPKvPvy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor5GetIDEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6camera4BindEy;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZN5stats6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5pause6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN6player6UpdateEv;	.scl	2;	.type	32;	.endef
