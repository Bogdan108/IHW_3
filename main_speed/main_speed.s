	.file	"main.c"
	.text
	.p2align 4
	.type	integral, @function
integral:
.LFB52:
	.cfi_startproc
	subsd	%xmm2, %xmm3
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movsd	.LC1(%rip), %xmm6
	movq	$0x000000000, 64(%rsp)
	movsd	64(%rsp), %xmm4
	movsd	%xmm0, 40(%rsp)
	pxor	%xmm0, %xmm0
	movsd	%xmm1, 48(%rsp)
	movsd	%xmm2, 56(%rsp)
	movsd	%xmm3, 72(%rsp)
	movsd	%xmm6, 24(%rsp)
	.p2align 4,,10
	.p2align 3
.L2:
	subsd	%xmm4, %xmm0
	andpd	.LC5(%rip), %xmm0
	mulsd	.LC6(%rip), %xmm0
	comisd	.LC7(%rip), %xmm0
	ja	.L6
	pxor	%xmm6, %xmm6
	ucomisd	%xmm6, %xmm4
	jp	.L1
	jne	.L1
.L6:
	movsd	24(%rsp), %xmm7
	movsd	72(%rsp), %xmm6
	pxor	%xmm3, %xmm3
	movapd	%xmm3, %xmm2
	divsd	%xmm7, %xmm6
	movsd	%xmm6, 32(%rsp)
	pxor	%xmm6, %xmm6
	comisd	%xmm6, %xmm7
	jbe	.L11
	.p2align 4,,10
	.p2align 3
.L5:
	movsd	.LC3(%rip), %xmm0
	movq	.LC2(%rip), %rax
	movsd	%xmm3, 16(%rsp)
	movsd	%xmm2, 8(%rsp)
	addsd	%xmm2, %xmm0
	mulsd	32(%rsp), %xmm0
	movq	%rax, %xmm1
	addsd	56(%rsp), %xmm0
	call	pow@PLT
	movsd	8(%rsp), %xmm2
	addsd	.LC4(%rip), %xmm2
	movsd	24(%rsp), %xmm1
	mulsd	48(%rsp), %xmm0
	addsd	40(%rsp), %xmm0
	movsd	16(%rsp), %xmm3
	comisd	%xmm2, %xmm1
	addsd	%xmm0, %xmm3
	ja	.L5
	movapd	%xmm1, %xmm5
.L3:
	mulsd	32(%rsp), %xmm3
	movapd	%xmm5, %xmm4
	movsd	64(%rsp), %xmm0
	addsd	%xmm5, %xmm4
	movsd	%xmm4, 24(%rsp)
	movsd	%xmm3, 64(%rsp)
	movapd	%xmm3, %xmm4
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L11:
	pxor	%xmm3, %xmm3
	movapd	%xmm7, %xmm5
	jmp	.L3
.L1:
	movsd	64(%rsp), %xmm0
	addq	$88, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE52:
	.size	integral, .-integral
	.p2align 4
	.globl	randomNum
	.type	randomNum, @function
randomNum:
.LFB50:
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
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	call	time@PLT
	movq	%rax, %rdi
	call	srand@PLT
	call	rand@PLT
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	divsd	.LC8(%rip), %xmm0
	mulsd	.LC9(%rip), %xmm0
	subsd	.LC10(%rip), %xmm0
	movsd	%xmm0, 0(%r13)
	call	rand@PLT
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	divsd	.LC8(%rip), %xmm0
	mulsd	.LC9(%rip), %xmm0
	subsd	.LC10(%rip), %xmm0
	movsd	%xmm0, (%r12)
	call	rand@PLT
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	cvtsi2sdl	%eax, %xmm0
	divsd	.LC8(%rip), %xmm0
	mulsd	.LC10(%rip), %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm0, (%rbx)
	call	rand@PLT
	pxor	%xmm0, %xmm0
	pxor	%xmm3, %xmm3
	cvtsi2sdl	%eax, %xmm0
	divsd	.LC8(%rip), %xmm0
	mulsd	.LC10(%rip), %xmm0
	addsd	%xmm3, %xmm0
	movsd	%xmm0, 0(%rbp)
	movsd	(%rbx), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L14
	movsd	%xmm1, 0(%rbp)
	movsd	%xmm0, (%rbx)
.L14:
	addq	$8, %rsp
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
.LFE50:
	.size	randomNum, .-randomNum
	.p2align 4
	.globl	function
	.type	function, @function
function:
.LFB51:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movsd	%xmm1, (%rsp)
	movsd	.LC2(%rip), %xmm1
	movsd	%xmm2, 8(%rsp)
	call	pow@PLT
	mulsd	8(%rsp), %xmm0
	addsd	(%rsp), %xmm0
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE51:
	.size	function, .-function
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC11:
	.string	"Not valid command!"
.LC12:
	.string	"time"
.LC13:
	.string	"loop"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC14:
	.string	"Incoorect data of command string"
	.section	.rodata.str1.1
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
	.section	.rodata.str1.8
	.align 8
.LC24:
	.string	"Input data: a = %lf; b = %lf; left = %lf; right = %lf \n"
	.section	.rodata.str1.1
.LC25:
	.string	"Result: %lf"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB53:
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
	subq	$176, %rsp
	.cfi_def_cfa_offset 224
	movq	%fs:40, %rax
	movq	%rax, 168(%rsp)
	xorl	%eax, %eax
	cmpl	$2, %edi
	jle	.L67
	movq	8(%rsi), %r8
	movl	%edi, %ebp
	movq	%rsi, %rbx
	movl	$5, %ecx
	leaq	.LC12(%rip), %rdi
	movq	%r8, %rsi
	repz cmpsb
	seta	%al
	sbbb	$0, %al
	testb	%al, %al
	jne	.L24
	movq	16(%rbx), %rdi
	leaq	.LC13(%rip), %rsi
	xorl	%r14d, %r14d
	movl	$1, %r12d
	call	strcmp@PLT
	testl	%eax, %eax
	sete	%r14b
.L25:
	leal	3(%r12,%r14), %eax
	cmpl	%ebp, %eax
	jg	.L68
.L26:
	leal	1(%r12,%r14), %eax
	leaq	.LC15(%rip), %rsi
	cltq
	movq	(%rbx,%rax,8), %rbp
	movq	%rbp, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L27
	leaq	160(%rsp), %rcx
	leaq	152(%rsp), %rdx
	leaq	144(%rsp), %rsi
	leaq	136(%rsp), %rdi
	call	randomNum
.L28:
	leal	2(%r12,%r14), %eax
	leaq	.LC20(%rip), %rsi
	cltq
	movq	(%rbx,%rax,8), %rdi
	call	fopen@PLT
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L69
	subl	$1, %r12d
	je	.L33
	subl	$1, %r14d
	jne	.L70
	movsd	.LC1(%rip), %xmm1
	movl	$10000, %ebx
	pxor	%xmm2, %xmm2
	movsd	%xmm1, 120(%rsp)
	movq	.LC5(%rip), %xmm1
	movaps	%xmm1, (%rsp)
	movsd	.LC6(%rip), %xmm1
	movsd	%xmm1, 24(%rsp)
	movsd	.LC7(%rip), %xmm1
	movsd	%xmm1, 32(%rsp)
	.p2align 4,,10
	.p2align 3
.L34:
	movsd	152(%rsp), %xmm5
	movsd	120(%rsp), %xmm3
	movapd	%xmm2, %xmm4
	movsd	160(%rsp), %xmm0
	movsd	144(%rsp), %xmm1
	movsd	136(%rsp), %xmm7
	subsd	%xmm5, %xmm0
	movsd	%xmm1, 96(%rsp)
	movsd	%xmm7, 104(%rsp)
	movsd	%xmm0, 112(%rsp)
	movapd	%xmm2, %xmm0
	.p2align 4,,10
	.p2align 3
.L36:
	subsd	%xmm4, %xmm0
	andpd	(%rsp), %xmm0
	mulsd	24(%rsp), %xmm0
	comisd	32(%rsp), %xmm0
	ja	.L40
	ucomisd	%xmm2, %xmm4
	jp	.L57
	jne	.L57
.L40:
	comisd	%xmm2, %xmm3
	movsd	112(%rsp), %xmm8
	movapd	%xmm2, %xmm6
	movapd	%xmm2, %xmm7
	divsd	%xmm3, %xmm8
	jbe	.L37
	.p2align 4,,10
	.p2align 3
.L39:
	movsd	.LC3(%rip), %xmm0
	movq	.LC2(%rip), %rax
	movsd	%xmm2, 88(%rsp)
	movsd	%xmm6, 80(%rsp)
	addsd	%xmm7, %xmm0
	movq	%rax, %xmm1
	movsd	%xmm3, 72(%rsp)
	movsd	%xmm4, 64(%rsp)
	movsd	%xmm7, 56(%rsp)
	mulsd	%xmm8, %xmm0
	movsd	%xmm8, 48(%rsp)
	movsd	%xmm5, 40(%rsp)
	addsd	%xmm5, %xmm0
	call	pow@PLT
	movsd	56(%rsp), %xmm7
	addsd	.LC4(%rip), %xmm7
	movsd	72(%rsp), %xmm3
	mulsd	96(%rsp), %xmm0
	addsd	104(%rsp), %xmm0
	movsd	80(%rsp), %xmm6
	comisd	%xmm7, %xmm3
	movsd	40(%rsp), %xmm5
	movsd	48(%rsp), %xmm8
	movsd	64(%rsp), %xmm4
	movsd	88(%rsp), %xmm2
	addsd	%xmm0, %xmm6
	ja	.L39
.L37:
	movapd	%xmm4, %xmm0
	movapd	%xmm8, %xmm4
	addsd	%xmm3, %xmm3
	mulsd	%xmm6, %xmm4
	jmp	.L36
.L24:
	leaq	.LC13(%rip), %rsi
	movq	%r8, %rdi
	call	strcmp@PLT
	movl	%eax, %r12d
	testl	%eax, %eax
	jne	.L52
	movl	$1, %r14d
	jmp	.L25
.L27:
	leaq	.LC16(%rip), %rsi
	movq	%rbp, %rdi
	call	fopen@PLT
	movq	%rax, %r13
	testq	%rax, %rax
	je	.L71
	movq	%rax, %rdi
	leaq	144(%rsp), %rcx
	leaq	136(%rsp), %rdx
	xorl	%eax, %eax
	leaq	160(%rsp), %r9
	leaq	152(%rsp), %r8
	leaq	.LC18(%rip), %rsi
	call	__isoc99_fscanf@PLT
	movq	%r13, %rdi
	call	fclose@PLT
	pxor	%xmm2, %xmm2
	comisd	152(%rsp), %xmm2
	ja	.L30
	comisd	160(%rsp), %xmm2
	jbe	.L28
.L30:
	leaq	.LC19(%rip), %rdi
	call	puts@PLT
	movl	$1, %eax
	jmp	.L21
.L67:
	leaq	.LC11(%rip), %rsi
	movl	$1, %edi
	call	__printf_chk@PLT
	xorl	%eax, %eax
.L21:
	movq	168(%rsp), %rdx
	xorq	%fs:40, %rdx
	jne	.L72
	addq	$176, %rsp
	.cfi_remember_state
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
.L52:
	.cfi_restore_state
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	jmp	.L26
.L70:
	movsd	160(%rsp), %xmm3
	movsd	152(%rsp), %xmm2
	movsd	144(%rsp), %xmm1
	movsd	136(%rsp), %xmm0
	call	integral
	movapd	%xmm0, %xmm4
.L35:
	movsd	160(%rsp), %xmm3
	leaq	.LC24(%rip), %rdx
	movsd	152(%rsp), %xmm2
	movl	$1, %esi
	movq	%rbp, %rdi
	movl	$4, %eax
	movsd	%xmm4, (%rsp)
	movsd	144(%rsp), %xmm1
	movsd	136(%rsp), %xmm0
	call	__fprintf_chk@PLT
	movsd	(%rsp), %xmm4
	movl	$1, %esi
	movq	%rbp, %rdi
	leaq	.LC25(%rip), %rdx
	movl	$1, %eax
	movapd	%xmm4, %xmm0
	call	__fprintf_chk@PLT
	movq	%rbp, %rdi
	call	fclose@PLT
	xorl	%eax, %eax
	jmp	.L21
	.p2align 4,,10
	.p2align 3
.L57:
	subl	$1, %ebx
	jne	.L34
	jmp	.L35
.L68:
	leaq	.LC14(%rip), %rdi
	call	puts@PLT
	movl	$1, %eax
	jmp	.L21
.L33:
	subl	$1, %r14d
	je	.L42
	call	clock@PLT
	movsd	160(%rsp), %xmm3
	movsd	152(%rsp), %xmm2
	movsd	144(%rsp), %xmm1
	movq	%rax, %r12
	movsd	136(%rsp), %xmm0
	call	integral
	movsd	%xmm0, (%rsp)
	call	clock@PLT
	movsd	(%rsp), %xmm4
.L43:
	subq	%r12, %rax
	pxor	%xmm0, %xmm0
	movl	$1, %esi
	movq	%rbp, %rdi
	cvtsi2sdq	%rax, %xmm0
	movl	$1, %eax
	leaq	.LC23(%rip), %rdx
	movsd	%xmm4, (%rsp)
	divsd	.LC22(%rip), %xmm0
	call	__fprintf_chk@PLT
	movsd	(%rsp), %xmm4
	jmp	.L35
.L71:
	leaq	.LC17(%rip), %rdi
	call	puts@PLT
	movl	$1, %eax
	jmp	.L21
.L42:
	call	clock@PLT
	movl	$10000, %ebx
	pxor	%xmm2, %xmm2
	movsd	.LC1(%rip), %xmm1
	movq	%rax, %r12
	movsd	%xmm1, 120(%rsp)
	movq	.LC5(%rip), %xmm1
	movaps	%xmm1, (%rsp)
	movsd	.LC6(%rip), %xmm1
	movsd	%xmm1, 24(%rsp)
	movsd	.LC7(%rip), %xmm1
	movsd	%xmm1, 32(%rsp)
	.p2align 4,,10
	.p2align 3
.L50:
	movsd	152(%rsp), %xmm5
	movsd	120(%rsp), %xmm3
	movapd	%xmm2, %xmm4
	movsd	160(%rsp), %xmm0
	movsd	144(%rsp), %xmm1
	movsd	136(%rsp), %xmm6
	movsd	%xmm5, 88(%rsp)
	subsd	%xmm5, %xmm0
	movsd	%xmm1, 96(%rsp)
	movsd	%xmm6, 104(%rsp)
	movsd	%xmm0, 112(%rsp)
	movapd	%xmm2, %xmm0
	.p2align 4,,10
	.p2align 3
.L44:
	subsd	%xmm4, %xmm0
	andpd	(%rsp), %xmm0
	mulsd	24(%rsp), %xmm0
	comisd	32(%rsp), %xmm0
	ja	.L48
	ucomisd	%xmm2, %xmm4
	jp	.L59
	jne	.L59
.L48:
	comisd	%xmm2, %xmm3
	movsd	112(%rsp), %xmm7
	movapd	%xmm2, %xmm6
	movapd	%xmm2, %xmm5
	divsd	%xmm3, %xmm7
	jbe	.L45
	.p2align 4,,10
	.p2align 3
.L47:
	movsd	.LC3(%rip), %xmm0
	movq	.LC2(%rip), %rax
	movsd	%xmm2, 80(%rsp)
	movsd	%xmm3, 72(%rsp)
	addsd	%xmm5, %xmm0
	movq	%rax, %xmm1
	movsd	%xmm6, 64(%rsp)
	movsd	%xmm4, 56(%rsp)
	movsd	%xmm5, 48(%rsp)
	mulsd	%xmm7, %xmm0
	movsd	%xmm7, 40(%rsp)
	addsd	88(%rsp), %xmm0
	call	pow@PLT
	movsd	48(%rsp), %xmm5
	addsd	.LC4(%rip), %xmm5
	movsd	72(%rsp), %xmm3
	mulsd	96(%rsp), %xmm0
	addsd	104(%rsp), %xmm0
	movsd	64(%rsp), %xmm6
	comisd	%xmm5, %xmm3
	movsd	40(%rsp), %xmm7
	movsd	56(%rsp), %xmm4
	movsd	80(%rsp), %xmm2
	addsd	%xmm0, %xmm6
	ja	.L47
.L45:
	mulsd	%xmm7, %xmm6
	movapd	%xmm4, %xmm0
	addsd	%xmm3, %xmm3
	movapd	%xmm6, %xmm4
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L59:
	subl	$1, %ebx
	jne	.L50
	movsd	%xmm4, (%rsp)
	call	clock@PLT
	movsd	(%rsp), %xmm4
	jmp	.L43
.L69:
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
	movq	%r13, %rdi
	call	fclose@PLT
	movl	$1, %eax
	jmp	.L21
.L72:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE53:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1077149696
	.align 8
.LC2:
	.long	0
	.long	1070596096
	.align 8
.LC3:
	.long	0
	.long	1071644672
	.align 8
.LC4:
	.long	0
	.long	1072693248
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC5:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC6:
	.long	1431655765
	.long	1070945621
	.align 8
.LC7:
	.long	3944497965
	.long	1058682594
	.align 8
.LC8:
	.long	4290772992
	.long	1105199103
	.align 8
.LC9:
	.long	2693803488
	.long	1082405368
	.align 8
.LC10:
	.long	2693803488
	.long	1081356792
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
