main:

CXX = g++
LDLIBS = -lgmp -lgmpxx -lSDL2 -lpthread
CXXFLAGS = -Wall -Wextra -Waddress -std=c++2a -pthread -static -g

main: main.o
	$(CXX) main.o $(LDLIBS) -o main

main.o: main.cpp
	$(CXX) -c $(CXXFLAGS) main.cpp

clean:
	rm *.o
