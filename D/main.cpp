#include <iostream>
#include <cstdio>

#include "natural.h"

using namespace std;

int main(int argc, char **argv) {
    Natural a="abcdef",b=0xabcdef,c;
    a.Print();
    printf("\n");
    b.Print();
    printf("\n");
    c.Print();
    printf("\n");
    a=a;
    a.Print();
    printf("\n");
    a="0000000000000000000000000000000123";
    a.Print();
    printf("\n");
    a="0";
    a.Print();
    printf("\n");
    (a*"fffffffffffffffffffffff865486548fffffffffffffffffffffffff0870876ffffffffffffffffffff").Print();
    printf("\n");
    
    return 0;
}
