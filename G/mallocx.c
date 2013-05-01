#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include "mallocx.h"

char* mallocx(unsigned long size)
{
    const unsigned long TOTAL = 1<<24;
    static char * memory = 0;
    static char * limit = 0;
    if (!memory)
    {
        memory = (char *) mmap(0, TOTAL, PROT_READ|PROT_WRITE|PROT_EXEC, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0);
        limit = memory + TOTAL;
    }
	memory += size;
	if (memory > limit)
	{
		printf("memory depleted!\n");
		exit(0);
	}
	return (memory-size);
}
