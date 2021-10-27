main:

CXX = clang++
LDLIBS = -lgmp -lgmpxx -lSDL2 -lpthread
CXXFLAGS = -std=c++2a -Wall -Wextra -pthread -static -O3

main: main.o
	$(CXX) main.o $(LDLIBS) -o main

main.o: main.cpp
	$(CXX) -c $(CXXFLAGS) main.cpp

clean:
	rm *.o
