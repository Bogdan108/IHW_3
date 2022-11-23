#include <stdio.h>
#include <string.h>
#include <math.h>
#include <time.h>
#include <stdlib.h>

void randomNum(double* a, double* b, double* left, double* right);
double function(double x, double a, double b);
double integral(double a, double b, double left, double right);

int main(int argc, char* argv[]) {
    double a, b, left, right, result;  // считываемые значения
    int timeBool = 0;
    int loopBool = 0;
    FILE* input_file;
    FILE* output_file;

    if (argc < 3) {
        printf("Not valid command!");
        return 0;
    }

    // обработка модификаций запуска программы
    if (strcmp(argv[1], "time") == 0) {
        timeBool = 1;
        if (strcmp(argv[2], "loop") == 0)
            loopBool = 1;
    } else {
        if (strcmp(argv[1], "loop") == 0)
            loopBool = 1;
    }

    // обработка входных данных
    if (argc < (3 + loopBool + timeBool)) {
        printf("Incoorect data of command string\n");
        return 1;
    }
    if (strcmp(argv[1 + loopBool + timeBool], "random") == 0) {
        randomNum(&a, &b, &left, &right);
    } else {
        input_file = fopen(argv[1 + loopBool + timeBool], "r");
        if ((input_file == NULL)) {
            printf("Cannot open input file.\n");
            return 1;
        }
        fscanf(input_file, "%lf %lf %lf %lf", &a, &b, &left, &right);
        fclose(input_file);
        if (left < 0 || right < 0) {
            printf("Incoorect data \n");
            return 1;
        }
    }

    output_file = fopen(argv[2 + loopBool + timeBool], "w");
    if (output_file == NULL) {
        printf("Cannot open output file.\n");
        fclose(input_file);
        return 1;
    }

    if (timeBool != 1) {
        if (loopBool != 1)
            result = integral(a, b, left, right);
        else {
            for (int i = 0; i < 10000; i++) {
                result = integral(a, b, left, right);
            }
        }
    } else {
        clock_t start;
        clock_t end;
        if (loopBool != 1) {
            start = clock();
            result = integral(a, b, left, right);
            end = clock();
        } else {
            start = clock();
            for (int i = 0; i < 10000; i++) {
                result = integral(a, b, left, right);
            }
            end = clock();
        }
        double resultTime = (double)(end - start) / (CLOCKS_PER_SEC);
        fprintf(output_file, "Work time: %lf\n", resultTime);
    }
    fprintf(output_file, "Input data: a = %lf; b = %lf; left = %lf; right = %lf \n", a, b, left,
            right);
    fprintf(output_file, "Result: %lf", result);
    
    fclose(output_file);

    return 0;
};