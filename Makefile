main:

CC = clang
#CC = avr-gcc

CCFLAGS = -std=c17 -Wall -Wextra -pthread -O2
LIBS = -static -lm -lpthread

main: main.o
	$(CC) main.o $(LIBS) -o main

main.o: main.c
	$(CC) -c $(CCFLAGS) main.c

clean:
	rm *.o
