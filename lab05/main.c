#include <stdio.h>
#include "iter.h"

const int N = 4;

void it1() {
	unsigned long i;
	for(i=0;i<N;i++)
		yield(i);
}

void it2() {
	unsigned long i, j;
	for(i=0;i<N;i++)
		foreach(j, &it1)
			yield(N*i+j);
}

int main()
{
	unsigned long i, j;
	foreach(i, &it1)
		foreach(j, &it1)
			printf("%lu\n", N*i+j);
	printf("\n");
	foreach(i, &it2)
		printf("%lu\n", i);
	return 0;
}
