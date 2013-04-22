#include <iostream>
#include <cstdio>

#include "natural.h"

using namespace std;

int main(int argc, char **argv) {
    Natural a=2,b=2;
    for(int i=0;i<1000;++i)
    {
        a.Print();
        printf("\n");
        a*=b;
    }
    return 0;
}
