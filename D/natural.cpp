#include "natural.h"

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <algorithm>

 static void printULong(unsigned long n)
{
    printf("%lx",n);
}

static void printULongWithPad(unsigned long n)
{
    printf("%.16lx",n);
}

static unsigned long parseNibble(char n)
{
    if(n<='9')
        return n-'0';
    return n-'a'+10;
}

static unsigned long parseBigendianQword(const char *n, int length=16)
{
    unsigned long result=0;
    for(int i=0;i<length;++i)
    {
        result|=parseNibble(n[15-i])<<(4*i);
    }
    return result;
}

static unsigned long lengthOfQWord(unsigned long n)
{
    unsigned long result=0;
    while(n)
    {
        n>>=1;
        ++result;
    }
    return result;
}

void Natural::shift(long unsigned i)
{
    unsigned long *oldBegin=begin,*oldEnd=end;
    std::size_t size=end-begin;
    begin=reinterpret_cast<unsigned long*>(malloc((size+i)*sizeof(unsigned long)));
    end=begin+size+i;
    for(std::size_t ii=0;ii<i;++ii)
        begin[ii]=0UL;
    for(std::size_t ii=0;ii<size;++ii)
        begin[ii+i]=oldBegin[ii];
    free(oldBegin);
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

Natural::Natural(const char* n)
{
    std::size_t l=strlen(n);
    begin=static_cast<unsigned long*>(malloc(sizeof(unsigned long)*((l/16)+(((l%16)!=0)?1:0))));
    end=begin+((l/16)+(((l%16)!=0)?1:0));
    int i;
    for(i=l;i>=16;i-=16)
    {
        begin[(l-i)/16]=parseBigendianQword(&n[i-16]);
    }
    if(i>0)
        end[-1]=parseBigendianQword(&n[i-16],i);
}

Natural::Natural(const Natural& n)
{
    const size_t size=n.end-n.begin;
    begin=static_cast<unsigned long *>(malloc(size*sizeof(unsigned long)));
    end=begin+size;
    memcpy(begin,n.begin,size*sizeof(unsigned long));
}

bool Natural::operator!=(const Natural& n) const
{
    return !(*this==n);
}

Natural Natural::operator*(const Natural& n) const
{
    Natural result;
    int s=0;
    for(unsigned long *i=begin;i<end;++i,++s)
    {
        Natural line;
        line.resize(n.end-n.begin+1);
        int ii=0;
        for(unsigned long *j=n.begin;j<n.end;++j,++ii)
        {
            unsigned __int128 r=*i;
            r*=*j;
            line.begin[ii]+=r&(~0UL);
            line.begin[ii+1]=r>>64;
        }
        line.shift(s);
        result+=line;
    }
    return result;
}

Natural& Natural::operator*=(const Natural& n)
{
    return *this=*this*n;
}

Natural Natural::operator+(const Natural& n) const
{
    Natural result;
    std::size_t leftSize=end-begin;
    std::size_t rightSize=n.end-n.begin;
    std::size_t maxSize=leftSize>rightSize?leftSize:rightSize;
    result.begin=reinterpret_cast<unsigned long*>(realloc(result.begin,(maxSize+1)*sizeof(unsigned long)));
    result.end=result.begin+maxSize+1;
    for(unsigned long *i=result.begin;i<result.end;++i)
        *i=0UL;
    int carry=0;
    memcpy(result.begin,begin,leftSize*(sizeof(unsigned long)));
    int i;
    for(i=0;i<rightSize;++i)
    {
        unsigned __int128 r=result.begin[i];
        r+=n.begin[i]+carry;
        result.begin[i]=r&(~(0UL));
        carry=r>>64;
    }
    result.begin[i]+=carry;
    result.shrink();
    return result;
}

Natural& Natural::operator++()
{
    return *this+=1;
}

Natural Natural::operator++(int )
{
    Natural result(*this);
    *this+=1;
    return result;
}

Natural& Natural::operator+=(const Natural& n)
{
    return *this=*this+n;
}

bool Natural::operator<(const Natural& n) const
{
    if(Size()<n.Size())
        return true;
    else if(Size()>n.Size())
        return false;
    // size of this is at least size of n
    for(int i=end-begin-1;i>=0;--i)
    {
        if(begin[i]<n.begin[i])
            return true;
    }
    return false;
}

bool Natural::operator<=(const Natural& n) const
{
    return *this<n || *this==n;
}

Natural& Natural::operator=(const Natural& n)
{
//     free(begin);
//     const size_t size=n.end-n.begin;
//     begin=static_cast<unsigned long *>(malloc(size*sizeof(unsigned long)));
//     end=begin+size;
//     memcpy(begin,n.begin,size*sizeof(unsigned long));
    Natural newNatural=n;
    swap(newNatural);
    return *this;
}

void Natural::swap(Natural& n)
{
    using std::swap;
    swap(begin,n.begin);
    swap(end,n.end);
}

bool Natural::operator==(const Natural& n) const
{
    std::size_t size= end-begin;
    if(size!=(n.end-n.begin))
        return false;
    return memcmp(begin,n.begin,size*sizeof(unsigned long))==0;
}

bool Natural::operator>(const Natural& n) const
{
    return !(*this<=n);
}

bool Natural::operator>=(const Natural& n) const
{
    return !(*this<n);
}

Natural::operator bool() const
{
    return Size()!=0;
}

void Natural::Print() const
{
    printULong(*(end-1));
    for(unsigned long *i=end-2;i>=begin;--i)
        printULongWithPad(*i);
    //printf("\n");
}

long unsigned int Natural::Size() const
{
    int selectedQword;
    for(selectedQword=end-begin-1;selectedQword>0;--selectedQword)
    {
        if(begin[selectedQword])
            break;
    }
    return 64*selectedQword+lengthOfQWord(begin[selectedQword]);
}

void Natural::resize(long unsigned int i)
{
    begin=reinterpret_cast<unsigned long*>(realloc(begin,i*sizeof(unsigned long)));
    end=begin+i;
}

void Natural::shrink()
{
    while(begin+1<end && end[-1]==0UL)
        --end;
}

Natural::~Natural()
{
    free(begin);
}
