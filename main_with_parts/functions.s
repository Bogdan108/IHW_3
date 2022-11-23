	.file	"functions_part.c"
	.intel_syntax noprefix
	.text
	.globl	randomNum
	.type	randomNum, @function
randomNum:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	# кладём адресс переменной а на стек по смещению PTR -40[rbp]
	# положим переменную а в регистр rbx
	mov	rbx, rdi
	# кладём адресс переменной b на стек по смещению PTR -48[rbp]
	# положим переменную b в регистр r12
	mov	r12, rsi
	# кладём адресс переменной left на стек по смещению PTR -56[rbp]
	# положим переменную left в регистр r13
	mov	r13, rdx
	# кладём адресс переменной right на стек по смещению PTR -64[rbp]
	# положим переменную right в регистр r14
	mov	r14, rcx
	mov	edi, 0
	# вызов функции time для формирования случайных чисел
	call	time@PLT
	mov	edi, eax
	call	srand@PLT
	# кладём константыне занчения max и min и min_for_x
	movsd	xmm0, QWORD PTR .LC0[rip]
	# кладём значение в max по адресу PTR -32[rbp]
	movsd	QWORD PTR -32[rbp], xmm0
	movsd	xmm0, QWORD PTR .LC1[rip]
	# кладём значение в min по адресу PTR -24[rbp]
	movsd	QWORD PTR -24[rbp], xmm0
	pxor	xmm0, xmm0
	# кладём значение в min_for_x по адресу PTR -16[rbp]
	movsd	QWORD PTR -16[rbp], xmm0
	call	rand@PLT
	cvtsi2sd	xmm0, eax
	movsd	xmm1, QWORD PTR .LC3[rip]
	divsd	xmm0, xmm1
	movapd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -32[rbp]
	subsd	xmm0, QWORD PTR -24[rbp]
	mulsd	xmm0, xmm1
	addsd	xmm0, QWORD PTR -24[rbp]
	mov	rax, rbx
	movsd	QWORD PTR [rax], xmm0
	call	rand@PLT
	cvtsi2sd	xmm0, eax
	movsd	xmm1, QWORD PTR .LC3[rip]
	divsd	xmm0, xmm1
	movapd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -32[rbp]
	subsd	xmm0, QWORD PTR -24[rbp]
	mulsd	xmm0, xmm1
	addsd	xmm0, QWORD PTR -24[rbp]
	mov	rax, r12
	movsd	QWORD PTR [rax], xmm0
	call	rand@PLT
	cvtsi2sd	xmm0, eax
	movsd	xmm1, QWORD PTR .LC3[rip]
	divsd	xmm0, xmm1
	movapd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -32[rbp]
	subsd	xmm0, QWORD PTR -16[rbp]
	mulsd	xmm0, xmm1
	addsd	xmm0, QWORD PTR -16[rbp]
	mov	rax, r13
	movsd	QWORD PTR [rax], xmm0
	call	rand@PLT
	cvtsi2sd	xmm0, eax
	movsd	xmm1, QWORD PTR .LC3[rip]
	divsd	xmm0, xmm1
	movapd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -32[rbp]
	subsd	xmm0, QWORD PTR -16[rbp]
	mulsd	xmm0, xmm1
	addsd	xmm0, QWORD PTR -16[rbp]
	mov	rax, r14
	movsd	QWORD PTR [rax], xmm0
	mov	rax, r14
	movsd	xmm1, QWORD PTR [rax]
	mov	rax, r13
	movsd	xmm0, QWORD PTR [rax]
	comisd	xmm0, xmm1
	ja	.L4
	jmp	.L5
.L4:
	mov	rax, r14
	# разыменованное значение right
	movsd	xmm0, QWORD PTR [rax]
	# локальная переменная temp
	movsd	QWORD PTR -8[rbp], xmm0
	# разыменованное значение left
	mov	rax, r13
	movsd	xmm0, QWORD PTR [rax]
	mov	rax, r14
	movsd	QWORD PTR [rax], xmm0
	mov	rax, r13
	movsd	xmm0, QWORD PTR -8[rbp]
	movsd	QWORD PTR [rax], xmm0
.L5:
	nop
	leave
	ret
	.size	randomNum, .-randomNum
	.globl	function
	.type	function, @function
function:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	# кладём переменную x на стек по смещению PTR -24[rbp]
	# положим переменную x в регистр rbx
	movsd	QWORD PTR -24[rbp], xmm0
	mov rbx, QWORD PTR -24[rbp]
	# кладём переменную a на стек по смещению PTR -32[rbp]
	movsd	QWORD PTR -32[rbp], xmm1
	# кладём переменную b на стек по смещению PTR -40[rbp]
	movsd	QWORD PTR -40[rbp], xmm2
	movsd	xmm0, QWORD PTR .LC4[rip]
	mov	rax, rbx
	movapd	xmm1, xmm0
	movq	xmm0, rax
	call	pow@PLT
	mulsd	xmm0, QWORD PTR -40[rbp]
	movsd	xmm1, QWORD PTR -32[rbp]
	addsd	xmm0, xmm1
	# кладём в локальную переменную result по адресу PTR -8[rbp] результат
	movsd	QWORD PTR -8[rbp], xmm0
	# возвращаем результат через регистр xmm0
	movsd	xmm0, QWORD PTR -8[rbp]
	leave
	ret
	.size	function, .-function
	.globl	integral
	.type	integral, @function
integral:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 112
	# кладём переменную a на стек по смещению PTR -88[rbp]
	movsd	QWORD PTR -88[rbp], xmm0
	# кладём переменную b на стек по смещению PTR -96[rbp]
	movsd	QWORD PTR -96[rbp], xmm1
	# кладём переменную left на стек по смещению PTR -104[rbp]
	movsd	QWORD PTR -104[rbp], xmm2
	# кладём переменную right на стек по смещению PTR -112[rbp]
	movsd	QWORD PTR -112[rbp], xmm3
	# кладём в локальную переменную eps1 константное значение точности по смещению PTR -40[rbp]
	movsd	xmm0, QWORD PTR .LC5[rip]
	movsd	QWORD PTR -40[rbp], xmm0
	# кладём в локальную переменную n константное значение 20 по смещению PTR -80[rbp]
	movsd	xmm0, QWORD PTR .LC6[rip]
	movsd	QWORD PTR -80[rbp], xmm0
	# кладём в локальную переменную i константное значение 0 по смещению PTR -72[rbp]
	pxor	xmm0, xmm0
	movsd	QWORD PTR -72[rbp], xmm0
	# кладём в локальную переменную line  right - left по смещению PTR -32[rbp]
	movsd	xmm0, QWORD PTR -112[rbp]
	subsd	xmm0, QWORD PTR -104[rbp]
	movsd	QWORD PTR -32[rbp], xmm0
	pxor	xmm0, xmm0
	# кладём в локальную переменную sum 0 по смещению PTR -64[rbp]
	movsd	QWORD PTR -64[rbp], xmm0
	# кладём в локальную переменную p 1/3 по смещению PTR -24[rbp]
	movsd	xmm0, QWORD PTR .LC7[rip]
	movsd	QWORD PTR -24[rbp], xmm0
	# кладём в локальную переменную Iold 0 по смещению PTR -56[rbp]
	pxor	xmm0, xmm0
	movsd	QWORD PTR -56[rbp], xmm0
	# кладём в локальную переменную Inew 0 по смещению PTR -48[rbp]
	pxor	xmm0, xmm0
	movsd	QWORD PTR -48[rbp], xmm0
	jmp	.L9
.L12:
	movsd	xmm0, QWORD PTR -48[rbp]
	movsd	QWORD PTR -56[rbp], xmm0
	movsd	xmm0, QWORD PTR -32[rbp]
	divsd	xmm0, QWORD PTR -80[rbp]
	# кладём в локальную переменную h line / n; по смещению PTR -16[rbp] 
	movsd	QWORD PTR -16[rbp], xmm0
	jmp	.L10
.L11:
	movsd	xmm1, QWORD PTR -72[rbp]
	movsd	xmm0, QWORD PTR .LC8[rip]
	addsd	xmm0, xmm1
	mulsd	xmm0, QWORD PTR -16[rbp]
	addsd	xmm0, QWORD PTR -104[rbp]
	movsd	xmm2, QWORD PTR -96[rbp]
	movsd	xmm1, QWORD PTR -88[rbp]
	call	function
	movq	rax, xmm0
	# кладём в локальную переменную Fi результат выполнения функции function по смещению PTR -8[rbp]
	mov	QWORD PTR -8[rbp], rax
	movsd	xmm0, QWORD PTR -64[rbp]
	addsd	xmm0, QWORD PTR -8[rbp]
	movsd	QWORD PTR -64[rbp], xmm0
	movsd	xmm1, QWORD PTR -72[rbp]
	movsd	xmm0, QWORD PTR .LC9[rip]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -72[rbp], xmm0
.L10:
	movsd	xmm0, QWORD PTR -80[rbp]
	comisd	xmm0, QWORD PTR -72[rbp]
	ja	.L11
	movsd	xmm0, QWORD PTR -16[rbp]
	mulsd	xmm0, QWORD PTR -64[rbp]
	movsd	QWORD PTR -48[rbp], xmm0
	pxor	xmm0, xmm0
	movsd	QWORD PTR -64[rbp], xmm0
	pxor	xmm0, xmm0
	movsd	QWORD PTR -72[rbp], xmm0
	movsd	xmm0, QWORD PTR -80[rbp]
	addsd	xmm0, xmm0
	movsd	QWORD PTR -80[rbp], xmm0
.L9:
	movsd	xmm0, QWORD PTR -56[rbp]
	subsd	xmm0, QWORD PTR -48[rbp]
	movq	xmm1, QWORD PTR .LC10[rip]
	andpd	xmm0, xmm1
	mulsd	xmm0, QWORD PTR -24[rbp]
	comisd	xmm0, QWORD PTR -40[rbp]
	ja	.L12
	pxor	xmm0, xmm0
	ucomisd	xmm0, QWORD PTR -48[rbp]
	jp	.L15
	pxor	xmm0, xmm0
	ucomisd	xmm0, QWORD PTR -48[rbp]
	je	.L12
.L15:
	# кладём результат выполнения функции для передачи в главную функцию
	movsd	xmm0, QWORD PTR -48[rbp]
	leave
	ret
	.size	integral, .-integral
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
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
