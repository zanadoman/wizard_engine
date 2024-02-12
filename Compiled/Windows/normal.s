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
.LC13:
	.ascii "neo::array=: Memory allocation failed\12Params: Elements(type, length): %ld, %ld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB19:
	.text
.LHOTB19:
	.align 2
	.p2align 4
	.globl	_ZN6normalC2EPN3wze6engineEP4game
	.def	_ZN6normalC2EPN3wze6engineEP4game;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6normalC2EPN3wze6engineEP4game
_ZN6normalC2EPN3wze6engineEP4game:
.LFB6890:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
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
	leaq	16(%rcx), %rbp
	movq	%rdx, %rsi
	movq	%r8, 8(%rcx)
	movq	%r8, %rdi
	movq	%rbp, %rcx
	leaq	96(%rbx), %r12
.LEHB0:
	call	_ZN5pauseC1EPN3wze6engineEP4game
.LEHE0:
	movq	%rdi, %r8
	movq	%rsi, %rdx
	movq	%r12, %rcx
.LEHB1:
	call	_ZN5statsC1EPN3wze6engineEP4game
.LEHE1:
	movq	$0, 160(%rbx)
	movl	$120, %ecx
	movq	$0, 168(%rbx)
.LEHB2:
	call	_Znwy
.LEHE2:
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
.LEHB3:
	call	_ZN6playerC1EPN3wze6engineEP4gamedddd
.LEHE3:
	movq	%rsi, 144(%rbx)
	movl	$112, %ecx
.LEHB4:
	call	_Znwy
.LEHE4:
	movq	%rax, %rsi
	movq	.LC4(%rip), %rax
	movq	(%rbx), %rdx
	movsd	.LC3(%rip), %xmm3
	movq	%rsi, %rcx
	movq	%rax, 56(%rsp)
	movq	.LC5(%rip), %rax
	movq	%rax, 48(%rsp)
	movq	144(%rbx), %rax
	movq	16(%rax), %rax
	movsd	%xmm6, 32(%rsp)
	movq	%rax, 40(%rsp)
	movq	8(%rbx), %r8
.LEHB5:
	call	_ZN5eagleC1EPN3wze6engineEP4gameddPNS1_6actors5actorEdd
.LEHE5:
	movq	%rsi, 152(%rbx)
	movl	$40, %ecx
.LEHB6:
	call	_Znwy
.LEHE6:
	movq	%rax, %rsi
	movq	.LC6(%rip), %rax
	movq	(%rbx), %rdx
	movsd	%xmm6, 56(%rsp)
	movl	$1, 64(%rsp)
	pxor	%xmm3, %xmm3
	movq	%rsi, %rcx
	movl	$375, 48(%rsp)
	movl	$1500, 40(%rsp)
	movq	%rax, 32(%rsp)
	movq	8(%rbx), %r8
.LEHB7:
	call	_ZN8platformC1EPN3wze6engineEP4gameddttdh
.LEHE7:
	movl	$40, %ecx
	movq	%rsi, 80(%rsp)
.LEHB8:
	call	_Znwy
.LEHE8:
	movq	%rax, %rsi
	movq	.LC7(%rip), %rax
	movq	(%rbx), %rdx
	movsd	%xmm6, 56(%rsp)
	movl	$1, 64(%rsp)
	pxor	%xmm3, %xmm3
	movq	%rsi, %rcx
	movl	$50, 48(%rsp)
	movl	$300, 40(%rsp)
	movq	%rax, 32(%rsp)
	movq	8(%rbx), %r8
.LEHB9:
	call	_ZN8platformC1EPN3wze6engineEP4gameddttdh
.LEHE9:
	movl	$40, %ecx
	movq	%rsi, 88(%rsp)
.LEHB10:
	call	_Znwy
.LEHE10:
	movq	%rax, %rsi
	movq	.LC9(%rip), %rax
	movq	(%rbx), %rdx
	movl	$1, 64(%rsp)
	movl	$50, 48(%rsp)
	movsd	.LC8(%rip), %xmm3
	movq	%rsi, %rcx
	movl	$200, 40(%rsp)
	movq	%rax, 32(%rsp)
	movsd	%xmm6, 56(%rsp)
	movq	8(%rbx), %r8
.LEHB11:
	call	_ZN8platformC1EPN3wze6engineEP4gameddttdh
.LEHE11:
	movl	$40, %ecx
	movq	%rsi, 96(%rsp)
.LEHB12:
	call	_Znwy
.LEHE12:
	movq	%rax, %rsi
	movq	.LC10(%rip), %rax
	movq	(%rbx), %rdx
	movsd	%xmm6, 56(%rsp)
	movl	$1, 64(%rsp)
	pxor	%xmm3, %xmm3
	movq	%rsi, %rcx
	movl	$50, 48(%rsp)
	movl	$200, 40(%rsp)
	movq	%rax, 32(%rsp)
	movq	8(%rbx), %r8
.LEHB13:
	call	_ZN8platformC1EPN3wze6engineEP4gameddttdh
.LEHE13:
	movl	$40, %ecx
	movq	%rsi, 104(%rsp)
.LEHB14:
	call	_Znwy
.LEHE14:
	movq	%rax, %rsi
	movq	.LC12(%rip), %rax
	movq	(%rbx), %rdx
	movl	$1, 64(%rsp)
	movl	$50, 48(%rsp)
	movsd	.LC11(%rip), %xmm3
	movq	%rsi, %rcx
	movl	$200, 40(%rsp)
	movq	%rax, 32(%rsp)
	movsd	%xmm6, 56(%rsp)
	movq	8(%rbx), %r8
.LEHB15:
	call	_ZN8platformC1EPN3wze6engineEP4gameddttdh
.LEHE15:
	movq	160(%rbx), %rax
	movq	%rsi, 112(%rsp)
	cmpq	$5, %rax
	jne	.L32
	movq	168(%rbx), %rdx
.L6:
	leaq	80(%rsp), %rcx
	leaq	0(,%rax,8), %r8
.LEHB16:
	call	_ZN3neo6memory6CopyToEPKvPvy
	movl	$32, %ecx
	call	_Znwy
.LEHE16:
	movq	(%rbx), %rdx
	movl	$1, 64(%rsp)
	movq	%rax, %rcx
	movq	%rax, %rsi
	movl	$2000, 48(%rsp)
	movsd	.LC14(%rip), %xmm3
	movl	$10, 40(%rsp)
	movq	$0x000000000, 32(%rsp)
	movsd	%xmm6, 56(%rsp)
	movq	8(%rbx), %r8
.LEHB17:
	call	_ZN6borderC1EPN3wze6engineEP4gameddttdh
.LEHE17:
	movq	%rsi, 176(%rbx)
	movl	$32, %ecx
.LEHB18:
	call	_Znwy
.LEHE18:
	movq	(%rbx), %rdx
	movl	$1, 64(%rsp)
	movq	%rax, %rcx
	movq	%rax, %rsi
	movl	$2000, 48(%rsp)
	movsd	.LC15(%rip), %xmm3
	movl	$10, 40(%rsp)
	movq	$0x000000000, 32(%rsp)
	movsd	%xmm6, 56(%rsp)
	movq	8(%rbx), %r8
.LEHB19:
	call	_ZN6borderC1EPN3wze6engineEP4gameddttdh
.LEHE19:
	movq	%rsi, 184(%rbx)
	movl	$32, %ecx
.LEHB20:
	call	_Znwy
.LEHE20:
	movq	%rax, %rsi
	movq	.LC16(%rip), %rax
	movq	(%rbx), %rdx
	movsd	%xmm6, 56(%rsp)
	movl	$1, 64(%rsp)
	pxor	%xmm3, %xmm3
	movq	%rsi, %rcx
	movl	$10, 48(%rsp)
	movl	$1520, 40(%rsp)
	movq	%rax, 32(%rsp)
	movq	8(%rbx), %r8
.LEHB21:
	call	_ZN6borderC1EPN3wze6engineEP4gameddttdh
.LEHE21:
	movq	(%rbx), %rax
	movq	%rsi, 192(%rbx)
	leaq	80(%rax), %rsi
	movq	144(%rbx), %rax
	movq	16(%rax), %rcx
.LEHB22:
	call	_ZN3wze6engine6actors5actor5GetIDEv
	movq	%rax, %rdx
	movq	%rsi, %rcx
	call	_ZN3wze6engine6camera4BindEy
	movq	(%rbx), %rax
	movsd	.LC17(%rip), %xmm1
	leaq	80(%rax), %rcx
	call	_ZN3wze6engine6camera10SetOffsetYEd
	movq	(%rbx), %rax
	movl	$16200, 48(%rsp)
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movl	$28800, 40(%rsp)
	pxor	%xmm3, %xmm3
	movq	$0x000000000, 32(%rsp)
	leaq	256(%rax), %rcx
	movq	.LC18(%rip), %rax
	movq	%rax, 56(%rsp)
	call	_ZN3wze6engine6actors3NewEPvyddttd
	movq	8(%rbx), %rdx
	movq	%rax, 200(%rbx)
	leaq	40(%rax), %rcx
	movzwl	18(%rdx), %edx
	call	_ZN3wze6engine6actors5actor12textureboxes3NewEy
	movq	%rax, 208(%rbx)
	movaps	128(%rsp), %xmm6
	addq	$144, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L32:
	movq	$5, 160(%rbx)
	movq	168(%rbx), %rcx
	movl	$40, %edx
	call	realloc
	movq	%rax, 168(%rbx)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L5
	movq	160(%rbx), %rax
	jmp	.L6
.L5:
	movl	$5, %r8d
	movl	$8, %edx
	leaq	.LC13(%rip), %rcx
	call	_Z6printfPKcz
.LEHE22:
	movl	$1, %ecx
	call	exit
.L29:
	movq	%rax, %rdi
	jmp	.L17
.L28:
	movq	%rax, %rdi
	jmp	.L17
.L27:
	movq	%rax, %rdi
	jmp	.L17
.L30:
	movq	%rax, %rdi
	jmp	.L14
.L26:
	movq	%rax, %rdi
	jmp	.L14
.L25:
	movq	%rax, %rdi
	jmp	.L14
.L24:
	movq	%rax, %rdi
	jmp	.L14
.L23:
	movq	%rax, %rdi
	jmp	.L14
.L22:
	movq	%rax, %rdi
	jmp	.L9
.L21:
	movq	%rax, %rdi
	jmp	.L7
.L20:
	movq	%rax, %rdi
	jmp	.L8
.L19:
	movq	%rax, %rsi
	jmp	.L18
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6890:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6890-.LLSDACSB6890
.LLSDACSB6890:
	.uleb128 .LEHB0-.LFB6890
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB6890
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L19-.LFB6890
	.uleb128 0
	.uleb128 .LEHB2-.LFB6890
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L20-.LFB6890
	.uleb128 0
	.uleb128 .LEHB3-.LFB6890
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L21-.LFB6890
	.uleb128 0
	.uleb128 .LEHB4-.LFB6890
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L20-.LFB6890
	.uleb128 0
	.uleb128 .LEHB5-.LFB6890
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L22-.LFB6890
	.uleb128 0
	.uleb128 .LEHB6-.LFB6890
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L20-.LFB6890
	.uleb128 0
	.uleb128 .LEHB7-.LFB6890
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L23-.LFB6890
	.uleb128 0
	.uleb128 .LEHB8-.LFB6890
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L20-.LFB6890
	.uleb128 0
	.uleb128 .LEHB9-.LFB6890
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L24-.LFB6890
	.uleb128 0
	.uleb128 .LEHB10-.LFB6890
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L20-.LFB6890
	.uleb128 0
	.uleb128 .LEHB11-.LFB6890
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L25-.LFB6890
	.uleb128 0
	.uleb128 .LEHB12-.LFB6890
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L20-.LFB6890
	.uleb128 0
	.uleb128 .LEHB13-.LFB6890
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L26-.LFB6890
	.uleb128 0
	.uleb128 .LEHB14-.LFB6890
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L20-.LFB6890
	.uleb128 0
	.uleb128 .LEHB15-.LFB6890
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L30-.LFB6890
	.uleb128 0
	.uleb128 .LEHB16-.LFB6890
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L20-.LFB6890
	.uleb128 0
	.uleb128 .LEHB17-.LFB6890
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L27-.LFB6890
	.uleb128 0
	.uleb128 .LEHB18-.LFB6890
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L20-.LFB6890
	.uleb128 0
	.uleb128 .LEHB19-.LFB6890
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L28-.LFB6890
	.uleb128 0
	.uleb128 .LEHB20-.LFB6890
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L20-.LFB6890
	.uleb128 0
	.uleb128 .LEHB21-.LFB6890
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L29-.LFB6890
	.uleb128 0
	.uleb128 .LEHB22-.LFB6890
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L20-.LFB6890
	.uleb128 0
.LLSDACSE6890:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN6normalC2EPN3wze6engineEP4game.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN6normalC2EPN3wze6engineEP4game.cold
	.seh_stackalloc	184
	.seh_savereg	%rbx, 144
	.seh_savereg	%rsi, 152
	.seh_savereg	%rdi, 160
	.seh_savereg	%rbp, 168
	.seh_savexmm	%xmm6, 128
	.seh_savereg	%r12, 176
	.seh_endprologue
_ZN6normalC2EPN3wze6engineEP4game.cold:
.L17:
	movl	$32, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
.L8:
	movq	168(%rbx), %rcx
	movq	%rdi, %rsi
	call	free
	movq	%r12, %rcx
	call	_ZN5statsD1Ev
.L18:
	movq	%rbp, %rcx
	call	_ZN5pauseD1Ev
	movq	%rsi, %rcx
.LEHB23:
	call	_Unwind_Resume
.LEHE23:
.L14:
	movl	$40, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	jmp	.L8
.L9:
	movl	$112, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	jmp	.L8
.L7:
	movl	$120, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	jmp	.L8
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC6890:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6890-.LLSDACSBC6890
.LLSDACSBC6890:
	.uleb128 .LEHB23-.LCOLDB19
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
.LLSDACSEC6890:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE19:
	.text
.LHOTE19:
	.globl	_ZN6normalC1EPN3wze6engineEP4game
	.def	_ZN6normalC1EPN3wze6engineEP4game;	.scl	2;	.type	32;	.endef
	.set	_ZN6normalC1EPN3wze6engineEP4game,_ZN6normalC2EPN3wze6engineEP4game
	.align 2
	.p2align 4
	.globl	_ZN6normalD2Ev
	.def	_ZN6normalD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6normalD2Ev
_ZN6normalD2Ev:
.LFB6893:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	144(%rcx), %rbx
	movq	%rcx, %rdi
	testq	%rbx, %rbx
	je	.L34
	movq	%rbx, %rcx
	call	_ZN6playerD1Ev
	movl	$120, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
.L34:
	movq	152(%rdi), %rbx
	testq	%rbx, %rbx
	je	.L35
	movq	%rbx, %rcx
	call	_ZN5eagleD1Ev
	movl	$112, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
.L35:
	movq	176(%rdi), %rbx
	testq	%rbx, %rbx
	je	.L36
	movq	%rbx, %rcx
	call	_ZN6borderD1Ev
	movl	$32, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
.L36:
	movq	184(%rdi), %rbx
	testq	%rbx, %rbx
	je	.L37
	movq	%rbx, %rcx
	call	_ZN6borderD1Ev
	movl	$32, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
.L37:
	movq	192(%rdi), %rbx
	testq	%rbx, %rbx
	je	.L38
	movq	%rbx, %rcx
	call	_ZN6borderD1Ev
	movl	$32, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
.L38:
	movq	160(%rdi), %rdx
	movq	168(%rdi), %rcx
	testq	%rdx, %rdx
	je	.L39
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L42:
	movq	(%rcx,%rax,8), %rsi
	testq	%rsi, %rsi
	je	.L40
	movq	%rsi, %rcx
	addl	$1, %ebx
	call	_ZN8platformD1Ev
	movl	$40, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	movq	160(%rdi), %rdx
	movzbl	%bl, %eax
	movq	168(%rdi), %rcx
	cmpq	%rdx, %rax
	jb	.L42
.L39:
	call	free
	leaq	96(%rdi), %rcx
	call	_ZN5statsD1Ev
	leaq	16(%rdi), %rcx
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	_ZN5pauseD1Ev
	.p2align 4,,10
	.p2align 3
.L40:
	addl	$1, %ebx
	movzbl	%bl, %eax
	cmpq	%rdx, %rax
	jb	.L42
	jmp	.L39
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
.LFB6895:
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
	je	.L64
	movl	%edx, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L64:
	movq	144(%rbx), %rcx
	call	_ZN6player6UpdateEv
	movq	152(%rbx), %rcx
	call	_ZN5eagle6UpdateEv
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
	.long	1078263808
	.align 8
.LC3:
	.long	0
	.long	1082925056
	.align 8
.LC4:
	.long	0
	.long	1082515456
	.align 8
.LC5:
	.long	0
	.long	-1064968192
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
	.long	-1066450944
	.align 8
.LC9:
	.long	0
	.long	1081466880
	.align 8
.LC10:
	.long	0
	.long	1082182656
	.align 8
.LC11:
	.long	0
	.long	1081032704
	.align 8
.LC12:
	.long	0
	.long	1082566656
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
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	_ZN5pauseC1EPN3wze6engineEP4game;	.scl	2;	.type	32;	.endef
	.def	_ZN5statsC1EPN3wze6engineEP4game;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZN6playerC1EPN3wze6engineEP4gamedddd;	.scl	2;	.type	32;	.endef
	.def	_ZN5eagleC1EPN3wze6engineEP4gameddPNS1_6actors5actorEdd;	.scl	2;	.type	32;	.endef
	.def	_ZN8platformC1EPN3wze6engineEP4gameddttdh;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6memory6CopyToEPKvPvy;	.scl	2;	.type	32;	.endef
	.def	_ZN6borderC1EPN3wze6engineEP4gameddttdh;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor5GetIDEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6camera4BindEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6camera10SetOffsetYEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors3NewEPvyddttd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12textureboxes3NewEy;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	_ZN5statsD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN5pauseD1Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZN6playerD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN5eagleD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN6borderD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN8platformD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN5stats6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5pause6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN6player6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5eagle6UpdateEv;	.scl	2;	.type	32;	.endef
