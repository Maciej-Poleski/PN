#include <stdio.h>
#include <stdint.h>
#include <sys/mman.h>
#include "ptlcalls.h"

extern void sort(uint64_t*,uint64_t);

#define PAGE 4096

extern void call(void(*)(void*,uint64_t*,uint64_t*),uint64_t*,uint64_t*);

void runsort(void* self, uint64_t* left, uint64_t* right)
{
	ptlcall_switch_to_sim();
	sort(left, right-left);
	ptlcall_switch_to_native();
}

long roundup(long num, long base)
{
	return (num+base-1) / base * base;
}

int main(int argc, char* argv[])
{
	int n, i;
	scanf("%d", &n);
	long size = roundup(n*sizeof(uint64_t), PAGE);
	uint64_t* data = (uint64_t*) mmap(0, size, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0);
	for (i=0; i<n; ++i)
		scanf("%Lu", &data[i]);
	call(runsort, data, data+n);
	for (i=0; i<n; ++i)
		printf("%Lu ", data[i]);
	printf("\n");
	munmap(data, size);
}
