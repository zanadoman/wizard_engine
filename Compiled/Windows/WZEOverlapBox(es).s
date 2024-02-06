	.file	"WZEOverlapBox(es).cpp"
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
.LC0:
	.ascii "neo::array(): Memory allocation failed\12Params: Elements(size, length): %ld, %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxesC2EPS0_PS2_
	.def	_ZN3wze6engine6actors5actor12overlapboxesC2EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxesC2EPS0_PS2_
_ZN3wze6engine6actors5actor12overlapboxesC2EPS0_PS2_:
.LFB8433:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	movq	%r8, 8(%rcx)
	movq	$1, 16(%rcx)
	movl	$8, %ecx
	movq	$0, 40(%rsp)
	call	malloc
	movq	%rax, 24(%rbx)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L5
	leaq	40(%rsp), %rcx
	movl	$8, %r8d
	call	_ZN3neo9memCopyToEPKvPvy
	nop
	addq	$48, %rsp
	popq	%rbx
	ret
.L5:
	leaq	.LC0(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.globl	_ZN3wze6engine6actors5actor12overlapboxesC1EPS0_PS2_
	.def	_ZN3wze6engine6actors5actor12overlapboxesC1EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor12overlapboxesC1EPS0_PS2_,_ZN3wze6engine6actors5actor12overlapboxesC2EPS0_PS2_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxesD2Ev
	.def	_ZN3wze6engine6actors5actor12overlapboxesD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxesD2Ev
_ZN3wze6engine6actors5actor12overlapboxesD2Ev:
.LFB8436:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	16(%rcx), %rdx
	movq	24(%rcx), %rax
	movq	%rcx, %rsi
	cmpq	$1, %rdx
	jbe	.L7
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L10:
	movq	(%rax,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L8
	movl	$16, %edx
	addq	$1, %rbx
	call	_ZdlPvy
	movq	16(%rsi), %rdx
	movq	24(%rsi), %rax
	cmpq	%rdx, %rbx
	jb	.L10
.L7:
	movq	%rax, %rcx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	jmp	free
	.p2align 4,,10
	.p2align 3
.L8:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L10
	movq	%rax, %rcx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	jmp	free
	.seh_endproc
	.globl	_ZN3wze6engine6actors5actor12overlapboxesD1Ev
	.def	_ZN3wze6engine6actors5actor12overlapboxesD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor12overlapboxesD1Ev,_ZN3wze6engine6actors5actor12overlapboxesD2Ev
	.section .rdata,"dr"
	.align 8
.LC1:
	.ascii "wze::engine.actors[].overlapboxes[]: Illegal access to NULL OverlapBox\12Params: ID: %lld\12\0"
	.align 8
.LC2:
	.ascii "wze::engine.actors[].overlapboxes[]: OverlapBox does not exist\12Params: ID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxesixEy
	.def	_ZN3wze6engine6actors5actor12overlapboxesixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxesixEy
_ZN3wze6engine6actors5actor12overlapboxesixEy:
.LFB8438:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testq	%rdx, %rdx
	je	.L15
	cmpq	16(%rcx), %rdx
	jnb	.L13
	movq	24(%rcx), %rax
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L13
	addq	$40, %rsp
	ret
.L13:
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L15:
	leaq	.LC1(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC2EPS0_PS2_
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC2EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC2EPS0_PS2_
_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC2EPS0_PS2_:
.LFB8440:
	.seh_endprologue
	movq	%rdx, (%rcx)
	movq	%r8, 8(%rcx)
	ret
	.seh_endproc
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC1EPS0_PS2_
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC1EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC1EPS0_PS2_,_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC2EPS0_PS2_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD2Ev
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD2Ev
_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD2Ev:
.LFB8443:
	.seh_endprologue
	ret
	.seh_endproc
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD1Ev
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD1Ev,_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD2Ev
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo9memCopyToEPKvPvy;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
