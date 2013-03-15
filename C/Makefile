
SRC_H := $(wildcard expr*.h)
SRC_C := $(wildcard expr*.c)
SRC_A := $(wildcard expr*.asm)

OBJ_C := $(patsubst %,%.o,${SRC_C})
OBJ_A := $(patsubst %,%.o,${SRC_A})

PRG_L := expr.so
PRG_S := expr-static
PRG_D := expr

all : ${PRG_S} ${PRG_D}

${PRG_S} : main.c ${OBJ_C} ${OBJ_A}
#	gcc -std=c99 $^ -lm -static -o $@

${PRG_D} : main.c ${PRG_L}
	gcc -std=c99 $^ -lm -o $@

${PRG_L} : ${OBJ_C} ${OBJ_A}
	ld -shared $^ -o $@

${OBJ_C} : %.o : % ${SRC_H}
	gcc -std=c99 -c $< -fPIC -O2 -o $@
	#objcopy -N expr_eval $@

${OBJ_A} : %.o : %
	nasm $< -felf64 -o $@

main.c : ${SRC_H}
	touch $@

.PHONY : all

.SUFFIXES :
