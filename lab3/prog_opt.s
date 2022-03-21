	.file	"prog.cpp"
	.text
	.globl	_Z5func1PdS_
	.type	_Z5func1PdS_, @function
_Z5func1PdS_:
.LFB2:
	pushq	%rbp
.LCFI0:
	movq	%rsp, %rbp
.LCFI1:
	pushq	%rbx
.LCFI2:
	movq	%rdi, %r14
	movq	%rsi, %r15
	movq	$0, %r13
.L3:
	cmpq	$49999999, %r13
	jg	.L2

	leaq	0(%r14,%r13,8), %rbx
	call	rand
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movsd	.LC0(%rip), %xmm1
	movsd	.LC1(%rip), %xmm2
	movsd	.LC2(%rip), %xmm3
	mulsd	%xmm1, %xmm0
	divsd	%xmm2, %xmm0
	subsd	%xmm3, %xmm0

	movsd	%xmm0, (%rbx)
	
	leaq	0(%r15,%r13,8), %rbx
	call	rand
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movsd	.LC0(%rip), %xmm1
	movsd	.LC1(%rip), %xmm2
	movsd	.LC2(%rip), %xmm3
	mulsd	%xmm1, %xmm0
	divsd	%xmm2, %xmm0
	subsd	%xmm3, %xmm0

	movsd	%xmm0, (%rbx)
	addq	$1, %r13
	jmp	.L3
.L2:
	movl	$0, %eax
	popq	%rbx
	popq	%rbp
.LCFI3:
	ret
.LFE2:
	.size	_Z5func1PdS_, .-_Z5func1PdS_
	.globl	_Z5func2PdS_
	.type	_Z5func2PdS_, @function



_Z5func2PdS_:
.LFB3:
	pushq	%rbp
.LCFI4:
	movq	%rsp, %rbp
.LCFI5:
	pxor    %xmm14, %xmm14
	movq    %rdi, %r14
	movq    %rsi, %r15
	movq	$0, %r13
.L7:
	cmpq	$49999999, %r13
	jg	.L6

	leaq	0(%r14,%r13,8), %rdx
	movsd	(%rdx), %xmm0
	call	sin
	movsd   .LC4(%rip), %xmm15
	mulsd	%xmm0, %xmm15

	leaq	0(%r15,%r13,8), %rdx
	movsd	(%rdx), %xmm0
	call	cos
	mulsd   %xmm15, %xmm0

	addsd	%xmm0, %xmm14
	addq	$1, %r13
	jmp	.L7
.L6:
	movsd	%xmm14, %xmm0
	leave
.LCFI6:
	ret
.LFE3:
	.size	_Z5func2PdS_, .-_Z5func2PdS_
	.section	.rodata
.LC5:
	.string	"\n\n result = %lf\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB4:
	pushq	%rbp
.LCFI7:
	movq	%rsp, %rbp
.LCFI8:
	subq	$48, %rsp
	
	movl	$400000000, %edi
	call	_Znam
	movq	%rax, %r14
	movl	$400000000, %edi
	call	_Znam
	movq	%rax, %r15
	movq	%r15, %rsi
	movq	%r14, %rdi

	call	_Z5func1PdS_
	movq	%r15, %rsi
	movq	%r14, %rdi
	call	_Z5func2PdS_
	
	movl	$.LC5, %edi
	movl	$1, %eax
	call	printf

	movq	%r14, %rdi
	call	_ZdlPv
	movq	%r15, %rdi
	call	_ZdlPv

	movl	$0, %eax
	leave
.LCFI9:
	ret
.LFE4:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1079574528
	.align 8
.LC1:
	.long	4290772992
	.long	1105199103
	.align 8
.LC2:
	.long	0
	.long	1078525952
	.align 8
.LC4:
	.long	3100958126
	.long	1075678820
	.section	.eh_frame,"a",@progbits
.LEFDE1:
	.ident	"GCC: (Ubuntu 5.5.0-12ubuntu1~16.04) 5.5.0 20171010"
	.section	.note.GNU-stack,"",@progbits
