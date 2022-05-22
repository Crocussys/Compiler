all: main.o
	g++ main.o -o Compiler
	
main.o: main.cpp
	g++ -c main.cpp
	
clean:
	rm -rf *~ *.o
