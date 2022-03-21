	.file	"prog.cpp"
	.text
	.p2align 4
	.globl	_Z14GregoryLeibnizx
	.type	_Z14GregoryLeibnizx, @function
_Z14GregoryLeibnizx:
.LFB2059:
	endbr64
	testq	%rdi, %rdi            ; test if %rdi (N) is
	jle	.L4                   ;    equal or less than
                                      ;    zero. If it is
                                      ;    then go to
                                      ;    returning mark
	movq	$-1, %rax             ; -1 ---> %rax (2*n - 1)
	pxor	%xmm1, %xmm1          ; %xmm1 stores 0
	movsd	.LC0(%rip), %xmm0     ; %xmm0 (prev) stores 1
	movq	.LC2(%rip), %xmm5     ; %xmm5 stores 1
	cvtsi2sdq	%rax, %xmm1   ; convert %rax (2*n - 1) to double
                                      ;    result stored in %xmm1
	movsd	.LC3(%rip), %xmm4     ; %xmm4 stores 4
	leaq	-1(%rdi,%rdi), %rdx   ; %rdx = %rdi + %rdi * 1 - 1
	pxor	%xmm2, %xmm2          ; %xmm2 stores 0
	.p2align 4,,10
	.p2align 3
.L3:
	mulsd	%xmm1, %xmm0          ; %xmm0 (prev) * %xmm1 (2*n - 1)
	addq	$2, %rax              ; %rax = 2*n - 1 + 2 = 2*n + 1
	pxor	%xmm1, %xmm1          ; %xmm1 now stores 0
	cvtsi2sdq	%rax, %xmm1   ; convert %rax (2*n + 1) to double
                                      ;    result stored in %xmm1
	divsd	%xmm1, %xmm0          ; %xmm0 (prev) / %xmm1 (2*n + 1)
	xorpd	%xmm5, %xmm0          ; %xmm0 (prev) *= -1
	movapd	%xmm0, %xmm3          ; %xmm0 (prev) ---> %xmm3
	mulsd	%xmm4, %xmm3          ; %xmm3 (prev) *= 4
	addsd	%xmm3, %xmm2          ; %xmm2 (sum) += %xmm3 (4*prev);
	cmpq	%rax, %rdx            ; if statement in new variables
	jne	.L3
	movapd	%xmm2, %xmm0          ; if loop ended then
                                      ;    %xmm2 (sum) ---> %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	pxor	%xmm2, %xmm2
	movapd	%xmm2, %xmm0
	ret
.LFE2059:
	.size	_Z14GregoryLeibnizx, .-_Z14GregoryLeibnizx
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"stoll"
.LC5:
	.string	"\n"
.LC6:
	.string	"Time taken: "
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC7:
	.string	"basic_string::_M_construct null not valid"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB8:
	.section	.text.startup,"ax",@progbits
.LHOTB8:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB2060:
	endbr64
	pushq	%r15
.LCFI0:
	pushq	%r14
.LCFI1:
	pushq	%r13
.LCFI2:
	pushq	%r12
.LCFI3:
	pushq	%rbp
.LCFI4:
	pushq	%rbx
.LCFI5:
	subq	$136, %rsp
.LCFI6:
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	cmpl	$1, %edi
	jle	.L8
	movq	8(%rsi), %rbp
	leaq	96(%rsp), %r13
	leaq	80(%rsp), %r8
	movq	%r13, 80(%rsp)
	testq	%rbp, %rbp
	je	.L9
	orq	$-1, %rcx
	movq	%rbp, %rdi
	repnz scasb
	notq	%rcx
	leaq	-1(%rcx), %r14
	movq	%r14, 48(%rsp)
	cmpq	$15, %r14
	ja	.L34
	cmpq	$1, %r14
	jne	.L12
	movzbl	0(%rbp), %eax
	leaq	48(%rsp), %r12
	movb	%al, 96(%rsp)
.L13:
	movq	48(%rsp), %rax
	movq	80(%rsp), %rdx
	movq	%rax, 88(%rsp)
	movb	$0, (%rdx,%rax)
	movq	80(%rsp), %r14
	call	__errno_location@PLT
	movl	$10, %edx
	movq	%r12, %rsi
	movq	%r14, %rdi
	movl	(%rax), %r15d
	movl	$0, (%rax)
	movq	%rax, %rbp
	call	strtoll@PLT
	movq	%rax, %rbx
	cmpq	48(%rsp), %r14
	je	.L35
	movl	0(%rbp), %eax
	cmpl	$34, %eax
	je	.L36
	testl	%eax, %eax
	jne	.L16
	movl	%r15d, 0(%rbp)
.L16:
	movq	80(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.L18
	call	_ZdlPv@PLT
.L18:
	movl	$2, %edi
	call	sysconf@PLT
	leaq	16(%rsp), %rdi
	movq	%rax, %rbp
	call	times@PLT
	testq	%rbx, %rbx
	jle	.L26
	orq	$-1, %rax
	pxor	%xmm1, %xmm1
	addq	%rbx, %rbx
	movsd	.LC0(%rip), %xmm0
	cvtsi2sdq	%rax, %xmm1
	movq	.LC2(%rip), %xmm5
	leaq	-1(%rbx), %rdx
	pxor	%xmm2, %xmm2
	movsd	.LC3(%rip), %xmm4
	.p2align 4,,10
	.p2align 3
.L24:
	mulsd	%xmm1, %xmm0
	addq	$2, %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm1, %xmm0
	xorpd	%xmm5, %xmm0
	movapd	%xmm0, %xmm3
	mulsd	%xmm4, %xmm3
	addsd	%xmm3, %xmm2
	cmpq	%rax, %rdx
	jne	.L24
.L23:
	movq	%r12, %rdi
	movsd	%xmm2, 8(%rsp)
	leaq	_ZSt4cout(%rip), %r12
	call	times@PLT
	movq	_ZSt4cout(%rip), %rax
	movsd	8(%rsp), %xmm2
	movq	%r12, %rdi
	movq	-24(%rax), %rdx
	movapd	%xmm2, %xmm0
	addq	%r12, %rdx
	movl	24(%rdx), %eax
	movq	$10, 8(%rdx)
	andl	$-261, %eax
	orl	$4, %eax
	movl	%eax, 24(%rdx)
.LEHB0:
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC6(%rip), %rsi
	movl	$12, %edx
	movq	%r12, %rdi
	movq	48(%rsp), %rbx
	subq	16(%rsp), %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	movq	%r12, %rdi
	cvtsi2sdq	%rbp, %xmm1
	movq	_ZSt4cout(%rip), %rax
	cvtsi2sdq	%rbx, %xmm0
	movq	-24(%rax), %rax
	movq	$2, 8(%r12,%rax)
	divsd	%xmm1, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.L8:
	movq	120(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L37
	addq	$136, %rsp
.LCFI7:
	xorl	%eax, %eax
	popq	%rbx
.LCFI8:
	popq	%rbp
.LCFI9:
	popq	%r12
.LCFI10:
	popq	%r13
.LCFI11:
	popq	%r14
.LCFI12:
	popq	%r15
.LCFI13:
	ret
.L12:
.LCFI14:
	leaq	48(%rsp), %r12
	testq	%r14, %r14
	je	.L13
	movq	%r13, %rdi
	jmp	.L11
.L34:
	leaq	48(%rsp), %r12
	movq	%r8, %rdi
	xorl	%edx, %edx
	movq	%r12, %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
	movq	%rax, 80(%rsp)
	movq	%rax, %rdi
	movq	48(%rsp), %rax
	movq	%rax, 96(%rsp)
.L11:
	movq	%r14, %rdx
	movq	%rbp, %rsi
	call	memcpy@PLT
	jmp	.L13
.L9:
	leaq	.LC7(%rip), %rdi
	call	_ZSt19__throw_logic_errorPKc@PLT
.LEHE0:
.L26:
	pxor	%xmm2, %xmm2
	jmp	.L23
.L37:
	call	__stack_chk_fail@PLT
.L36:
	leaq	.LC4(%rip), %rdi
.LEHB1:
	call	_ZSt20__throw_out_of_rangePKc@PLT
.L35:
	leaq	.LC4(%rip), %rdi
	call	_ZSt24__throw_invalid_argumentPKc@PLT
.LEHE1:
.L27:
	endbr64
	movq	%rax, %r12
	jmp	.L19
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2060:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2060-.LLSDACSB2060
.LLSDACSB2060:
	.uleb128 .LEHB0-.LFB2060
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2060
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L27-.LFB2060
	.uleb128 0
.LLSDACSE2060:
	.section	.text.startup
	.section	.text.unlikely
	.type	main.cold, @function
main.cold:
.LFSB2060:
.L19:
.LCFI15:
	cmpl	$0, 0(%rbp)
	jne	.L20
	movl	%r15d, 0(%rbp)
.L20:
	movq	80(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.L22
	call	_ZdlPv@PLT
.L22:
	movq	%r12, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.LFE2060:
	.section	.gcc_except_table
.LLSDAC2060:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2060-.LLSDACSBC2060
.LLSDACSBC2060:
	.uleb128 .LEHB2-.LCOLDB8
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSEC2060:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE8:
	.section	.text.startup
.LHOTE8:
	.p2align 4
	.type	_GLOBAL__sub_I__Z14GregoryLeibnizx, @function
_GLOBAL__sub_I__Z14GregoryLeibnizx:
.LFB2409:
	endbr64
	subq	$8, %rsp
.LCFI16:
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	addq	$8, %rsp
.LCFI17:
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	jmp	__cxa_atexit@PLT
.LFE2409:
	.size	_GLOBAL__sub_I__Z14GregoryLeibnizx, .-_GLOBAL__sub_I__Z14GregoryLeibnizx
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z14GregoryLeibnizx
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC2:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC3:
	.long	0
	.long	1074790400
	.section	.eh_frame,"a",@progbits
.Lframe1:
	.long	.LECIE1-.LSCIE1
.LSCIE1:
	.long	0
	.byte	0x3
	.string	"zPLR"
	.uleb128 0x1
	.sleb128 -8
	.uleb128 0x10
	.uleb128 0x7
	.byte	0x9b
	.long	DW.ref.__gxx_personality_v0-.
	.byte	0x1b
	.byte	0x1b
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x1
	.align 8
.LECIE1:
.LSFDE1:
	.long	.LEFDE1-.LASFDE1
.LASFDE1:
	.long	.LASFDE1-.Lframe1
	.long	.LFB2060-.
	.long	.LHOTE8-.LFB2060
	.uleb128 0x4
	.long	.LLSDA2060-.
	.byte	0x4
	.long	.LCFI0-.LFB2060
	.byte	0xe
	.uleb128 0x10
	.byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.byte	0x8d
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x28
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x30
	.byte	0x86
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x38
	.byte	0x83
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0xc0
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xa
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xb
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.long	.LFSB2060-.
	.long	.LCOLDE8-.LFSB2060
	.uleb128 0x4
	.long	.LLSDAC2060-.
	.byte	0x4
	.long	.LCFI15-.LFSB2060
	.byte	0xe
	.uleb128 0xc0
	.byte	0x83
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x8c
	.uleb128 0x5
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8f
	.uleb128 0x2
	.align 8
.LEFDE3:
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
