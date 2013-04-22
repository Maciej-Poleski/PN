iter: iter.o main.o
	gcc $^ -o $@

iter.o: iter.asm
	nasm $< -felf64 -o $@

main.o: main.c
	gcc -c $< -O0 -g -o $@

