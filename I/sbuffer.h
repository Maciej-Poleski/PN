// Maciej Poleski
#include "isbuffer.h"

#include <thread>
#include <condition_variable>
#include <mutex>
#include <queue>
#include <cassert>
#include <stack>

template <class ItemType, unsigned N >
class SBuffer:public ISBuffer<ItemType,SBuffer<ItemType,N> > {
public:
    SBuffer();

    int enqueue(ItemType * pit);
    ItemType * dequeue();

    ItemType * allocItem();
    void freeItem(ItemType * pit);

    void stop();

private:
    std::mutex _bigLock;
    std::condition_variable _allocCv;
    std::condition_variable _queueCv;
    std::queue<ItemType*> _queue;
    ItemType _items[N];
    std::stack<ItemType*> _freeItems;
    bool _stopped;
};

template <class ItemType, unsigned int N >
SBuffer<ItemType,N>::SBuffer() : _stopped(false) {
    for(std::size_t i=0; i<N; ++i)
        _freeItems.push(&_items[i]);
}

template <class ItemType, unsigned int N >
int SBuffer<ItemType,N>::enqueue(ItemType * pit) {
    std::unique_lock<std::mutex> lock(_bigLock);
    if(_stopped)
        return 0;
    _queue.push(pit);
    _queueCv.notify_one();
}

template <class ItemType, unsigned int N >
ItemType * SBuffer<ItemType,N>::dequeue() {
    std::unique_lock<std::mutex> lock(_bigLock);
    _queueCv.wait(lock,[this] {
        return _stopped || !_queue.empty();
    });
    if(_stopped && _queue.empty())
        return nullptr;
    assert(!_queue.empty());
    ItemType *result=_queue.front();
    _queue.pop();
    return result;
}

template <class ItemType, unsigned int N >
ItemType * SBuffer<ItemType,N>::allocItem() {
    std::unique_lock<std::mutex> lock(_bigLock);
    _allocCv.wait(lock,[this] {
        return _stopped || !_freeItems.empty();
    });
    if(_stopped)
        return nullptr;
    ItemType *result=_freeItems.top();
    _freeItems.pop();
    return result;
}

template <class ItemType, unsigned int N >
void SBuffer<ItemType,N>::freeItem(ItemType * pit) {
    std::unique_lock<std::mutex> lock(_bigLock);
    _freeItems.push(pit);
    _allocCv.notify_one();
}

template <class ItemType, unsigned int N >
void SBuffer<ItemType,N>::stop() {
    std::unique_lock<std::mutex> lock(_bigLock);
    _stopped=true;
    _queueCv.notify_all();
    _allocCv.notify_all();
}

