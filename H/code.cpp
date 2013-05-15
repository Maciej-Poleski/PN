#define NDEBUG
#include <queue>
#include <cassert>

#ifndef __THREADS_H__
#define __THREADS_H__

// typ funkcji uruchamianej w wątku: przyjmuje dwa argumenty, nie zwraca żadnej wartości
typedef void (*thread_t)(unsigned long, unsigned long);

// tworzy nowy wątek z podanymi argumentami, przydzielając mu nowy stos (min. 64kB)
// zwraca numer utworzonego wątku (0 do 255 -- można stworzyć maksymalnie 256 wątków)
// lub -1 jeśli wątku nie uda się stworzyć
int th_create(thread_t, unsigned long, unsigned long);

// przełącza wykonywanie na inny wątek
void th_yield();

// kończy działanie bieżącego wątku, zwalniając pamięć jego stosu
void th_exit();

// zwraca numer bieżącego wątku
int th_getid();

// uruchamia zarejestrowane wątki
// powrót z tej funkcji następuje, gdy ostatni wątek kończy działanie
void run();

#endif

static int currentId=-1;

struct Thread
{
    static const std::size_t stackSize=8*1024+100;
    void * oldRsp;
    int id;     // -1 - wolny slot
    unsigned long stack[stackSize];

    Thread() : id(-1) {}
};

static Thread threads[256];

static void * mainRsp;

static std::queue<unsigned char> threadsQueue;

static int nextThreadId()
{
    for(std::size_t i=0;i<256;++i)
        if(threads[i].id==-1)
            return i;
    return -1;
}

static void initializeThread(unsigned char id, thread_t code,unsigned long arg1,unsigned long arg2)
{
    // Przygotuj strukturę Thread tak aby wznowienie wątko spowodowało
    // uruchomienie funkcji code z podanymi argumentami
    threads[id].id=id;  // Trochę to redundantne...

    threads[id].stack[Thread::stackSize-1]=reinterpret_cast<unsigned long>(code);
    threads[id].stack[Thread::stackSize-8]=arg1;
    threads[id].stack[Thread::stackSize-9]=arg2;

    threads[id].oldRsp=&threads[id].stack[Thread::stackSize-9];
}

int th_create(thread_t thread, unsigned long arg1,unsigned long arg2)
{
    int id=nextThreadId();
    if(id==-1)
        return -1;
    initializeThread(id,thread,arg1,arg2);
    threadsQueue.push(id);
    return id;
}

int th_getid()
{
    return currentId;
}

/**
 * 1 Zapisuje stan obecnego wątku na obecnym stosie
 * 2 Zapisuje adres szczytu obecnego stosu pod adresem currenThreadRspStore
 * 3 Ustawia adres szczytu stosu ze zmiennej pod adresem resumedThreadRspStore
 * 4 Odczytuje stan wątku z nowego stosu
 * 5 asm("ret");
 */
extern "C" void sleepThreadResumeThread(void **currenThreadRspStore, void **resumedThreadRspStore);

void startThread(unsigned char id)
{
    assert(currentId==-1);
    currentId=id;
    // zmienia kontekst main -> id
    sleepThreadResumeThread(&mainRsp,&(threads[id].oldRsp));
}

void th_yield()
{
    int id=currentId;
    threadsQueue.push(id);
    currentId=-1;
    // zmienia kontekst id -> main
    sleepThreadResumeThread(&(threads[id].oldRsp),&mainRsp);
}

void th_exit()
{
    int id=currentId;
    threads[id].id=-1;
    currentId=-1;
    // zmienia kontekst id -> main
    sleepThreadResumeThread(&(threads[id].oldRsp),&mainRsp);
}

void run()
{
    while(!threadsQueue.empty())
    {
        unsigned char id=threadsQueue.front();
        threadsQueue.pop();
        startThread(id);
    }
}
