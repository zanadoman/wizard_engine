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
	.globl	_ZN4slay6engine6windowC2EPS0_
	.def	_ZN4slay6engine6windowC2EPS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6windowC2EPS0_
_ZN4slay6engine6windowC2EPS0_:
.LFB8433:
	.seh_endprologue
	movq	%rdx, (%rcx)
	movq	$0, 8(%rcx)
	movq	$0, 16(%rcx)
	movq	$0, 24(%rcx)
	ret
	.seh_endproc
	.globl	_ZN4slay6engine6windowC1EPS0_
	.def	_ZN4slay6engine6windowC1EPS0_;	.scl	2;	.type	32;	.endef
	.set	_ZN4slay6engine6windowC1EPS0_,_ZN4slay6engine6windowC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6window8GetWidthEv
	.def	_ZN4slay6engine6window8GetWidthEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6window8GetWidthEv
_ZN4slay6engine6window8GetWidthEv:
.LFB8435:
	.seh_endprologue
	movzwl	24(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6window9GetHeightEv
	.def	_ZN4slay6engine6window9GetHeightEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6window9GetHeightEv
_ZN4slay6engine6window9GetHeightEv:
.LFB8436:
	.seh_endprologue
	movzwl	26(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6window7IsShownEv
	.def	_ZN4slay6engine6window7IsShownEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6window7IsShownEv
_ZN4slay6engine6window7IsShownEv:
.LFB8437:
	.seh_endprologue
	movl	28(%rcx), %eax
	shrl	$2, %eax
	andl	$1, %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6window8HasFocusEv
	.def	_ZN4slay6engine6window8HasFocusEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6window8HasFocusEv
_ZN4slay6engine6window8HasFocusEv:
.LFB8438:
	.seh_endprologue
	movl	$1, %eax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "slay::engine.window.New(): SDL_CreateWindow() failed\12Params: Title: %s, IconPath: %p, Width: %d, Height: %d\12\0"
	.align 8
.LC1:
	.ascii "slay::engine.window.New(): SDL_CreateRenderer() failed\12Params: Title: %s, IconPath: %p, Width: %d, Height: %d\12\0"
	.align 8
.LC2:
	.ascii "slay::engine.window.New(): SDL_RenderSetLogicalSize() failed\12Params: Title: %s, IconPath: %p, Width: %d, Height: %d\12\0"
	.align 8
.LC3:
	.ascii "slay::engine.window.New(): SDL_SetRenderDrawBlendMode() failed\12Params: Title: %s, IconPath: %p, Width: %d, Height: %d\12\0"
	.align 8
.LC4:
	.ascii "slay::engine.window.New(): IMG_Load() failed\12Params: Title: %s, IconPath: %s, Width: %d, Height: %d\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6window4OpenEPKcS3_tt
	.def	_ZN4slay6engine6window4OpenEPKcS3_tt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6window4OpenEPKcS3_tt
_ZN4slay6engine6window4OpenEPKcS3_tt:
.LFB8439:
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
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movl	160(%rsp), %r14d
	movzwl	%r14w, %r13d
	movl	%r13d, 32(%rsp)
	movq	%rdx, %rbp
	movzwl	%r9w, %r12d
	movq	%rcx, %rbx
	movq	%r8, %rdi
	movq	%rbp, %rcx
	movl	%r9d, %esi
	movl	$536805376, %r8d
	movl	$4385, 40(%rsp)
	movl	%r12d, %r9d
	movl	$536805376, %edx
	call	SDL_CreateWindow
	movq	%rax, 8(%rbx)
	movq	%rax, %rcx
	testq	%rax, %rax
	je	.L18
	movl	$2, %r8d
	movl	$-1, %edx
	call	SDL_CreateRenderer
	movq	%rax, 16(%rbx)
	movq	%rax, %rcx
	testq	%rax, %rax
	je	.L19
	movl	%r13d, %r8d
	movl	%r12d, %edx
	call	SDL_RenderSetLogicalSize
	testl	%eax, %eax
	jne	.L20
	movq	16(%rbx), %rcx
	movl	$1, %edx
	call	SDL_SetRenderDrawBlendMode
	testl	%eax, %eax
	jne	.L21
	testq	%rdi, %rdi
	je	.L13
	movq	%rdi, %rcx
	call	IMG_Load
	movq	%rax, %r15
	testq	%rax, %rax
	je	.L22
	movq	8(%rbx), %rcx
	movq	%rax, %rdx
	call	SDL_SetWindowIcon
	movq	%r15, %rcx
	call	SDL_FreeSurface
.L13:
	xorl	%eax, %eax
	movw	%si, 24(%rbx)
	movw	%r14w, 26(%rbx)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L18:
	movl	%r13d, 32(%rsp)
	movl	%r12d, %r9d
	movq	%rdi, %r8
	movq	%rbp, %rdx
	leaq	.LC0(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L21:
	movl	%r13d, 32(%rsp)
	movl	%r12d, %r9d
	movq	%rdi, %r8
	movq	%rbp, %rdx
	leaq	.LC3(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L20:
	movl	%r13d, 32(%rsp)
	movl	%r12d, %r9d
	movq	%rdi, %r8
	movq	%rbp, %rdx
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L19:
	movl	%r13d, 32(%rsp)
	movl	%r12d, %r9d
	movq	%rdi, %r8
	movq	%rbp, %rdx
	leaq	.LC1(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L22:
	movl	%r13d, 32(%rsp)
	movl	%r12d, %r9d
	movq	%rdi, %r8
	movq	%rbp, %rdx
	leaq	.LC4(%rip), %rcx
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
.LFB8440:
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
	.def	IMG_Load;	.scl	2;	.type	32;	.endef
	.def	SDL_SetWindowIcon;	.scl	2;	.type	32;	.endef
	.def	SDL_FreeSurface;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	SDL_DestroyRenderer;	.scl	2;	.type	32;	.endef
	.def	SDL_DestroyWindow;	.scl	2;	.type	32;	.endef
