#include <iostream>
#include <cstring>
#include <cstdlib>
using namespace std;

class X
{
    int v;

public:
    X(int v) : v(v)
    {
    }

    virtual void f()
    {
        cout << "NIE" << endl;
    }
};

void * getVTableAddress(X * x)
{
    X second(0x12341234);
    size_t size=sizeof(*x)/8;
    unsigned long * ptr=reinterpret_cast<unsigned long*>(x);
    unsigned long * ptr2=reinterpret_cast<unsigned long*>(&second);
    for(size_t i=0; i<size; ++i)
    {
       // cout<<dec<<i<<": "<<hex<<*(ptr+i)<<endl;
        if(*ptr==*ptr2)
            break;
        ++ptr;
        ++ptr2;
    }
    return ptr;
}

ptrdiff_t findVField()
{
    X x(0x12341234);
    size_t size=sizeof(x)/sizeof(int);
    int * ptr=reinterpret_cast<int*>(&x);
    for(size_t i=0; i<size; ++i)
    {
        // cout<<dec<<i<<": "<<hex<<*(ptr+i)<<endl;
        if(*ptr==0x12341234)
            break;
        ++ptr;
    }
    char * base=reinterpret_cast<char*>(&x);
    char *field=reinterpret_cast<char*>(ptr);
    return field-base;
}

void dumpInternals(X *x)
{
    char *ptr=reinterpret_cast<char*>(x);
    cout<<*reinterpret_cast<int*>(ptr+findVField())<<endl;
}

void breakX(X * x)
{
    void **vtable=reinterpret_cast<void**>(getVTableAddress(x));
    void *myTable=malloc(100);
    memcpy(myTable,*vtable,100);
    unsigned long *ptr=reinterpret_cast<unsigned long*>(myTable);
    *ptr=reinterpret_cast<unsigned long>(&dumpInternals);
    unsigned long **vtableAsLong=reinterpret_cast<unsigned long**>(vtable);
    *vtableAsLong=reinterpret_cast<unsigned long*>(myTable);
}

int main()
{
    X * x = new X(42);
    breakX(x);
    x->f(); // żądany efekt: wypisanie x->v na cout
    return 0;
}
