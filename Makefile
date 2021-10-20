main:

CXX = g++
LDLIBS = -lgmp -lgmpxx -lSDL2 -lpthread
CXXFLAGS = -std=c++2a -pthread -Ofast -static

main: main.o
	$(CXX) main.o $(LDLIBS) -o main

main.o: main.cpp
	$(CXX) -c $(CXXFLAGS) main.cpp

clean:
	rm *.o
