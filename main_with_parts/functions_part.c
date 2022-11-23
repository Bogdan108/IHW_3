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

double integral(double a, double b, double left, double right) {
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