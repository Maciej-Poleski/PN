ASM:=$(wildcard *.asm)
OBJ:=$(patsubst %.asm,%.o,${ASM})
EXE:=$(patsubst %.o,%.x,$(filter-out call.o,${OBJ}))
LOG:=$(patsubst %.x,%.log.bz2,${EXE})
OUT:=$(patsubst %.x,%.out,${EXE})

.PHONY : all

all : ${OUT}

${OUT} : %.out : %.x test.in
	ptlsim -logfile $*.log -loglevel 6 -trigger ./$*.x <test.in 2>&1 >$*.out |\
	grep '^Stopped after' |\
	sed -e 's|^Stopped after ||' -e 's|instructions.*|instructions|' |\
	tee $*.time
	rm -f $*.log.bz2
	bzip2 $*.log

${EXE} : %.x : %.o main.o call.o
	gcc $^ -o $@

${OBJ} : %.o : %.asm
	nasm $^ -felf64 -o $@

main.o : %.o : %.c
	gcc -c $^ -O2 -o $@

