#include <iostream>
#include <cstring>
#include <cassert>
#include <stdint.h>
#include <unistd.h>
#include "mallocx.h"

const void * emitBraces(const void * y,const void * z);

class CodeGenerator
{
public:
    CodeGenerator(std::size_t nargs) : nargs(nargs), additionalItemsOnStack(0) {}

    const void * compile(const unsigned int* tree)
    {
        assert(tree);
        emitCode(tree);
        void *result=mallocx(_code.size());
        memcpy(result,_code.data(),_code.size());
        return result;
    }

private:
    void emitCode(const unsigned int *tree)
    {
        emitCodeForSubtree(tree);
        assert(additionalItemsOnStack==1);
        /*
         * pop rax
         * add rsp,0x12341234
         * jmp rax
         */
        static const char templateCode[]="\x58\x48\x81\xc4\x34\x12\x34\x12\xff\xe0";
        char * resultCode=new char[sizeof(templateCode)];
        memcpy(resultCode,templateCode,sizeof(templateCode));
        *reinterpret_cast<int32_t*>(resultCode+4)=nargs*8;
        _code.append(resultCode,sizeof(templateCode)-1);
        --additionalItemsOnStack;
        delete [] resultCode;
    }

    void emitCodeForSubtree(const unsigned int *& v)
    {
        if(*v==0)
        {
            ++v;
            emitCodeForSubtree(v);
            emitCodeForSubtree(v);
            emitBraces();
        }
        else
        {
            prepareArgument(*v++);
        }
    }

    void emitBraces()
    {
        static const char templateCode[]="\x5e\x5f\x48\xb8\x34\x12\x34\x12\x34\x12\x34\x12\xff\xd0\x50";
//          pop rsi
//          pop rdi
//          mov rax,0x1234123412341234
//          call rax
//          push rax
        char * resultCode=new char[sizeof(templateCode)];
        memcpy(resultCode,templateCode,sizeof(templateCode));
        *reinterpret_cast<const void * (**)(const void*,const void*)>(resultCode+4)=::emitBraces;
        _code.append(resultCode,sizeof(templateCode)-1);
        --additionalItemsOnStack;
        delete [] resultCode;
    }

    void prepareArgument(const uint32_t arg)
    {
        assert(arg>0);
        assert(arg<=nargs);
        /*
         * mov rax,[rsp+0x12341234]
         * push rax
         */
        static const char templateCode[]="\x48\x8b\x84\x24\x34\x12\x34\x12\x50";
        char * resultCode=new char[sizeof(templateCode)];
        memcpy(resultCode,templateCode,sizeof(templateCode));
        *reinterpret_cast<uint32_t*>(resultCode+4)=(additionalItemsOnStack+arg-1)*8;
        _code.append(resultCode,sizeof(templateCode)-1);
        ++additionalItemsOnStack;
        delete [] resultCode;
    }
private:
    std::string _code;
    const std::size_t nargs;
    std::size_t additionalItemsOnStack; // Przesunięcie do uwzględnienia przy uzyskiwaniu argumentów kombinatora
};

/**
 * API is inappriopriate
 */
const void* compile(unsigned int nargs, const unsigned int* tree)
{
    return CodeGenerator(nargs).compile(tree);
}

const void * emitBraces(const void * y,const void * z)
{
    static const char code[]="\x48\xb8\x34\x12\x34\x12\x34\x12\x34\x12\x50\x48\xb9\x21\x43\x21\x43\x21\x43\x21\x43\xff\xe1";
    char * result=mallocx(sizeof(code)-1);
    memcpy(result,code,sizeof(code)-1);
    *(reinterpret_cast<const void**>((result+2)))=z;
    *(reinterpret_cast<const void**>((result+13)))=y;
    return result;
}
