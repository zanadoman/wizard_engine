	.file	"SEWindow.cpp"
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
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6windowC2ERS0_
	.def	_ZN4slay6engine6windowC2ERS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6windowC2ERS0_
_ZN4slay6engine6windowC2ERS0_:
.LFB8433:
	.seh_endprologue
	movq	%rdx, (%rcx)
	movq	$0, 8(%rcx)
	movq	$0, 16(%rcx)
	movl	$0, 24(%rcx)
	ret
	.seh_endproc
	.globl	_ZN4slay6engine6windowC1ERS0_
	.def	_ZN4slay6engine6windowC1ERS0_;	.scl	2;	.type	32;	.endef
	.set	_ZN4slay6engine6windowC1ERS0_,_ZN4slay6engine6windowC2ERS0_
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6window9GetHeightEv
	.def	_ZN4slay6engine6window9GetHeightEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6window9GetHeightEv
_ZN4slay6engine6window9GetHeightEv:
.LFB8435:
	.seh_endprologue
	movzwl	26(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6window8GetWidthEv
	.def	_ZN4slay6engine6window8GetWidthEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6window8GetWidthEv
_ZN4slay6engine6window8GetWidthEv:
.LFB8436:
	.seh_endprologue
	movzwl	24(%rcx), %eax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "slay::engine.window.New(): SDL_CreateWindow() failed\12Params: Title: %s, Width: %d, Height: %d\12\0"
	.align 8
.LC1:
	.ascii "slay::engine.window.New(): SDL_CreateRenderer() failed\12Params: Title: %s, Width: %d, Height: %d\12\0"
	.align 8
.LC2:
	.ascii "slay::engine.window.New(): SDL_RenderSetLogicalSize() failed\12Params: Title: %s, Width: %d, Height: %d\12\0"
	.align 8
.LC3:
	.ascii "slay::engine.window.New(): SDL_SetRenderDrawBlendMode() failed\12Params: Title: %s, Width: %d, Height: %d\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6window4OpenEPKctt
	.def	_ZN4slay6engine6window4OpenEPKctt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6window4OpenEPKctt
_ZN4slay6engine6window4OpenEPKctt:
.LFB8437:
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
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movzwl	%r9w, %r13d
	movq	%rdx, %rbp
	movzwl	%r8w, %r12d
	movq	%rcx, %rbx
	movl	%r13d, 32(%rsp)
	movq	%rbp, %rcx
	movl	%r8d, %edi
	movl	%r9d, %esi
	movl	$4385, 40(%rsp)
	movl	%r12d, %r9d
	movl	$536805376, %r8d
	movl	$536805376, %edx
	call	SDL_CreateWindow
	movq	%rax, 8(%rbx)
	movq	%rax, %rcx
	testq	%rax, %rax
	je	.L11
	movl	$2, %r8d
	movl	$-1, %edx
	call	SDL_CreateRenderer
	movq	%rax, 16(%rbx)
	movq	%rax, %rcx
	testq	%rax, %rax
	je	.L12
	movl	%r13d, %r8d
	movl	%r12d, %edx
	call	SDL_RenderSetLogicalSize
	testl	%eax, %eax
	jne	.L13
	movq	16(%rbx), %rcx
	movl	$1, %edx
	call	SDL_SetRenderDrawBlendMode
	testl	%eax, %eax
	jne	.L14
	xorl	%eax, %eax
	movw	%di, 24(%rbx)
	movw	%si, 26(%rbx)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L11:
	leaq	.LC0(%rip), %rcx
	movl	%r13d, %r9d
	movl	%r12d, %r8d
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L14:
	leaq	.LC3(%rip), %rcx
	movl	%r13d, %r9d
	movl	%r12d, %r8d
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L13:
	leaq	.LC2(%rip), %rcx
	movl	%r13d, %r9d
	movl	%r12d, %r8d
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L12:
	leaq	.LC1(%rip), %rcx
	movl	%r13d, %r9d
	movl	%r12d, %r8d
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6window5CloseEv
	.def	_ZN4slay6engine6window5CloseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6window5CloseEv
_ZN4slay6engine6window5CloseEv:
.LFB8438:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movq	16(%rcx), %rcx
	call	SDL_DestroyRenderer
	movq	8(%rbx), %rcx
	call	SDL_DestroyWindow
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	SDL_CreateWindow;	.scl	2;	.type	32;	.endef
	.def	SDL_CreateRenderer;	.scl	2;	.type	32;	.endef
	.def	SDL_RenderSetLogicalSize;	.scl	2;	.type	32;	.endef
	.def	SDL_SetRenderDrawBlendMode;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	SDL_DestroyRenderer;	.scl	2;	.type	32;	.endef
	.def	SDL_DestroyWindow;	.scl	2;	.type	32;	.endef
