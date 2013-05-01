#include <iostream>
#include <cstring>
#include "mallocx.h"

extern "C" void * emitBraces(void * y, void * z)
{
    static const char code[]="\x48\xb8\x34\x12\x34\x12\x34\x12\x34\x12\x50\x48\xb9\x21\x43\x21\x43\x21\x43\x21\x43\xff\xe1";
    char * result=mallocx(sizeof(code));
    memcpy(result,code,sizeof(code));
    *(reinterpret_cast<void**>((result+2)))=z;
    *(reinterpret_cast<void**>((result+13)))=y;
    return result;
}
