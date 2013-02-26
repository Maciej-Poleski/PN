#include <iostream>
#include <algorithm>
#include <random>
#include <cassert>

using namespace std;

void sort(unsigned long * data, unsigned long count)
{
    if(count<2)
        return;
    auto pivot=data[count/2];
    auto left=data,center=data,right=data;
    for(auto i=data; i<data+count; ++i)
    {
        assert(left<=center);
        assert(center<=right);
        if(*i>pivot)
            ++right;
        else if(*i==pivot)
        {
            swap(*center++,*i);
            ++right;
        }
        else
        {
            assert(*i<pivot);
            auto c=*i;
            *i=*center;
            *center=*left;
            *left=c;
            ++left;
            ++center;
            ++right;
        }
    }
    assert(right==data+count);
    ::sort(data,left-data);
    ::sort(center,right-center);
}

int main()
{
    mt19937 engine(404);
    uniform_int_distribution<unsigned long> dist(0,numeric_limits<unsigned long >::max());
    auto gen=bind(dist,engine);
    size_t tests=1000;
    while(tests--)
    {
        constexpr size_t size=100000;
        unsigned long *data=new unsigned long[size];
        for(auto i=0; i<size; ++i)
            data[i]=gen();
        vector<unsigned long> sortedData(data,data+size);
        sort(sortedData.begin(),sortedData.end());
        ::sort(data,size);
        for(auto i=0; i<size; ++i)
            if(data[i]!=sortedData[i])
            {
                cout<<"Błąd na pozycji "<<i<<" oczekiwano "<< sortedData[i]<<" a otrzymano "<<data[i]<<'\n';
            }
        cout<<"Pozostało iteracji: "<<tests<<'\n';
        delete [] data;
    }
    return 0;
}
