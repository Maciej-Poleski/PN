enum expr_kind {
    /* constants */
    EXPR_CONST,
    /* variables */
    EXPR_VAR,
    /* unary */
    EXPR_PLUS,
    EXPR_MINUS,
    EXPR_SQRT,
    EXPR_SIN,
    EXPR_COS,
    /* binary */
    EXPR_ADD,
    EXPR_SUB,
    EXPR_MUL,
    EXPR_DIV,
    EXPR_POW,
    EXPR_MIN,
    EXPR_MAX
};

struct expr {
    enum expr_kind      kind;
    union {
        float           constant;
        unsigned char   variable;
        struct {
            struct expr *   inner;
        }               unary;
        struct {
            struct expr *   left;
            struct expr *   right;
        }               binary;
    };
};

#include <iostream>
#include <stddef.h>

using namespace std;

int main()
{
    cout<<offsetof(struct expr,binary.right)<<endl;
    cout<<sizeof(expr::binary.right)<<endl;
}