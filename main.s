	.file	"main.c"
	.text
	.globl	randomNum
	.type	randomNum, @function
randomNum:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	$0, %edi
	call	time@PLT
	movl	%eax, %edi
	call	srand@PLT
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	.LC1(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
	call	rand@PLT
	cvtsi2sdl	%eax, %xmm0
	movsd	.LC3(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm0
	subsd	-24(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	addsd	-24(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	call	rand@PLT
	cvtsi2sdl	%eax, %xmm0
	movsd	.LC3(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm0
	subsd	-24(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	addsd	-24(%rbp), %xmm0
	movq	-48(%rbp), %rax
	movsd	%xmm0, (%rax)
	call	rand@PLT
	cvtsi2sdl	%eax, %xmm0
	movsd	.LC3(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm0
	subsd	-16(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	addsd	-16(%rbp), %xmm0
	movq	-56(%rbp), %rax
	movsd	%xmm0, (%rax)
	call	rand@PLT
	cvtsi2sdl	%eax, %xmm0
	movsd	.LC3(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm0
	subsd	-16(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	addsd	-16(%rbp), %xmm0
	movq	-64(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L4
	jmp	.L5
.L4:
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-64(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-56(%rbp), %rax
	movsd	-8(%rbp), %xmm0
	movsd	%xmm0, (%rax)
.L5:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	randomNum, .-randomNum
	.globl	function
	.type	function, @function
function:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	.LC4(%rip), %xmm0
	movq	-24(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	mulsd	-40(%rbp), %xmm0
	movsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	function, .-function
	.type	integral, @function
integral:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movsd	%xmm0, -88(%rbp)
	movsd	%xmm1, -96(%rbp)
	movsd	%xmm2, -104(%rbp)
	movsd	%xmm3, -112(%rbp)
	movsd	.LC5(%rip), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	.LC6(%rip), %xmm0
	movsd	%xmm0, -80(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-112(%rbp), %xmm0
	subsd	-104(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	.LC7(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)
	jmp	.L9
.L12:
	movsd	-48(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-32(%rbp), %xmm0
	divsd	-80(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L10
.L11:
	movsd	-72(%rbp), %xmm1
	movsd	.LC8(%rip), %xmm0
	addsd	%xmm1, %xmm0
	mulsd	-16(%rbp), %xmm0
	addsd	-104(%rbp), %xmm0
	movsd	-96(%rbp), %xmm2
	movsd	-88(%rbp), %xmm1
	call	function
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movsd	-64(%rbp), %xmm0
	addsd	-8(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-72(%rbp), %xmm1
	movsd	.LC9(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
.L10:
	movsd	-80(%rbp), %xmm0
	comisd	-72(%rbp), %xmm0
	ja	.L11
	movsd	-16(%rbp), %xmm0
	mulsd	-64(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-80(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	movsd	%xmm0, -80(%rbp)
.L9:
	movsd	-56(%rbp), %xmm0
	subsd	-48(%rbp), %xmm0
	movq	.LC10(%rip), %xmm1
	andpd	%xmm1, %xmm0
	mulsd	-24(%rbp), %xmm0
	comisd	-40(%rbp), %xmm0
	ja	.L12
	pxor	%xmm0, %xmm0
	ucomisd	-48(%rbp), %xmm0
	jp	.L15
	pxor	%xmm0, %xmm0
	ucomisd	-48(%rbp), %xmm0
	je	.L12
.L15:
	movsd	-48(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	integral, .-integral
	.section	.rodata
.LC11:
	.string	"Not valid command!"
.LC12:
	.string	"time"
.LC13:
	.string	"loop"
	.align 8
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
	.align 8
.LC24:
	.string	"Input data: a = %lf; b = %lf; left = %lf; right = %lf \n"
.LC25:
	.string	"Result: %lf"
	.text
	.globl	main
	.type	main, @function
main:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movl	%edi, -116(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -104(%rbp)
	movl	$0, -100(%rbp)
	cmpl	$2, -116(%rbp)
	jg	.L17
	leaq	.LC11(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L37
.L17:
	movq	-128(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L19
	movl	$1, -104(%rbp)
	movq	-128(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L20
	movl	$1, -100(%rbp)
	jmp	.L20
.L19:
	movq	-128(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L20
	movl	$1, -100(%rbp)
.L20:
	movl	-100(%rbp), %eax
	leal	3(%rax), %edx
	movl	-104(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, -116(%rbp)
	jge	.L21
	leaq	.LC14(%rip), %rdi
	call	puts@PLT
	movl	$1, %eax
	jmp	.L37
.L21:
	movl	-100(%rbp), %eax
	leal	1(%rax), %edx
	movl	-104(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L22
	leaq	-64(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	leaq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	randomNum
	jmp	.L23
.L22:
	movl	-100(%rbp), %eax
	leal	1(%rax), %edx
	movl	-104(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L24
	leaq	.LC17(%rip), %rdi
	call	puts@PLT
	movl	$1, %eax
	jmp	.L37
.L24:
	leaq	-64(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	leaq	-80(%rbp), %rcx
	leaq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_fscanf@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movsd	-72(%rbp), %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	ja	.L25
	movsd	-64(%rbp), %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L23
.L25:
	leaq	.LC19(%rip), %rdi
	call	puts@PLT
	movl	$1, %eax
	jmp	.L37
.L23:
	movl	-100(%rbp), %eax
	leal	2(%rax), %edx
	movl	-104(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L27
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	$1, %eax
	jmp	.L37
.L27:
	cmpl	$1, -104(%rbp)
	je	.L28
	cmpl	$1, -100(%rbp)
	je	.L29
	movsd	-64(%rbp), %xmm2
	movsd	-72(%rbp), %xmm1
	movsd	-80(%rbp), %xmm0
	movq	-88(%rbp), %rax
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	integral
	movq	%xmm0, %rax
	movq	%rax, -56(%rbp)
	jmp	.L30
.L29:
	movl	$0, -96(%rbp)
	jmp	.L31
.L32:
	movsd	-64(%rbp), %xmm2
	movsd	-72(%rbp), %xmm1
	movsd	-80(%rbp), %xmm0
	movq	-88(%rbp), %rax
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	integral
	movq	%xmm0, %rax
	movq	%rax, -56(%rbp)
	addl	$1, -96(%rbp)
.L31:
	cmpl	$9999, -96(%rbp)
	jle	.L32
	jmp	.L30
.L28:
	cmpl	$1, -100(%rbp)
	je	.L33
	call	clock@PLT
	movq	%rax, -40(%rbp)
	movsd	-64(%rbp), %xmm2
	movsd	-72(%rbp), %xmm1
	movsd	-80(%rbp), %xmm0
	movq	-88(%rbp), %rax
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	integral
	movq	%xmm0, %rax
	movq	%rax, -56(%rbp)
	call	clock@PLT
	movq	%rax, -32(%rbp)
	jmp	.L34
.L33:
	call	clock@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -92(%rbp)
	jmp	.L35
.L36:
	movsd	-64(%rbp), %xmm2
	movsd	-72(%rbp), %xmm1
	movsd	-80(%rbp), %xmm0
	movq	-88(%rbp), %rax
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	integral
	movq	%xmm0, %rax
	movq	%rax, -56(%rbp)
	addl	$1, -92(%rbp)
.L35:
	cmpl	$9999, -92(%rbp)
	jle	.L36
	call	clock@PLT
	movq	%rax, -32(%rbp)
.L34:
	movq	-32(%rbp), %rax
	subq	-40(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC22(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %xmm0
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
.L30:
	movsd	-64(%rbp), %xmm2
	movsd	-72(%rbp), %xmm1
	movsd	-80(%rbp), %xmm0
	movq	-88(%rbp), %rdx
	movq	-24(%rbp), %rax
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rdx, %xmm0
	leaq	.LC24(%rip), %rsi
	movq	%rax, %rdi
	movl	$4, %eax
	call	fprintf@PLT
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %xmm0
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	$0, %eax
.L37:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L38
	call	__stack_chk_fail@PLT
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	2693803488
	.long	1081356792
	.align 8
.LC1:
	.long	2693803488
	.long	-1066126856
	.align 8
.LC3:
	.long	4290772992
	.long	1105199103
	.align 8
.LC4:
	.long	0
	.long	1070596096
	.align 8
.LC5:
	.long	3944497965
	.long	1058682594
	.align 8
.LC6:
	.long	0
	.long	1077149696
	.align 8
.LC7:
	.long	1431655765
	.long	1070945621
	.align 8
.LC8:
	.long	0
	.long	1071644672
	.align 8
.LC9:
	.long	0
	.long	1072693248
	.align 16
.LC10:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
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
