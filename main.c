#include <stdio.h>
#include <string.h>
#include <math.h>
#include <time.h>
#include <stdlib.h>

void randomNum(double* a, double* b, double* left, double* right) {
    srand(time(NULL));
    double temp;
    double max = 323.1232;
    double min = -323.1232;
    double min_for_x = 0.0;
    *a = (double)(rand()) / RAND_MAX * (max - min) + min;
    *b = (double)(rand()) / RAND_MAX * (max - min) + min;
    *left = (double)(rand()) / RAND_MAX * (max - min_for_x) + min_for_x;
    *right = (double)(rand()) / RAND_MAX * (max - min_for_x) + min_for_x;
    if (*right < *left) {
        temp = *right;
        *right = *left;
        *left = temp;
    }
}
double function(double x, double a, double b) {
    double result;
    result = a + b * pow(x, (double)1 / 4);
    return result;
}

static double integral(double a, double b, double left, double right) {
    double eps1 = 0.0001;  // заданная точность
    double n = 20;         // начальное количество разбиений
    double i = 0;
    double line = right - left, h, Fi, sum = 0;
    double p = (double)1 / 3, Iold = 0, Inew = 0;  // новое и старое значения суммы

    while ((p * (fabs(Iold - Inew)) > eps1) || Inew == 0) {
        Iold = Inew;
        h = line / n;
        while ((i < n)) {
            Fi = function((left + (i + 0.5) * h), a, b);
            sum += Fi;  // условие для коэфф.
            i++;
        }
        Inew = (double)h * sum;
        sum = 0;
        i = 0;
        n *= 2;
    }
    return Inew;
}

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