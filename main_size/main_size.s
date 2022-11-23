	.file	"main.c"
	.text
	.globl	randomNum
	.type	randomNum, @function
randomNum:
.LFB35:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rdi, %r13
	xorl	%edi, %edi
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rcx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdx, %rbx
	pushq	%r8
	.cfi_def_cfa_offset 48
	call	time@PLT
	movq	%rax, %rdi
	call	srand@PLT
	call	rand@PLT
	cvtsi2sdl	%eax, %xmm0
	divsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	subsd	.LC2(%rip), %xmm0
	movsd	%xmm0, 0(%r13)
	call	rand@PLT
	cvtsi2sdl	%eax, %xmm0
	divsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	subsd	.LC2(%rip), %xmm0
	movsd	%xmm0, (%r12)
	call	rand@PLT
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%eax, %xmm1
	divsd	.LC0(%rip), %xmm1
	mulsd	.LC2(%rip), %xmm1
	addsd	%xmm2, %xmm1
	movsd	%xmm1, (%rbx)
	call	rand@PLT
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%eax, %xmm0
	divsd	.LC0(%rip), %xmm0
	mulsd	.LC2(%rip), %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 0(%rbp)
	movsd	(%rbx), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L1
	movsd	%xmm1, 0(%rbp)
	movsd	%xmm0, (%rbx)
.L1:
	popq	%rax
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE35:
	.size	randomNum, .-randomNum
	.globl	function
	.type	function, @function
function:
.LFB36:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movsd	%xmm1, (%rsp)
	movsd	.LC4(%rip), %xmm1
	movsd	%xmm2, 8(%rsp)
	call	pow@PLT
	mulsd	8(%rsp), %xmm0
	addsd	(%rsp), %xmm0
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE36:
	.size	function, .-function
	.type	integral, @function
integral:
.LFB37:
	.cfi_startproc
	subsd	%xmm2, %xmm3
	xorps	%xmm4, %xmm4
	movapd	%xmm0, %xmm7
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movsd	.LC5(%rip), %xmm5
	movapd	%xmm1, %xmm8
	movapd	%xmm2, %xmm6
	movapd	%xmm4, %xmm0
.L10:
	subsd	%xmm4, %xmm0
	andps	.LC8(%rip), %xmm0
	mulsd	.LC9(%rip), %xmm0
	comisd	.LC10(%rip), %xmm0
	jbe	.L16
.L13:
	movapd	%xmm3, %xmm11
	xorps	%xmm10, %xmm10
	divsd	%xmm5, %xmm11
	movapd	%xmm10, %xmm9
.L11:
	comisd	%xmm9, %xmm5
	jbe	.L17
	movapd	%xmm8, %xmm2
	movapd	%xmm7, %xmm1
	movsd	.LC6(%rip), %xmm0
	movsd	%xmm4, 72(%rsp)
	movsd	%xmm3, 64(%rsp)
	addsd	%xmm9, %xmm0
	movsd	%xmm10, 56(%rsp)
	movsd	%xmm5, 48(%rsp)
	movsd	%xmm9, 40(%rsp)
	mulsd	%xmm11, %xmm0
	movsd	%xmm11, 32(%rsp)
	movsd	%xmm6, 24(%rsp)
	movsd	%xmm8, 16(%rsp)
	movsd	%xmm7, 8(%rsp)
	addsd	%xmm6, %xmm0
	call	function
	movsd	56(%rsp), %xmm10
	movsd	40(%rsp), %xmm9
	movsd	72(%rsp), %xmm4
	movsd	64(%rsp), %xmm3
	addsd	%xmm0, %xmm10
	movsd	48(%rsp), %xmm5
	addsd	.LC7(%rip), %xmm9
	movsd	32(%rsp), %xmm11
	movsd	24(%rsp), %xmm6
	movsd	16(%rsp), %xmm8
	movsd	8(%rsp), %xmm7
	jmp	.L11
.L17:
	movapd	%xmm4, %xmm0
	movapd	%xmm10, %xmm4
	addsd	%xmm5, %xmm5
	mulsd	%xmm11, %xmm4
	jmp	.L10
.L16:
	xorps	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm4
	jp	.L9
	je	.L13
.L9:
	movapd	%xmm4, %xmm0
	addq	$88, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE37:
	.size	integral, .-integral
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC11:
	.string	"Not valid command!"
.LC12:
	.string	"time"
.LC13:
	.string	"loop"
.LC14:
	.string	"Incoorect data of command string"
.LC15:
	.string	"random"
.LC16:
	.string	"r"
.LC17:
	.string	"Cannot open input file."
.LC18:
	.string	"%lf %lf %lf %lf"
.LC19:
	.string	"Incoorect data "
.LC20:
	.string	"w"
.LC21:
	.string	"Cannot open output file."
.LC23:
	.string	"Work time: %lf\n"
.LC24:
	.string	"Input data: a = %lf; b = %lf; left = %lf; right = %lf \n"
.LC25:
	.string	"Result: %lf"
	.section	.text.startup,"ax",@progbits
	.globl	main
	.type	main, @function
main:
.LFB38:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$64, %rsp
	.cfi_def_cfa_offset 112
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	cmpl	$2, %edi
	jg	.L19
	leaq	.LC11(%rip), %rsi
	movl	$1, %edi
	call	__printf_chk@PLT
	jmp	.L45
.L19:
	movq	8(%rsi), %r13
	movl	%edi, %r14d
	movq	%rsi, %rbp
	leaq	.LC12(%rip), %rsi
	movq	%r13, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L21
	movq	16(%rbp), %rdi
	leaq	.LC13(%rip), %rsi
	xorl	%ebx, %ebx
	movl	$1, %r13d
	call	strcmp@PLT
	testl	%eax, %eax
	sete	%bl
	jmp	.L22
.L21:
	movq	%r13, %rdi
	leaq	.LC13(%rip), %rsi
	xorl	%ebx, %ebx
	call	strcmp@PLT
	testl	%eax, %eax
	sete	%bl
	xorl	%r13d, %r13d
.L22:
	leal	3(%r13,%rbx), %eax
	leaq	.LC14(%rip), %rdi
	cmpl	%r14d, %eax
	jg	.L46
	leal	1(%r13,%rbx), %eax
	leaq	.LC15(%rip), %rsi
	cltq
	movq	0(%rbp,%rax,8), %r14
	movq	%r14, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L24
	leaq	48(%rsp), %rcx
	leaq	40(%rsp), %rdx
	leaq	32(%rsp), %rsi
	leaq	24(%rsp), %rdi
	call	randomNum
	jmp	.L25
.L24:
	movq	%r14, %rdi
	leaq	.LC16(%rip), %rsi
	call	fopen@PLT
	leaq	.LC17(%rip), %rdi
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L46
	movq	%rax, %rdi
	leaq	32(%rsp), %rcx
	leaq	24(%rsp), %rdx
	xorl	%eax, %eax
	leaq	48(%rsp), %r9
	leaq	40(%rsp), %r8
	leaq	.LC18(%rip), %rsi
	call	__isoc99_fscanf@PLT
	movq	%r12, %rdi
	call	fclose@PLT
	xorps	%xmm0, %xmm0
	comisd	40(%rsp), %xmm0
	ja	.L27
	comisd	48(%rsp), %xmm0
	jbe	.L25
.L27:
	leaq	.LC19(%rip), %rdi
.L46:
	call	puts@PLT
	jmp	.L44
.L25:
	leal	2(%r13,%rbx), %eax
	leaq	.LC20(%rip), %rsi
	cltq
	movq	0(%rbp,%rax,8), %rdi
	call	fopen@PLT
	movq	%rax, %rbp
	testq	%rax, %rax
	jne	.L29
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
	movq	%r12, %rdi
	call	fclose@PLT
.L44:
	movl	$1, %eax
	jmp	.L18
.L29:
	decl	%r13d
	je	.L30
	decl	%ebx
	movl	$10000, %r12d
	je	.L31
	movsd	48(%rsp), %xmm3
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	integral
	movsd	%xmm0, 8(%rsp)
	jmp	.L32
.L31:
	movsd	48(%rsp), %xmm3
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	integral
	movsd	%xmm0, 8(%rsp)
	decl	%r12d
	jne	.L31
	jmp	.L32
.L30:
	decl	%ebx
	je	.L33
	call	clock@PLT
	movsd	48(%rsp), %xmm3
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	movq	%rax, %rbx
	call	integral
	movsd	%xmm0, 8(%rsp)
	jmp	.L43
.L33:
	call	clock@PLT
	movl	$10000, %r12d
	movq	%rax, %rbx
.L35:
	movsd	48(%rsp), %xmm3
	movsd	40(%rsp), %xmm2
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	call	integral
	movsd	%xmm0, 8(%rsp)
	decl	%r12d
	jne	.L35
.L43:
	call	clock@PLT
	leaq	.LC23(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	subq	%rbx, %rax
	cvtsi2sdq	%rax, %xmm0
	movb	$1, %al
	divsd	.LC22(%rip), %xmm0
	call	__fprintf_chk@PLT
.L32:
	movsd	48(%rsp), %xmm3
	movsd	40(%rsp), %xmm2
	movq	%rbp, %rdi
	leaq	.LC24(%rip), %rdx
	movsd	32(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	movl	$1, %esi
	movb	$4, %al
	call	__fprintf_chk@PLT
	movsd	8(%rsp), %xmm0
	movq	%rbp, %rdi
	movb	$1, %al
	leaq	.LC25(%rip), %rdx
	movl	$1, %esi
	call	__fprintf_chk@PLT
	movq	%rbp, %rdi
	call	fclose@PLT
.L45:
	xorl	%eax, %eax
.L18:
	movq	56(%rsp), %rcx
	xorq	%fs:40, %rcx
	je	.L36
	call	__stack_chk_fail@PLT
.L36:
	addq	$64, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE38:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	4290772992
	.long	1105199103
	.align 8
.LC1:
	.long	2693803488
	.long	1082405368
	.align 8
.LC2:
	.long	2693803488
	.long	1081356792
	.align 8
.LC4:
	.long	0
	.long	1070596096
	.align 8
.LC5:
	.long	0
	.long	1077149696
	.align 8
.LC6:
	.long	0
	.long	1071644672
	.align 8
.LC7:
	.long	0
	.long	1072693248
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC8:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC9:
	.long	1431655765
	.long	1070945621
	.align 8
.LC10:
	.long	3944497965
	.long	1058682594
	.align 8
.LC22:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
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
