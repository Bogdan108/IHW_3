	.file	"main.c"
	.intel_syntax noprefix
	.text
	.globl	randomNum
	.type	randomNum, @function
randomNum:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	# кладём адресс переменной а на стек по смещению PTR -40[rbp]
	mov	QWORD PTR -40[rbp], rdi
	# кладём адресс переменной b на стек по смещению PTR -48[rbp]
	mov	QWORD PTR -48[rbp], rsi
	# кладём адресс переменной left на стек по смещению PTR -56[rbp]
	mov	QWORD PTR -56[rbp], rdx
	# кладём адресс переменной right на стек по смещению PTR -64[rbp]
	mov	QWORD PTR -64[rbp], rcx
	mov	edi, 0
	# вызов функции time для формирования случайных чисел
	call	time@PLT
	mov	edi, eax
	call	srand@PLT
	# кладём константыне занчения max и min и min_for_x
	movsd	xmm0, QWORD PTR .LC0[rip]
	# кладём значение в max
	movsd	QWORD PTR -32[rbp], xmm0
	movsd	xmm0, QWORD PTR .LC1[rip]
	# кладём значение в min
	movsd	QWORD PTR -24[rbp], xmm0
	pxor	xmm0, xmm0
	# кладём значение в min_for_x
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
	mov	rax, QWORD PTR -40[rbp]
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
	mov	rax, QWORD PTR -48[rbp]
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
	mov	rax, QWORD PTR -56[rbp]
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
	mov	rax, QWORD PTR -64[rbp]
	movsd	QWORD PTR [rax], xmm0
	mov	rax, QWORD PTR -64[rbp]
	movsd	xmm1, QWORD PTR [rax]
	mov	rax, QWORD PTR -56[rbp]
	movsd	xmm0, QWORD PTR [rax]
	comisd	xmm0, xmm1
	ja	.L4
	jmp	.L5
.L4:
	mov	rax, QWORD PTR -64[rbp]
	# разыменованное значение right
	movsd	xmm0, QWORD PTR [rax]
	# локальная переменная temp
	movsd	QWORD PTR -8[rbp], xmm0
	# разыменованное значение left
	mov	rax, QWORD PTR -56[rbp]
	movsd	xmm0, QWORD PTR [rax]
	mov	rax, QWORD PTR -64[rbp]
	movsd	QWORD PTR [rax], xmm0
	mov	rax, QWORD PTR -56[rbp]
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
	movsd	QWORD PTR -24[rbp], xmm0
	# кладём переменную a на стек по смещению PTR -32[rbp]
	movsd	QWORD PTR -32[rbp], xmm1
	# кладём переменную b на стек по смещению PTR -40[rbp]
	movsd	QWORD PTR -40[rbp], xmm2
	movsd	xmm0, QWORD PTR .LC4[rip]
	mov	rax, QWORD PTR -24[rbp]
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
	# кладём указатель на фрейм
	push	rbp
	mov	rbp, rsp
	# расширяем стек для локальных переменных функции
	add	rsp, -128
	# кладем int argc в PTR -116[rbp]
	mov	DWORD PTR -116[rbp], edi
	# кладём указатель на массив char* argv[]
	mov	QWORD PTR -128[rbp], rsi
	# кладём кнарейку на стек PTR -8[rbp]
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	# инициализируем перменную timeBool
	mov	DWORD PTR -104[rbp], 0
	# инициализируем перменную loopBool
	mov	DWORD PTR -100[rbp], 0
	# сравниваем argc с 2 для проверки корректности ввода в командую строку
	cmp	DWORD PTR -116[rbp], 2
	jg	.L17
	lea	rdi, .LC11[rip]
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	jmp	.L37
.L17:
	# в данном куске кода проверяем вводимые данные из командной строки
	# кладем адрес на массив char* argv[]
	mov	rax, QWORD PTR -128[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	lea	rsi, .LC12[rip]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L19
	# кладём в timeBool 1
	mov	DWORD PTR -104[rbp], 1
	mov	rax, QWORD PTR -128[rbp]
	add	rax, 16
	mov	rax, QWORD PTR [rax]
	lea	rsi, .LC13[rip]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L20
	# кладём в loopBool 1
	mov	DWORD PTR -100[rbp], 1
	jmp	.L20
.L19:
	mov	rax, QWORD PTR -128[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	lea	rsi, .LC13[rip]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L20
	# кладём в loopBool 1
	mov	DWORD PTR -100[rbp], 1
.L20:
	# кладём в eax loopBool
	mov	eax, DWORD PTR -100[rbp]
	lea	edx, 3[rax]
	# кладём в eax timeBool
	mov	eax, DWORD PTR -104[rbp]
	# складываем 3 + loopBool + timeBool
	add	eax, edx
	# сравниваем argc с 3 + loopBool + timeBool для проверки корректности ввода в командую строку
	cmp	DWORD PTR -116[rbp], eax
	jge	.L21
	lea	rdi, .LC14[rip]
	call	puts@PLT
	mov	eax, 1
	jmp	.L37
.L21:
	# обрабатываем ввод данных с помощью сравнения с ключами командной строки
	# кладем loopBool в eax
	mov	eax, DWORD PTR -100[rbp]
	# прибавляем к loopBool 1 и кладем в edx
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -104[rbp]
	# складываем результат в edx и timeBool 
	add	eax, edx
	cdqe
	# распознаем, как мы формируем входные данные через смещение по аргументам
	# командной строки
	lea	rdx, 0[0+rax*8]
	# кладем адрес массива аргументов командной строки
	mov	rax, QWORD PTR -128[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	lea	rsi, .LC15[rip]
	mov	rdi, rax
	call	strcmp@PLT
	test	eax, eax
	jne	.L22
	# берём адрес переменной right 
	lea	rcx, -64[rbp]
	# берём адрес переменной left 
	lea	rdx, -72[rbp]
	# берём адрес переменной b
	lea	rsi, -80[rbp]
	# берём адрес переменной a
	lea	rax, -88[rbp]
	# и перердаём их все в функцию randomNum 
	mov	rdi, rax
	call	randomNum
	jmp	.L23
.L22:
	# кладем loopBool в eax
	mov	eax, DWORD PTR -100[rbp]
	# прибавляем к loopBool 1 и кладем в edx
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -104[rbp]
	# складываем результат в edx и timeBool 
	add	eax, edx
	cdqe
	# распознаем, как мы формируем входные данные через смещение по аргументам
	# командной строки
	lea	rdx, 0[0+rax*8]
	# кладем адрес массива аргументов командной строки
	mov	rax, QWORD PTR -128[rbp]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	lea	rsi, .LC16[rip]
	# передаем название файла, откуда будем считывать данные 
	mov	rdi, rax
	call	fopen@PLT
	# кладем адрес на входной файл в переменную input_file
	mov	QWORD PTR -48[rbp], rax
	# проверка на корректное открытие файла
	cmp	QWORD PTR -48[rbp], 0
	jne	.L24
	lea	rdi, .LC17[rip]
	call	puts@PLT
	mov	eax, 1
	jmp	.L37
.L24:
	# берём адрес переменной right 
	lea	rdi, -64[rbp]
	# берём адрес переменной left 
	lea	rsi, -72[rbp]
	# берём адрес переменной b
	lea	rcx, -80[rbp]
	# берём адрес переменной a
	lea	rdx, -88[rbp]
	# кладем переменную input_file
	# передаем все аргументы в функцию fscanf
	mov	rax, QWORD PTR -48[rbp]
	mov	r9, rdi
	mov	r8, rsi
	lea	rsi, .LC18[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_fscanf@PLT
	# кладем адрес на входной файл в fclose
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	call	fclose@PLT
	#  проводим сравнение на неотрицательность входных данный left и right 
	movsd	xmm1, QWORD PTR -72[rbp]
	pxor	xmm0, xmm0
	comisd	xmm0, xmm1
	ja	.L25
	movsd	xmm1, QWORD PTR -64[rbp]
	pxor	xmm0, xmm0
	comisd	xmm0, xmm1
	jbe	.L23
.L25:
	lea	rdi, .LC19[rip]
	call	puts@PLT
	mov	eax, 1
	jmp	.L37
.L23:
	# кладем loopBool в eax
	mov	eax, DWORD PTR -100[rbp]
	# прибавляем к loopBool 2 и кладем в edx
	lea	edx, 2[rax]
	mov	eax, DWORD PTR -104[rbp]
	# складываем результат в edx и timeBool
	add	eax, edx
	cdqe
	# берём адрес на массив char* argv[] 
	lea	rdx, 0[0+rax*8]
	mov	rax, QWORD PTR -128[rbp]
	# смещаемся на аргумент, который является названием файла вывода 
	# и передаём его в функцию fopen
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	lea	rsi, .LC20[rip]
	mov	rdi, rax
	call	fopen@PLT
	# кладём полученный адрес в output_file
	mov	QWORD PTR -24[rbp], rax
	# проверяем, что он правильно открылся
	cmp	QWORD PTR -24[rbp], 0
	jne	.L27
	lea	rdi, .LC21[rip]
	call	puts@PLT
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	call	fclose@PLT
	mov	eax, 1
	jmp	.L37
.L27:
	# определяем режим работы с замером времени с помощью timeBool
	cmp	DWORD PTR -104[rbp], 1
	je	.L28
	# определяем режим работы с зацикливанием с помощью loopBool
	cmp	DWORD PTR -100[rbp], 1
	je	.L29
	# берём адрес переменной right
	movsd	xmm2, QWORD PTR -64[rbp]
	# берём адрес переменной left 
	movsd	xmm1, QWORD PTR -72[rbp]
	# берём адрес переменной b 
	movsd	xmm0, QWORD PTR -80[rbp]
	# берём адрес переменной a 
	mov	rax, QWORD PTR -88[rbp]
	# передаём все их в функцию integral
	movapd	xmm3, xmm2
	movapd	xmm2, xmm1
	movapd	xmm1, xmm0
	movq	xmm0, rax
	call	integral
	movq	rax, xmm0
	# результат функции кладём в result
	mov	QWORD PTR -56[rbp], rax
	jmp	.L30
.L29:
	# инициализируем переменную i
	mov	DWORD PTR -96[rbp], 0
	jmp	.L31
.L32:
	# берём адрес переменной right
	movsd	xmm2, QWORD PTR -64[rbp]
	# берём адрес переменной left 
	movsd	xmm1, QWORD PTR -72[rbp]
	# берём адрес переменной b
	movsd	xmm0, QWORD PTR -80[rbp]
	# берём адрес переменной a 
	mov	rax, QWORD PTR -88[rbp]
	movapd	xmm3, xmm2
	movapd	xmm2, xmm1
	movapd	xmm1, xmm0
	movq	xmm0, rax
	# передаём все их в функцию integral
	call	integral
	movq	rax, xmm0
	# результат функции кладём в result
	mov	QWORD PTR -56[rbp], rax
	#  переменную i увеличиваем на 1
	add	DWORD PTR -96[rbp], 1
.L31:
	# проверка на продолжение цикла
	cmp	DWORD PTR -96[rbp], 9999
	jle	.L32
	jmp	.L30
.L28:
	# определяем режим работы с зацикливанием с помощью loopBool
	cmp	DWORD PTR -100[rbp], 1
	je	.L33
	# запускаем часы
	call	clock@PLT
	# кладем начальное время в  clock_t start;
	mov	QWORD PTR -40[rbp], rax
	# берём адрес переменной right 
	movsd	xmm2, QWORD PTR -64[rbp]
	# берём адрес переменной left 
	movsd	xmm1, QWORD PTR -72[rbp]
	# берём адрес переменной b
	movsd	xmm0, QWORD PTR -80[rbp]
	# берём адрес переменной a
	mov	rax, QWORD PTR -88[rbp]
	movapd	xmm3, xmm2
	movapd	xmm2, xmm1
	movapd	xmm1, xmm0
	movq	xmm0, rax
	# передаём все их в функцию integral
	call	integral
	# результат функции кладём в result
	movq	rax, xmm0
	mov	QWORD PTR -56[rbp], rax
	# запускаем часы
	call	clock@PLT
	# кладем начальное время в  clock_t end;
	mov	QWORD PTR -32[rbp], rax
	jmp	.L34
.L33:
	# запускаем часы
	call	clock@PLT
	# кладем начальное время в  clock_t start;
	mov	QWORD PTR -40[rbp], rax
	# инициализируем переменную i
	mov	DWORD PTR -92[rbp], 0
	jmp	.L35
.L36:
	# берём адрес переменной right 
	movsd	xmm2, QWORD PTR -64[rbp]
	# берём адрес переменной left 
	movsd	xmm1, QWORD PTR -72[rbp]
	# берём адрес переменной b
	movsd	xmm0, QWORD PTR -80[rbp]
	# берём адрес переменной a
	mov	rax, QWORD PTR -88[rbp]
	movapd	xmm3, xmm2
	movapd	xmm2, xmm1
	movapd	xmm1, xmm0
	movq	xmm0, rax
	# передаём все их в функцию integral
	call	integral
	movq	rax, xmm0
	# результат функции кладём в result
	mov	QWORD PTR -56[rbp], rax
	#  переменную i увеличиваем на 1
	add	DWORD PTR -92[rbp], 1
.L35:
	# проверка на продолжение цикла
	cmp	DWORD PTR -92[rbp], 9999
	jle	.L36
	# запускаем часы
	call	clock@PLT
	# кладем начальное время в  clock_t end;
	mov	QWORD PTR -32[rbp], rax
.L34:
	# в resultTime кладем разность end - start
	mov	rax, QWORD PTR -32[rbp]
	sub	rax, QWORD PTR -40[rbp]
	cvtsi2sd	xmm0, rax
	# делим resultTime на константу CLOCKS_PER_SEC
	movsd	xmm1, QWORD PTR .LC22[rip]
	divsd	xmm0, xmm1
	# кладём результат в resultTime
	movsd	QWORD PTR -16[rbp], xmm0
	# передаём resultTime в функцию fprintf
	mov	rdx, QWORD PTR -16[rbp]
	# передаём output_file в функцию fprintf
	mov	rax, QWORD PTR -24[rbp]
	movq	xmm0, rdx
	lea	rsi, .LC23[rip]
	mov	rdi, rax
	mov	eax, 1
	call	fprintf@PLT
.L30:
	# передаем переменные a, b, left, right в fprintf
	movsd	xmm2, QWORD PTR -64[rbp]
	movsd	xmm1, QWORD PTR -72[rbp]
	movsd	xmm0, QWORD PTR -80[rbp]
	mov	rdx, QWORD PTR -88[rbp]
	# передаём output_file в функцию fprintf
	mov	rax, QWORD PTR -24[rbp]
	movapd	xmm3, xmm2
	movapd	xmm2, xmm1
	movapd	xmm1, xmm0
	movq	xmm0, rdx
	lea	rsi, .LC24[rip]
	mov	rdi, rax
	mov	eax, 4
	call	fprintf@PLT
	# передаём result в fprintf
	mov	rdx, QWORD PTR -56[rbp]
	# передаём output_file в функцию fprintf
	mov	rax, QWORD PTR -24[rbp]
	movq	xmm0, rdx
	lea	rsi, .LC25[rip]
	mov	rdi, rax
	mov	eax, 1
	call	fprintf@PLT
	# передаём output_file в функцию fclose
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	fclose@PLT
	mov	eax, 0
.L37:
	# канарейкой проверяем, что стек не нарушен
	mov	rcx, QWORD PTR -8[rbp]
	xor	rcx, QWORD PTR fs:40
	je	.L38
	call	__stack_chk_fail@PLT
.L38:
	leave
	ret
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
