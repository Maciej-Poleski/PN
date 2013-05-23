all: main.x

main.x: main.cpp sbuffer.h isbuffer.h
	g++  -std=gnu++0x $< -o $@ -lpthread -lrt

