main:

CXX = g++
LDLIBS = -lpthread
CXXFLAGS = -g -std=c++2a -pthread -O3 -static

main: main.o
	$(CXX) main.o $(LDLIBS) -o main

main.o: main.cpp
	$(CXX) -c $(CXXFLAGS) main.cpp

clean:
	rm *.o
