#include <iostream>
#include <thread>
#include <atomic>

#include <linux/futex.h>
#include <sys/time.h>
#include <unistd.h>

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

int main(int argc, char **argv) {
    Semafor s(1);
    s.down();
    s.up();
    s.up();
    s.down();
    s.down();
    return 0;
}
