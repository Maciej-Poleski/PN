#include "natural.h"

#include <cstdio>
#include <cstdlib>
#include <cstring>

static void printULong(unsigned long n)
{
    printf("%lux",n);
}

Natural::Natural()
{
    begin=static_cast<unsigned long*>(malloc(sizeof(unsigned long)));
    end=begin+1;
    *begin=0UL;
}

Natural::Natural(long unsigned int n)
{
    begin=static_cast<unsigned long*>(malloc(sizeof(unsigned long)));
    end=begin+1;
    *begin=n;
}

Natural::Natural(const char* )
{

}

Natural::Natural(const Natural& n)
{
    const size_t size=n.end-n.begin;
    begin=static_cast<unsigned long *>(malloc(size*sizeof(unsigned long)));
    end=begin+size;
    memcpy(begin,n.begin,size*sizeof(unsigned long));
}

bool Natural::operator!=(const Natural& ) const
{

}

Natural Natural::operator*(const Natural& ) const
{

}

Natural& Natural::operator*=(const Natural& )
{

}

Natural Natural::operator+(const Natural& ) const
{

}

Natural& Natural::operator++()
{

}

Natural Natural::operator++(int )
{

}

Natural& Natural::operator+=(const Natural& )
{

}

bool Natural::operator<(const Natural& ) const
{

}

bool Natural::operator<=(const Natural& ) const
{

}

Natural& Natural::operator=(const Natural& )
{

}

bool Natural::operator==(const Natural& ) const
{

}

bool Natural::operator>(const Natural& ) const
{

}

bool Natural::operator>=(const Natural& ) const
{

}

Natural::operator bool() const
{

}

void Natural::Print() const
{

}

long unsigned int Natural::Size() const
{

}

Natural::~Natural()
{
    free(begin);
}
