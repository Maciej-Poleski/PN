#ifndef H_SEMAPHORE
#define H_SEMAPHORE

#include <cstdio>
#include "futex.h"

struct semaphore
{
    semaphore(int avail = 0) : avail(avail), waiters(0)
    {
    }

    void up()
    {
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

#endif // H_SEMAPHORE
