main:

CC = clang
#CC = clang++
#CC = gcc
#CC = g++

LIBS = -lm -lpthread -lgmp -lSDL2
CCFLAGS = -Wall -Wextra -pthread -static -O2

main: main.o
	$(CC) main.o $(LIBS) -o main


main.o: main.c
	$(CC) -c $(CCFLAGS) main.c

#	main.o: main.cpp
#		$(CC) -c $(CCFLAGS) main.cpp

clean:
	rm *.o
