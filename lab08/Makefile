SC := $(wildcard *.cpp)
SA := $(wildcard *.asm)
OC := $(patsubst %.cpp,%.o,${SC})
OA := $(patsubst %.asm,%.o,${SA})
EX := sine.x

.PHONY : all

all : ${EX}

${EX} : ${OC} ${OA}
	g++ $^ -o $@

${OC} : %.o : %.cpp
	g++ -c $^ -O2 -o $@

${OA} : %.o : %.asm
	nasm $^ -felf64 -o $@

