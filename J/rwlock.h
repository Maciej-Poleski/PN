#ifndef H_RWLOCK
#define H_RWLOCK

#include <unistd.h>
#include "futex.h"
#include "xlock.h"
#include "semaphore.h"

#include <cstdint>

#include <thread>
#include <atomic>

struct rwlock : private xlock
{
    static const int MAX_READERS = 1<<30;

    rwlock() : rsem(0),asem(0),wsem(1),reads(0),waits(0),asemwaits(0) {}

    void lockR()
    {
        for(;;) {
            while(waits>0)
            {
                ++asemwaits;    // FIXME Race here: unlock asem before increment
                if(waits==0)
                {
                   // --asemwaits;
                    break;
                }
                asem.down();
            }
            // NOTE Race here: waits=0, reads=0
            ++reads;
            // repeat check
            if(waits==0)
                break;
            --reads;
        }
    }

    void unlockR()
    {
        --reads;
        if(reads==0)
            rsem.up();
    }

    void lock()
    {
        ++waits;
        wsem.down();
        while(reads>0)
        {
            rsem.down();
        }

    }

    void unlock()
    {
        wsem.up();
        --waits;        // Move to unlock
        while(waits==0)
        {
            int c=asemwaits.exchange(0);
            if(c==0)
                break;
            while(c--)
                asem.up();
        }
    }

private:

    semaphore           rsem;
    semaphore           asem;
    semaphore           wsem;
    std::atomic<int>    reads;
    std::atomic<int>    waits;
    std::atomic<int>    asemwaits;
};

#endif // H_RWLOCK
