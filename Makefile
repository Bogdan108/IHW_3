.PHONY: testASM


ReadWriteFile: main_with_parts/complete
	./main_with_parts/complete InOutputFiles/input.txt InOutputFiles/output.txt
	./main_with_parts/complete InOutputFiles/input_sec.txt InOutputFiles/output_sec.txt
	./main_with_parts/complete InOutputFiles/input_third.txt InOutputFiles/output_third.txt

testC: main
	./test.sh main Tests/Test1.txt Tests/Test1_output.txt
	./test.sh main Tests/Test2.txt Tests/Test2_output.txt
	./test.sh main Tests/Test3.txt Tests/Test3_output.txt
	./test.sh main Tests/Test4.txt Tests/Test4_output.txt
	./test.sh main Tests/Test5.txt Tests/Test5_output.txt
	./test.sh main Tests/Test6.txt Tests/Test6_output.txt
	./test.sh main Tests/Test7.txt Tests/Test7_output.txt
	./test.sh main Tests/Test8.txt Tests/Test8_output.txt

testAsm: main_without_optimize/main_without_optimize
	./test.sh main_without_optimize/main_without_optimize Tests/Test1.txt Tests/Test1_output.txt
	./test.sh main_without_optimize/main_without_optimize Tests/Test2.txt Tests/Test2_output.txt
	./test.sh main_without_optimize/main_without_optimize Tests/Test3.txt Tests/Test3_output.txt
	./test.sh main_without_optimize/main_without_optimize Tests/Test4.txt Tests/Test4_output.txt
	./test.sh main_without_optimize/main_without_optimize Tests/Test5.txt Tests/Test5_output.txt
	./test.sh main_without_optimize/main_without_optimize Tests/Test6.txt Tests/Test6_output.txt
	./test.sh main_without_optimize/main_without_optimize Tests/Test7.txt Tests/Test7_output.txt
	./test.sh main_without_optimize/main_without_optimize Tests/Test8.txt Tests/Test8_output.txt

testAsmReg: main_with_registers/main_with_registers
	./test.sh main_with_registers/main_with_registers Tests/Test1.txt Tests/Test1_output.txt
	./test.sh main_with_registers/main_with_registers Tests/Test2.txt Tests/Test2_output.txt
	./test.sh main_with_registers/main_with_registers Tests/Test3.txt Tests/Test3_output.txt
	./test.sh main_with_registers/main_with_registers Tests/Test4.txt Tests/Test4_output.txt
	./test.sh main_with_registers/main_with_registers Tests/Test5.txt Tests/Test5_output.txt
	./test.sh main_with_registers/main_with_registers Tests/Test6.txt Tests/Test6_output.txt
	./test.sh main_with_registers/main_with_registers Tests/Test7.txt Tests/Test7_output.txt
	./test.sh main_with_registers/main_with_registers Tests/Test8.txt Tests/Test8_output.txt

testCfile: main_with_parts/complete
	./test.sh main_with_parts/complete Tests/Test1.txt Tests/Test1_output.txt
	./test.sh main_with_parts/complete Tests/Test2.txt Tests/Test2_output.txt
	./test.sh main_with_parts/complete Tests/Test3.txt Tests/Test3_output.txt
	./test.sh main_with_parts/complete Tests/Test4.txt Tests/Test4_output.txt
	./test.sh main_with_parts/complete Tests/Test5.txt Tests/Test5_output.txt
	./test.sh main_with_parts/complete Tests/Test6.txt Tests/Test6_output.txt
	./test.sh main_with_parts/complete Tests/Test7.txt Tests/Test7_output.txt
	./test.sh main_with_parts/complete Tests/Test8.txt Tests/Test8_output.txt

specialDatatimeforMain: main  
	./main time loop SpecialData/input.txt SpecialData/output.txt 
	./main time loop SpecialData/input_sec.txt SpecialData/output_sec.txt 

specialDatatimeforComplete:	main_with_parts/complete
	./main_with_parts/complete time loop SpecialData/input.txt SpecialData/output.txt 
	./main_with_parts/complete time loop SpecialData/input_sec.txt SpecialData/output_sec.txt
	