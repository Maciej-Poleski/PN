#include <malloc.h>
#include <stdio.h>
#include <string.h>
#include "expr.h"

static char buffer[1<<20];

int main() {
    unsigned tests;
    for (scanf("%u", &tests); tests; --tests) {
        unsigned rows, cols;
        scanf("%u%u", &rows, &cols);
        fgets(buffer, sizeof(buffer), stdin);
        float * data = (float *) malloc(rows * cols * sizeof(float));
        for (unsigned i = 0; i < rows*cols; ++i)
            scanf("%f", &data[i]);

        struct expr * expr = expr_create(buffer);
        float * result = expr_eval(expr, rows, cols, data);
        expr_destroy(expr);

        for (unsigned i = 0; i < rows; ++i)
            printf("%f\n", result[i]);
        free(data);
        free(result);
    }
    return 0;
}
