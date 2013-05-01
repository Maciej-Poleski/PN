SC := $(wildcard *.c)
OC := $(patsubst %.c,%.o,${SC})
SX := $(wildcard *.cpp)
OX := $(patsubst %.cpp,%.o,${SX})
SA := $(wildcard *.asm)
OA := $(patsubst %.asm,%.o,${SA})

test : ${OC} ${OX} ${OA}
	g++ $^ -o $@

${OA} : %.o : %.asm
	nasm $< -O0 -felf64 -g -o $@

${OC} : %.o : %.c
	gcc -c $< -O2 -ggdb -o $@

${OX} : %.o : %.cpp
	g++ -c $< -O2 -ggdb -o $@

clean :
	rm -f ${OC} ${OX} ${OA} test

.PHONY: clean
