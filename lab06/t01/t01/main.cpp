#include <iostream>
#include <cstdio>

#include "a.h"

int main(int argc, char **argv) {
    const std::size_t rep=0x10000000;
    A *a[2];
    a[0]=new B();
    a[1]=new C();
    for(std::size_t i=0;i<rep;++i)
        a[i%2]->g();
    
    delete a[0];
    delete a[1];
    return 0;
}
