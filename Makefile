main:

CC = clang
#CC = gcc
#CC = x86_64-w64-mingw32-gcc 

LIBS = -lgmp -lSDL2 -lpthread
CCFLAGS = -std=c17 -Wall -Wextra -pthread -static -g

main: main.o
	$(CC) main.o $(LIBS) -o main

main.o: main.c
	$(CC) -c $(CCFLAGS) main.c

clean:
	rm *.o
