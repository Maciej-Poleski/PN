#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include "mallocx.h"

extern const void* compile(unsigned int, const unsigned int*);

const void* cwrite(char c)
{
	static const char CODE[] = {
		0x48,0xB8,0x00,0x00,0x00,0x00,0x00,0x00,
		0x00,0x00,0x40,0xB7,0x00,0xFF,0xD0,0xC3
	};
	char* code = mallocx(sizeof(CODE));
	memcpy(code, CODE, sizeof(CODE));
	*((int(**)(int))(code+2)) = &putchar;
	*((char*)(code+12)) = c;
	return code;
}

const void* ceval()
{
	static const char CODE[] = {
		0x31,0xc0,0x48,0x8d,0x48,0xff,0xf2,0x48,
		0xaf,0x48,0x8d,0x77,0xf0,0x48,0xf7,0xd1,
		0x48,0xff,0xc9,0xfd,0x48,0xad,0x50,0x48,
		0xff,0xc9,0x75,0xf8,0xfc,0xc3
	};
	return memcpy(mallocx(sizeof(CODE)), CODE, sizeof(CODE));
}

#define MAX 1000

int main(int argc, char* argv[])
{
	// prepare the combinators
	const void* comb[MAX];
	comb[0] = 0;
	comb[1] = cwrite('0');
	comb[2] = cwrite('1');
	for (int i=3; ; ++i)
	{
		unsigned int nargs;
		if (scanf("%u", &nargs) != 1) return 1;
		if (!nargs) break;
		unsigned int tree[MAX];
		for (int j=0, k=1; k; ++j)
		{
			if (scanf("%u", &tree[j]) != 1) return 1;
			k += tree[j] ? -1 : 1;
		}
		comb[i] = compile(nargs, tree);
	}
	// read the expression
	const void* expr[MAX];
	for (int i=0; ; ++i)
	{
		int index;
		if (scanf("%d", &index) != 1) return 1;
		expr[i] = comb[index];
		if (!index) break;
	}
	// evaluate!
	((void(*)(const void**))ceval())(expr);
	putchar('\n');
	return 0;
}
