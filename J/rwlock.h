#ifndef H_RWLOCK
#define H_RWLOCK

#include <unistd.h>
#include "futex.h"
#include "xlock.h"
#include "semaphore.h"

#include <cstdint>

#include <thread>
#include <atomic>


struct binary_semaphore
{
    binary_semaphore(int avail = 0) : avail(avail), waiters(0)
    {
    }

    void up()
    {
        if(avail==1)
            return;
        int v = ++avail;
        if (waiters > 0)
            avail.wake(v);
    }

    void down()
    {
        int v;
        while (true)
        {
            v = avail;
            if (v <= 0)
            {
                waiters++;
                avail.wait(v);
                waiters--;
            }
            else if (avail.compare_exchange_strong(v, v-1))
                return;
        }
    }

private:

    futex               avail;
    std::atomic<int>    waiters;
};

struct rwlock : private xlock
{
    static const int MAX_READERS = 1 << 30;

    rwlock() : rsem(0), asem(0), wsem(1), reads(0), waits(0), asemwaits(0) {}

    void lockR()
    {
        for (;;)
        {
            if (waits > 0)
            {
                xlock::lock();
                while (waits > 0)
                {
                    ++asemwaits;    // NOTE Old race here: unlock asem before increment
                    xlock::unlock();
                    asem.down();
                    xlock::lock();
                }
                xlock::unlock();
            }
            // NOTE Race here: waits=0, reads=0
            ++reads;
            // repeat check
            if (waits == 0)
                break;
            if (reads.fetch_add(-1)==1)
                rsem.up();
        }
    }

    void unlockR()
    {
        if (reads.fetch_add(-1)==1)
            rsem.up();
    }

    void lock()
    {
        ++waits;
        wsem.down();
        while (reads > 0)
        {
            rsem.down();
        }

    }

    void unlock()
    {
        wsem.up();
        --waits;        // Move to unlock
        xlock::lock();
        while (waits == 0)
        {
            int c = asemwaits.exchange(0);
            if (c == 0)
                break;
            while (c--)
                asem.up();
        }
        xlock::unlock();
    }

private:

    binary_semaphore    rsem;
    semaphore           asem;
    semaphore           wsem;
    std::atomic<int>    reads;
    std::atomic<int>    waits;
    std::atomic<int>    asemwaits;
};

#endif // H_RWLOCK
