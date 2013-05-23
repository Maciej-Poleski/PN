
#include "isbuffer.h"

#include <thread>
#include <condition_variable>
#include <mutex>

template <class ItemType, unsigned N > 
class SBuffer:public ISBuffer<ItemType,SBuffer<ItemType,N> >{
public:
    SBuffer();

	int enqueue(ItemType * pit);
	ItemType * dequeue();
	
    ItemType * allocItem();
    void freeItem(ItemType * pit);

    void stop();
    
private:
    ItemType _items[N];
    bool _freeItems[N];
    std::mutex _bigLock;
    std::condition_variable _cv;
};

template <class ItemType, unsigned int N >
SBuffer<ItemType,N>::SBuffer(){
    for(std::size_t i=0;i<N;++i)
        _freeItems[i]=true;
}

template <class ItemType, unsigned int N >
int SBuffer<ItemType,N>::enqueue(ItemType * pit){
    return 0;
}

template <class ItemType, unsigned int N >
ItemType * SBuffer<ItemType,N>::dequeue(){
    return nullptr;
}

template <class ItemType, unsigned int N >
ItemType * SBuffer<ItemType,N>::allocItem(){
    return nullptr;
}

template <class ItemType, unsigned int N >
void SBuffer<ItemType,N>::freeItem(ItemType * pit){
}

template <class ItemType, unsigned int N >
void SBuffer<ItemType,N>::stop(){
}

