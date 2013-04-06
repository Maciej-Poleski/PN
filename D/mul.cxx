#include "natural.h"

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <algorithm>


Natural Natural::operator*(const Natural& n) const
{
    Natural result;
    std::size_t k=end-begin;
    std::size_t l=n.end-n.begin;
    result.resize(k*l);
    for(unsigned long *i=result.begin;i<result.end;++i)
        *i=0UL;
    for(std::size_t i=0;i<k;++i)
    {
        unsigned long carry=0UL;
        for(std::size_t j=0;j<l;++j)
        {
            unsigned __int128 tmp;
            tmp=begin[i];
            tmp*=n.begin[j];
            tmp+=result.begin[i+j];
            tmp+=carry;
            carry=tmp>>64;
            result.begin[i+j]=tmp&(~0UL);
        }
        result.begin[i+l]=carry;
    }
    result.shrink();
    return result;
}