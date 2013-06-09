#ifndef H_RWLOCK
#define H_RWLOCK

#include <unistd.h>
#include "futex.h"
#include "xlock.h"
#include "semaphore.h"

#include <cstdint>

#include <thread>
#include <atomic>

#include <linux/futex.h>
#include <sys/time.h>
#include <unistd.h>

namespace
{

static int futex(std::atomic<int> *uaddr, int op, int val, const struct timespec *timeout,
                 int *uaddr2, int val3)
{
    return syscall(202,uaddr,op,val,timeout,uaddr2,val3);
}

static int futex_wait(std::atomic<int> &ftx,int expected)
{
    return futex(&ftx,FUTEX_WAIT,expected,nullptr,nullptr,0);
}

static int futex_wake(std::atomic<int> &ftx,int count)
{
    return futex(&ftx,FUTEX_WAKE,count,nullptr,nullptr,0);
}

};

class Semafor
{
public:
    Semafor(int val) : _futex(val) {}

    void down()
    {
        int c;
        while((c=_futex.fetch_add(-1))<=0)
        {
            futex_wait(_futex,c-1);
            _futex.fetch_add(1);
        }
    }

    void up()
    {
        if(_futex.fetch_add(1)<0)
            futex_wake(_futex,1);
    }
private:
    std::atomic<int> _futex;
};

struct rwlock : private xlock
{
    static const int MAX_READERS = 1<<30;

    rwlock() : rsem(MAX_READERS),wsem(0),reads(0),waits(0) {}

    void lockR()
    {
        for(;;)
        {
            if(waits==0)
            {
                rsem.down();
                return;
            }
            else
            {
                ++reads;        // ostatni pisarz kończący prace odblokowuje
                wsem.down();
            }
        }
    }

    void unlockR()
    {
        rsem.up();
    }

    void lock()
    {
        ++waits;
        xlock::lock();
        for(std::size_t i=0; i<MAX_READERS; ++i)
            rsem.down();
        --waits;
        xlock::unlock();
    }

    void unlock()
    {
        while(waits==0 && reads>0)
        {
            --reads;
            wsem.up();
        }
        for(std::size_t i=0; i<MAX_READERS; ++i)
            rsem.up();
        while(waits==0 && reads>0)
        {
            --reads;
            wsem.up();
        }
    }

private:

    Semafor           rsem;
    Semafor           wsem;
    std::atomic<int>    reads;
    std::atomic<int>    waits;
};

#endif // H_RWLOCK
