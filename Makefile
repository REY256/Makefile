main:

CC = clang
#CC = x86_64-w64-mingw32-gcc 

LIBS = -lgmp -lSDL2 -lpthread
CCFLAGS = -std=c2x -Wall -pthread -static -O3

main: main.o
	$(CC) main.o $(LIBS) -o main

main.o: main.c
	$(CC) -c $(CCFLAGS) main.c

clean:
	rm *.o
