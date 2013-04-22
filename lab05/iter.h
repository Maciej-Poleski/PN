

#define foreach(v,f) for(first=1;next(&v,f);)


extern int next(unsigned long*,void (*)());
extern int first;

extern void yield(unsigned long);