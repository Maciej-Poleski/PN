#include <iostream>
#include <algorithm>
#include <random>
#include <cassert>

using namespace std;

extern "C" void sort(unsigned long * data, unsigned long count);

int main()
{
    mt19937 engine(404);
    uniform_int_distribution<unsigned long> dist(0,100);
    auto gen=bind(dist,engine);
    size_t tests=1000;
    while(tests--)
    {
        constexpr size_t size=15;
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
