	.file	"WZEEngine.cpp"
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
.LC0:
	.ascii "Wizard Engine\0"
	.align 8
.LC1:
	.ascii "wze::engine.engine(): SDL_Init() failed\12Params: Title: %s, IconPath: %p, Width: %d, Height: %d, TargetFrameTime: %d\12\0"
	.align 8
.LC2:
	.ascii "wze::engine.engine(): Mix_Init() failed\12Params: Title: %s, IconPath: %p, Width: %d, Height: %d, TargetFrameTime: %d\12\0"
	.align 8
.LC3:
	.ascii "wze::engine.engine(): Mix_OpenAudio() failed\12Params: Title: %s, IconPath: %p, Width: %d, Height: %d, TargetFrameTime: %d\12\0"
	.align 8
.LC4:
	.ascii "wze::engine.engine(): TTF_Init() failed\12Params: Title: %s, IconPath: %p, Width: %d, Height: %d, TargetFrameTime: %d\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB5:
	.text
.LHOTB5:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engineC2EPKcS2_tth
	.def	_ZN3wze6engineC2EPKcS2_tth;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engineC2EPKcS2_tth
_ZN3wze6engineC2EPKcS2_tth:
.LFB6905:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	144(%rsp), %r12d
	movl	152(%rsp), %edi
	movq	%rcx, %rbx
	movq	%rdx, %r13
	movq	%rcx, %rdx
	movq	%r8, %r14
	movl	%r9d, %esi
.LEHB0:
	call	_ZN3wze6engine6windowC1EPS0_
	leaq	32(%rbx), %rcx
	movq	%rbx, %rdx
	call	_ZN3wze6engine6renderC1EPS0_
.LEHE0:
	leaq	80(%rbx), %rcx
	movq	%rbx, %rdx
.LEHB1:
	call	_ZN3wze6engine6cameraC1EPS0_
	leaq	248(%rbx), %rcx
	movq	%rbx, %rdx
	call	_ZN3wze6engine5audioC1EPS0_
	leaq	264(%rbx), %rcx
	movq	%rbx, %rdx
	call	_ZN3wze6engine4keysC1EPS0_
	leaq	576(%rbx), %rcx
	movq	%rbx, %rdx
	call	_ZN3wze6engine5mouseC1EPS0_
	leaq	632(%rbx), %rbp
	movq	%rbx, %rdx
	movq	%rbp, %rcx
	call	_ZN3wze6engine6actorsC1EPS0_
.LEHE1:
	leaq	656(%rbx), %rcx
	movq	%rbx, %rdx
.LEHB2:
	call	_ZN3wze6engine9collisionC1EPS0_
.LEHE2:
	leaq	688(%rbx), %rcx
	movq	%rbx, %rdx
.LEHB3:
	call	_ZN3wze6engine6vectorC1EPS0_
.LEHE3:
	leaq	696(%rbx), %rcx
	movq	%rbx, %rdx
.LEHB4:
	call	_ZN3wze6engine7threadsC1EPS0_
.LEHE4:
	leaq	720(%rbx), %rcx
	movq	%rbx, %rdx
.LEHB5:
	call	_ZN3wze6engine6assetsC1EPS0_
.LEHE5:
	leaq	792(%rbx), %rcx
	movq	%rbx, %rdx
.LEHB6:
	call	_ZN3wze6engine6timingC1EPS0_
.LEHE6:
	testq	%r13, %r13
	leaq	.LC0(%rip), %rax
	movq	$0, 832(%rbx)
	movl	$62001, %ecx
	movq	$0, 840(%rbx)
	cmove	%rax, %r13
.LEHB7:
	call	SDL_Init
	testl	%eax, %eax
	jne	.L30
	movl	$251, %ecx
	call	Mix_Init
	testl	%eax, %eax
	je	.L31
	movl	$2048, %r9d
	movl	$2, %r8d
	movl	$32784, %edx
	movl	$44100, %ecx
	call	Mix_OpenAudio
	testl	%eax, %eax
	jne	.L32
	call	TTF_Init
	movl	%eax, %edx
	movzwl	%si, %r9d
	movzwl	%r12w, %eax
	testl	%edx, %edx
	jne	.L33
	movl	%eax, 32(%rsp)
	movq	%r14, %r8
	movq	%r13, %rdx
	movq	%rbx, %rcx
	call	_ZN3wze6engine6window4OpenEPKcS3_tt
	leal	-1(%rsi), %eax
	shrw	%si
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	movw	%ax, 40(%rbx)
	leal	-1(%r12), %eax
	movzwl	%si, %esi
	pxor	%xmm1, %xmm1
	movw	%ax, 42(%rbx)
	movl	%r12d, %eax
	negl	%esi
	shrw	%ax
	cvtsi2sdl	%esi, %xmm0
	movzwl	%ax, %eax
	negl	%eax
	cvtsi2sdl	%eax, %xmm1
	unpcklpd	%xmm1, %xmm0
	movups	%xmm0, 88(%rbx)
	call	SDL_GetKeyboardState
	movq	%rax, 272(%rbx)
	xorl	%ecx, %ecx
	movb	%dil, 800(%rbx)
	call	*__imp__time64(%rip)
	movl	%eax, %ecx
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	jmp	srand
.L30:
	movzbl	%dil, %edi
	movzwl	%r12w, %eax
	movzwl	%si, %r9d
	movq	%r14, %r8
	movl	%edi, 40(%rsp)
	movq	%r13, %rdx
	leaq	.LC1(%rip), %rcx
	movl	%eax, 32(%rsp)
	call	_Z6printfPKcz
.L10:
	movl	$1, %ecx
	call	exit
.L33:
	movzbl	%dil, %edi
	movl	%eax, 32(%rsp)
	movq	%r14, %r8
	movq	%r13, %rdx
	movl	%edi, 40(%rsp)
	leaq	.LC4(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L10
.L32:
	movzbl	%dil, %edi
	movzwl	%r12w, %eax
	movzwl	%si, %r9d
	movq	%r14, %r8
	movl	%edi, 40(%rsp)
	movq	%r13, %rdx
	leaq	.LC3(%rip), %rcx
	movl	%eax, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L10
.L31:
	movzbl	%dil, %edi
	movzwl	%r12w, %eax
	movzwl	%si, %r9d
	movq	%r14, %r8
	movl	%edi, 40(%rsp)
	movq	%r13, %rdx
	leaq	.LC2(%rip), %rcx
	movl	%eax, 32(%rsp)
	call	_Z6printfPKcz
.LEHE7:
	jmp	.L10
.L22:
	movq	%rax, %rsi
	jmp	.L20
.L26:
	movq	%rax, %rsi
	jmp	.L13
.L25:
	movq	%rax, %rsi
	jmp	.L14
.L24:
	movq	%rax, %rsi
	jmp	.L15
.L27:
	movq	%rax, %rsi
	jmp	.L17
.L23:
	movq	%rax, %rsi
	jmp	.L19
.L28:
	movq	%rax, %rsi
	jmp	.L17
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6905:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6905-.LLSDACSB6905
.LLSDACSB6905:
	.uleb128 .LEHB0-.LFB6905
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB6905
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L22-.LFB6905
	.uleb128 0
	.uleb128 .LEHB2-.LFB6905
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L23-.LFB6905
	.uleb128 0
	.uleb128 .LEHB3-.LFB6905
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L27-.LFB6905
	.uleb128 0
	.uleb128 .LEHB4-.LFB6905
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L28-.LFB6905
	.uleb128 0
	.uleb128 .LEHB5-.LFB6905
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L24-.LFB6905
	.uleb128 0
	.uleb128 .LEHB6-.LFB6905
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L25-.LFB6905
	.uleb128 0
	.uleb128 .LEHB7-.LFB6905
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L26-.LFB6905
	.uleb128 0
.LLSDACSE6905:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engineC2EPKcS2_tth.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engineC2EPKcS2_tth.cold
	.seh_stackalloc	104
	.seh_savereg	%rbx, 48
	.seh_savereg	%rsi, 56
	.seh_savereg	%rdi, 64
	.seh_savereg	%rbp, 72
	.seh_savereg	%r12, 80
	.seh_savereg	%r13, 88
	.seh_savereg	%r14, 96
	.seh_endprologue
_ZN3wze6engineC2EPKcS2_tth.cold:
.L13:
	movq	840(%rbx), %rcx
	call	free
.L14:
	movq	784(%rbx), %rcx
	call	free
	movq	768(%rbx), %rcx
	call	free
	movq	752(%rbx), %rcx
	call	free
	movq	736(%rbx), %rcx
	call	free
.L15:
	movq	712(%rbx), %rcx
	xorl	%edi, %edi
	call	free
.L16:
	movq	680(%rbx), %rcx
	cmpq	672(%rbx), %rdi
	jb	.L18
	call	free
.L19:
	movq	%rbp, %rcx
	call	_ZN3wze6engine6actorsD1Ev
.L20:
	movq	72(%rbx), %rcx
	call	free
	movq	%rsi, %rcx
.LEHB8:
	call	_Unwind_Resume
.LEHE8:
.L17:
	xorl	%edi, %edi
	jmp	.L16
.L18:
	movq	%rdi, %rax
	addq	$1, %rdi
	salq	$4, %rax
	movq	8(%rcx,%rax), %rcx
	call	free
	jmp	.L16
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC6905:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6905-.LLSDACSBC6905
.LLSDACSBC6905:
	.uleb128 .LEHB8-.LCOLDB5
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSEC6905:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE5:
	.text
.LHOTE5:
	.globl	_ZN3wze6engineC1EPKcS2_tth
	.def	_ZN3wze6engineC1EPKcS2_tth;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engineC1EPKcS2_tth,_ZN3wze6engineC2EPKcS2_tth
	.align 2
	.p2align 4
	.globl	_ZN3wze6engineD2Ev
	.def	_ZN3wze6engineD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engineD2Ev
_ZN3wze6engineD2Ev:
.LFB6908:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, %rsi
	leaq	32(%rsp), %rbx
	leaq	696(%rcx), %rcx
	movq	$0, 32(%rsp)
	leaq	720(%rsi), %rdi
	movq	%rbx, %rdx
	movq	$0, 40(%rsp)
	call	_ZN3wze6engine7threads5PurgeESt16initializer_listIyE
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	call	_ZN3wze6engine6assets13PurgeTexturesESt16initializer_listIyE
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	call	_ZN3wze6engine6assets11PurgeSoundsESt16initializer_listIyE
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	call	_ZN3wze6engine6assets10PurgeFontsESt16initializer_listIyE
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	call	_ZN3wze6engine6assets12PurgeCursorsESt16initializer_listIyE
	movq	%rsi, %rcx
	call	_ZN3wze6engine6window5CloseEv
	call	TTF_Quit
	call	Mix_CloseAudio
	call	Mix_Quit
	call	SDL_Quit
	movq	840(%rsi), %rcx
	call	free
	movq	784(%rsi), %rcx
	call	free
	movq	768(%rsi), %rcx
	call	free
	movq	752(%rsi), %rcx
	call	free
	movq	736(%rsi), %rcx
	call	free
	movq	712(%rsi), %rcx
	call	free
	cmpq	$0, 672(%rsi)
	je	.L35
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L36:
	movq	%rbx, %rax
	addq	$1, %rbx
	salq	$4, %rax
	addq	680(%rsi), %rax
	movq	8(%rax), %rcx
	call	free
	cmpq	672(%rsi), %rbx
	jb	.L36
.L35:
	movq	680(%rsi), %rcx
	call	free
	leaq	632(%rsi), %rcx
	call	_ZN3wze6engine6actorsD1Ev
	movq	72(%rsi), %rcx
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	free
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6908:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6908-.LLSDACSB6908
.LLSDACSB6908:
.LLSDACSE6908:
	.text
	.seh_endproc
	.globl	_ZN3wze6engineD1Ev
	.def	_ZN3wze6engineD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engineD1Ev,_ZN3wze6engineD2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6RandomEii
	.def	_ZN3wze6engine6RandomEii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6RandomEii
_ZN3wze6engine6RandomEii:
.LFB6911:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	%edx, %esi
	movl	%r8d, %ebx
	call	rand
	subl	%esi, %ebx
	cltd
	idivl	%ebx
	leal	(%rdx,%rsi), %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC6:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine15UpdateFlipbooksEv
	.def	_ZN3wze6engine15UpdateFlipbooksEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine15UpdateFlipbooksEv
_ZN3wze6engine15UpdateFlipbooksEv:
.LFB6912:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	640(%rcx), %rsi
	movq	%rcx, %r11
	cmpq	$1, %rsi
	jbe	.L58
	movq	648(%rcx), %rdi
	movl	$1, %r9d
	.p2align 4,,10
	.p2align 3
.L42:
	movq	(%rdi,%r9,8), %r10
	testq	%r10, %r10
	je	.L55
	cmpq	640(%r11), %r9
	jnb	.L60
	movq	88(%r10), %rbx
	movl	$1, %r8d
	.p2align 4,,10
	.p2align 3
.L53:
	cmpq	%rbx, %r8
	jnb	.L55
.L54:
	movq	96(%r10), %rax
	movq	(%rax,%r8,8), %rcx
	testq	%rcx, %rcx
	je	.L59
	cmpb	$0, 39(%rcx)
	jne	.L59
	movl	88(%rcx), %eax
	xorl	%edx, %edx
	addl	824(%r11), %eax
	divl	72(%rcx)
	addq	80(%rcx), %rax
	movq	%rax, 80(%rcx)
	cmpq	640(%r11), %r9
	jnb	.L60
	cmpq	88(%r10), %r8
	jnb	.L61
	movq	96(%rcx), %rbp
	movl	%edx, 88(%rcx)
	cmpq	%rbp, %rax
	jnb	.L62
	addq	$1, %r8
	cmpq	%rbx, %r8
	jb	.L54
	.p2align 4,,10
	.p2align 3
.L55:
	addq	$1, %r9
	cmpq	%rsi, %r9
	jne	.L42
.L58:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L51:
	subq	$1, %rbp
	movq	%rbp, 80(%rcx)
	.p2align 4,,10
	.p2align 3
.L59:
	movq	640(%r11), %rax
.L46:
	addq	$1, %r8
	cmpq	%rax, %r9
	jb	.L53
.L60:
	leaq	.LC6(%rip), %rcx
	movq	%r9, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L62:
	cmpb	$0, 38(%rcx)
	je	.L51
	xorl	%edx, %edx
	divq	%rbp
	movq	%rdx, 80(%rcx)
	movq	640(%r11), %rax
	jmp	.L46
.L61:
	leaq	.LC6(%rip), %rcx
	movq	%r8, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine18UpdateOverlapboxesEv
	.def	_ZN3wze6engine18UpdateOverlapboxesEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine18UpdateOverlapboxesEv
_ZN3wze6engine18UpdateOverlapboxesEv:
.LFB6913:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$104, %rsp
	.seh_stackalloc	104
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	movaps	%xmm7, 80(%rsp)
	.seh_savexmm	%xmm7, 80
	.seh_endprologue
	movq	640(%rcx), %r9
	cmpq	$1, %r9
	jbe	.L110
	movq	648(%rcx), %r10
	movl	$1, %r15d
	leaq	576(%rcx), %rbp
	movq	%rcx, %r13
	jmp	.L64
	.p2align 4,,10
	.p2align 3
.L65:
	addq	$1, %r15
	cmpq	%r9, %r15
	jnb	.L110
.L64:
	movq	(%r10,%r15,8), %rax
	leaq	0(,%r15,8), %rsi
	testq	%rax, %rax
	je	.L65
	cmpq	$1, 152(%rax)
	ja	.L118
	cmpq	%r9, %r15
	jb	.L65
.L116:
	leaq	.LC6(%rip), %rcx
	movq	%r15, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L118:
	movsd	264(%rax), %xmm1
	movq	%rbp, %rcx
	call	_ZN3wze6engine5mouse4GetXEd
	movq	648(%r13), %rax
	movapd	%xmm0, %xmm6
	cmpq	640(%r13), %r15
	jnb	.L116
	movq	(%rax,%rsi), %rax
	movq	%rbp, %rcx
	movsd	264(%rax), %xmm1
	call	_ZN3wze6engine5mouse4GetYEd
	movq	640(%r13), %r9
	movq	648(%r13), %r10
	movapd	%xmm0, %xmm7
	cmpq	%r9, %r15
	jnb	.L116
	movq	%rbp, %rax
	movl	$1, %ebx
	movq	%r13, %rbp
	movq	%rax, %r13
	jmp	.L68
	.p2align 4,,10
	.p2align 3
.L90:
	movq	160(%rax), %rax
	leaq	0(,%rbx,8), %rdi
	movq	(%rax,%rbx,8), %rax
	testq	%rax, %rax
	je	.L70
	movzwl	80(%rax), %ecx
	pxor	%xmm1, %xmm1
	movsd	32(%rax), %xmm0
	movsd	40(%rax), %xmm2
	movzwl	82(%rax), %eax
	movl	%ecx, %edx
	shrw	%dx
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm1
	subsd	%xmm1, %xmm0
	comisd	%xmm0, %xmm6
	jb	.L114
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%ecx, %xmm1
	addsd	%xmm1, %xmm0
	comisd	%xmm6, %xmm0
	jb	.L114
	movl	%eax, %edx
	pxor	%xmm0, %xmm0
	shrw	%dx
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm0
	addsd	%xmm2, %xmm0
	pxor	%xmm2, %xmm2
	cvtsi2sdl	%eax, %xmm2
	movapd	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
	comisd	%xmm1, %xmm7
	jb	.L114
	comisd	%xmm7, %xmm0
	jnb	.L119
	.p2align 4,,10
	.p2align 3
.L114:
	xorl	%r14d, %r14d
.L71:
	cmpq	%r9, %r15
	jnb	.L116
	movq	(%r10,%rsi), %rax
	movq	160(%rax), %rdx
	cmpq	152(%rax), %rbx
	jnb	.L117
.L88:
	movq	(%rdx,%rdi), %rax
	movl	%r14d, 112(%rax)
.L70:
	addq	$1, %rbx
	cmpq	%r9, %r15
	jnb	.L116
.L68:
	movq	(%r10,%rsi), %rax
	cmpq	152(%rax), %rbx
	jb	.L90
	movq	%r13, %rax
	addq	$1, %r15
	movq	%rbp, %r13
	movq	%rax, %rbp
	cmpq	%r9, %r15
	jb	.L64
.L110:
	movaps	64(%rsp), %xmm6
	movaps	80(%rsp), %xmm7
	xorl	%eax, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
	.p2align 3
.L119:
	leaq	264(%rbp), %r12
	movl	$291, %edx
	movq	%r12, %rcx
	call	_ZN3wze6engine4keysixENS_3keyE
	testb	%al, %al
	je	.L120
	movl	$11, 52(%rsp)
	movl	$43, %r14d
	movl	$35, %r10d
	movl	$51, %r11d
	movl	$75, 48(%rsp)
	movl	$19, %r8d
	movl	$83, %r9d
	movl	$3, 60(%rsp)
	movl	$67, 56(%rsp)
.L76:
	movl	$292, %edx
	movq	%r12, %rcx
	movl	%r10d, 44(%rsp)
	movl	%r9d, 40(%rsp)
	movl	%r11d, 36(%rsp)
	movl	%r8d, 32(%rsp)
	call	_ZN3wze6engine4keysixENS_3keyE
	movl	32(%rsp), %r8d
	movl	36(%rsp), %r11d
	testb	%al, %al
	movl	40(%rsp), %r9d
	movl	44(%rsp), %r10d
	je	.L121
.L79:
	movl	$293, %edx
	movq	%r12, %rcx
	call	_ZN3wze6engine4keysixENS_3keyE
	movq	640(%rbp), %r9
	movq	648(%rbp), %r10
	testb	%al, %al
	jne	.L71
	cmpq	%r9, %r15
	jnb	.L116
	movq	(%r10,%rsi), %rax
	movq	160(%rax), %rdx
	cmpq	152(%rax), %rbx
	jnb	.L117
	movq	(%rdx,%rdi), %rax
	movl	52(%rsp), %r14d
	testb	$32, 112(%rax)
	cmovne	48(%rsp), %r14d
	jmp	.L88
.L120:
	movq	648(%rbp), %rax
	cmpq	640(%rbp), %r15
	jnb	.L116
	movq	(%rax,%rsi), %rax
	movq	160(%rax), %rdx
	cmpq	152(%rax), %rbx
	jnb	.L117
	movq	(%rdx,%rdi), %rax
	movl	112(%rax), %eax
	andl	$2, %eax
	cmpl	$1, %eax
	sbbl	%r14d, %r14d
	andl	$-4, %r14d
	addl	$45, %r14d
	cmpl	$1, %eax
	sbbl	%ecx, %ecx
	andl	$-4, %ecx
	addl	$13, %ecx
	cmpl	$1, %eax
	movl	%ecx, 52(%rsp)
	sbbl	%ecx, %ecx
	andl	$-4, %ecx
	addl	$77, %ecx
	cmpl	$1, %eax
	sbbl	%r10d, %r10d
	movl	%ecx, 48(%rsp)
	andl	$-4, %r10d
	addl	$37, %r10d
	cmpl	$1, %eax
	sbbl	%ecx, %ecx
	andl	$-4, %ecx
	addl	$5, %ecx
	cmpl	$1, %eax
	movl	%ecx, 60(%rsp)
	sbbl	%ecx, %ecx
	andl	$-4, %ecx
	addl	$69, %ecx
	cmpl	$1, %eax
	sbbl	%r11d, %r11d
	movl	%ecx, 56(%rsp)
	andl	$-4, %r11d
	addl	$53, %r11d
	cmpl	$1, %eax
	sbbl	%r8d, %r8d
	andl	$-4, %r8d
	addl	$21, %r8d
	cmpl	$1, %eax
	sbbl	%r9d, %r9d
	andl	$-4, %r9d
	addl	$85, %r9d
	jmp	.L76
.L121:
	movq	648(%rbp), %rax
	cmpq	640(%rbp), %r15
	jnb	.L116
	movq	(%rax,%rsi), %rax
	movq	160(%rax), %rdx
	cmpq	152(%rax), %rbx
	jnb	.L117
	movq	(%rdx,%rdi), %rax
	testb	$8, 112(%rax)
	je	.L122
	movl	%r8d, 52(%rsp)
	movl	%r11d, %r14d
	movl	%r9d, 48(%rsp)
	jmp	.L79
.L122:
	movl	60(%rsp), %eax
	movl	%r10d, %r14d
	movl	%eax, 52(%rsp)
	movl	56(%rsp), %eax
	movl	%eax, 48(%rsp)
	jmp	.L79
.L117:
	leaq	.LC6(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC7:
	.ascii "neo::array.Insert(): Memory allocation failed\12Params: Index: %lld, Length: %lld\12\0"
	.align 8
.LC8:
	.ascii "neo::array.Remove(): Memory allocation failed\12Params: Index: %lld, Length: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6UpdateEv
	.def	_ZN3wze6engine6UpdateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6UpdateEv
_ZN3wze6engine6UpdateEv:
.LFB6910:
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
	subq	$96, %rsp
	.seh_stackalloc	96
	.seh_endprologue
	xorl	%esi, %esi
	xorl	%edi, %edi
	movq	%rcx, %rbx
	leaq	32(%rsp), %rbp
	call	SDL_GetTicks
	subl	804(%rbx), %eax
	leaq	80(%rbx), %rcx
	movl	%eax, 808(%rbx)
	call	_ZN3wze6engine6camera6UpdateEv
	leaq	32(%rbx), %rcx
	call	_ZN3wze6engine6render6UpdateEv
	call	SDL_GetTicks
	subl	808(%rbx), %eax
	subl	804(%rbx), %eax
	leaq	792(%rbx), %rcx
	movl	%eax, 812(%rbx)
	call	_ZN3wze6engine6timing6UpdateEv
	movq	%rbx, %rcx
	call	_ZN3wze6engine15UpdateFlipbooksEv
	movq	8(%rbx), %rcx
	call	SDL_GetWindowFlags
	movl	%eax, 28(%rbx)
	jmp	.L124
	.p2align 4,,10
	.p2align 3
.L126:
	cmpq	%rax, %rdi
	jnb	.L138
	movdqa	32(%rsp), %xmm3
	addq	$1, %rdi
	movups	%xmm3, (%rcx,%rsi)
	movdqa	48(%rsp), %xmm4
	movups	%xmm4, 16(%rcx,%rsi)
	movdqa	64(%rsp), %xmm5
	movups	%xmm5, 32(%rcx,%rsi)
	movq	80(%rsp), %rax
	movq	%rax, 48(%rcx,%rsi)
	addq	$56, %rsi
.L124:
	movq	%rbp, %rcx
	call	SDL_PollEvent
	testl	%eax, %eax
	je	.L139
	cmpl	$256, 32(%rsp)
	je	.L136
	movq	832(%rbx), %rax
	movq	840(%rbx), %rcx
	cmpq	%rax, %rdi
	jne	.L126
	leaq	11(%rdi), %r12
	movq	%r12, 832(%rbx)
	leaq	0(,%r12,8), %rdx
	subq	%r12, %rdx
	salq	$3, %rdx
	call	realloc
	movq	%rax, 840(%rbx)
	movq	%rax, %rcx
	testq	%rax, %rax
	je	.L140
	movq	832(%rbx), %rax
	leaq	-1(%rax), %rdx
	cmpq	%r12, %rdx
	jb	.L126
	leaq	0(,%rdx,8), %r8
	leaq	-12(%rax), %r9
	subq	%rdx, %r8
	leaq	(%rcx,%r8,8), %rdx
	leaq	0(,%r9,8), %r8
	subq	%r9, %r8
	leaq	(%rcx,%r8,8), %rcx
	movdqu	(%rcx), %xmm3
	movups	%xmm3, (%rdx)
	movdqu	16(%rcx), %xmm4
	movups	%xmm4, 16(%rdx)
	movdqu	32(%rcx), %xmm5
	movups	%xmm5, 32(%rdx)
	movq	48(%rcx), %rcx
	movq	%rcx, 48(%rdx)
	leaq	-2(%rax), %rcx
	cmpq	%r12, %rcx
	jb	.L130
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	-728(,%rdx,8), %rax
	.p2align 4,,10
	.p2align 3
.L129:
	movq	840(%rbx), %rdx
	subq	$1, %rcx
	movdqu	(%rdx,%rax), %xmm0
	movdqu	16(%rdx,%rax), %xmm1
	movdqu	32(%rdx,%rax), %xmm2
	movq	48(%rdx,%rax), %r8
	movups	%xmm0, 616(%rdx,%rax)
	movq	%r8, 664(%rdx,%rax)
	movups	%xmm1, 632(%rdx,%rax)
	movups	%xmm2, 648(%rdx,%rax)
	subq	$56, %rax
	cmpq	%r12, %rcx
	jnb	.L129
.L130:
	movq	832(%rbx), %rax
	movq	840(%rbx), %rcx
	jmp	.L126
	.p2align 4,,10
	.p2align 3
.L139:
	movq	832(%rbx), %rsi
	cmpq	%rsi, %rdi
	jb	.L141
.L135:
	leaq	264(%rbx), %rcx
	call	_ZN3wze6engine4keys6UpdateEv
	leaq	576(%rbx), %rcx
	call	_ZN3wze6engine5mouse6UpdateEv
	movq	%rbx, %rcx
	call	_ZN3wze6engine18UpdateOverlapboxesEv
	movl	$1, %eax
	addq	$96, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L136:
	xorl	%eax, %eax
	addq	$96, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L141:
	movq	%rdi, 832(%rbx)
	movq	840(%rbx), %rcx
	testq	%rdi, %rdi
	je	.L142
	leaq	0(,%rdi,8), %rdx
	subq	%rdi, %rdx
	salq	$3, %rdx
	call	realloc
	movq	%rax, 840(%rbx)
	testq	%rax, %rax
	jne	.L135
	subq	%rdi, %rsi
	leaq	.LC8(%rip), %rcx
	movq	%rdi, %rdx
	movq	%rsi, %r8
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L142:
	call	free
	movq	$0, 840(%rbx)
	jmp	.L135
.L138:
	leaq	.LC6(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L140:
	leaq	.LC7(%rip), %rcx
	movl	$11, %r8d
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6windowC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6renderC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6cameraC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine5audioC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine4keysC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine5mouseC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actorsC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine9collisionC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vectorC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine7threadsC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assetsC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6timingC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	SDL_Init;	.scl	2;	.type	32;	.endef
	.def	Mix_Init;	.scl	2;	.type	32;	.endef
	.def	Mix_OpenAudio;	.scl	2;	.type	32;	.endef
	.def	TTF_Init;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6window4OpenEPKcS3_tt;	.scl	2;	.type	32;	.endef
	.def	SDL_GetKeyboardState;	.scl	2;	.type	32;	.endef
	.def	srand;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actorsD1Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine7threads5PurgeESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets13PurgeTexturesESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets11PurgeSoundsESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets10PurgeFontsESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets12PurgeCursorsESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6window5CloseEv;	.scl	2;	.type	32;	.endef
	.def	TTF_Quit;	.scl	2;	.type	32;	.endef
	.def	Mix_CloseAudio;	.scl	2;	.type	32;	.endef
	.def	Mix_Quit;	.scl	2;	.type	32;	.endef
	.def	SDL_Quit;	.scl	2;	.type	32;	.endef
	.def	rand;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine5mouse4GetXEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine5mouse4GetYEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine4keysixENS_3keyE;	.scl	2;	.type	32;	.endef
	.def	SDL_GetTicks;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6camera6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6render6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6timing6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	SDL_GetWindowFlags;	.scl	2;	.type	32;	.endef
	.def	SDL_PollEvent;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine4keys6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine5mouse6UpdateEv;	.scl	2;	.type	32;	.endef
