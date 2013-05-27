#include <cstdio>
#include <functional>
#include <thread>
#include <mutex>
#include <atomic>
#include <condition_variable>

using namespace std;

struct quit { };

mutex taskMutex;;
condition_variable cv;
atomic<bool> haveTask(false);
function<void()> task;

void worker()
{
    try
    {
        for(;;)
        {
            unique_lock<mutex> myLock(taskMutex);
            while(!haveTask)
                cv.wait(myLock);
            auto nextTask=task;
            haveTask=false;
            nextTask();
            cv.notify_one();
        }
    }
    catch (quit)
    {
    }
}

void schedule(function<void ()> f)
{
    unique_lock<mutex> myLock(taskMutex);
    while(haveTask)
        cv.wait(myLock);
    task=f;
    haveTask=true;
    cv.notify_one();
}

int main()
{
    thread t(worker);
    for (int i=0; i<100000; ++i)
    {
        schedule([i]() {
            printf("s%d\n", i);
        });
        printf("m%d\n", i);
    }
    schedule([]() {
        throw quit();
    });
    t.join();
    return 0;
}
