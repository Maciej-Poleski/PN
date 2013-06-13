#include <iostream>
#include "rwlock.h"

#include <thread>
#include <vector>

void writer(rwlock &lock,int count)
{
    std::this_thread::sleep_for(std::chrono::microseconds(50));
    while(count--)
    {
        lock.lock();
        std::this_thread::sleep_for(std::chrono::microseconds(2));
        lock.unlock();
    }
}

void reader(rwlock &lock, int count)
{
    std::this_thread::sleep_for(std::chrono::microseconds(50));
    while(count--)
    {
        lock.lockR();
        std::this_thread::sleep_for(std::chrono::microseconds(2));
        lock.unlockR();
    }
}

int main(int argc, char **argv) {
    rwlock lock;
    int wr_count=5;
    int rd_count=1000;
    int count=1000;
    int wcount=1000;
    std::vector<std::thread> writers;
    std::vector<std::thread> readers;
    for(int i=0;i<rd_count;++i)
        readers.emplace_back(reader,std::ref(lock),count);
    for(int i=0;i<wr_count;++i)
        writers.emplace_back(writer,std::ref(lock),wcount);
    for(auto &i : writers)
        i.join();
    for(auto &i : readers)
        i.join();
    std::cout << "Hello, world!" << std::endl;
    return 0;
}
