	.file	"prog.cpp"
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
.LC0:
	.string	"stoll"
	.section	.text._ZNSt7__cxx115stollERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi,"axG",@progbits,_ZNSt7__cxx115stollERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi,comdat
	.weak	_ZNSt7__cxx115stollERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
	.type	_ZNSt7__cxx115stollERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi, @function
_ZNSt7__cxx115stollERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi:
.LFB859:
	endbr64
	pushq	%rbp
.LCFI0:
	movq	%rsp, %rbp
.LCFI1:
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv@PLT
	movq	%rax, %rdx
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rax, %rcx
	leaq	.LC0(%rip), %rsi
	movq	strtoll@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	leave
.LCFI2:
	ret
.LFE859:
	.size	_ZNSt7__cxx115stollERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi, .-_ZNSt7__cxx115stollERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
	.section	.text._ZStanSt13_Ios_FmtflagsS_,"axG",@progbits,_ZStanSt13_Ios_FmtflagsS_,comdat
	.weak	_ZStanSt13_Ios_FmtflagsS_
	.type	_ZStanSt13_Ios_FmtflagsS_, @function
_ZStanSt13_Ios_FmtflagsS_:
.LFB1056:
	endbr64
	pushq	%rbp
.LCFI3:
	movq	%rsp, %rbp
.LCFI4:
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	andl	-8(%rbp), %eax
	popq	%rbp
.LCFI5:
	ret
.LFE1056:
	.size	_ZStanSt13_Ios_FmtflagsS_, .-_ZStanSt13_Ios_FmtflagsS_
	.section	.text._ZStorSt13_Ios_FmtflagsS_,"axG",@progbits,_ZStorSt13_Ios_FmtflagsS_,comdat
	.weak	_ZStorSt13_Ios_FmtflagsS_
	.type	_ZStorSt13_Ios_FmtflagsS_, @function
_ZStorSt13_Ios_FmtflagsS_:
.LFB1057:
	endbr64
	pushq	%rbp
.LCFI6:
	movq	%rsp, %rbp
.LCFI7:
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	orl	-8(%rbp), %eax
	popq	%rbp
.LCFI8:
	ret
.LFE1057:
	.size	_ZStorSt13_Ios_FmtflagsS_, .-_ZStorSt13_Ios_FmtflagsS_
	.section	.text._ZStcoSt13_Ios_Fmtflags,"axG",@progbits,_ZStcoSt13_Ios_Fmtflags,comdat
	.weak	_ZStcoSt13_Ios_Fmtflags
	.type	_ZStcoSt13_Ios_Fmtflags, @function
_ZStcoSt13_Ios_Fmtflags:
.LFB1059:
	endbr64
	pushq	%rbp
.LCFI9:
	movq	%rsp, %rbp
.LCFI10:
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	notl	%eax
	popq	%rbp
.LCFI11:
	ret
.LFE1059:
	.size	_ZStcoSt13_Ios_Fmtflags, .-_ZStcoSt13_Ios_Fmtflags
	.section	.text._ZStoRRSt13_Ios_FmtflagsS_,"axG",@progbits,_ZStoRRSt13_Ios_FmtflagsS_,comdat
	.weak	_ZStoRRSt13_Ios_FmtflagsS_
	.type	_ZStoRRSt13_Ios_FmtflagsS_, @function
_ZStoRRSt13_Ios_FmtflagsS_:
.LFB1060:
	endbr64
	pushq	%rbp
.LCFI12:
	movq	%rsp, %rbp
.LCFI13:
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	_ZStorSt13_Ios_FmtflagsS_
	movq	-8(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-8(%rbp), %rax
	leave
.LCFI14:
	ret
.LFE1060:
	.size	_ZStoRRSt13_Ios_FmtflagsS_, .-_ZStoRRSt13_Ios_FmtflagsS_
	.section	.text._ZStaNRSt13_Ios_FmtflagsS_,"axG",@progbits,_ZStaNRSt13_Ios_FmtflagsS_,comdat
	.weak	_ZStaNRSt13_Ios_FmtflagsS_
	.type	_ZStaNRSt13_Ios_FmtflagsS_, @function
_ZStaNRSt13_Ios_FmtflagsS_:
.LFB1061:
	endbr64
	pushq	%rbp
.LCFI15:
	movq	%rsp, %rbp
.LCFI16:
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	_ZStanSt13_Ios_FmtflagsS_
	movq	-8(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-8(%rbp), %rax
	leave
.LCFI17:
	ret
.LFE1061:
	.size	_ZStaNRSt13_Ios_FmtflagsS_, .-_ZStaNRSt13_Ios_FmtflagsS_
	.section	.text._ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_,"axG",@progbits,_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_,comdat
	.align 2
	.weak	_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_
	.type	_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_, @function
_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_:
.LFB1090:
	endbr64
	pushq	%rbp
.LCFI18:
	movq	%rsp, %rbp
.LCFI19:
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	_ZStcoSt13_Ios_Fmtflags
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZStaNRSt13_Ios_FmtflagsS_
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	_ZStanSt13_Ios_FmtflagsS_
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZStoRRSt13_Ios_FmtflagsS_
	movl	-4(%rbp), %eax
	leave
.LCFI20:
	ret
.LFE1090:
	.size	_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_, .-_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_
	.section	.text._ZSt5fixedRSt8ios_base,"axG",@progbits,_ZSt5fixedRSt8ios_base,comdat
	.weak	_ZSt5fixedRSt8ios_base
	.type	_ZSt5fixedRSt8ios_base, @function
_ZSt5fixedRSt8ios_base:
.LFB1120:
	endbr64
	pushq	%rbp
.LCFI21:
	movq	%rsp, %rbp
.LCFI22:
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$260, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_
	movq	-8(%rbp), %rax
	leave
.LCFI23:
	ret
.LFE1120:
	.size	_ZSt5fixedRSt8ios_base, .-_ZSt5fixedRSt8ios_base
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata
	.type	_ZStL13allocator_arg, @object
	.size	_ZStL13allocator_arg, 1
_ZStL13allocator_arg:
	.zero	1
	.type	_ZStL6ignore, @object
	.size	_ZStL6ignore, 1
_ZStL6ignore:
	.zero	1
	.section	.text._ZSt12setprecisioni,"axG",@progbits,_ZSt12setprecisioni,comdat
	.weak	_ZSt12setprecisioni
	.type	_ZSt12setprecisioni, @function
_ZSt12setprecisioni:
.LFB1964:
	endbr64
	pushq	%rbp
.LCFI24:
	movq	%rsp, %rbp
.LCFI25:
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
.LCFI26:
	ret
.LFE1964:
	.size	_ZSt12setprecisioni, .-_ZSt12setprecisioni
	.text
	.globl	_Z14GregoryLeibnizx
	.type	_Z14GregoryLeibnizx, @function
_Z14GregoryLeibnizx:
.LFB1978:
	endbr64
	pushq	%rbp                   ; remember stack base of a previous function
.LCFI27:
	movq	%rsp, %rbp             ; now base of the stack is a cell above cell
                                       ;    which stores stack base of a previous function
.LCFI28:
	movq	%rdi, -40(%rbp)        ; %rdi (N from main) ---> -40(%rbp)
	pxor	%xmm0, %xmm0           ; definition of
	movsd	%xmm0, -24(%rbp)       ;    variable sum ( -24(%rbp) )
	movsd	.LC2(%rip), %xmm0      ; definition of
	movsd	%xmm0, -16(%rbp)       ;    variable prev ( -16(%rbp) )
	movq	$0, -8(%rbp)           ; definition of
                                       ;    variable n ( -8(%rbp) )
.L21:
	movq	-8(%rbp), %rax         ; n ---> %rax
	cmpq	-40(%rbp), %rax        ; if (n < N)
	jge	.L20                   ; if n >= N the jump to .L20
	movq	-8(%rbp), %rax         ; n ---> %rax
	subq	$1, %rax               ; n - 1
	addq	%rax, %rax             ; 2 * (n - 1)
	addq	$1, %rax               ; 2 * (n - 1) + 1
	cvtsi2sdq	%rax, %xmm0    ; convert (2 * (n - 1) + 1) to double
                                       ;    now stored in %xmm0
	movsd	-16(%rbp), %xmm1       ; prev ---> %xmm1
	mulsd	%xmm1, %xmm0           ; prev * (2 * (n - 1) + 1)
	movsd	%xmm0, -16(%rbp)       ; prev = prev * (2 * (n - 1) + 1)
	movq	-8(%rbp), %rax         ; n ---> %rax
	addq	%rax, %rax             ; 2 * n
	addq	$1, %rax               ; 2 * n + 1
	cvtsi2sdq	%rax, %xmm1    ; convert (2 * (n + 1)) to double
                                       ;    now stored in %xmm1
	movsd	-16(%rbp), %xmm0       ; prev ---> %xmm0
	divsd	%xmm1, %xmm0           ; prev / (2 * (n + 1))
	movsd	%xmm0, -16(%rbp)       ; prev = prev / (2 * (n + 1))
	movsd	-16(%rbp), %xmm0       ; prev ---> %xmm0
	movq	.LC3(%rip), %xmm1      ; 1 ---> %xmm1
	xorpd	%xmm1, %xmm0           ; prev * ( -1 )
	movsd	%xmm0, -16(%rbp)       ; prev = prev * ( -1 )
	movsd	-16(%rbp), %xmm1       ; prev ---> %xmm1
	movsd	.LC4(%rip), %xmm0      ; 4 (as double) ---> %xmm0
	mulsd	%xmm1, %xmm0           ; 4 * prev ---> %xmm0
	movsd	-24(%rbp), %xmm1       ; sum ---> %xmm1
	addsd	%xmm1, %xmm0           ; sum + 4 * prev
	movsd	%xmm0, -24(%rbp)       ; sum = sum + 4 * prev
	addq	$1, -8(%rbp)           ; +1 to counter (n)
	jmp	.L21                   ; goto .L21 (new step of a for loop)
.L20:                                  ; if (n >= N)
	movsd	-24(%rbp), %xmm0       ; sum ---> %xmm0
	popq	%rbp                   ; %rsp (which wasn't changed during
                                       ;    function execution) ---> %rbp
.LCFI29:
	ret                            ; return
.LFE1978:
	.size	_Z14GregoryLeibnizx, .-_Z14GregoryLeibnizx
	.section	.rodata
.LC5:
	.string	"\n"
.LC6:
	.string	"Time taken: "
	.text
	.globl	main
	.type	main, @function
main:
.LFB1979:
	endbr64
	pushq	%rbp
.LCFI30:
	movq	%rsp, %rbp
.LCFI31:
	pushq	%rbx
	subq	$168, %rsp             ; allocate memory on stack
.LCFI32:
	movl	%edi, -164(%rbp)       ; argc
	movq	%rsi, -176(%rbp)       ; argv
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	cmpl	$1, -164(%rbp)         ; if argc > 1
	jg	.L24                   ;    jump to .L24
	movl	$0, %eax               ; else 0 ---> %eax and
	jmp	.L26                   ;    jump to returning-from-main
                                       ;    part of code
.L24:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	movq	-176(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rcx
	leaq	-96(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.LEHE0:
	leaq	-64(%rbp), %rax
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB1:
	call	_ZNSt7__cxx115stollERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
.LEHE1:
	movq	%rax, -160(%rbp)       ; N as long long is stored
                                       ;    in -160(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movl	$2, %edi
	call	sysconf@PLT
	movq	%rax, -152(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	times@PLT              ; times(&start)
	movq	-160(%rbp), %rax       ; N ---> %rax
	movq	%rax, %rdi             ; %rax (N) ---> %rdi
	call	_Z14GregoryLeibnizx
	movq	%xmm0, %rax
	movq	%rax, -144(%rbp)       ; result of function now is
                                       ;    stored in -144(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	times@PLT              ; times(&end)
	leaq	_ZSt5fixedRSt8ios_base(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB2:
	call	_ZNSolsEPFRSt8ios_baseS0_E@PLT
	movq	%rax, %rbx
	movl	$10, %edi
	call	_ZSt12setprecisioni
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St13_Setprecision@PLT
	movq	%rax, %rdx
	movq	-144(%rbp), %rax
	movq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd@PLT
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	-96(%rbp), %rdx
	movq	-128(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -136(%rbp)
	leaq	.LC6(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	movl	$2, %edi
	call	_ZSt12setprecisioni
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St13_Setprecision@PLT
	cvtsi2sdq	-136(%rbp), %xmm0
	cvtsi2sdq	-152(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEd@PLT
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$0, %eax
.L26:
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L29
	jmp	.L32
.L31:
	endbr64
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L28
.L30:
	endbr64
	movq	%rax, %rbx
.L28:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE2:
.L32:
	call	__stack_chk_fail@PLT
.L29:
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
.LCFI33:
	ret
.LFE1979:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1979:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1979-.LLSDACSB1979
.LLSDACSB1979:
	.uleb128 .LEHB0-.LFB1979
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L30-.LFB1979
	.uleb128 0
	.uleb128 .LEHB1-.LFB1979
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L31-.LFB1979
	.uleb128 0
	.uleb128 .LEHB2-.LFB1979
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1979:
	.text
	.size	main, .-main
	.section	.text._ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC5Ev,comdat
	.align 2
	.weak	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.type	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev, @function
_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev:
.LFB2010:
	endbr64
	pushq	%rbp
.LCFI34:
	movq	%rsp, %rbp
.LCFI35:
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	__errno_location@PLT
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	call	__errno_location@PLT
	movl	$0, (%rax)
	nop
	leave
.LCFI36:
	ret
.LFE2010:
	.size	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev, .-_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.weak	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev
	.set	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev,_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.section	.text._ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD5Ev,comdat
	.align 2
	.weak	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.type	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev, @function
_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev:
.LFB2013:
	endbr64
	pushq	%rbp
.LCFI37:
	movq	%rsp, %rbp
.LCFI38:
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	__errno_location@PLT
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L36
	call	__errno_location@PLT
	movq	-8(%rbp), %rdx
	movl	(%rdx), %edx
	movl	%edx, (%rax)
.L36:
	nop
	leave
.LCFI39:
	ret
.LFE2013:
	.size	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev, .-_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.weak	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev
	.set	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev,_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.section	.text._ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkExSt17integral_constantIbLb0EE,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkExSt17integral_constantIbLb0EE,comdat
	.weak	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkExSt17integral_constantIbLb0EE
	.type	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkExSt17integral_constantIbLb0EE, @function
_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkExSt17integral_constantIbLb0EE:
.LFB2015:
	endbr64
	pushq	%rbp
.LCFI40:
	movq	%rsp, %rbp
.LCFI41:
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
.LCFI42:
	ret
.LFE2015:
	.size	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkExSt17integral_constantIbLb0EE, .-_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkExSt17integral_constantIbLb0EE
	.section	.text._ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.weak	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.type	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, @function
_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_:
.LFB2008:
	endbr64
	pushq	%rbp
.LCFI43:
	movq	%rsp, %rbp
.LCFI44:
	pushq	%rbx
	subq	$104, %rsp
.LCFI45:
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	%r8d, -100(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-52(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev
	movl	-100(%rbp), %edx
	leaq	-48(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	-72(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB3:
	call	*%r8
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	cmpq	%rax, -88(%rbp)
	jne	.L40
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt24__throw_invalid_argumentPKc@PLT
.L40:
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$34, %eax
	je	.L41
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkExSt17integral_constantIbLb0EE
	testb	%al, %al
	je	.L42
.L41:
	movl	$1, %eax
	jmp	.L43
.L42:
	movl	$0, %eax
.L43:
	testb	%al, %al
	je	.L44
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_out_of_rangePKc@PLT
.LEHE3:
.L44:
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L45
	movq	-48(%rbp), %rax
	subq	-88(%rbp), %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
.L45:
	movq	-32(%rbp), %rbx
	leaq	-52(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev
	movq	%rbx, %rax
	movq	-24(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L48
	jmp	.L50
.L49:
	endbr64
	movq	%rax, %rbx
	leaq	-52(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB4:
	call	_Unwind_Resume@PLT
.LEHE4:
.L50:
	call	__stack_chk_fail@PLT
.L48:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
.LCFI46:
	ret
.LFE2008:
	.section	.gcc_except_table
.LLSDA2008:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2008-.LLSDACSB2008
.LLSDACSB2008:
	.uleb128 .LEHB3-.LFB2008
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L49-.LFB2008
	.uleb128 0
	.uleb128 .LEHB4-.LFB2008
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE2008:
	.section	.text._ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.size	_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, .-_ZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2327:
	endbr64
	pushq	%rbp
.LCFI47:
	movq	%rsp, %rbp
.LCFI48:
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L53
	cmpl	$65535, -8(%rbp)
	jne	.L53
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L53:
	nop
	leave
.LCFI49:
	ret
.LFE2327:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z14GregoryLeibnizx, @function
_GLOBAL__sub_I__Z14GregoryLeibnizx:
.LFB2328:
	endbr64
	pushq	%rbp
.LCFI50:
	movq	%rsp, %rbp
.LCFI51:
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
.LCFI52:
	ret
.LFE2328:
	.size	_GLOBAL__sub_I__Z14GregoryLeibnizx, .-_GLOBAL__sub_I__Z14GregoryLeibnizx
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z14GregoryLeibnizx
	.section	.rodata
	.align 8
.LC2:
	.long	0
	.long	1072693248
	.align 16
.LC3:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC4:
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
	.long	.LFB859-.
	.long	.LFE859-.LFB859
	.uleb128 0x4
	.long	0
	.byte	0x4
	.long	.LCFI0-.LFB859
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.long	.LFB1979-.
	.long	.LFE1979-.LFB1979
	.uleb128 0x4
	.long	.LLSDA1979-.
	.byte	0x4
	.long	.LCFI30-.LFB1979
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI33-.LCFI32
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 8
.LEFDE3:
.LSFDE5:
	.long	.LEFDE5-.LASFDE5
.LASFDE5:
	.long	.LASFDE5-.Lframe1
	.long	.LFB2008-.
	.long	.LFE2008-.LFB2008
	.uleb128 0x4
	.long	.LLSDA2008-.
	.byte	0x4
	.long	.LCFI43-.LFB2008
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI44-.LCFI43
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI45-.LCFI44
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI46-.LCFI45
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 8
.LEFDE5:
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
