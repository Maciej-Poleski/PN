#include "threads.h"

int currentId;

struct Thread
{
    void ** oldRsp;
    int id;     // -1 - wolny slot
    char stack[64*1024+1000];
};

Thread threads[256];

void ** mainRsp;

void stopCurrentThread();

void th_yield()
{
    stopCurrentThread();
}